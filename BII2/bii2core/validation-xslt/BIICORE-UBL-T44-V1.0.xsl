<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:schold="http://www.ascc.net/xml/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2" xmlns:p1="urn:oasis:names:specification:ubl:schema:xsd:Tender-2" xmlns:udt="urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2" xmlns:ccts-cct="urn:un:unece:uncefact:data:specification:CoreComponentTypeSchemaModule:2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" version="1.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->

   <axsl:param name="archiveDirParameter"/>
   <axsl:param name="archiveNameParameter"/>
   <axsl:param name="fileNameParameter"/>
   <axsl:param name="fileDirParameter"/>

<!--PHASES-->


<!--PROLOG-->

   <axsl:output xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" method="xml" omit-xml-declaration="no" standalone="yes" indent="yes"/>

<!--XSD TYPES-->


<!--KEYS AND FUCNTIONS-->


<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->

   <axsl:template match="*" mode="schematron-get-full-path">
      <axsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">
            <axsl:value-of select="name()"/>
            <axsl:variable name="p" select="1+    count(preceding-sibling::*[name()=name(current())])"/>
            <axsl:if test="$p&gt;1 or following-sibling::*[name()=name(current())]">[<axsl:value-of select="$p"/>]</axsl:if>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>*[local-name()='</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>']</axsl:text>
            <axsl:variable name="p" select="1+   count(preceding-sibling::*[local-name()=local-name(current())])"/>
            <axsl:if test="$p&gt;1 or following-sibling::*[local-name()=local-name(current())]">[<axsl:value-of select="$p"/>]</axsl:if>
         </axsl:otherwise>
      </axsl:choose>
   </axsl:template>
   <axsl:template match="@*" mode="schematron-get-full-path">
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">@<axsl:value-of select="name()"/>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>@*[local-name()='</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>' and namespace-uri()='</axsl:text>
            <axsl:value-of select="namespace-uri()"/>
            <axsl:text>']</axsl:text>
         </axsl:otherwise>
      </axsl:choose>
   </axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-2-->
<!--This mode can be used to generate prefixed XPath for humans-->

   <axsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template><!--MODE: SCHEMATRON-FULL-PATH-3-->
<!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->

   <axsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="parent::*">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template>

<!--MODE: GENERATE-ID-FROM-PATH -->

   <axsl:template match="/" mode="generate-id-from-path"/>
   <axsl:template match="text()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </axsl:template>
   <axsl:template match="comment()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </axsl:template>
   <axsl:template match="processing-instruction()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </axsl:template>
   <axsl:template match="@*" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.@', name())"/>
   </axsl:template>
   <axsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:text>.</axsl:text>
      <axsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </axsl:template>

<!--MODE: GENERATE-ID-2 -->

   <axsl:template match="/" mode="generate-id-2">U</axsl:template>
   <axsl:template match="*" mode="generate-id-2" priority="2">
      <axsl:text>U</axsl:text>
      <axsl:number level="multiple" count="*"/>
   </axsl:template>
   <axsl:template match="node()" mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple" count="*"/>
      <axsl:text>n</axsl:text>
      <axsl:number count="node()"/>
   </axsl:template>
   <axsl:template match="@*" mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple" count="*"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="string-length(local-name(.))"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="translate(name(),':','.')"/>
   </axsl:template><!--Strip characters-->
   <axsl:template match="text()" priority="-1"/>

<!--SCHEMA METADATA-->

   <axsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" title="BII2 CORE restrictions for Tender Transaction (T44) UBL-Tender-2.1" schemaVersion="iso">
         <axsl:comment>
            <axsl:value-of select="$archiveDirParameter"/>   
		 <axsl:value-of select="$archiveNameParameter"/>  
		 <axsl:value-of select="$fileNameParameter"/>  
		 <axsl:value-of select="$fileDirParameter"/>
         </axsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" prefix="cac"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" prefix="cbc"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" prefix="ext"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2" prefix="qdt"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:Tender-2" prefix="p1"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2" prefix="udt"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:specification:CoreComponentTypeSchemaModule:2" prefix="ccts-cct"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:documentation:2" prefix="ccts"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M9"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M10"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M11"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M12"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M13"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M14"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M15"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M16"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M17"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M18"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M19"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M20"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M21"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M22"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M23"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M24"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M25"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M26"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M27"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M28"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M29"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M30"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M31"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M32"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M33"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M34"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M35"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M36"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M37"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M38"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M39"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M40"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M41"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M42"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M43"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M44"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M45"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M46"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M47"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M48"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M49"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M50"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M51"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M52"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M53"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M54"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M55"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M56"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M57"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M58"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M59"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M60"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M61"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M62"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M63"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M64"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M65"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M66"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M67"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M68"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M69"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M70"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M71"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M72"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M73"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M74"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M75"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M76"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M77"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M78"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M79"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M80"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M81"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M82"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M83"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M84"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M85"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M86"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M87"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M88"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M89"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M90"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M91"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M92"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M93"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M94"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M95"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M96"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M97"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M98"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M99"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M100"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M101"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M102"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M103"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M104"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M105"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M106"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M107"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M108"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M109"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M110"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M111"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M112"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M113"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M114"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M115"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M116"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M117"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M118"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M119"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M120"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M121"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M122"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M123"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M124"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M125"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M126"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M127"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M128"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M129"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M130"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M131"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M132"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M133"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M134"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M135"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M136"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M137"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M138"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M139"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M140"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M141"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M142"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M143"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M144"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M145"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M146"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M147"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M148"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M149"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M150"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M151"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M152"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M153"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M154"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M155"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M156"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M157"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M158"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M159"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M160"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M161"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M162"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M163"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M164"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M165"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M166"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M167"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M168"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M169"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M170"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M171"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M172"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M173"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M174"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M175"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M176"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M177"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M178"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M179"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M180"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M181"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M182"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M183"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M184"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M185"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M186"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M187"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M188"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M189"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M190"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M191"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M192"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M193"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M194"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M195"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M196"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M197"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M198"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M199"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M200"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M201"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M202"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M203"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M204"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M205"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M206"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M207"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M208"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M209"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M210"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M211"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M212"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M213"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M214"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M215"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M216"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M217"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M218"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M219"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M220"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M221"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M222"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M223"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M224"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M225"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M226"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M227"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M228"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M229"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M230"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M231"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M232"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M233"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M234"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M235"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M236"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M237"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M238"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M239"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M240"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M241"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M242"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M243"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M244"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M245"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M246"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M247"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M248"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M249"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M250"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M251"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M252"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M253"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M254"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M255"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M256"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M257"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M258"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M259"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M260"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M261"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M262"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M263"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M264"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M265"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M266"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M267"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M268"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M269"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M270"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M271"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M272"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M273"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M274"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M275"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M276"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M277"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M278"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M279"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M280"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M281"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M282"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M283"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M284"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M285"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M286"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M287"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M288"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M289"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M290"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M291"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M292"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M293"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M294"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M295"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M296"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M297"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M298"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M299"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M300"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M301"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M302"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M303"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M304"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M305"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M306"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M307"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M308"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M309"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M310"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M311"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M312"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M313"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M314"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M315"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M316"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M317"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M318"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M319"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M320"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M321"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M322"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M323"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M324"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M325"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M326"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M327"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M328"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M329"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M330"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M331"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M332"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M333"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M334"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M335"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M336"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M337"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M338"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M339"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M340"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M341"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M342"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M343"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M344"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M345"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M346"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M347"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M348"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M349"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M350"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M351"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M352"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M353"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M354"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M355"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M356"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M357"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M358"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M359"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M360"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M361"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M362"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M363"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M364"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M365"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M366"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M367"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M368"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M369"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M370"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M371"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M372"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M373"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M374"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M375"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M376"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M377"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M378"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M379"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M380"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M381"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M382"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M383"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M384"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M385"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M386"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M387"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M388"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M389"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M390"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M391"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M392"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M393"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M394"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M395"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M396"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M397"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M398"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M399"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M400"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M401"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M402"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M403"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M404"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M405"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M406"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M407"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M408"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M409"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M410"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M411"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M412"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M413"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M414"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M415"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M416"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M417"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M418"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M419"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M420"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M421"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M422"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M423"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M424"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M425"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M426"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M427"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M428"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M429"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M430"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M431"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M432"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M433"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M434"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M435"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M436"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M437"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M438"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M439"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M440"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M441"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M442"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M443"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M444"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M445"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M446"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M447"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M448"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M449"/>
      </svrl:schematron-output>
   </axsl:template>

