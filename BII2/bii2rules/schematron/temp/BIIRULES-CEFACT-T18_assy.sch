<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T18 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST18_phase">
    <active pattern="CEFACT-T18"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T18 was here-->
  
  
  <!--Start pattern based on abstract T18--><pattern id="CEFACT-T18">
  <rule context="/rsm:CrossIndustryCatalogue">
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T18-R001">[BII2-T18-R001]-A Catalogue Request MUST have a profile identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T18-R002">[BII2-T18-R002]-A Catalogue Request MUST have a customization identifier</assert>
    <assert test="(ram:CICHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T18-R003">[BII2-T18-R003]-A Catalogue Request MUST contain the date of issue</assert>
    <assert test="(ram:CICHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T18-R004">[BII2-T18-R004]-A Catalogue Request MUST contain the request identifier</assert>
  </rule>
  <rule context="//ram:SpecifiedCatalogueTradeProduct">
    <assert test="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)" flag="fatal" id="BII2-T18-R005">[BII2-T18-R005]-An item in a Catalogue Request line MUST be uniquely identifiable by at least one of the following:
- Seller item identification
- Standard item identification
- Catalogue item identification</assert>
    <assert test="(ram:GlobalID/@schemeID)" flag="warning" id="BII2-T18-R006">[BII2-T18-R006]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
  </rule>
  <rule context="/rsm:CrossIndustryCatalogue">
    <assert test="(//ram:CatalogueInformationReceiverCITradeParty)" flag="fatal" id="BII2-T18-R007">[BII2-T18-R007]-The sender of the catalogue request (the Catalogue Receiver) MUST be specified. </assert>
    <assert test="(//ram:CatalogueInformationProviderCITradeParty)" flag="fatal" id="BII2-T18-R008">[BII2-T18-R008]-The receiver of the catalogue request (the Catalogue Provider) MUST be specified. </assert>
  </rule>
</pattern>
</schema>