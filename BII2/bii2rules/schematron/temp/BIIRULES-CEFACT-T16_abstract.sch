<?xml version="1.0" encoding="utf-8"?><!-- 

        	CEFACT syntax binding to the T16   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3" queryBinding="xslt2">
  <title>BIIRULES  T16 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3"/>
  <phase id="BIIRULEST16_phase">
    <active pattern="CEFACT-T16"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T16.sch?><pattern abstract="true" id="T16">
  <rule context="$Consignee_Party">
    <assert test="$BII2-T16-R009" flag="warning" id="BII2-T16-R009">[BII2-T16-R009]-A consignee party SHOULD have the party name or a party identifier</assert>
  </rule>
  <rule context="$despatch_advice">
    <assert test="$BII2-T16-R001" flag="fatal" id="BII2-T16-R001">[BII2-T16-R001]-A despatch advice MUST have a customization identifier</assert>
    <assert test="$BII2-T16-R002" flag="fatal" id="BII2-T16-R002">[BII2-T16-R002]-A despatch advice MUST have a profile identifier</assert>
    <assert test="$BII2-T16-R003" flag="fatal" id="BII2-T16-R003">[BII2-T16-R003]-A despatch advice MUST have a document identifier</assert>
    <assert test="$BII2-T16-R004" flag="fatal" id="BII2-T16-R004">[BII2-T16-R004]-A despatch advice MUST have a document issue date</assert>
    <assert test="$BII2-T16-R005" flag="warning" id="BII2-T16-R005">[BII2-T16-R005]-A despatch advice SHOULD have an order identifier</assert>
    <assert test="$BII2-T16-R006" flag="fatal" id="BII2-T16-R006">[BII2-T16-R006]-A despatch advice MUST have a despatching party</assert>
    <assert test="$BII2-T16-R008" flag="fatal" id="BII2-T16-R008">[BII2-T16-R008]-A despatch advice MUST have a consignee party</assert>
    <assert test="$BII2-T16-R012" flag="fatal" id="BII2-T16-R012">[BII2-T16-R012]-A despatch advice MUST have at least one despatch advice line</assert>
  </rule>
  <rule context="$despatch_advice_Line">
    <assert test="$BII2-T16-R013" flag="fatal" id="BII2-T16-R013">[BII2-T16-R013]-Each despatch advice line MUST have a despatch line identifier that is unique within the despatch advice</assert>
    <assert test="$BII2-T16-R014" flag="warning" id="BII2-T16-R014">[BII2-T16-R014]-Each despatch advice line SHOULD have an order line reference</assert>
    <assert test="$BII2-T16-R016" flag="fatal" id="BII2-T16-R016">[BII2-T16-R016]-Each despatch advice line MUST have an item identifier and/or an item name</assert>
    <assert test="$BII2-T16-R017" flag="warning" id="BII2-T16-R017">[BII2-T16-R017]-Each despatch advice line SHOULD have a delivered quantity</assert>
    <assert test="$BII2-T16-R019" flag="fatal" id="BII2-T16-R019">[BII2-T16-R019]-Each despatch advice line delivered quantity MUST not be negative</assert>
    <assert test="$BII2-T16-R020" flag="warning" id="BII2-T16-R020">[BII2-T16-R020]-Each despatch advice line delivered quantity  SHOULD have an associated unit of measure</assert>
    <assert test="$BII2-T16-R021" flag="warning" id="BII2-T16-R021">[BII2-T16-R021]-An outstanding quantity reason SHOULD be provided if the despatch line contains an outstanding quantity</assert>
  </rule>
  <rule context="$despatch_delivery_address">
    <assert test="$BII2-T16-R010" flag="warning" id="BII2-T16-R010">[BII2-T16-R010]-A despatch delivery address SHOULD have at least all of the following:
- Address line
- City
- Post code
- Country code</assert>
  </rule>
  <rule context="$despatched_shipment">
    <assert test="$BII2-T16-R011" flag="fatal" id="BII2-T16-R011">[BII2-T16-R011]-Shipment identifier MUST be provided if the despatch advice contains shipment information</assert>
  </rule>
  <rule context="$despatching_Party">
    <assert test="$BII2-T16-R007" flag="warning" id="BII2-T16-R007">[BII2-T16-R007]-A despatching party SHOULD have the despatching party name</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII2-T16-R018" flag="fatal" id="BII2-T16-R018">[BII2-T16-R018]-An item standard identifier MUST have an identification schema (e.g. GTIN)</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T16.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T16.sch?><pattern is-a="T16" id="CEFACT-T16">
  <param name="BII2-T16-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T16-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T16-R003" value="(ram:HeaderCIDDHExchangedDocument/ram:ID)"/>
  <param name="BII2-T16-R004" value="(ram:HeaderCIDDHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T16-R005" value="(ram:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID)"/>
  <param name="BII2-T16-R006" value="(//ram:ShipFromCITradeParty)"/>
  <param name="BII2-T16-R007" value="(ram:Name) and (ram:ID)"/>
  <param name="BII2-T16-R008" value="(//ram:ShipToCITradeParty)"/>
  <param name="BII2-T16-R009" value="(ram:Name) and (ram:ID)"/>
  <param name="BII2-T16-R010" value="(ram:LineOne) and (ram:CityName) and (ram:PostcodeCode) and (ram:CountryID)"/>
  <param name="BII2-T16-R011" value="//ram:SpecifiedCIDDLLogisticsPackage/ram:ID"/>
  <param name="BII2-T16-R012" value="//ram:IncludedCIDDLSupplyChainTradeLineItem"/>
  <param name="BII2-T16-R013" value="//ram:AssociatedCIDDLDocumentLineDocument/ram:LineID"/>
  <param name="BII2-T16-R014" value="//ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:LineID"/>
  <param name="BII2-T16-R016" value="//ram:SpecifiedCITradeProduct/ram:Name or //ram:SpecifiedCITradeProduct/ram:SellerAssignedID or //ram:SpecifiedCITradeProduct/ram:GlobalID"/>
  <param name="BII2-T16-R017" value="//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity"/>
  <param name="BII2-T16-R018" value="(//ram:SpecifiedCITradeProduct/ram:GlobalID/@schemeID) or not(//ram:SpecifiedCITradeProduct/ram:GlobalID)"/>
  <param name="BII2-T16-R019" value="number(//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity) &gt;= 0"/>
  <param name="BII2-T16-R020" value="//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity/@unitCode"/>
  <param name="BII2-T16-R021" value="false()"/>
  <param name="despatching_Party" value="//ram:ShipFromCITradeParty"/>
  <param name="Consignee_Party" value="//ram:ShipToCITradeParty"/>
  <param name="despatch_delivery_address" value="//ram:ShipToCITradeParty/ram:PostalCITradeAddress"/>
  <param name="despatched_shipment" value="//ram:SpecifiedCIDDLLogisticsPackage"/>
  <param name="despatch_advice_Line" value="//ram:IncludedCIDDLSupplyChainTradeLineItem"/>
  <param name="Item" value="/rsm:CrossIndustryDespatchAdvice"/>
  <param name="despatch_advice" value="/rsm:CrossIndustryDespatchAdvice"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T16.sch?>
</schema>