<!--SCHEMATRON PATTERNS-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema">BII2 CORE restrictions for Tender Transaction (T44) UBL-Tender-2.1</svrl:text>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:AgentParty" priority="1000" mode="M9">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:AgentParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AgentParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M9"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M9"/>
   <axsl:template match="@*|node()" priority="-2" mode="M9">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M9"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cac:OtherCommunication" priority="1000" mode="M10">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cac:OtherCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:OtherCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M10"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M10"/>
   <axsl:template match="@*|node()" priority="-2" mode="M10">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M10"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:ElectronicMail" priority="1000" mode="M11">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:ElectronicMail"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M11"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M11"/>
   <axsl:template match="@*|node()" priority="-2" mode="M11">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M11"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:ID" priority="1000" mode="M12">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M12"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M12"/>
   <axsl:template match="@*|node()" priority="-2" mode="M12">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M12"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Name" priority="1000" mode="M13">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M13"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M13"/>
   <axsl:template match="@*|node()" priority="-2" mode="M13">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M13"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Note" priority="1000" mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Note"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Note' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M14"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M14"/>
   <axsl:template match="@*|node()" priority="-2" mode="M14">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M14"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Telefax" priority="1000" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Telefax"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M15"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M15"/>
   <axsl:template match="@*|node()" priority="-2" mode="M15">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M15"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Telephone" priority="1000" mode="M16">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Contact/cbc:Telephone"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M16"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M16"/>
   <axsl:template match="@*|node()" priority="-2" mode="M16">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M16"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:FinancialAccount" priority="1000" mode="M17">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:FinancialAccount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:FinancialAccount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M17"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M17"/>
   <axsl:template match="@*|node()" priority="-2" mode="M17">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M17"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Language" priority="1000" mode="M18">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Language"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Language' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M18"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M18"/>
   <axsl:template match="@*|node()" priority="-2" mode="M18">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M18"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyIdentification/cbc:ID" priority="1000" mode="M19">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyIdentification/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M19"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M19"/>
   <axsl:template match="@*|node()" priority="-2" mode="M19">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M19"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme" priority="1000" mode="M20">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:CorporateRegistrationScheme' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M20"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M20"/>
   <axsl:template match="@*|node()" priority="-2" mode="M20">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M20"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:HeadParty" priority="1000" mode="M21">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:HeadParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:HeadParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M21"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M21"/>
   <axsl:template match="@*|node()" priority="-2" mode="M21">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M21"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine" priority="1000" mode="M22">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AddressLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M22"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M22"/>
   <axsl:template match="@*|node()" priority="-2" mode="M22">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M22"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:IdentificationCode" priority="1000" mode="M23">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:IdentificationCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M23"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M23"/>
   <axsl:template match="@*|node()" priority="-2" mode="M23">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M23"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name" priority="1000" mode="M24">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M24"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M24"/>
   <axsl:template match="@*|node()" priority="-2" mode="M24">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M24"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate" priority="1000" mode="M25">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M25"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M25"/>
   <axsl:template match="@*|node()" priority="-2" mode="M25">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M25"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName" priority="1000" mode="M26">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AdditionalStreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M26"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M26"/>
   <axsl:template match="@*|node()" priority="-2" mode="M26">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M26"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode" priority="1000" mode="M27">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressFormatCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M27"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M27"/>
   <axsl:template match="@*|node()" priority="-2" mode="M27">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M27"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode" priority="1000" mode="M28">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M28"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M28"/>
   <axsl:template match="@*|node()" priority="-2" mode="M28">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M28"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName" priority="1000" mode="M29">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BlockName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M29"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M29"/>
   <axsl:template match="@*|node()" priority="-2" mode="M29">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M29"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName" priority="1000" mode="M30">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M30"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M30"/>
   <axsl:template match="@*|node()" priority="-2" mode="M30">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M30"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber" priority="1000" mode="M31">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M31"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M31"/>
   <axsl:template match="@*|node()" priority="-2" mode="M31">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M31"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CityName" priority="1000" mode="M32">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CityName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CityName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M32"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M32"/>
   <axsl:template match="@*|node()" priority="-2" mode="M32">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M32"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName" priority="1000" mode="M33">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CitySubdivisionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M33"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M33"/>
   <axsl:template match="@*|node()" priority="-2" mode="M33">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M33"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentity" priority="1000" mode="M34">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M34"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M34"/>
   <axsl:template match="@*|node()" priority="-2" mode="M34">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M34"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode" priority="1000" mode="M35">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M35"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M35"/>
   <axsl:template match="@*|node()" priority="-2" mode="M35">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M35"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department" priority="1000" mode="M36">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Department' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M36"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M36"/>
   <axsl:template match="@*|node()" priority="-2" mode="M36">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M36"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District" priority="1000" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:District' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M37"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M37"/>
   <axsl:template match="@*|node()" priority="-2" mode="M37">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M37"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor" priority="1000" mode="M38">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Floor' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M38"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M38"/>
   <axsl:template match="@*|node()" priority="-2" mode="M38">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M38"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:ID" priority="1000" mode="M39">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M39"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M39"/>
   <axsl:template match="@*|node()" priority="-2" mode="M39">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M39"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail" priority="1000" mode="M40">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InhouseMail' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M40"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M40"/>
   <axsl:template match="@*|node()" priority="-2" mode="M40">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M40"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention" priority="1000" mode="M41">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttention' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M41"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M41"/>
   <axsl:template match="@*|node()" priority="-2" mode="M41">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M41"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare" priority="1000" mode="M42">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCare' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M42"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M42"/>
   <axsl:template match="@*|node()" priority="-2" mode="M42">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M42"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification" priority="1000" mode="M43">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PlotIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M43"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M43"/>
   <axsl:template match="@*|node()" priority="-2" mode="M43">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M43"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone" priority="1000" mode="M44">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PostalZone' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M44"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M44"/>
   <axsl:template match="@*|node()" priority="-2" mode="M44">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M44"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox" priority="1000" mode="M45">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Postbox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M45"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M45"/>
   <axsl:template match="@*|node()" priority="-2" mode="M45">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M45"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region" priority="1000" mode="M46">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Region' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M46"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M46"/>
   <axsl:template match="@*|node()" priority="-2" mode="M46">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M46"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room" priority="1000" mode="M47">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Room' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M47"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M47"/>
   <axsl:template match="@*|node()" priority="-2" mode="M47">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M47"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName" priority="1000" mode="M48">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:StreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M48"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M48"/>
   <axsl:template match="@*|node()" priority="-2" mode="M48">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M48"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset" priority="1000" mode="M49">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TimezoneOffset' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M49"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M49"/>
   <axsl:template match="@*|node()" priority="-2" mode="M49">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M49"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:ShareholderParty" priority="1000" mode="M50">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cac:ShareholderParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ShareholderParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M50"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M50"/>
   <axsl:template match="@*|node()" priority="-2" mode="M50">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M50"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID" priority="1000" mode="M51">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M51"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M51"/>
   <axsl:template match="@*|node()" priority="-2" mode="M51">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M51"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalFormCode" priority="1000" mode="M52">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalFormCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyLegalFormCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M52"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M52"/>
   <axsl:template match="@*|node()" priority="-2" mode="M52">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M52"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode" priority="1000" mode="M53">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyLiquidationStatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M53"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M53"/>
   <axsl:template match="@*|node()" priority="-2" mode="M53">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M53"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CorporateStockAmount" priority="1000" mode="M54">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:CorporateStockAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CorporateStockAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M54"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M54"/>
   <axsl:template match="@*|node()" priority="-2" mode="M54">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M54"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator" priority="1000" mode="M55">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:FullyPaidSharesIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M55"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M55"/>
   <axsl:template match="@*|node()" priority="-2" mode="M55">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M55"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationDate" priority="1000" mode="M56">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M56"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M56"/>
   <axsl:template match="@*|node()" priority="-2" mode="M56">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M56"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationExpirationDate" priority="1000" mode="M57">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationExpirationDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationExpirationDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M57"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M57"/>
   <axsl:template match="@*|node()" priority="-2" mode="M57">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M57"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName" priority="1000" mode="M58">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M58"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M58"/>
   <axsl:template match="@*|node()" priority="-2" mode="M58">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M58"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator" priority="1000" mode="M59">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:SoleProprietorshipIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M59"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M59"/>
   <axsl:template match="@*|node()" priority="-2" mode="M59">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M59"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyName/cbc:Name" priority="1000" mode="M60">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyName/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M60"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M60"/>
   <axsl:template match="@*|node()" priority="-2" mode="M60">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M60"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyTaxScheme" priority="1000" mode="M61">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PartyTaxScheme"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PartyTaxScheme' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M61"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M61"/>
   <axsl:template match="@*|node()" priority="-2" mode="M61">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M61"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:Person" priority="1000" mode="M62">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:Person"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Person' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M62"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M62"/>
   <axsl:template match="@*|node()" priority="-2" mode="M62">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M62"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:AddressLine" priority="1000" mode="M63">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:AddressLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AddressLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M63"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M63"/>
   <axsl:template match="@*|node()" priority="-2" mode="M63">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M63"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:IdentificationCode" priority="1000" mode="M64">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:IdentificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:IdentificationCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M64"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M64"/>
   <axsl:template match="@*|node()" priority="-2" mode="M64">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M64"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:Name" priority="1000" mode="M65">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M65"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M65"/>
   <axsl:template match="@*|node()" priority="-2" mode="M65">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M65"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:LocationCoordinate" priority="1000" mode="M66">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M66"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M66"/>
   <axsl:template match="@*|node()" priority="-2" mode="M66">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M66"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AdditionalStreetName" priority="1000" mode="M67">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M67"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M67"/>
   <axsl:template match="@*|node()" priority="-2" mode="M67">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M67"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressFormatCode" priority="1000" mode="M68">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressFormatCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressFormatCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M68"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M68"/>
   <axsl:template match="@*|node()" priority="-2" mode="M68">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M68"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressTypeCode" priority="1000" mode="M69">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M69"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M69"/>
   <axsl:template match="@*|node()" priority="-2" mode="M69">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M69"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BlockName" priority="1000" mode="M70">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BlockName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BlockName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M70"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M70"/>
   <axsl:template match="@*|node()" priority="-2" mode="M70">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M70"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingName" priority="1000" mode="M71">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M71"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M71"/>
   <axsl:template match="@*|node()" priority="-2" mode="M71">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M71"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingNumber" priority="1000" mode="M72">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M72"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M72"/>
   <axsl:template match="@*|node()" priority="-2" mode="M72">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M72"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CityName" priority="1000" mode="M73">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CityName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M73"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M73"/>
   <axsl:template match="@*|node()" priority="-2" mode="M73">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M73"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CitySubdivisionName" priority="1000" mode="M74">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CitySubdivisionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CitySubdivisionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M74"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M74"/>
   <axsl:template match="@*|node()" priority="-2" mode="M74">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M74"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentity" priority="1000" mode="M75">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M75"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M75"/>
   <axsl:template match="@*|node()" priority="-2" mode="M75">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M75"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentityCode" priority="1000" mode="M76">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M76"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M76"/>
   <axsl:template match="@*|node()" priority="-2" mode="M76">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M76"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Department" priority="1000" mode="M77">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Department"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Department' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M77"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M77"/>
   <axsl:template match="@*|node()" priority="-2" mode="M77">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M77"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:District" priority="1000" mode="M78">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:District"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:District' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M78"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M78"/>
   <axsl:template match="@*|node()" priority="-2" mode="M78">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M78"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Floor" priority="1000" mode="M79">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Floor"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Floor' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M79"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M79"/>
   <axsl:template match="@*|node()" priority="-2" mode="M79">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M79"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:ID" priority="1000" mode="M80">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M80"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M80"/>
   <axsl:template match="@*|node()" priority="-2" mode="M80">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M80"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:InhouseMail" priority="1000" mode="M81">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:InhouseMail"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InhouseMail' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M81"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M81"/>
   <axsl:template match="@*|node()" priority="-2" mode="M81">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M81"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkAttention" priority="1000" mode="M82">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkAttention"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttention' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M82"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M82"/>
   <axsl:template match="@*|node()" priority="-2" mode="M82">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M82"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkCare" priority="1000" mode="M83">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkCare"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCare' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M83"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M83"/>
   <axsl:template match="@*|node()" priority="-2" mode="M83">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M83"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PlotIdentification" priority="1000" mode="M84">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PlotIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PlotIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M84"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M84"/>
   <axsl:template match="@*|node()" priority="-2" mode="M84">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M84"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PostalZone" priority="1000" mode="M85">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PostalZone"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M85"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M85"/>
   <axsl:template match="@*|node()" priority="-2" mode="M85">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M85"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Postbox" priority="1000" mode="M86">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Postbox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Postbox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M86"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M86"/>
   <axsl:template match="@*|node()" priority="-2" mode="M86">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M86"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Region" priority="1000" mode="M87">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Region"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Region' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M87"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M87"/>
   <axsl:template match="@*|node()" priority="-2" mode="M87">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M87"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Room" priority="1000" mode="M88">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Room"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Room' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M88"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M88"/>
   <axsl:template match="@*|node()" priority="-2" mode="M88">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M88"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:StreetName" priority="1000" mode="M89">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:StreetName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M89"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M89"/>
   <axsl:template match="@*|node()" priority="-2" mode="M89">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M89"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:TimezoneOffset" priority="1000" mode="M90">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:TimezoneOffset"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TimezoneOffset' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M90"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M90"/>
   <axsl:template match="@*|node()" priority="-2" mode="M90">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M90"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:LocationCoordinate" priority="1000" mode="M91">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M91"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M91"/>
   <axsl:template match="@*|node()" priority="-2" mode="M91">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M91"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:SubsidiaryLocation" priority="1000" mode="M92">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:SubsidiaryLocation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:SubsidiaryLocation' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M92"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M92"/>
   <axsl:template match="@*|node()" priority="-2" mode="M92">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M92"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:ValidityPeriod" priority="1000" mode="M93">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cac:ValidityPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ValidityPeriod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M93"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M93"/>
   <axsl:template match="@*|node()" priority="-2" mode="M93">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M93"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:Conditions" priority="1000" mode="M94">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:Conditions"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Conditions' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M94"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M94"/>
   <axsl:template match="@*|node()" priority="-2" mode="M94">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M94"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentity" priority="1000" mode="M95">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M95"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M95"/>
   <axsl:template match="@*|node()" priority="-2" mode="M95">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M95"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentityCode" priority="1000" mode="M96">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M96"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M96"/>
   <axsl:template match="@*|node()" priority="-2" mode="M96">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M96"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:Description" priority="1000" mode="M97">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M97"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M97"/>
   <axsl:template match="@*|node()" priority="-2" mode="M97">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M97"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:ID" priority="1000" mode="M98">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M98"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M98"/>
   <axsl:template match="@*|node()" priority="-2" mode="M98">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M98"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:InformationURI" priority="1000" mode="M99">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:InformationURI"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InformationURI' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M99"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M99"/>
   <axsl:template match="@*|node()" priority="-2" mode="M99">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M99"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:LocationTypeCode" priority="1000" mode="M100">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:LocationTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LocationTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M100"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M100"/>
   <axsl:template match="@*|node()" priority="-2" mode="M100">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M100"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:Name" priority="1000" mode="M101">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PhysicalLocation/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M101"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M101"/>
   <axsl:template match="@*|node()" priority="-2" mode="M101">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M101"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cac:AddressLine" priority="1000" mode="M102">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cac:AddressLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AddressLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M102"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M102"/>
   <axsl:template match="@*|node()" priority="-2" mode="M102">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M102"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cac:Country" priority="1000" mode="M103">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cac:Country"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Country' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M103"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M103"/>
   <axsl:template match="@*|node()" priority="-2" mode="M103">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M103"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cac:LocationCoordinate" priority="1000" mode="M104">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M104"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M104"/>
   <axsl:template match="@*|node()" priority="-2" mode="M104">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M104"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:AdditionalStreetName" priority="1000" mode="M105">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AdditionalStreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M105"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M105"/>
   <axsl:template match="@*|node()" priority="-2" mode="M105">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M105"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:AddressFormatCode" priority="1000" mode="M106">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:AddressFormatCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressFormatCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M106"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M106"/>
   <axsl:template match="@*|node()" priority="-2" mode="M106">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M106"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:AddressTypeCode" priority="1000" mode="M107">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:AddressTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M107"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M107"/>
   <axsl:template match="@*|node()" priority="-2" mode="M107">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M107"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:BlockName" priority="1000" mode="M108">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:BlockName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BlockName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M108"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M108"/>
   <axsl:template match="@*|node()" priority="-2" mode="M108">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M108"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:BuildingName" priority="1000" mode="M109">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M109"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M109"/>
   <axsl:template match="@*|node()" priority="-2" mode="M109">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M109"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber" priority="1000" mode="M110">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M110"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M110"/>
   <axsl:template match="@*|node()" priority="-2" mode="M110">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M110"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CityName" priority="1000" mode="M111">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CityName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CityName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M111"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M111"/>
   <axsl:template match="@*|node()" priority="-2" mode="M111">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M111"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName" priority="1000" mode="M112">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CitySubdivisionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M112"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M112"/>
   <axsl:template match="@*|node()" priority="-2" mode="M112">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M112"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CountrySubentity" priority="1000" mode="M113">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M113"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M113"/>
   <axsl:template match="@*|node()" priority="-2" mode="M113">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M113"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode" priority="1000" mode="M114">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M114"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M114"/>
   <axsl:template match="@*|node()" priority="-2" mode="M114">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M114"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Department" priority="1000" mode="M115">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Department"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Department' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M115"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M115"/>
   <axsl:template match="@*|node()" priority="-2" mode="M115">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M115"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:District" priority="1000" mode="M116">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:District"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:District' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M116"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M116"/>
   <axsl:template match="@*|node()" priority="-2" mode="M116">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M116"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Floor" priority="1000" mode="M117">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Floor"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Floor' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M117"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M117"/>
   <axsl:template match="@*|node()" priority="-2" mode="M117">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M117"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:ID" priority="1000" mode="M118">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M118"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M118"/>
   <axsl:template match="@*|node()" priority="-2" mode="M118">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M118"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:InhouseMail" priority="1000" mode="M119">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:InhouseMail"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InhouseMail' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M119"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M119"/>
   <axsl:template match="@*|node()" priority="-2" mode="M119">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M119"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:MarkAttention" priority="1000" mode="M120">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:MarkAttention"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttention' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M120"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M120"/>
   <axsl:template match="@*|node()" priority="-2" mode="M120">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M120"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:MarkCare" priority="1000" mode="M121">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:MarkCare"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCare' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M121"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M121"/>
   <axsl:template match="@*|node()" priority="-2" mode="M121">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M121"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:PlotIdentification" priority="1000" mode="M122">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:PlotIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PlotIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M122"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M122"/>
   <axsl:template match="@*|node()" priority="-2" mode="M122">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M122"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:PostalZone" priority="1000" mode="M123">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:PostalZone"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PostalZone' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M123"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M123"/>
   <axsl:template match="@*|node()" priority="-2" mode="M123">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M123"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Postbox" priority="1000" mode="M124">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Postbox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Postbox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M124"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M124"/>
   <axsl:template match="@*|node()" priority="-2" mode="M124">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M124"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Region" priority="1000" mode="M125">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Region"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Region' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M125"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M125"/>
   <axsl:template match="@*|node()" priority="-2" mode="M125">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M125"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Room" priority="1000" mode="M126">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:Room"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Room' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M126"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M126"/>
   <axsl:template match="@*|node()" priority="-2" mode="M126">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M126"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:StreetName" priority="1000" mode="M127">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:StreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:StreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M127"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M127"/>
   <axsl:template match="@*|node()" priority="-2" mode="M127">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M127"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:TimezoneOffset" priority="1000" mode="M128">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PostalAddress/cbc:TimezoneOffset"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TimezoneOffset' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M128"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M128"/>
   <axsl:template match="@*|node()" priority="-2" mode="M128">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M128"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:PowerOfAttorney" priority="1000" mode="M129">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:PowerOfAttorney"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PowerOfAttorney' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M129"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M129"/>
   <axsl:template match="@*|node()" priority="-2" mode="M129">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M129"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cac:ServiceProviderParty" priority="1000" mode="M130">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cac:ServiceProviderParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ServiceProviderParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M130"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M130"/>
   <axsl:template match="@*|node()" priority="-2" mode="M130">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M130"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cbc:EndpointID" priority="1000" mode="M131">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cbc:EndpointID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:EndpointID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M131"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M131"/>
   <axsl:template match="@*|node()" priority="-2" mode="M131">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M131"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cbc:IndustryClassificationCode" priority="1000" mode="M132">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cbc:IndustryClassificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:IndustryClassificationCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M132"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M132"/>
   <axsl:template match="@*|node()" priority="-2" mode="M132">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M132"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cbc:LogoReferenceID" priority="1000" mode="M133">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cbc:LogoReferenceID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LogoReferenceID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M133"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M133"/>
   <axsl:template match="@*|node()" priority="-2" mode="M133">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M133"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cbc:MarkAttentionIndicator" priority="1000" mode="M134">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cbc:MarkAttentionIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttentionIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M134"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M134"/>
   <axsl:template match="@*|node()" priority="-2" mode="M134">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M134"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cbc:MarkCareIndicator" priority="1000" mode="M135">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cbc:MarkCareIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCareIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M135"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M135"/>
   <axsl:template match="@*|node()" priority="-2" mode="M135">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M135"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cac:Party/cbc:WebsiteURI" priority="1000" mode="M136">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cac:Party/cbc:WebsiteURI"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:WebsiteURI' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M136"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M136"/>
   <axsl:template match="@*|node()" priority="-2" mode="M136">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M136"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cbc:ActivityCode" priority="1000" mode="M137">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cbc:ActivityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ActivityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M137"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M137"/>
   <axsl:template match="@*|node()" priority="-2" mode="M137">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M137"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cbc:BuyerProfileURI" priority="1000" mode="M138">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cbc:BuyerProfileURI"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuyerProfileURI' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M138"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M138"/>
   <axsl:template match="@*|node()" priority="-2" mode="M138">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M138"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ContractingParty/cbc:ContractingPartyTypeCode" priority="1000" mode="M139">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ContractingParty/cbc:ContractingPartyTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ContractingPartyTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M139"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M139"/>
   <axsl:template match="@*|node()" priority="-2" mode="M139">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M139"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cac:Attachment/cac:ExternalReference" priority="1000" mode="M140">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cac:Attachment/cac:ExternalReference"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ExternalReference' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M140"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M140"/>
   <axsl:template match="@*|node()" priority="-2" mode="M140">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M140"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cac:IssuerParty" priority="1000" mode="M141">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cac:IssuerParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:IssuerParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M141"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M141"/>
   <axsl:template match="@*|node()" priority="-2" mode="M141">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M141"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cac:ResultOfVerification" priority="1000" mode="M142">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cac:ResultOfVerification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ResultOfVerification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M142"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M142"/>
   <axsl:template match="@*|node()" priority="-2" mode="M142">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M142"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cac:ValidityPeriod" priority="1000" mode="M143">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cac:ValidityPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ValidityPeriod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M143"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M143"/>
   <axsl:template match="@*|node()" priority="-2" mode="M143">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M143"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:CopyIndicator" priority="1000" mode="M144">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:CopyIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CopyIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M144"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M144"/>
   <axsl:template match="@*|node()" priority="-2" mode="M144">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M144"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:DocumentDescription" priority="1000" mode="M145">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:DocumentDescription"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M145"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M145"/>
   <axsl:template match="@*|node()" priority="-2" mode="M145">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M145"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:DocumentStatusCode" priority="1000" mode="M146">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:DocumentStatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:DocumentStatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M146"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M146"/>
   <axsl:template match="@*|node()" priority="-2" mode="M146">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M146"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:DocumentType" priority="1000" mode="M147">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:DocumentType"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:DocumentType' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M147"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M147"/>
   <axsl:template match="@*|node()" priority="-2" mode="M147">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M147"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:DocumentTypeCode" priority="1000" mode="M148">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:DocumentTypeCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M148"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M148"/>
   <axsl:template match="@*|node()" priority="-2" mode="M148">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M148"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:ID" priority="1000" mode="M149">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M149"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M149"/>
   <axsl:template match="@*|node()" priority="-2" mode="M149">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M149"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:IssueDate" priority="1000" mode="M150">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:IssueDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:IssueDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M150"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M150"/>
   <axsl:template match="@*|node()" priority="-2" mode="M150">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M150"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:IssueTime" priority="1000" mode="M151">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:IssueTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:IssueTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M151"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M151"/>
   <axsl:template match="@*|node()" priority="-2" mode="M151">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M151"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:LanguageID" priority="1000" mode="M152">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:LanguageID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LanguageID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M152"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M152"/>
   <axsl:template match="@*|node()" priority="-2" mode="M152">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M152"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:LocaleCode" priority="1000" mode="M153">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:LocaleCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LocaleCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M153"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M153"/>
   <axsl:template match="@*|node()" priority="-2" mode="M153">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M153"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:UUID" priority="1000" mode="M154">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:UUID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:UUID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M154"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M154"/>
   <axsl:template match="@*|node()" priority="-2" mode="M154">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M154"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:VersionID" priority="1000" mode="M155">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:VersionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:VersionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M155"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M155"/>
   <axsl:template match="@*|node()" priority="-2" mode="M155">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M155"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:DocumentReference/cbc:XPath" priority="1000" mode="M156">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:DocumentReference/cbc:XPath"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:XPath' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M156"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M156"/>
   <axsl:template match="@*|node()" priority="-2" mode="M156">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M156"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:AccountingContact" priority="1000" mode="M157">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:AccountingContact"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AccountingContact' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M157"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M157"/>
   <axsl:template match="@*|node()" priority="-2" mode="M157">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M157"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:BuyerContact" priority="1000" mode="M158">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:BuyerContact"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:BuyerContact' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M158"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M158"/>
   <axsl:template match="@*|node()" priority="-2" mode="M158">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M158"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:DeliveryContact" priority="1000" mode="M159">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:DeliveryContact"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:DeliveryContact' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M159"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M159"/>
   <axsl:template match="@*|node()" priority="-2" mode="M159">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M159"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:AgentParty" priority="1000" mode="M160">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:AgentParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AgentParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M160"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M160"/>
   <axsl:template match="@*|node()" priority="-2" mode="M160">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M160"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cac:OtherCommunication" priority="1000" mode="M161">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cac:OtherCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:OtherCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M161"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M161"/>
   <axsl:template match="@*|node()" priority="-2" mode="M161">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M161"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail" priority="1000" mode="M162">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M162"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M162"/>
   <axsl:template match="@*|node()" priority="-2" mode="M162">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M162"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:ID" priority="1000" mode="M163">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M163"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M163"/>
   <axsl:template match="@*|node()" priority="-2" mode="M163">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M163"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Name" priority="1000" mode="M164">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M164"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M164"/>
   <axsl:template match="@*|node()" priority="-2" mode="M164">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M164"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Note" priority="1000" mode="M165">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Note"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Note' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M165"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M165"/>
   <axsl:template match="@*|node()" priority="-2" mode="M165">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M165"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Telefax" priority="1000" mode="M166">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Telefax"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M166"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M166"/>
   <axsl:template match="@*|node()" priority="-2" mode="M166">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M166"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Telephone" priority="1000" mode="M167">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Contact/cbc:Telephone"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M167"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M167"/>
   <axsl:template match="@*|node()" priority="-2" mode="M167">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M167"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:FinancialAccount" priority="1000" mode="M168">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:FinancialAccount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:FinancialAccount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M168"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M168"/>
   <axsl:template match="@*|node()" priority="-2" mode="M168">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M168"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Language" priority="1000" mode="M169">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Language"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Language' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M169"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M169"/>
   <axsl:template match="@*|node()" priority="-2" mode="M169">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M169"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID" priority="1000" mode="M170">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M170"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M170"/>
   <axsl:template match="@*|node()" priority="-2" mode="M170">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M170"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme" priority="1000" mode="M171">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:CorporateRegistrationScheme"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:CorporateRegistrationScheme' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M171"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M171"/>
   <axsl:template match="@*|node()" priority="-2" mode="M171">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M171"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:HeadParty" priority="1000" mode="M172">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:HeadParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:HeadParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M172"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M172"/>
   <axsl:template match="@*|node()" priority="-2" mode="M172">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M172"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine" priority="1000" mode="M173">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AddressLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M173"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M173"/>
   <axsl:template match="@*|node()" priority="-2" mode="M173">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M173"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:IdentificationCode" priority="1000" mode="M174">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:IdentificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:IdentificationCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M174"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M174"/>
   <axsl:template match="@*|node()" priority="-2" mode="M174">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M174"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name" priority="1000" mode="M175">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M175"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M175"/>
   <axsl:template match="@*|node()" priority="-2" mode="M175">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M175"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate" priority="1000" mode="M176">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M176"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M176"/>
   <axsl:template match="@*|node()" priority="-2" mode="M176">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M176"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName" priority="1000" mode="M177">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AdditionalStreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M177"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M177"/>
   <axsl:template match="@*|node()" priority="-2" mode="M177">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M177"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode" priority="1000" mode="M178">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressFormatCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M178"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M178"/>
   <axsl:template match="@*|node()" priority="-2" mode="M178">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M178"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode" priority="1000" mode="M179">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M179"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M179"/>
   <axsl:template match="@*|node()" priority="-2" mode="M179">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M179"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName" priority="1000" mode="M180">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BlockName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M180"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M180"/>
   <axsl:template match="@*|node()" priority="-2" mode="M180">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M180"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName" priority="1000" mode="M181">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M181"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M181"/>
   <axsl:template match="@*|node()" priority="-2" mode="M181">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M181"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber" priority="1000" mode="M182">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M182"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M182"/>
   <axsl:template match="@*|node()" priority="-2" mode="M182">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M182"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CityName" priority="1000" mode="M183">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CityName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CityName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M183"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M183"/>
   <axsl:template match="@*|node()" priority="-2" mode="M183">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M183"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName" priority="1000" mode="M184">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CitySubdivisionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M184"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M184"/>
   <axsl:template match="@*|node()" priority="-2" mode="M184">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M184"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentity" priority="1000" mode="M185">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M185"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M185"/>
   <axsl:template match="@*|node()" priority="-2" mode="M185">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M185"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode" priority="1000" mode="M186">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M186"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M186"/>
   <axsl:template match="@*|node()" priority="-2" mode="M186">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M186"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department" priority="1000" mode="M187">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Department' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M187"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M187"/>
   <axsl:template match="@*|node()" priority="-2" mode="M187">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M187"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District" priority="1000" mode="M188">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:District' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M188"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M188"/>
   <axsl:template match="@*|node()" priority="-2" mode="M188">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M188"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor" priority="1000" mode="M189">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Floor' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M189"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M189"/>
   <axsl:template match="@*|node()" priority="-2" mode="M189">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M189"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:ID" priority="1000" mode="M190">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M190"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M190"/>
   <axsl:template match="@*|node()" priority="-2" mode="M190">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M190"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail" priority="1000" mode="M191">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InhouseMail' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M191"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M191"/>
   <axsl:template match="@*|node()" priority="-2" mode="M191">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M191"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention" priority="1000" mode="M192">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttention' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M192"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M192"/>
   <axsl:template match="@*|node()" priority="-2" mode="M192">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M192"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare" priority="1000" mode="M193">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCare' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M193"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M193"/>
   <axsl:template match="@*|node()" priority="-2" mode="M193">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M193"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification" priority="1000" mode="M194">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PlotIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M194"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M194"/>
   <axsl:template match="@*|node()" priority="-2" mode="M194">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M194"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone" priority="1000" mode="M195">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PostalZone' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M195"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M195"/>
   <axsl:template match="@*|node()" priority="-2" mode="M195">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M195"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox" priority="1000" mode="M196">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Postbox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M196"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M196"/>
   <axsl:template match="@*|node()" priority="-2" mode="M196">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M196"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region" priority="1000" mode="M197">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Region' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M197"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M197"/>
   <axsl:template match="@*|node()" priority="-2" mode="M197">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M197"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room" priority="1000" mode="M198">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Room' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M198"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M198"/>
   <axsl:template match="@*|node()" priority="-2" mode="M198">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M198"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName" priority="1000" mode="M199">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:StreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M199"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M199"/>
   <axsl:template match="@*|node()" priority="-2" mode="M199">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M199"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset" priority="1000" mode="M200">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TimezoneOffset' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M200"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M200"/>
   <axsl:template match="@*|node()" priority="-2" mode="M200">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M200"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:ShareholderParty" priority="1000" mode="M201">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cac:ShareholderParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ShareholderParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M201"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M201"/>
   <axsl:template match="@*|node()" priority="-2" mode="M201">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M201"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID" priority="1000" mode="M202">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M202"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M202"/>
   <axsl:template match="@*|node()" priority="-2" mode="M202">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M202"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalFormCode" priority="1000" mode="M203">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLegalFormCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyLegalFormCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M203"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M203"/>
   <axsl:template match="@*|node()" priority="-2" mode="M203">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M203"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode" priority="1000" mode="M204">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyLiquidationStatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M204"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M204"/>
   <axsl:template match="@*|node()" priority="-2" mode="M204">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M204"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CorporateStockAmount" priority="1000" mode="M205">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CorporateStockAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CorporateStockAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M205"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M205"/>
   <axsl:template match="@*|node()" priority="-2" mode="M205">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M205"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator" priority="1000" mode="M206">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:FullyPaidSharesIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M206"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M206"/>
   <axsl:template match="@*|node()" priority="-2" mode="M206">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M206"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationDate" priority="1000" mode="M207">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M207"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M207"/>
   <axsl:template match="@*|node()" priority="-2" mode="M207">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M207"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationExpirationDate" priority="1000" mode="M208">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationExpirationDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationExpirationDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M208"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M208"/>
   <axsl:template match="@*|node()" priority="-2" mode="M208">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M208"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName" priority="1000" mode="M209">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M209"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M209"/>
   <axsl:template match="@*|node()" priority="-2" mode="M209">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M209"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator" priority="1000" mode="M210">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:SoleProprietorshipIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M210"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M210"/>
   <axsl:template match="@*|node()" priority="-2" mode="M210">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M210"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyName/cbc:Name" priority="1000" mode="M211">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M211"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M211"/>
   <axsl:template match="@*|node()" priority="-2" mode="M211">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M211"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyTaxScheme" priority="1000" mode="M212">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PartyTaxScheme"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PartyTaxScheme' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M212"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M212"/>
   <axsl:template match="@*|node()" priority="-2" mode="M212">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M212"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Person" priority="1000" mode="M213">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:Person"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Person' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M213"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M213"/>
   <axsl:template match="@*|node()" priority="-2" mode="M213">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M213"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:AddressLine" priority="1000" mode="M214">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:AddressLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AddressLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M214"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M214"/>
   <axsl:template match="@*|node()" priority="-2" mode="M214">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M214"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:IdentificationCode" priority="1000" mode="M215">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:IdentificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:IdentificationCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M215"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M215"/>
   <axsl:template match="@*|node()" priority="-2" mode="M215">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M215"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:Name" priority="1000" mode="M216">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:Country/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M216"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M216"/>
   <axsl:template match="@*|node()" priority="-2" mode="M216">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M216"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:LocationCoordinate" priority="1000" mode="M217">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M217"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M217"/>
   <axsl:template match="@*|node()" priority="-2" mode="M217">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M217"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AdditionalStreetName" priority="1000" mode="M218">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M218"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M218"/>
   <axsl:template match="@*|node()" priority="-2" mode="M218">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M218"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressFormatCode" priority="1000" mode="M219">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressFormatCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressFormatCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M219"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M219"/>
   <axsl:template match="@*|node()" priority="-2" mode="M219">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M219"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressTypeCode" priority="1000" mode="M220">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:AddressTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M220"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M220"/>
   <axsl:template match="@*|node()" priority="-2" mode="M220">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M220"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BlockName" priority="1000" mode="M221">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BlockName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BlockName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M221"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M221"/>
   <axsl:template match="@*|node()" priority="-2" mode="M221">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M221"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingName" priority="1000" mode="M222">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M222"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M222"/>
   <axsl:template match="@*|node()" priority="-2" mode="M222">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M222"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingNumber" priority="1000" mode="M223">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M223"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M223"/>
   <axsl:template match="@*|node()" priority="-2" mode="M223">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M223"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CityName" priority="1000" mode="M224">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CityName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M224"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M224"/>
   <axsl:template match="@*|node()" priority="-2" mode="M224">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M224"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CitySubdivisionName" priority="1000" mode="M225">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CitySubdivisionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CitySubdivisionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M225"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M225"/>
   <axsl:template match="@*|node()" priority="-2" mode="M225">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M225"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentity" priority="1000" mode="M226">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M226"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M226"/>
   <axsl:template match="@*|node()" priority="-2" mode="M226">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M226"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentityCode" priority="1000" mode="M227">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M227"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M227"/>
   <axsl:template match="@*|node()" priority="-2" mode="M227">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M227"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Department" priority="1000" mode="M228">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Department"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Department' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M228"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M228"/>
   <axsl:template match="@*|node()" priority="-2" mode="M228">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M228"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:District" priority="1000" mode="M229">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:District"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:District' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M229"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M229"/>
   <axsl:template match="@*|node()" priority="-2" mode="M229">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M229"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Floor" priority="1000" mode="M230">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Floor"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Floor' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M230"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M230"/>
   <axsl:template match="@*|node()" priority="-2" mode="M230">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M230"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:ID" priority="1000" mode="M231">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M231"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M231"/>
   <axsl:template match="@*|node()" priority="-2" mode="M231">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M231"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:InhouseMail" priority="1000" mode="M232">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:InhouseMail"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InhouseMail' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M232"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M232"/>
   <axsl:template match="@*|node()" priority="-2" mode="M232">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M232"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkAttention" priority="1000" mode="M233">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkAttention"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttention' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M233"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M233"/>
   <axsl:template match="@*|node()" priority="-2" mode="M233">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M233"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkCare" priority="1000" mode="M234">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:MarkCare"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCare' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M234"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M234"/>
   <axsl:template match="@*|node()" priority="-2" mode="M234">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M234"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PlotIdentification" priority="1000" mode="M235">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PlotIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PlotIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M235"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M235"/>
   <axsl:template match="@*|node()" priority="-2" mode="M235">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M235"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PostalZone" priority="1000" mode="M236">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:PostalZone"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M236"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M236"/>
   <axsl:template match="@*|node()" priority="-2" mode="M236">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M236"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Postbox" priority="1000" mode="M237">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Postbox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Postbox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M237"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M237"/>
   <axsl:template match="@*|node()" priority="-2" mode="M237">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M237"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Region" priority="1000" mode="M238">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Region"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Region' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M238"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M238"/>
   <axsl:template match="@*|node()" priority="-2" mode="M238">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M238"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Room" priority="1000" mode="M239">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:Room"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Room' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M239"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M239"/>
   <axsl:template match="@*|node()" priority="-2" mode="M239">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M239"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:StreetName" priority="1000" mode="M240">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:StreetName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M240"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M240"/>
   <axsl:template match="@*|node()" priority="-2" mode="M240">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M240"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:TimezoneOffset" priority="1000" mode="M241">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:Address/cbc:TimezoneOffset"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TimezoneOffset' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M241"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M241"/>
   <axsl:template match="@*|node()" priority="-2" mode="M241">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M241"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:LocationCoordinate" priority="1000" mode="M242">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M242"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M242"/>
   <axsl:template match="@*|node()" priority="-2" mode="M242">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M242"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:SubsidiaryLocation" priority="1000" mode="M243">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:SubsidiaryLocation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:SubsidiaryLocation' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M243"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M243"/>
   <axsl:template match="@*|node()" priority="-2" mode="M243">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M243"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:ValidityPeriod" priority="1000" mode="M244">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cac:ValidityPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ValidityPeriod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M244"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M244"/>
   <axsl:template match="@*|node()" priority="-2" mode="M244">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M244"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:Conditions" priority="1000" mode="M245">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:Conditions"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Conditions' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M245"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M245"/>
   <axsl:template match="@*|node()" priority="-2" mode="M245">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M245"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentity" priority="1000" mode="M246">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M246"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M246"/>
   <axsl:template match="@*|node()" priority="-2" mode="M246">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M246"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentityCode" priority="1000" mode="M247">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M247"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M247"/>
   <axsl:template match="@*|node()" priority="-2" mode="M247">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M247"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:Description" priority="1000" mode="M248">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M248"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M248"/>
   <axsl:template match="@*|node()" priority="-2" mode="M248">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M248"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:ID" priority="1000" mode="M249">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M249"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M249"/>
   <axsl:template match="@*|node()" priority="-2" mode="M249">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M249"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:InformationURI" priority="1000" mode="M250">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:InformationURI"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InformationURI' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M250"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M250"/>
   <axsl:template match="@*|node()" priority="-2" mode="M250">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M250"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:LocationTypeCode" priority="1000" mode="M251">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:LocationTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LocationTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M251"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M251"/>
   <axsl:template match="@*|node()" priority="-2" mode="M251">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M251"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:Name" priority="1000" mode="M252">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PhysicalLocation/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M252"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M252"/>
   <axsl:template match="@*|node()" priority="-2" mode="M252">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M252"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PostalAddress" priority="1000" mode="M253">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PostalAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PostalAddress' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M253"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M253"/>
   <axsl:template match="@*|node()" priority="-2" mode="M253">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M253"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PowerOfAttorney" priority="1000" mode="M254">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:PowerOfAttorney"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PowerOfAttorney' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M254"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M254"/>
   <axsl:template match="@*|node()" priority="-2" mode="M254">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M254"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:ServiceProviderParty" priority="1000" mode="M255">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cac:ServiceProviderParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ServiceProviderParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M255"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M255"/>
   <axsl:template match="@*|node()" priority="-2" mode="M255">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M255"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:EndpointID" priority="1000" mode="M256">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:EndpointID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:EndpointID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M256"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M256"/>
   <axsl:template match="@*|node()" priority="-2" mode="M256">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M256"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:IndustryClassificationCode" priority="1000" mode="M257">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:IndustryClassificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:IndustryClassificationCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M257"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M257"/>
   <axsl:template match="@*|node()" priority="-2" mode="M257">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M257"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:LogoReferenceID" priority="1000" mode="M258">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:LogoReferenceID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LogoReferenceID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M258"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M258"/>
   <axsl:template match="@*|node()" priority="-2" mode="M258">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M258"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:MarkAttentionIndicator" priority="1000" mode="M259">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:MarkAttentionIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttentionIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M259"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M259"/>
   <axsl:template match="@*|node()" priority="-2" mode="M259">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M259"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:MarkCareIndicator" priority="1000" mode="M260">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:MarkCareIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCareIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M260"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M260"/>
   <axsl:template match="@*|node()" priority="-2" mode="M260">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M260"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:WebsiteURI" priority="1000" mode="M261">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cac:Party/cbc:WebsiteURI"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:WebsiteURI' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M261"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M261"/>
   <axsl:template match="@*|node()" priority="-2" mode="M261">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M261"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cbc:AdditionalAccountID" priority="1000" mode="M262">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cbc:AdditionalAccountID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AdditionalAccountID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M262"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M262"/>
   <axsl:template match="@*|node()" priority="-2" mode="M262">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M262"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cbc:CustomerAssignedAccountID" priority="1000" mode="M263">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cbc:CustomerAssignedAccountID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CustomerAssignedAccountID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M263"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M263"/>
   <axsl:template match="@*|node()" priority="-2" mode="M263">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M263"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:OriginatorCustomerParty/cbc:SupplierAssignedAccountID" priority="1000" mode="M264">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:OriginatorCustomerParty/cbc:SupplierAssignedAccountID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:SupplierAssignedAccountID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M264"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M264"/>
   <axsl:template match="@*|node()" priority="-2" mode="M264">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M264"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cac:DigitalSignatureAttachment" priority="1000" mode="M265">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cac:DigitalSignatureAttachment"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:DigitalSignatureAttachment' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M265"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M265"/>
   <axsl:template match="@*|node()" priority="-2" mode="M265">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M265"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cac:OriginalDocumentReference" priority="1000" mode="M266">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cac:OriginalDocumentReference"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:OriginalDocumentReference' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M266"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M266"/>
   <axsl:template match="@*|node()" priority="-2" mode="M266">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M266"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cac:SignatoryParty" priority="1000" mode="M267">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cac:SignatoryParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:SignatoryParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M267"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M267"/>
   <axsl:template match="@*|node()" priority="-2" mode="M267">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M267"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cbc:CanonicalizationMethod" priority="1000" mode="M268">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cbc:CanonicalizationMethod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CanonicalizationMethod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M268"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M268"/>
   <axsl:template match="@*|node()" priority="-2" mode="M268">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M268"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cbc:ID" priority="1000" mode="M269">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M269"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M269"/>
   <axsl:template match="@*|node()" priority="-2" mode="M269">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M269"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cbc:Note" priority="1000" mode="M270">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cbc:Note"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Note' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M270"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M270"/>
   <axsl:template match="@*|node()" priority="-2" mode="M270">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M270"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cbc:SignatureMethod" priority="1000" mode="M271">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cbc:SignatureMethod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:SignatureMethod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M271"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M271"/>
   <axsl:template match="@*|node()" priority="-2" mode="M271">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M271"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cbc:ValidationDate" priority="1000" mode="M272">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cbc:ValidationDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ValidationDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M272"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M272"/>
   <axsl:template match="@*|node()" priority="-2" mode="M272">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M272"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cbc:ValidationTime" priority="1000" mode="M273">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cbc:ValidationTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ValidationTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M273"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M273"/>
   <axsl:template match="@*|node()" priority="-2" mode="M273">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M273"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:Signature/cbc:ValidatorID" priority="1000" mode="M274">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:Signature/cbc:ValidatorID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ValidatorID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M274"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M274"/>
   <axsl:template match="@*|node()" priority="-2" mode="M274">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M274"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:SubcontractorParty" priority="1000" mode="M275">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:SubcontractorParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:SubcontractorParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M275"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M275"/>
   <axsl:template match="@*|node()" priority="-2" mode="M275">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M275"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cac:SubordinateAwardingCriteriaResponse" priority="1000" mode="M276">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cac:SubordinateAwardingCriteriaResponse"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:SubordinateAwardingCriteriaResponse' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M276"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M276"/>
   <axsl:template match="@*|node()" priority="-2" mode="M276">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M276"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:AwardingCriteriaDescription" priority="1000" mode="M277">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:AwardingCriteriaDescription"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M277"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M277"/>
   <axsl:template match="@*|node()" priority="-2" mode="M277">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M277"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:AwardingCriteriaID" priority="1000" mode="M278">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:AwardingCriteriaID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M278"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M278"/>
   <axsl:template match="@*|node()" priority="-2" mode="M278">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M278"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:Description" priority="1000" mode="M279">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M279"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M279"/>
   <axsl:template match="@*|node()" priority="-2" mode="M279">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M279"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:ID" priority="1000" mode="M280">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M280"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M280"/>
   <axsl:template match="@*|node()" priority="-2" mode="M280">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M280"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:Quantity" priority="1000" mode="M281">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:AwardingCriteriaResponse/cbc:Quantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Quantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M281"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M281"/>
   <axsl:template match="@*|node()" priority="-2" mode="M281">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M281"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount" priority="1000" mode="M282">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AllowanceTotalAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M282"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M282"/>
   <axsl:template match="@*|node()" priority="-2" mode="M282">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M282"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount" priority="1000" mode="M283">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ChargeTotalAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M283"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M283"/>
   <axsl:template match="@*|node()" priority="-2" mode="M283">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M283"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:LineExtensionAmount" priority="1000" mode="M284">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:LineExtensionAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LineExtensionAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M284"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M284"/>
   <axsl:template match="@*|node()" priority="-2" mode="M284">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M284"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:PayableAlternativeAmount" priority="1000" mode="M285">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:PayableAlternativeAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PayableAlternativeAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M285"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M285"/>
   <axsl:template match="@*|node()" priority="-2" mode="M285">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M285"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:PayableRoundingAmount" priority="1000" mode="M286">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:PayableRoundingAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PayableRoundingAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M286"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M286"/>
   <axsl:template match="@*|node()" priority="-2" mode="M286">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M286"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:PrepaidAmount" priority="1000" mode="M287">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:PrepaidAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PrepaidAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M287"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M287"/>
   <axsl:template match="@*|node()" priority="-2" mode="M287">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M287"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount" priority="1000" mode="M288">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TaxExclusiveAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M288"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M288"/>
   <axsl:template match="@*|node()" priority="-2" mode="M288">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M288"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cac:TaxSubtotal" priority="1000" mode="M289">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cac:TaxSubtotal"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:TaxSubtotal' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M289"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M289"/>
   <axsl:template match="@*|node()" priority="-2" mode="M289">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M289"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cbc:RoundingAmount" priority="1000" mode="M290">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cbc:RoundingAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RoundingAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M290"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M290"/>
   <axsl:template match="@*|node()" priority="-2" mode="M290">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M290"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cbc:TaxEvidenceIndicator" priority="1000" mode="M291">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cbc:TaxEvidenceIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TaxEvidenceIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M291"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M291"/>
   <axsl:template match="@*|node()" priority="-2" mode="M291">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M291"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cbc:TaxIncludedIndicator" priority="1000" mode="M292">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TaxTotal/cbc:TaxIncludedIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TaxIncludedIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M292"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M292"/>
   <axsl:template match="@*|node()" priority="-2" mode="M292">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M292"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:DocumentReference" priority="1000" mode="M293">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:DocumentReference"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:DocumentReference' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M293"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M293"/>
   <axsl:template match="@*|node()" priority="-2" mode="M293">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M293"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:AdditionalItemIdentification" priority="1000" mode="M294">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:AdditionalItemIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AdditionalItemIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M294"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M294"/>
   <axsl:template match="@*|node()" priority="-2" mode="M294">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M294"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:AdditionalItemProperty" priority="1000" mode="M295">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:AdditionalItemProperty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AdditionalItemProperty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M295"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M295"/>
   <axsl:template match="@*|node()" priority="-2" mode="M295">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M295"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:BuyersItemIdentification" priority="1000" mode="M296">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:BuyersItemIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:BuyersItemIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M296"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M296"/>
   <axsl:template match="@*|node()" priority="-2" mode="M296">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M296"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:CatalogueDocumentReference" priority="1000" mode="M297">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:CatalogueDocumentReference"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:CatalogueDocumentReference' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M297"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M297"/>
   <axsl:template match="@*|node()" priority="-2" mode="M297">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M297"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:CatalogueItemIdentification" priority="1000" mode="M298">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:CatalogueItemIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:CatalogueItemIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M298"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M298"/>
   <axsl:template match="@*|node()" priority="-2" mode="M298">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M298"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:Certificate" priority="1000" mode="M299">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:Certificate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Certificate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M299"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M299"/>
   <axsl:template match="@*|node()" priority="-2" mode="M299">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M299"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ClassifiedTaxCategory" priority="1000" mode="M300">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ClassifiedTaxCategory"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ClassifiedTaxCategory' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M300"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M300"/>
   <axsl:template match="@*|node()" priority="-2" mode="M300">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M300"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:CommodityClassification" priority="1000" mode="M301">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:CommodityClassification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:CommodityClassification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M301"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M301"/>
   <axsl:template match="@*|node()" priority="-2" mode="M301">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M301"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:Dimension" priority="1000" mode="M302">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:Dimension"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Dimension' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M302"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M302"/>
   <axsl:template match="@*|node()" priority="-2" mode="M302">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M302"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:HazardousItem" priority="1000" mode="M303">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:HazardousItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:HazardousItem' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M303"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M303"/>
   <axsl:template match="@*|node()" priority="-2" mode="M303">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M303"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:InformationContentProviderParty" priority="1000" mode="M304">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:InformationContentProviderParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:InformationContentProviderParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M304"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M304"/>
   <axsl:template match="@*|node()" priority="-2" mode="M304">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M304"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ItemInstance" priority="1000" mode="M305">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ItemInstance"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ItemInstance' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M305"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M305"/>
   <axsl:template match="@*|node()" priority="-2" mode="M305">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M305"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ItemSpecificationDocumentReference" priority="1000" mode="M306">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ItemSpecificationDocumentReference"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ItemSpecificationDocumentReference' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M306"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M306"/>
   <axsl:template match="@*|node()" priority="-2" mode="M306">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M306"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ManufacturerParty" priority="1000" mode="M307">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ManufacturerParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ManufacturerParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M307"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M307"/>
   <axsl:template match="@*|node()" priority="-2" mode="M307">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M307"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ManufacturersItemIdentification" priority="1000" mode="M308">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:ManufacturersItemIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ManufacturersItemIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M308"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M308"/>
   <axsl:template match="@*|node()" priority="-2" mode="M308">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M308"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:OriginAddress" priority="1000" mode="M309">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:OriginAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:OriginAddress' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M309"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M309"/>
   <axsl:template match="@*|node()" priority="-2" mode="M309">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M309"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:OriginCountry" priority="1000" mode="M310">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:OriginCountry"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:OriginCountry' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M310"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M310"/>
   <axsl:template match="@*|node()" priority="-2" mode="M310">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M310"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:SellersItemIdentification" priority="1000" mode="M311">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:SellersItemIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:SellersItemIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M311"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M311"/>
   <axsl:template match="@*|node()" priority="-2" mode="M311">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M311"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:StandardItemIdentification" priority="1000" mode="M312">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:StandardItemIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:StandardItemIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M312"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M312"/>
   <axsl:template match="@*|node()" priority="-2" mode="M312">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M312"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:TransactionConditions" priority="1000" mode="M313">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cac:TransactionConditions"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:TransactionConditions' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M313"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M313"/>
   <axsl:template match="@*|node()" priority="-2" mode="M313">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M313"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:AdditionalInformation" priority="1000" mode="M314">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:AdditionalInformation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AdditionalInformation' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M314"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M314"/>
   <axsl:template match="@*|node()" priority="-2" mode="M314">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M314"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:BrandName" priority="1000" mode="M315">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:BrandName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BrandName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M315"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M315"/>
   <axsl:template match="@*|node()" priority="-2" mode="M315">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M315"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:CatalogueIndicator" priority="1000" mode="M316">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:CatalogueIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CatalogueIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M316"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M316"/>
   <axsl:template match="@*|node()" priority="-2" mode="M316">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M316"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:Description" priority="1000" mode="M317">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:Description"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M317"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M317"/>
   <axsl:template match="@*|node()" priority="-2" mode="M317">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M317"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:HazardousRiskIndicator" priority="1000" mode="M318">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:HazardousRiskIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:HazardousRiskIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M318"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M318"/>
   <axsl:template match="@*|node()" priority="-2" mode="M318">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M318"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:Keyword" priority="1000" mode="M319">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:Keyword"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Keyword' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M319"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M319"/>
   <axsl:template match="@*|node()" priority="-2" mode="M319">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M319"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:ModelName" priority="1000" mode="M320">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:ModelName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ModelName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M320"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M320"/>
   <axsl:template match="@*|node()" priority="-2" mode="M320">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M320"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:Name" priority="1000" mode="M321">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M321"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M321"/>
   <axsl:template match="@*|node()" priority="-2" mode="M321">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M321"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:PackQuantity" priority="1000" mode="M322">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:PackQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PackQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M322"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M322"/>
   <axsl:template match="@*|node()" priority="-2" mode="M322">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M322"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:PackSizeNumeric" priority="1000" mode="M323">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:Item/cbc:PackSizeNumeric"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PackSizeNumeric' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M323"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M323"/>
   <axsl:template match="@*|node()" priority="-2" mode="M323">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M323"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:OfferedItemLocationQuantity" priority="1000" mode="M324">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:OfferedItemLocationQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:OfferedItemLocationQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M324"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M324"/>
   <axsl:template match="@*|node()" priority="-2" mode="M324">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M324"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:ReplacementRelatedItem" priority="1000" mode="M325">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:ReplacementRelatedItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ReplacementRelatedItem' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M325"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M325"/>
   <axsl:template match="@*|node()" priority="-2" mode="M325">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M325"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:SubTenderLine" priority="1000" mode="M326">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:SubTenderLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:SubTenderLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M326"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M326"/>
   <axsl:template match="@*|node()" priority="-2" mode="M326">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M326"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:WarrantyParty" priority="1000" mode="M327">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:WarrantyParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:WarrantyParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M327"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M327"/>
   <axsl:template match="@*|node()" priority="-2" mode="M327">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M327"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:WarrantyValidityPeriod" priority="1000" mode="M328">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cac:WarrantyValidityPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:WarrantyValidityPeriod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M328"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M328"/>
   <axsl:template match="@*|node()" priority="-2" mode="M328">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M328"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:ContentUnitQuantity" priority="1000" mode="M329">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:ContentUnitQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ContentUnitQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M329"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M329"/>
   <axsl:template match="@*|node()" priority="-2" mode="M329">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M329"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:ID" priority="1000" mode="M330">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M330"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M330"/>
   <axsl:template match="@*|node()" priority="-2" mode="M330">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M330"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:MaximumOrderQuantity" priority="1000" mode="M331">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:MaximumOrderQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MaximumOrderQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M331"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M331"/>
   <axsl:template match="@*|node()" priority="-2" mode="M331">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M331"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:MinimumOrderQuantity" priority="1000" mode="M332">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:MinimumOrderQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MinimumOrderQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M332"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M332"/>
   <axsl:template match="@*|node()" priority="-2" mode="M332">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M332"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:Note" priority="1000" mode="M333">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:Note"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Note' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M333"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M333"/>
   <axsl:template match="@*|node()" priority="-2" mode="M333">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M333"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:OrderQuantityIncrementNumeric" priority="1000" mode="M334">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:OrderQuantityIncrementNumeric"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:OrderQuantityIncrementNumeric' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M334"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M334"/>
   <axsl:template match="@*|node()" priority="-2" mode="M334">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M334"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:OrderableUnit" priority="1000" mode="M335">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:OrderableUnit"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:OrderableUnit' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M335"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M335"/>
   <axsl:template match="@*|node()" priority="-2" mode="M335">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M335"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:PackLevelCode" priority="1000" mode="M336">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:PackLevelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PackLevelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M336"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M336"/>
   <axsl:template match="@*|node()" priority="-2" mode="M336">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M336"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:Quantity" priority="1000" mode="M337">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:Quantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Quantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M337"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M337"/>
   <axsl:template match="@*|node()" priority="-2" mode="M337">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M337"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:WarrantyInformation" priority="1000" mode="M338">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cac:TenderLine/cbc:WarrantyInformation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:WarrantyInformation' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M338"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M338"/>
   <axsl:template match="@*|node()" priority="-2" mode="M338">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M338"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cbc:FeeDescription" priority="1000" mode="M339">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cbc:FeeDescription"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:FeeDescription' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M339"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M339"/>
   <axsl:template match="@*|node()" priority="-2" mode="M339">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M339"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cbc:ProcurementProjectLotID" priority="1000" mode="M340">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cbc:ProcurementProjectLotID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M340"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M340"/>
   <axsl:template match="@*|node()" priority="-2" mode="M340">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M340"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TenderedProject/cbc:VariantID" priority="1000" mode="M341">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TenderedProject/cbc:VariantID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:VariantID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M341"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M341"/>
   <axsl:template match="@*|node()" priority="-2" mode="M341">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M341"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:AgentParty" priority="1000" mode="M342">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:AgentParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AgentParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M342"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M342"/>
   <axsl:template match="@*|node()" priority="-2" mode="M342">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M342"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Contact/cac:OtherCommunication" priority="1000" mode="M343">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Contact/cac:OtherCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:OtherCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M343"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M343"/>
   <axsl:template match="@*|node()" priority="-2" mode="M343">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M343"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Contact/cbc:ElectronicMail" priority="1000" mode="M344">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Contact/cbc:ElectronicMail"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M344"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M344"/>
   <axsl:template match="@*|node()" priority="-2" mode="M344">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M344"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Contact/cbc:ID" priority="1000" mode="M345">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Contact/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M345"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M345"/>
   <axsl:template match="@*|node()" priority="-2" mode="M345">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M345"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Name" priority="1000" mode="M346">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M346"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M346"/>
   <axsl:template match="@*|node()" priority="-2" mode="M346">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M346"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Note" priority="1000" mode="M347">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Note"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Note' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M347"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M347"/>
   <axsl:template match="@*|node()" priority="-2" mode="M347">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M347"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Telefax" priority="1000" mode="M348">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Telefax"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M348"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M348"/>
   <axsl:template match="@*|node()" priority="-2" mode="M348">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M348"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Telephone" priority="1000" mode="M349">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Contact/cbc:Telephone"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M349"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M349"/>
   <axsl:template match="@*|node()" priority="-2" mode="M349">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M349"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:FinancialAccount" priority="1000" mode="M350">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:FinancialAccount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:FinancialAccount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M350"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M350"/>
   <axsl:template match="@*|node()" priority="-2" mode="M350">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M350"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Language" priority="1000" mode="M351">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Language"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Language' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M351"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M351"/>
   <axsl:template match="@*|node()" priority="-2" mode="M351">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M351"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyIdentification/cbc:ID" priority="1000" mode="M352">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyIdentification/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M352"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M352"/>
   <axsl:template match="@*|node()" priority="-2" mode="M352">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M352"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:CorporateRegistrationScheme" priority="1000" mode="M353">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:CorporateRegistrationScheme"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:CorporateRegistrationScheme' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M353"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M353"/>
   <axsl:template match="@*|node()" priority="-2" mode="M353">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M353"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:HeadParty" priority="1000" mode="M354">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:HeadParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:HeadParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M354"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M354"/>
   <axsl:template match="@*|node()" priority="-2" mode="M354">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M354"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine" priority="1000" mode="M355">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:AddressLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AddressLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M355"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M355"/>
   <axsl:template match="@*|node()" priority="-2" mode="M355">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M355"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:IdentificationCode" priority="1000" mode="M356">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:IdentificationCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M356"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M356"/>
   <axsl:template match="@*|node()" priority="-2" mode="M356">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M356"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name" priority="1000" mode="M357">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:Country/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M357"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M357"/>
   <axsl:template match="@*|node()" priority="-2" mode="M357">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M357"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate" priority="1000" mode="M358">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M358"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M358"/>
   <axsl:template match="@*|node()" priority="-2" mode="M358">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M358"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName" priority="1000" mode="M359">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AdditionalStreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M359"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M359"/>
   <axsl:template match="@*|node()" priority="-2" mode="M359">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M359"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode" priority="1000" mode="M360">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressFormatCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressFormatCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M360"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M360"/>
   <axsl:template match="@*|node()" priority="-2" mode="M360">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M360"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode" priority="1000" mode="M361">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:AddressTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M361"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M361"/>
   <axsl:template match="@*|node()" priority="-2" mode="M361">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M361"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName" priority="1000" mode="M362">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BlockName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BlockName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M362"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M362"/>
   <axsl:template match="@*|node()" priority="-2" mode="M362">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M362"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName" priority="1000" mode="M363">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M363"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M363"/>
   <axsl:template match="@*|node()" priority="-2" mode="M363">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M363"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber" priority="1000" mode="M364">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M364"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M364"/>
   <axsl:template match="@*|node()" priority="-2" mode="M364">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M364"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CityName" priority="1000" mode="M365">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CityName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CityName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M365"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M365"/>
   <axsl:template match="@*|node()" priority="-2" mode="M365">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M365"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName" priority="1000" mode="M366">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CitySubdivisionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CitySubdivisionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M366"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M366"/>
   <axsl:template match="@*|node()" priority="-2" mode="M366">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M366"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentity" priority="1000" mode="M367">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M367"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M367"/>
   <axsl:template match="@*|node()" priority="-2" mode="M367">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M367"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode" priority="1000" mode="M368">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M368"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M368"/>
   <axsl:template match="@*|node()" priority="-2" mode="M368">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M368"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department" priority="1000" mode="M369">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Department"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Department' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M369"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M369"/>
   <axsl:template match="@*|node()" priority="-2" mode="M369">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M369"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District" priority="1000" mode="M370">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:District"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:District' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M370"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M370"/>
   <axsl:template match="@*|node()" priority="-2" mode="M370">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M370"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor" priority="1000" mode="M371">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Floor"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Floor' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M371"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M371"/>
   <axsl:template match="@*|node()" priority="-2" mode="M371">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M371"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:ID" priority="1000" mode="M372">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M372"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M372"/>
   <axsl:template match="@*|node()" priority="-2" mode="M372">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M372"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail" priority="1000" mode="M373">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:InhouseMail"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InhouseMail' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M373"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M373"/>
   <axsl:template match="@*|node()" priority="-2" mode="M373">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M373"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention" priority="1000" mode="M374">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkAttention"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttention' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M374"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M374"/>
   <axsl:template match="@*|node()" priority="-2" mode="M374">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M374"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare" priority="1000" mode="M375">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:MarkCare"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCare' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M375"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M375"/>
   <axsl:template match="@*|node()" priority="-2" mode="M375">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M375"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification" priority="1000" mode="M376">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PlotIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PlotIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M376"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M376"/>
   <axsl:template match="@*|node()" priority="-2" mode="M376">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M376"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone" priority="1000" mode="M377">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:PostalZone"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PostalZone' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M377"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M377"/>
   <axsl:template match="@*|node()" priority="-2" mode="M377">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M377"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox" priority="1000" mode="M378">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Postbox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Postbox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M378"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M378"/>
   <axsl:template match="@*|node()" priority="-2" mode="M378">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M378"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region" priority="1000" mode="M379">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Region"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Region' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M379"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M379"/>
   <axsl:template match="@*|node()" priority="-2" mode="M379">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M379"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room" priority="1000" mode="M380">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:Room"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Room' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M380"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M380"/>
   <axsl:template match="@*|node()" priority="-2" mode="M380">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M380"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName" priority="1000" mode="M381">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:StreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:StreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M381"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M381"/>
   <axsl:template match="@*|node()" priority="-2" mode="M381">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M381"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset" priority="1000" mode="M382">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:RegistrationAddress/cbc:TimezoneOffset"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TimezoneOffset' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M382"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M382"/>
   <axsl:template match="@*|node()" priority="-2" mode="M382">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M382"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:ShareholderParty" priority="1000" mode="M383">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cac:ShareholderParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ShareholderParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M383"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M383"/>
   <axsl:template match="@*|node()" priority="-2" mode="M383">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M383"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CompanyID" priority="1000" mode="M384">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CompanyID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M384"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M384"/>
   <axsl:template match="@*|node()" priority="-2" mode="M384">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M384"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CompanyLegalFormCode" priority="1000" mode="M385">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CompanyLegalFormCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyLegalFormCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M385"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M385"/>
   <axsl:template match="@*|node()" priority="-2" mode="M385">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M385"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode" priority="1000" mode="M386">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CompanyLiquidationStatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CompanyLiquidationStatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M386"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M386"/>
   <axsl:template match="@*|node()" priority="-2" mode="M386">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M386"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CorporateStockAmount" priority="1000" mode="M387">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:CorporateStockAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CorporateStockAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M387"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M387"/>
   <axsl:template match="@*|node()" priority="-2" mode="M387">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M387"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator" priority="1000" mode="M388">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:FullyPaidSharesIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:FullyPaidSharesIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M388"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M388"/>
   <axsl:template match="@*|node()" priority="-2" mode="M388">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M388"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:RegistrationDate" priority="1000" mode="M389">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:RegistrationDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M389"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M389"/>
   <axsl:template match="@*|node()" priority="-2" mode="M389">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M389"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:RegistrationExpirationDate" priority="1000" mode="M390">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:RegistrationExpirationDate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationExpirationDate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M390"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M390"/>
   <axsl:template match="@*|node()" priority="-2" mode="M390">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M390"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:RegistrationName" priority="1000" mode="M391">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:RegistrationName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:RegistrationName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M391"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M391"/>
   <axsl:template match="@*|node()" priority="-2" mode="M391">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M391"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator" priority="1000" mode="M392">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyLegalEntity/cbc:SoleProprietorshipIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:SoleProprietorshipIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M392"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M392"/>
   <axsl:template match="@*|node()" priority="-2" mode="M392">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M392"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyName/cbc:Name" priority="1000" mode="M393">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyName/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M393"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M393"/>
   <axsl:template match="@*|node()" priority="-2" mode="M393">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M393"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PartyTaxScheme" priority="1000" mode="M394">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PartyTaxScheme"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PartyTaxScheme' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M394"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M394"/>
   <axsl:template match="@*|node()" priority="-2" mode="M394">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M394"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:Person" priority="1000" mode="M395">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:Person"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:Person' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M395"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M395"/>
   <axsl:template match="@*|node()" priority="-2" mode="M395">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M395"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PhysicalLocation" priority="1000" mode="M396">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PhysicalLocation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PhysicalLocation' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M396"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M396"/>
   <axsl:template match="@*|node()" priority="-2" mode="M396">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M396"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:AddressLine" priority="1000" mode="M397">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:AddressLine"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:AddressLine' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M397"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M397"/>
   <axsl:template match="@*|node()" priority="-2" mode="M397">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M397"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode" priority="1000" mode="M398">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:Country/cbc:IdentificationCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M398"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M398"/>
   <axsl:template match="@*|node()" priority="-2" mode="M398">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M398"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:Country/cbc:Name" priority="1000" mode="M399">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:Country/cbc:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M399"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M399"/>
   <axsl:template match="@*|node()" priority="-2" mode="M399">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M399"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:LocationCoordinate" priority="1000" mode="M400">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cac:LocationCoordinate"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:LocationCoordinate' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M400"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M400"/>
   <axsl:template match="@*|node()" priority="-2" mode="M400">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M400"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:AdditionalStreetName" priority="1000" mode="M401">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M401"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M401"/>
   <axsl:template match="@*|node()" priority="-2" mode="M401">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M401"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:AddressFormatCode" priority="1000" mode="M402">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:AddressFormatCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressFormatCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M402"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M402"/>
   <axsl:template match="@*|node()" priority="-2" mode="M402">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M402"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:AddressTypeCode" priority="1000" mode="M403">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:AddressTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:AddressTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M403"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M403"/>
   <axsl:template match="@*|node()" priority="-2" mode="M403">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M403"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:BlockName" priority="1000" mode="M404">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:BlockName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BlockName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M404"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M404"/>
   <axsl:template match="@*|node()" priority="-2" mode="M404">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M404"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:BuildingName" priority="1000" mode="M405">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M405"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M405"/>
   <axsl:template match="@*|node()" priority="-2" mode="M405">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M405"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:BuildingNumber" priority="1000" mode="M406">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M406"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M406"/>
   <axsl:template match="@*|node()" priority="-2" mode="M406">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M406"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CityName" priority="1000" mode="M407">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CityName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M407"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M407"/>
   <axsl:template match="@*|node()" priority="-2" mode="M407">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M407"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CitySubdivisionName" priority="1000" mode="M408">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CitySubdivisionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CitySubdivisionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M408"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M408"/>
   <axsl:template match="@*|node()" priority="-2" mode="M408">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M408"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CountrySubentity" priority="1000" mode="M409">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CountrySubentity"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M409"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M409"/>
   <axsl:template match="@*|node()" priority="-2" mode="M409">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M409"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CountrySubentityCode" priority="1000" mode="M410">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:CountrySubentityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CountrySubentityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M410"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M410"/>
   <axsl:template match="@*|node()" priority="-2" mode="M410">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M410"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Department" priority="1000" mode="M411">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Department"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Department' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M411"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M411"/>
   <axsl:template match="@*|node()" priority="-2" mode="M411">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M411"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:District" priority="1000" mode="M412">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:District"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:District' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M412"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M412"/>
   <axsl:template match="@*|node()" priority="-2" mode="M412">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M412"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Floor" priority="1000" mode="M413">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Floor"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Floor' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M413"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M413"/>
   <axsl:template match="@*|node()" priority="-2" mode="M413">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M413"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:ID" priority="1000" mode="M414">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M414"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M414"/>
   <axsl:template match="@*|node()" priority="-2" mode="M414">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M414"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:InhouseMail" priority="1000" mode="M415">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:InhouseMail"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:InhouseMail' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M415"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M415"/>
   <axsl:template match="@*|node()" priority="-2" mode="M415">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M415"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:MarkAttention" priority="1000" mode="M416">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:MarkAttention"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttention' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M416"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M416"/>
   <axsl:template match="@*|node()" priority="-2" mode="M416">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M416"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:MarkCare" priority="1000" mode="M417">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:MarkCare"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCare' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M417"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M417"/>
   <axsl:template match="@*|node()" priority="-2" mode="M417">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M417"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:PlotIdentification" priority="1000" mode="M418">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:PlotIdentification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:PlotIdentification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M418"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M418"/>
   <axsl:template match="@*|node()" priority="-2" mode="M418">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M418"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:PostalZone" priority="1000" mode="M419">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:PostalZone"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M419"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M419"/>
   <axsl:template match="@*|node()" priority="-2" mode="M419">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M419"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Postbox" priority="1000" mode="M420">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Postbox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Postbox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M420"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M420"/>
   <axsl:template match="@*|node()" priority="-2" mode="M420">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M420"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Region" priority="1000" mode="M421">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Region"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Region' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M421"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M421"/>
   <axsl:template match="@*|node()" priority="-2" mode="M421">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M421"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Room" priority="1000" mode="M422">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:Room"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Room' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M422"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M422"/>
   <axsl:template match="@*|node()" priority="-2" mode="M422">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M422"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:StreetName" priority="1000" mode="M423">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:StreetName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M423"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M423"/>
   <axsl:template match="@*|node()" priority="-2" mode="M423">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M423"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:TimezoneOffset" priority="1000" mode="M424">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PostalAddress/cbc:TimezoneOffset"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:TimezoneOffset' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M424"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M424"/>
   <axsl:template match="@*|node()" priority="-2" mode="M424">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M424"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:PowerOfAttorney" priority="1000" mode="M425">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:PowerOfAttorney"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:PowerOfAttorney' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M425"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M425"/>
   <axsl:template match="@*|node()" priority="-2" mode="M425">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M425"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cac:ServiceProviderParty" priority="1000" mode="M426">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cac:ServiceProviderParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cac:ServiceProviderParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M426"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M426"/>
   <axsl:template match="@*|node()" priority="-2" mode="M426">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M426"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cbc:EndpointID" priority="1000" mode="M427">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cbc:EndpointID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:EndpointID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M427"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M427"/>
   <axsl:template match="@*|node()" priority="-2" mode="M427">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M427"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cbc:IndustryClassificationCode" priority="1000" mode="M428">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cbc:IndustryClassificationCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M428"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M428"/>
   <axsl:template match="@*|node()" priority="-2" mode="M428">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M428"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cbc:LogoReferenceID" priority="1000" mode="M429">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cbc:LogoReferenceID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:LogoReferenceID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M429"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M429"/>
   <axsl:template match="@*|node()" priority="-2" mode="M429">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M429"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cbc:MarkAttentionIndicator" priority="1000" mode="M430">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cbc:MarkAttentionIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkAttentionIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M430"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M430"/>
   <axsl:template match="@*|node()" priority="-2" mode="M430">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M430"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cbc:MarkCareIndicator" priority="1000" mode="M431">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cbc:MarkCareIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:MarkCareIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M431"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M431"/>
   <axsl:template match="@*|node()" priority="-2" mode="M431">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M431"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:TendererParty/cbc:WebsiteURI" priority="1000" mode="M432">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:TendererParty/cbc:WebsiteURI"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:WebsiteURI' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M432"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M432"/>
   <axsl:template match="@*|node()" priority="-2" mode="M432">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M432"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ValidityPeriod/cbc:Description" priority="1000" mode="M433">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ValidityPeriod/cbc:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M433"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M433"/>
   <axsl:template match="@*|node()" priority="-2" mode="M433">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M433"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ValidityPeriod/cbc:DescriptionCode" priority="1000" mode="M434">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ValidityPeriod/cbc:DescriptionCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:DescriptionCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M434"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M434"/>
   <axsl:template match="@*|node()" priority="-2" mode="M434">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M434"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ValidityPeriod/cbc:DurationMeasure" priority="1000" mode="M435">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ValidityPeriod/cbc:DurationMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:DurationMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M435"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M435"/>
   <axsl:template match="@*|node()" priority="-2" mode="M435">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M435"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ValidityPeriod/cbc:EndTime" priority="1000" mode="M436">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ValidityPeriod/cbc:EndTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:EndTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M436"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M436"/>
   <axsl:template match="@*|node()" priority="-2" mode="M436">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M436"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cac:ValidityPeriod/cbc:StartTime" priority="1000" mode="M437">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cac:ValidityPeriod/cbc:StartTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:StartTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M437"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M437"/>
   <axsl:template match="@*|node()" priority="-2" mode="M437">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M437"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:ContractFolderID" priority="1000" mode="M438">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:ContractFolderID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M438"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M438"/>
   <axsl:template match="@*|node()" priority="-2" mode="M438">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M438"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:ContractName" priority="1000" mode="M439">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:ContractName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ContractName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M439"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M439"/>
   <axsl:template match="@*|node()" priority="-2" mode="M439">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M439"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:CopyIndicator" priority="1000" mode="M440">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:CopyIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:CopyIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M440"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M440"/>
   <axsl:template match="@*|node()" priority="-2" mode="M440">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M440"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:CustomizationID" priority="1000" mode="M441">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:CustomizationID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M441"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M441"/>
   <axsl:template match="@*|node()" priority="-2" mode="M441">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M441"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:ID" priority="1000" mode="M442">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M442"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M442"/>
   <axsl:template match="@*|node()" priority="-2" mode="M442">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M442"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:Note" priority="1000" mode="M443">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:Note"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageLocaleID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageLocaleID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageLocaleID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M443"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M443"/>
   <axsl:template match="@*|node()" priority="-2" mode="M443">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M443"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:ProfileExecutionID" priority="1000" mode="M444">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:ProfileExecutionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:ProfileExecutionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M444"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M444"/>
   <axsl:template match="@*|node()" priority="-2" mode="M444">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M444"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:ProfileID" priority="1000" mode="M445">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:ProfileID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M445"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M445"/>
   <axsl:template match="@*|node()" priority="-2" mode="M445">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M445"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:TenderTypeCode" priority="1000" mode="M446">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:TenderTypeCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M446"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M446"/>
   <axsl:template match="@*|node()" priority="-2" mode="M446">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M446"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:UBLVersionID" priority="1000" mode="M447">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:UBLVersionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:UBLVersionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M447"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M447"/>
   <axsl:template match="@*|node()" priority="-2" mode="M447">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M447"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/cbc:UUID" priority="1000" mode="M448">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/cbc:UUID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'cbc:UUID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M448"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M448"/>
   <axsl:template match="@*|node()" priority="-2" mode="M448">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M448"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/p1:Tender/ext:UBLExtensions" priority="1000" mode="M449">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/p1:Tender/ext:UBLExtensions"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ext:UBLExtensions' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M449"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M449"/>
   <axsl:template match="@*|node()" priority="-2" mode="M449">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M449"/>
   </axsl:template>
</axsl:stylesheet>