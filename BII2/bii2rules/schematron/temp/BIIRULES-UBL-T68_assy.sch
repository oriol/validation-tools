<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2" queryBinding="xslt2">
  <title>BIIRULES  T68 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2"/>
  <phase id="BIIRULEST68_phase">
    <active pattern="UBL-T68"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T68 was here-->
  
  
  <!--Start pattern based on abstract T68--><pattern id="UBL-T68">
  <rule context="//cac:Item">
    <assert test="(cac:CommodityClassification/cbc:ItemClassificationCode[@listID='CPV'])" flag="warning" id="BII2-T68-R009">[BII2-T68-R009]-CPV classification code SHOULD be provided</assert>
    <assert test="(cac:CommodityClassification)" flag="warning" id="BII2-T68-R010">[BII2-T68-R010]-An item in a Pre-Award Catalogue line SHOULD be categoryzed from one or more classification systems
It must be possible to refer an item to the corresponding classes from one or more classification systems.</assert>
  </rule>
  <rule context="//cac:AdditionalItemProperty">
    <assert test="(cbc:Value)" flag="fatal" id="BII2-T68-R012">[BII2-T68-R012]-An item property data name  MUST specify a data value</assert>
  </rule>
  <rule context="/ubl:Catalogue">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T68-R001">[BII2-T68-R001]-A Pre-Award Catalogue MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T68-R002">[BII2-T68-R002]-A Pre-Award Catalogue MUST have a profile identifier</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T68-R004">[BII2-T68-R004]-A Pre-Award Catalogue MUST contain the Pre-Award Catalogue document identifier</assert>
    <assert test="(cac:DocumentReference/cbc:ID)" flag="warning" id="BII2-T68-R005">[BII2-T68-R005]-A Pre-Award Catalogue SHOULD provide a reference to the call for tender identifier</assert>
    <assert test="(cac:CatalogueLine)" flag="fatal" id="BII2-T68-R011">[BII2-T68-R011]-A Pre-Award Catalogue MUST have at least one Pre-Award Catalogue line</assert>
  </rule>
</pattern>
</schema>