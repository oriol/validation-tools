<?xml version="1.0" encoding="utf-8"?><!-- 

        	CEFACT syntax binding to the T18   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T18 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST18_phase">
    <active pattern="CEFACT-T18"/>
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
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T18.sch?><pattern is-a="T18" id="CEFACT-T18">
  <param name="BII2-T18-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T18-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T18-R003" value="(ram:CICHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T18-R004" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BII2-T18-R005" value="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)"/>
  <param name="BII2-T18-R006" value="(ram:GlobalID/@schemeID)"/>
  <param name="BII2-T18-R007" value="(//ram:CatalogueInformationReceiverCITradeParty)"/>
  <param name="BII2-T18-R008" value="(//ram:CatalogueInformationProviderCITradeParty)"/>
  <param name="Catalogue_Request" value="/rsm:CrossIndustryCatalogue"/>
  <param name="Item" value="//ram:SpecifiedCatalogueTradeProduct"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T18.sch?>
</schema>