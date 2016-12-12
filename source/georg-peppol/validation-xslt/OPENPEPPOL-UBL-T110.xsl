<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
                xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
                xmlns:ubl="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2"
                version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <xsl:param name="archiveDirParameter"/>
   <xsl:param name="archiveNameParameter"/>
   <xsl:param name="fileNameParameter"/>
   <xsl:param name="fileDirParameter"/>
   <xsl:variable name="document-uri">
      <xsl:value-of select="document-uri(/)"/>
   </xsl:variable>

   <!--PHASES-->


   <!--PROLOG-->
   <xsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
               method="xml"
               omit-xml-declaration="no"
               standalone="yes"
               indent="yes"/>

   <!--XSD TYPES FOR XSLT2-->


   <!--KEYS AND FUNCTIONS-->


   <!--DEFAULT RULES-->


   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-select-full-path">
      <xsl:apply-templates select="." mode="schematron-get-full-path"/>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">
            <xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>*:</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>[namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="preceding"
                    select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="1+ $preceding"/>
      <xsl:text>]</xsl:text>
   </xsl:template>
   <xsl:template match="@*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>@*[local-name()='</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>' and namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="parent::*">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>

   <!--MODE: GENERATE-ID-FROM-PATH -->
   <xsl:template match="/" mode="generate-id-from-path"/>
   <xsl:template match="text()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </xsl:template>
   <xsl:template match="comment()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </xsl:template>
   <xsl:template match="processing-instruction()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.@', name())"/>
   </xsl:template>
   <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:text>.</xsl:text>
      <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </xsl:template>

   <!--MODE: GENERATE-ID-2 -->
   <xsl:template match="/" mode="generate-id-2">U</xsl:template>
   <xsl:template match="*" mode="generate-id-2" priority="2">
      <xsl:text>U</xsl:text>
      <xsl:number level="multiple" count="*"/>
   </xsl:template>
   <xsl:template match="node()" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>n</xsl:text>
      <xsl:number count="node()"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="string-length(local-name(.))"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="translate(name(),':','.')"/>
   </xsl:template>
   <!--Strip characters-->
   <xsl:template match="text()" priority="-1"/>

   <!--SCHEMA SETUP-->
   <xsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                              title="OPENPEPPOL  T110 bound to UBL"
                              schemaVersion="">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
                                             prefix="cbc"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
                                             prefix="cac"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2"
                                             prefix="ubl"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="id">UBL-T110</xsl:attribute>
            <xsl:attribute name="name">UBL-T110</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M6"/>
      </svrl:schematron-output>
   </xsl:template>

   <!--SCHEMATRON PATTERNS-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">OPENPEPPOL  T110 bound to UBL</svrl:text>

   <!--PATTERN UBL-T110-->


	  <!--RULE -->
   <xsl:template match="/ubl:OrderResponse/cac:AllowanceCharge"
                 priority="1009"
                 mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="/ubl:OrderResponse/cac:AllowanceCharge"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(cbc:AllowanceChargeReason)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(cbc:AllowanceChargeReason)">
               <xsl:attribute name="id">EUGEN-T110-R015</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R015]-Allowances and charges MUST have a reason</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:Country/cbc:IdentificationCode"
                 priority="1008"
                 mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:Country/cbc:IdentificationCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@listID = 'ISO3166-1:Alpha2'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@listID = 'ISO3166-1:Alpha2'">
               <xsl:attribute name="id">EUGEN-T110-R004</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R004]-A country identification code MUST have a list identifier attribute “ISO3166-1:Alpha2”</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//*[contains(name(),'CurrencyCode')]"
                 priority="1007"
                 mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//*[contains(name(),'CurrencyCode')]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@listID =  'ISO4217'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@listID = 'ISO4217'">
               <xsl:attribute name="id">EUGEN-T110-R003</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R003]-A document currency code MUST have a list identifier attribute “ISO4217”</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cbc:EndpointID" priority="1006" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="//cbc:EndpointID"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@schemeID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@schemeID">
               <xsl:attribute name="id">EUGEN-T110-R001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R001]-An endpoint identifier MUST have a scheme identifier attribute</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cbc:ItemClassificationCode" priority="1005" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cbc:ItemClassificationCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@listID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@listID">
               <xsl:attribute name="id">EUGEN-T110-R013</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R013]-Item classification codes must include code list value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/ubl:OrderResponse" priority="1004" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="/ubl:OrderResponse"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(cbc:CustomizationID) = 'urn:www.cenbii.eu:transaction:biitrns110:ver1.0:extended:urn:www.peppol.eu:bis:peppol42a:ver1.0'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(cbc:CustomizationID) = 'urn:www.cenbii.eu:transaction:biitrns110:ver1.0:extended:urn:www.peppol.eu:bis:peppol42a:ver1.0'">
               <xsl:attribute name="id">EUGEN-T110-R007</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R007]-Customization id must be:  urn:www.cenbii.eu:transaction:biitrns110:ver1.0:extended:urn:www.peppol.eu:bis:peppol42a:ver1.0</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(cbc:ProfileID)= 'urn:www.cenbii.eu:profile:bii42:ver1.0'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(cbc:ProfileID)= 'urn:www.cenbii.eu:profile:bii42:ver1.0'">
               <xsl:attribute name="id">EUGEN-T110-R008</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R008]-Profile id must be: urn:www.cenbii.eu:profile:bii42:ver1.0</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(cac:SellerSupplierParty/cac:Party/cbc:EndpointID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(cac:SellerSupplierParty/cac:Party/cbc:EndpointID)">
               <xsl:attribute name="id">EUGEN-T110-R009</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R009]-Sellers endpoint id must exist</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(cac:BuyerCustomerParty/cac:Party/cbc:EndpointID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(cac:BuyerCustomerParty/cac:Party/cbc:EndpointID)">
               <xsl:attribute name="id">EUGEN-T110-R010</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R010]-Buyers endpoint id must exist</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="//@currencyID = (cbc:DocumentCurrencyCode)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="//@currencyID = (cbc:DocumentCurrencyCode)">
               <xsl:attribute name="id">EUGEN-T110-R011</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R011]-All amounts must have same currency code as document currency</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(cbc:UBLVersionID) = '2.1'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(cbc:UBLVersionID) = '2.1'">
               <xsl:attribute name="id">EUGEN-T110-R025</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R025]-UBLVersionID shall be 2.1</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:PartyIdentification/cbc:ID" priority="1003" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:PartyIdentification/cbc:ID"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@schemeID"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@schemeID">
               <xsl:attribute name="id">EUGEN-T110-R002</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R002]-A party identifier MUST have a scheme identifier attribute</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//cac:TaxCategory/cbc:ID" priority="1002" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//cac:TaxCategory/cbc:ID"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="@schemeID = 'UNCL5305'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@schemeID = 'UNCL5305'">
               <xsl:attribute name="id">EUGEN-T110-R006</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R006]-A tax category identifier MUST have a scheme identifier attribute “UNCL5305”</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/cac:LegalMonetaryTotal" priority="1001" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="/cac:LegalMonetaryTotal"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="((cbc:PayableAmount) &gt;= 0) or (not(cac:PayableAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="((cbc:PayableAmount) &gt;= 0) or (not(cac:PayableAmount))">
               <xsl:attribute name="id">EUGEN-T110-R016</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R016]-Total amount for payment MUST NOT be negative, if expected total amount for payment is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="((cbc:LineExtensionAmount) &gt;= 0) or (not(cac:LineExtensionAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="((cbc:LineExtensionAmount) &gt;= 0) or (not(cac:LineExtensionAmount))">
               <xsl:attribute name="id">EUGEN-T110-R017</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R017]-Total sum of line amounts MUST NOT be negative, if expected total sum of line amounts is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="((cac:LineExtensionAmount) and (cac:TaxExclusiveAmount) and (cac:TaxInclusiveAmount)) or (not((cac:PayableAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="((cac:LineExtensionAmount) and (cac:TaxExclusiveAmount) and (cac:TaxInclusiveAmount)) or (not((cac:PayableAmount))">
               <xsl:attribute name="id">EUGEN-T110-R018</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R018]-If payable amount is provided then Line Extension Amount and Tax Exclusive Amount and Tax Inclusive Amount must be provided. </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(xs:decimal(cbc:LineExtensionAmount)) = (round(xs:decimal(sum(//cac:InvoiceLine/cbc:LineExtensionAmount)) * 10 * 10) div 100) or (not(cbc:LineExtensionAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(xs:decimal(cbc:LineExtensionAmount)) = (round(xs:decimal(sum(//cac:InvoiceLine/cbc:LineExtensionAmount)) * 10 * 10) div 100) or (not(cbc:LineExtensionAmount))">
               <xsl:attribute name="id">EUGEN-T110-R019</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R019]-Total sum of line amounts MUST equal the sum of the order line amounts at order line level, if total sum of line amounts is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="((xs:decimal(cbc:ChargeTotalAmount)) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:ChargeTotalAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="((xs:decimal(cbc:ChargeTotalAmount)) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:ChargeTotalAmount))">
               <xsl:attribute name="id">EUGEN-T110-R020</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R020]-Total sum of charges at document level MUST be equal to the sum of charges at document level, if total sum of charges at document level is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(xs:decimal(cbc:AllowanceTotalAmount)) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:AllowanceTotalAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(xs:decimal(cbc:AllowanceTotalAmount)) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:AllowanceTotalAmount))">
               <xsl:attribute name="id">EUGEN-T110-R021</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R021]-Total sum of allowance at document level MUST be equal to the sum of allowance amounts at document level, if total sum of allowance at document level is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100)-((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100) or(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) -((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (not(cbc:TaxExclusiveAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100)-((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100) or(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) -((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (not(cbc:TaxExclusiveAmount))">
               <xsl:attribute name="id">EUGEN-T110-R022</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R022]-Tax exclusive amount must equal the sum of line amount plus total charge amount at document level less total allowance amount at document level if tax exclusive amount is provided.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100) +((round(xs:decimal(/ubl:OrderResponse/cac:TaxTotal/cbc:TaxAmount )) * 10 * 10) div 100) or (xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100) "/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100) +((round(xs:decimal(/ubl:OrderResponse/cac:TaxTotal/cbc:TaxAmount )) * 10 * 10) div 100) or (xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100)">
               <xsl:attribute name="id">EUGEN-T110-R023</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R023]-Tax inclusive amount must equal tax exclusive amount plus total tax amount.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(xs:decimal(cbc:PayableAmount)) = (round((xs:decimal(cbc:TaxInclusiveAmount) + xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100))) or (xs:decimal(cbc:PayableAmount) = xs:decimal(cbc:TaxInclusiveAmount)) or (not(cbc:PayableAmount))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(xs:decimal(cbc:PayableAmount)) = (round((xs:decimal(cbc:TaxInclusiveAmount) + xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100))) or (xs:decimal(cbc:PayableAmount) = xs:decimal(cbc:TaxInclusiveAmount)) or (not(cbc:PayableAmount))">
               <xsl:attribute name="id">EUGEN-T110-R024</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R024]-Total amount for payment MUST be equal to the tax inclusive amount plus rounding amount.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//*[contains(name(),'Quantity')]" priority="1000" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//*[contains(name(),'Quantity')]"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="not(attribute::unitCode) or (attribute::unitCode and attribute::unitCodeListID = 'UNECERec20')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(attribute::unitCode) or (attribute::unitCode and attribute::unitCodeListID = 'UNECERec20')">
               <xsl:attribute name="id">EUGEN-T110-R005</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[EUGEN-T110-R005]-A unit code attribute MUST have a unit code list identifier attribute “UNECERec20”</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M6"/>
   <xsl:template match="@*|node()" priority="-2" mode="M6">
      <xsl:apply-templates select="*" mode="M6"/>
   </xsl:template>
</xsl:stylesheet>
