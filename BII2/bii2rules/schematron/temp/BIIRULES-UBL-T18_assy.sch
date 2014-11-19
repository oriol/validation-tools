<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CatalogueRequest-2" queryBinding="xslt2">
  <title>BIIRULES  T18 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CatalogueRequest-2"/>
  <phase id="BIIRULEST18_phase">
    <active pattern="UBL-T18"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T18 was here-->
  
  
  <!--Start pattern based on abstract T18--><pattern id="UBL-T18">
  <rule context="/ubl:CatalogueRequest">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T18-R001">[BII2-T18-R001]-A Catalogue Request MUST have a profile identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T18-R002">[BII2-T18-R002]-A Catalogue Request MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T18-R003">[BII2-T18-R003]-A Catalogue Request MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T18-R004">[BII2-T18-R004]-A Catalogue Request MUST contain the request identifier</assert>
  </rule>
  <rule context="//cac:Item">
    <assert test="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID) or (cac:CatalogueItemIdentification/cbc:ID)" flag="fatal" id="BII2-T18-R005">[BII2-T18-R005]-An item in a Catalogue Request line MUST be uniquely identifiable by at least one of the following:
- Seller item identification
- Standard item identification
- Catalogue item identification</assert>
    <assert test="(cac:StandardItemIdentification/cbc:ID/@schemeID)" flag="warning" id="BII2-T18-R006">[BII2-T18-R006]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
  </rule>
  <rule context="/ubl:CatalogueRequest">
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T18-R007">[BII2-T18-R007]-The sender of the catalogue request (the Catalogue Receiver) MUST be specified. </assert>
    <assert test="(cac:ProviderParty)" flag="fatal" id="BII2-T18-R008">[BII2-T18-R008]-The receiver of the catalogue request (the Catalogue Provider) MUST be specified. </assert>
  </rule>
</pattern>
</schema>