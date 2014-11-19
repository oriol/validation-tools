<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T69   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2" queryBinding="xslt2">
  <title>BIIRULES  T69 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2"/>
  <phase id="BIIRULEST69_phase">
    <active pattern="UBL-T69"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T69.sch?><pattern abstract="true" id="T69">
  <rule context="$Item">
    <assert test="$BII2-T69-R005" flag="fatal" id="BII2-T69-R005">[BII2-T69-R005]-An item in a Pre-Award Catalogue Template line MUST have a name</assert>
    <assert test="$BII2-T69-R006" flag="warning" id="BII2-T69-R006">[BII2-T69-R006]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
    <assert test="$BII2-T69-R007" flag="warning" id="BII2-T69-R007">[BII2-T69-R007]-CPV classification code SHOULD be provided at line level</assert>
    <assert test="$BII2-T69-R008" flag="warning" id="BII2-T69-R008">[BII2-T69-R008]-An item in a Pre-Award Catalogue Template line SHOULD be categoryzed from one or more classification systems
It must be possible to refer an item to the corresponding classes from one or more classification systems.</assert>
  </rule>
  <rule context="$Item_Property">
    <assert test="$BII2-T69-R010" flag="fatal" id="BII2-T69-R010">[BII2-T69-R010]-An item property data name  MUST specify a data value or a range of values</assert>
  </rule>
  <rule context="$Pre-Award_Catalogue_Template">
    <assert test="$BII2-T69-R001" flag="fatal" id="BII2-T69-R001">[BII2-T69-R001]-A Pre-Award Catalogue Template MUST have a customization identifier</assert>
    <assert test="$BII2-T69-R002" flag="fatal" id="BII2-T69-R002">[BII2-T69-R002]-A Pre-Award Catalogue Template MUST have a profile identifier</assert>
    <assert test="$BII2-T69-R003" flag="fatal" id="BII2-T69-R003">[BII2-T69-R003]-A Pre-Award Catalogue Template MUST contain the Pre-Award Catalogue Template document identifier</assert>
    <assert test="$BII2-T69-R004" flag="fatal" id="BII2-T69-R004">[BII2-T69-R004]-A Pre-Award Catalogue Template MUST provide a reference to the call for tender identifier</assert>
    <assert test="$BII2-T69-R009" flag="fatal" id="BII2-T69-R009">[BII2-T69-R009]-A Pre-Award Catalogue Template MUST have at least one Pre-Award Catalogue Template line</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T69.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T69.sch?><pattern is-a="T69" id="UBL-T69">
  <param name="BII2-T69-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T69-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T69-R003" value="(cbc:ID)"/>
  <param name="BII2-T69-R004" value="(cac:DocumentReference/cbc:ID)"/>
  <param name="BII2-T69-R005" value="(cbc:Name)"/>
  <param name="BII2-T69-R006" value="(cac:StandardItemIdentification/cbc:ID/@schemeID)"/>
  <param name="BII2-T69-R007" value="(cac:CommodityClassification/cbc:ItemClassificationCode[@listID='CPV'])"/>
  <param name="BII2-T69-R008" value="(cac:CommodityClassification)"/>
  <param name="BII2-T69-R009" value="(cac:CatalogueLine)"/>
  <param name="BII2-T69-R010" value="(cbc:Value)"/>
  <param name="Pre-Award_Catalogue_Template" value="/ubl:Catalogue"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Item" value="//cac:Item"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T69.sch?>
</schema>