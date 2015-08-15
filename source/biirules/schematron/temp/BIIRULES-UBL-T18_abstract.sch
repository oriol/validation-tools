<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T18   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CatalogueRequest-2" queryBinding="xslt2">
  <title>BIIRULES  T18 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CatalogueRequest-2"/>
  <phase id="BIIRULEST18_phase">
    <active pattern="UBL-T18"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T18.sch?><pattern abstract="true" id="T18">
  <rule context="$Catalogue_Request">
    <assert test="$BII2-T18-R001" flag="fatal" id="BII2-T18-R001">[BII2-T18-R001]-A Catalogue Request MUST have a profile identifier</assert>
    <assert test="$BII2-T18-R002" flag="fatal" id="BII2-T18-R002">[BII2-T18-R002]-A Catalogue Request MUST have a customization identifier</assert>
    <assert test="$BII2-T18-R003" flag="fatal" id="BII2-T18-R003">[BII2-T18-R003]-A Catalogue Request MUST contain the date of issue</assert>
    <assert test="$BII2-T18-R004" flag="fatal" id="BII2-T18-R004">[BII2-T18-R004]-A Catalogue Request MUST contain the request identifier</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII2-T18-R005" flag="fatal" id="BII2-T18-R005">[BII2-T18-R005]-An item in a Catalogue Request line MUST be uniquely identifiable by at least one of the following:
- Seller item identification
- Standard item identification
- Catalogue item identification</assert>
    <assert test="$BII2-T18-R006" flag="warning" id="BII2-T18-R006">[BII2-T18-R006]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
  </rule>
  <rule context="$Catalogue_Request">
    <assert test="$BII2-T18-R007" flag="fatal" id="BII2-T18-R007">[BII2-T18-R007]-The sender of the catalogue request (the Catalogue Receiver) MUST be specified. </assert>
    <assert test="$BII2-T18-R008" flag="fatal" id="BII2-T18-R008">[BII2-T18-R008]-The receiver of the catalogue request (the Catalogue Provider) MUST be specified. </assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T18.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T18.sch?><pattern is-a="T18" id="UBL-T18">
  <param name="BII2-T18-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T18-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T18-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T18-R004" value="(cbc:ID)"/>
  <param name="BII2-T18-R005" value="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID) or (cac:CatalogueItemIdentification/cbc:ID)"/>
  <param name="BII2-T18-R006" value="(cac:StandardItemIdentification/cbc:ID/@schemeID)"/>
  <param name="BII2-T18-R007" value="(cac:ReceiverParty)"/>
  <param name="BII2-T18-R008" value="(cac:ProviderParty)"/>
  <param name="Catalogue_Request" value="/ubl:CatalogueRequest"/>
  <param name="Item" value="//cac:Item"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T18.sch?>
</schema>