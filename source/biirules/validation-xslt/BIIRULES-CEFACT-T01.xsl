<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:udt="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"
                xmlns:ram="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"
                xmlns:rsm="urn:un:unece:uncefact:data:standard:CrossIndustryOrder:3"
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
                              title="BIIRULES  T01 bound to CEFACT"
                              schemaVersion="">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"
                                             prefix="udt"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"
                                             prefix="ram"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:standard:CrossIndustryOrder:3"
                                             prefix="rsm"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="id">CEFACT-T01</xsl:attribute>
            <xsl:attribute name="name">CEFACT-T01</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M6"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="id">CodesT01</xsl:attribute>
            <xsl:attribute name="name">CodesT01</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M7"/>
      </svrl:schematron-output>
   </xsl:template>

   <!--SCHEMATRON PATTERNS-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">BIIRULES  T01 bound to CEFACT</svrl:text>

   <!--PATTERN CEFACT-T01-->


	  <!--RULE -->
   <xsl:template match="//ram:SpecifiedCITradeAllowanceCharge"
                 priority="1006"
                 mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//ram:SpecifiedCITradeAllowanceCharge"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:Reason)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(ram:Reason)">
               <xsl:attribute name="id">BII2-T01-R007</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R007]-Allowances and charges MUST have a reason</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//ram:BuyerCITradeParty" priority="1005" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//ram:BuyerCITradeParty"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:Name) or (ram:ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(ram:Name) or (ram:ID)">
               <xsl:attribute name="id">BII2-T01-R021</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R021]-An order MUST have the buyer party name or a buyer party identifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//ram:SpecifiedCIOHTradeSettlementMonetarySummation"
                 priority="1004"
                 mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//ram:SpecifiedCIOHTradeSettlementMonetarySummation"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="false()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="false()">
               <xsl:attribute name="id">BII2-T01-R012</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R012]-Expected total amount for payment MUST NOT be negative, if expected total amount for payment is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="number(ram:LineTotalAmount) &gt;= 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="number(ram:LineTotalAmount) &gt;= 0">
               <xsl:attribute name="id">BII2-T01-R013</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R013]-Expected total sum of line amounts MUST NOT be negative, if expected total sum of line amounts is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="number(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="number(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)">
               <xsl:attribute name="id">BII2-T01-R014</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R014]-Expected total sum of line amounts MUST equal the sum of the order line amounts at order line level, if expected total sum of line amounts is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;false&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;false&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount)">
               <xsl:attribute name="id">BII2-T01-R015</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R015]-Expected total sum of allowance at document level MUST be equal to the sum of allowance amounts at document level, if expected total sum of allowance at document level is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;true&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;true&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount)">
               <xsl:attribute name="id">BII2-T01-R016</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R016]-Expected total sum of charges at document level MUST be equal to the sum of charges at document level, if expected total sum of charges at document level is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="false()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="false()">
               <xsl:attribute name="id">BII2-T01-R017</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R017]-Expected total amount for payment MUST be equal to the sum of line amounts minus sum of allowances at document level plus sum of charges at document level  and VAT total amount, if expected total amount for payment is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//ram:ApplicableCIOHSupplyChainTradeSettlement/ram:IncludedCIOLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic"
                 priority="1003"
                 mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//ram:ApplicableCIOHSupplyChainTradeSettlement/ram:IncludedCIOLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(ram:ID)">
               <xsl:attribute name="id">BII2-T01-R019</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R019]-Each item property MUST have a data name, if item property is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:Description)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(ram:Description)">
               <xsl:attribute name="id">BII2-T01-R020</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R020]-Each item property MUST have a data value, if item property is provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/rsm:CrossIndustryOrder" priority="1002" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="/rsm:CrossIndustryOrder"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)">
               <xsl:attribute name="id">BII2-T01-R001</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R001]-An order MUST have a customization identifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)">
               <xsl:attribute name="id">BII2-T01-R002</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R002]-An order MUST have a profile identifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:CIIHExchangedDocument/ram:IssueDateTime)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:CIIHExchangedDocument/ram:IssueDateTime)">
               <xsl:attribute name="id">BII2-T01-R004</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R004]-An order MUST have a document issue date</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:CIIHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:EndDateTime)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:CIIHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:EndDateTime)">
               <xsl:attribute name="id">BII2-T01-R005</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R005]-An order SHOULD provide information about its validity end date</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:CIIHExchangedDocument/ram:ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:CIIHExchangedDocument/ram:ID)">
               <xsl:attribute name="id">BII2-T01-R006</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R006]-An order MUST have a document identifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:CIOHSupplyChainTradeTransaction/ram:ApplicableCIOHSupplyChainTradeSettlement/ram:OrderCurrencyCode)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:CIOHSupplyChainTradeTransaction/ram:ApplicableCIOHSupplyChainTradeSettlement/ram:OrderCurrencyCode)">
               <xsl:attribute name="id">BII2-T01-R009</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R009]-An order MUST be stated in a single currency</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount and number(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount) =  number(round(sum(//ram:SpecifiedCIOLSupplyChainTradeSettlement/*/ram:CalculatedAmount) * 10 * 10) div 100)) or not (//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount and number(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount) = number(round(sum(//ram:SpecifiedCIOLSupplyChainTradeSettlement/*/ram:CalculatedAmount) * 10 * 10) div 100)) or not (//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount)">
               <xsl:attribute name="id">BII2-T01-R018</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R018]-VAT total amount SHOULD be the sum of order line tax amounts, if order line tax amounts are provided</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//ram:IncludedCIOLSupplyChainTradeLineItem"
                 priority="1001"
                 mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//ram:IncludedCIOLSupplyChainTradeLineItem"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)">
               <xsl:attribute name="id">BII2-T01-R003</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R003]-Each order line MUST have a document line identifier that is unique within the order</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="number(//ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity) &gt;= 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="number(//ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity) &gt;= 0">
               <xsl:attribute name="id">BII2-T01-R010</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R010]-Each order line ordered quantity MUST not be negative</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="number(//ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="number(//ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0">
               <xsl:attribute name="id">BII2-T01-R011</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R011]-Each order line item net price MUST not be negative</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity)">
               <xsl:attribute name="id">BII2-T01-R029</xsl:attribute>
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R029]-Each order line SHOULD have an ordered quantity</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity/@unitCode)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity/@unitCode)">
               <xsl:attribute name="id">BII2-T01-R030</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R030]-Each order line ordered quantity  MUST have an associated unit of measure</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)">
               <xsl:attribute name="id">BII2-T01-R031</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R031]-Each order line MUST have an item identifier and/or an item name</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="//ram:SellerCITradeParty" priority="1000" mode="M6">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="//ram:SellerCITradeParty"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="(ram:Name) or (ram:ID)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(ram:Name) or (ram:ID)">
               <xsl:attribute name="id">BII2-T01-R022</xsl:attribute>
               <xsl:attribute name="flag">fatal</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[BII2-T01-R022]-An order MUST have the seller party name or a seller party identifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M6"/>
   <xsl:template match="@*|node()" priority="-2" mode="M6">
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M6"/>
   </xsl:template>

   <!--PATTERN CodesT01-->


	  <!--RULE -->
   <xsl:template match="ram:CategoryCode" priority="1000" mode="M7">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="ram:CategoryCode"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )">
               <xsl:attribute name="flag">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>[CL-001-001]-Tax categories MUST be coded using UN/ECE 5305 code list</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M7"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M7"/>
   <xsl:template match="@*|node()" priority="-2" mode="M7">
      <xsl:apply-templates select="*|comment()|processing-instruction()" mode="M7"/>
   </xsl:template>
</xsl:stylesheet>
