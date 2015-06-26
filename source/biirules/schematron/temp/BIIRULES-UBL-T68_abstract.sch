<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T68   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2" queryBinding="xslt2">
  <title>BIIRULES  T68 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2"/>
  <phase id="BIIRULEST68_phase">
    <active pattern="UBL-T68"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T68.sch?><pattern abstract="true" id="T68">
  <rule context="$Item">
    <assert test="$BII2-T68-R009" flag="warning" id="BII2-T68-R009">[BII2-T68-R009]-CPV classification code SHOULD be provided</assert>
    <assert test="$BII2-T68-R010" flag="warning" id="BII2-T68-R010">[BII2-T68-R010]-An item in a Pre-Award Catalogue line SHOULD be categoryzed from one or more classification systems
It must be possible to refer an item to the corresponding classes from one or more classification systems.</assert>
  </rule>
  <rule context="$Item_Property">
    <assert test="$BII2-T68-R012" flag="fatal" id="BII2-T68-R012">[BII2-T68-R012]-An item property data name  MUST specify a data value</assert>
  </rule>
  <rule context="$Pre-Award_Catalogue">
    <assert test="$BII2-T68-R001" flag="fatal" id="BII2-T68-R001">[BII2-T68-R001]-A Pre-Award Catalogue MUST have a customization identifier</assert>
    <assert test="$BII2-T68-R002" flag="fatal" id="BII2-T68-R002">[BII2-T68-R002]-A Pre-Award Catalogue MUST have a profile identifier</assert>
    <assert test="$BII2-T68-R004" flag="fatal" id="BII2-T68-R004">[BII2-T68-R004]-A Pre-Award Catalogue MUST contain the Pre-Award Catalogue document identifier</assert>
    <assert test="$BII2-T68-R005" flag="warning" id="BII2-T68-R005">[BII2-T68-R005]-A Pre-Award Catalogue SHOULD provide a reference to the call for tender identifier</assert>
    <assert test="$BII2-T68-R011" flag="fatal" id="BII2-T68-R011">[BII2-T68-R011]-A Pre-Award Catalogue MUST have at least one Pre-Award Catalogue line</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T68.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T68.sch?><pattern is-a="T68" id="UBL-T68">
  <param name="BII2-T68-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T68-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T68-R004" value="(cbc:ID)"/>
  <param name="BII2-T68-R005" value="(cac:DocumentReference/cbc:ID)"/>
  <param name="BII2-T68-R009" value="(cac:CommodityClassification/cbc:ItemClassificationCode[@listID='CPV'])"/>
  <param name="BII2-T68-R010" value="(cac:CommodityClassification)"/>
  <param name="BII2-T68-R011" value="(cac:CatalogueLine)"/>
  <param name="BII2-T68-R012" value="(cbc:Value)"/>
  <param name="Pre-Award_Catalogue" value="/ubl:Catalogue"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Item" value="//cac:Item"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T68.sch?>
</schema>