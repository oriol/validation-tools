<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2" queryBinding="xslt2">
  <title>BIIRULES  T69 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2"/>
  <phase id="BIIRULEST69_phase">
    <active pattern="UBL-T69"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T69 was here-->
  
  
  <!--Start pattern based on abstract T69--><pattern id="UBL-T69">
  <rule context="//cac:Item">
    <assert test="(cbc:Name)" flag="fatal" id="BII2-T69-R005">[BII2-T69-R005]-An item in a Pre-Award Catalogue Template line MUST have a name</assert>
    <assert test="(cac:StandardItemIdentification/cbc:ID/@schemeID)" flag="warning" id="BII2-T69-R006">[BII2-T69-R006]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
    <assert test="(cac:CommodityClassification/cbc:ItemClassificationCode[@listID='CPV'])" flag="warning" id="BII2-T69-R007">[BII2-T69-R007]-CPV classification code SHOULD be provided at line level</assert>
    <assert test="(cac:CommodityClassification)" flag="warning" id="BII2-T69-R008">[BII2-T69-R008]-An item in a Pre-Award Catalogue Template line SHOULD be categoryzed from one or more classification systems
It must be possible to refer an item to the corresponding classes from one or more classification systems.</assert>
  </rule>
  <rule context="//cac:AdditionalItemProperty">
    <assert test="(cbc:Value)" flag="fatal" id="BII2-T69-R010">[BII2-T69-R010]-An item property data name  MUST specify a data value or a range of values</assert>
  </rule>
  <rule context="/ubl:Catalogue">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T69-R001">[BII2-T69-R001]-A Pre-Award Catalogue Template MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T69-R002">[BII2-T69-R002]-A Pre-Award Catalogue Template MUST have a profile identifier</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T69-R003">[BII2-T69-R003]-A Pre-Award Catalogue Template MUST contain the Pre-Award Catalogue Template document identifier</assert>
    <assert test="(cac:DocumentReference/cbc:ID)" flag="fatal" id="BII2-T69-R004">[BII2-T69-R004]-A Pre-Award Catalogue Template MUST provide a reference to the call for tender identifier</assert>
    <assert test="(cac:CatalogueLine)" flag="fatal" id="BII2-T69-R009">[BII2-T69-R009]-A Pre-Award Catalogue Template MUST have at least one Pre-Award Catalogue Template line</assert>
  </rule>
</pattern>
</schema>