<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3" queryBinding="xslt2">
  <title>BIIRULES  T16 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3"/>
  <phase id="BIIRULEST16_phase">
    <active pattern="CEFACT-T16"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T16 was here-->
  
  
  <!--Start pattern based on abstract T16--><pattern id="CEFACT-T16">
  <rule context="//ram:ShipToCITradeParty">
    <assert test="(ram:Name) and (ram:ID)" flag="warning" id="BII2-T16-R009">[BII2-T16-R009]-A consignee party SHOULD have the party name or a party identifier</assert>
  </rule>
  <rule context="/rsm:CrossIndustryDespatchAdvice">
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T16-R001">[BII2-T16-R001]-A despatch advice MUST have a customization identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T16-R002">[BII2-T16-R002]-A despatch advice MUST have a profile identifier</assert>
    <assert test="(ram:HeaderCIDDHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T16-R003">[BII2-T16-R003]-A despatch advice MUST have a document identifier</assert>
    <assert test="(ram:HeaderCIDDHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T16-R004">[BII2-T16-R004]-A despatch advice MUST have a document issue date</assert>
    <assert test="(ram:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID)" flag="warning" id="BII2-T16-R005">[BII2-T16-R005]-A despatch advice SHOULD have an order identifier</assert>
    <assert test="(//ram:ShipFromCITradeParty)" flag="fatal" id="BII2-T16-R006">[BII2-T16-R006]-A despatch advice MUST have a despatching party</assert>
    <assert test="(//ram:ShipToCITradeParty)" flag="fatal" id="BII2-T16-R008">[BII2-T16-R008]-A despatch advice MUST have a consignee party</assert>
    <assert test="//ram:IncludedCIDDLSupplyChainTradeLineItem" flag="fatal" id="BII2-T16-R012">[BII2-T16-R012]-A despatch advice MUST have at least one despatch advice line</assert>
  </rule>
  <rule context="//ram:IncludedCIDDLSupplyChainTradeLineItem">
    <assert test="//ram:AssociatedCIDDLDocumentLineDocument/ram:LineID" flag="fatal" id="BII2-T16-R013">[BII2-T16-R013]-Each despatch advice line MUST have a despatch line identifier that is unique within the despatch advice</assert>
    <assert test="//ram:SpecifiedCITradeProduct/ram:Name or //ram:SpecifiedCITradeProduct/ram:SellerAssignedID or //ram:SpecifiedCITradeProduct/ram:GlobalID" flag="fatal" id="BII2-T16-R016">[BII2-T16-R016]-Each despatch advice line MUST have an item identifier and/or an item name</assert>
    <assert test="//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity" flag="warning" id="BII2-T16-R017">[BII2-T16-R017]-Each despatch advice line SHOULD have a delivered quantity</assert>
    <assert test="number(//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity) &gt;= 0" flag="fatal" id="BII2-T16-R019">[BII2-T16-R019]-Each despatch advice line delivered quantity MUST not be negative</assert>
    <assert test="//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity/@unitCode" flag="warning" id="BII2-T16-R020">[BII2-T16-R020]-Each despatch advice line delivered quantity  SHOULD have an associated unit of measure</assert>
    <assert test="false()" flag="warning" id="BII2-T16-R021">[BII2-T16-R021]-An outstanding quantity reason SHOULD be provided if the despatch line contains an outstanding quantity</assert>
  </rule>
  <rule context="//ram:SpecifiedCIDDLLogisticsPackage">
    <assert test="//ram:SpecifiedCIDDLLogisticsPackage/ram:ID" flag="fatal" id="BII2-T16-R011">[BII2-T16-R011]-Shipment identifier MUST be provided if the despatch advice contains shipment information</assert>
  </rule>
  <rule context="//ram:ShipFromCITradeParty">
    <assert test="(ram:Name) and (ram:ID)" flag="warning" id="BII2-T16-R007">[BII2-T16-R007]-A despatching party SHOULD have the despatching party name</assert>
  </rule>
  <rule context="/rsm:CrossIndustryDespatchAdvice">
    <assert test="(//ram:SpecifiedCITradeProduct/ram:GlobalID/@schemeID) or not(//ram:SpecifiedCITradeProduct/ram:GlobalID)" flag="fatal" id="BII2-T16-R018">[BII2-T16-R018]-An item standard identifier MUST have an identification schema (e.g. GTIN)</assert>
  </rule>
</pattern>
</schema>