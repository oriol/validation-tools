<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryOrder:3" queryBinding="xslt2">
  <title>BIIRULES  T01 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryOrder:3"/>
  <phase id="BIIRULEST01_phase">
    <active pattern="CEFACT-T01"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT01"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T01 was here-->
  
  
  <!--Start pattern based on abstract T01--><pattern id="CEFACT-T01">
  <rule context="//ram:SpecifiedCITradeAllowanceCharge">
    <assert test="(ram:Reason)" flag="fatal" id="BII2-T01-R007">[BII2-T01-R007]-Allowances and charges MUST have a reason</assert>
  </rule>
  <rule context="//ram:BuyerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T01-R021">[BII2-T01-R021]-An order MUST have the buyer party name or a buyer party identifier</assert>
    <assert test="(ram:PostalCITradeAddress/ram:LineOne) and (ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)" flag="warning" id="BII2-T01-R024">[BII2-T01-R024]-A buyers postal address SHOULD have at least all of the following: 
- Address line
- City
- Post code 
- Country code</assert>
  </rule>
  <rule context="//ram:DeliveryCITradeParty">
    <assert test="(ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)" flag="warning" id="BII2-T01-R025">[BII2-T01-R025]-A delivery address  SHOULD have at least and address identifier or all of the following: 
- City
- Post code 
- Country code</assert>
  </rule>
  <rule context="//ram:SpecifiedCIOHTradeSettlementMonetarySummation">
    <assert test="false" flag="fatal" id="BII2-T01-R012">[BII2-T01-R012]-Expected total amount for payment MUST NOT be negative, if expected total amount for payment is provided</assert>
    <assert test="number(ram:LineTotalAmount) &gt;= 0" flag="fatal" id="BII2-T01-R013">[BII2-T01-R013]-Expected total sum of line amounts MUST NOT be negative, if expected total sum of line amounts is provided</assert>
    <assert test="number(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)" flag="fatal" id="BII2-T01-R014">[BII2-T01-R014]-Expected total sum of line amounts MUST equal the sum of the order line amounts at order line level, if expected total sum of line amounts is provided</assert>
    <assert test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;false&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount)" flag="fatal" id="BII2-T01-R015">[BII2-T01-R015]-Expected total sum of allowance at document level MUST be equal to the sum of allowance amounts at document level, if expected total sum of allowance at document level is provided</assert>
    <assert test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;true&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount)" flag="fatal" id="BII2-T01-R016">[BII2-T01-R016]-Expected total sum of charges at document level MUST be equal to the sum of charges at document level, if expected total sum of charges at document level is provided</assert>
    <assert test="false" flag="fatal" id="BII2-T01-R017">[BII2-T01-R017]-Expected total amount for payment MUST be equal to the sum of line amounts minus sum of allowances at document level plus sum of charges at document level  and VAT total amount, if expected total amount for payment is provided</assert>
  </rule>
  <rule context="//ram:SpecifiedCITradeProduct">
    <assert test="(ram:GlobalID/@schemeID)" flag="warning" id="BII2-T01-R026">[BII2-T01-R026]-An item standard Identifier SHOULD have an identification schema (e.g. GTIN)</assert>
    <assert test="(ram:DesignatedCIProductClassification/ram:ClassCode/@listID)" flag="warning" id="BII2-T01-R027">[BII2-T01-R027]-An item commodity classification SHOULD have a code list identifier (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="//ram:ApplicableCIOHSupplyChainTradeSettlement/ram:IncludedCIOLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic">
    <assert test="(ram:ID)" flag="fatal" id="BII2-T01-R019">[BII2-T01-R019]-Each item property MUST have a data name, if item property is provided</assert>
    <assert test="(ram:Description)" flag="fatal" id="BII2-T01-R020">[BII2-T01-R020]-Each item property MUST have a data value, if item property is provided</assert>
  </rule>
  <rule context="/rsm:CrossIndustryOrder">
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T01-R001">[BII2-T01-R001]-An order MUST have a customization identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T01-R002">[BII2-T01-R002]-An order MUST have a profile identifier</assert>
    <assert test="(ram:CIIHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T01-R004">[BII2-T01-R004]-An order MUST have a document issue date</assert>
    <assert test="(ram:CIIHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:EndDateTime)" flag="warning" id="BII2-T01-R005">[BII2-T01-R005]-An order SHOULD provide information about its validity end date</assert>
    <assert test="(ram:CIIHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T01-R006">[BII2-T01-R006]-An order MUST have a document identifier</assert>
    <assert test="(ram:CIOHSupplyChainTradeTransaction/ram:ApplicableCIOHSupplyChainTradeSettlement/ram:OrderCurrencyCode)" flag="fatal" id="BII2-T01-R009">[BII2-T01-R009]-An order MUST be stated in a single currency</assert>
    <assert test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount and number(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount) =  number(round(sum(//ram:SpecifiedCIOLSupplyChainTradeSettlement/*/ram:CalculatedAmount) * 10 * 10) div 100)) or not (//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount)" flag="warning" id="BII2-T01-R018">[BII2-T01-R018]-VAT total amount SHOULD be the sum of order line tax amounts, if order line tax amounts are provided</assert>
  </rule>
  <rule context="//ram:IncludedCIOLSupplyChainTradeLineItem">
    <assert test="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)" flag="fatal" id="BII2-T01-R003">[BII2-T01-R003]-Each order line MUST have a document line identifier that is unique within the order</assert>
    <assert test="number(//ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity) &gt;= 0" flag="fatal" id="BII2-T01-R010">[BII2-T01-R010]-Each order line ordered quantity MUST not be negative</assert>
    <assert test="number(//ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0" flag="fatal" id="BII2-T01-R011">[BII2-T01-R011]-Each order line item net price MUST not be negative</assert>
    <assert test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity)" flag="warning" id="BII2-T01-R029">[BII2-T01-R029]-Each order line SHOULD have an ordered quantity</assert>
    <assert test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity/@unitCode)" flag="fatal" id="BII2-T01-R030">[BII2-T01-R030]-Each order line ordered quantity  MUST have an associated unit of measure</assert>
    <assert test="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)" flag="fatal" id="BII2-T01-R031">[BII2-T01-R031]-Each order line MUST have an item identifier and/or an item name</assert>
  </rule>
  <rule context="//ram:SellerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T01-R022">[BII2-T01-R022]-An order MUST have the seller party name or a seller party identifier</assert>
    <assert test="(ram:PostalCITradeAddress/ram:LineOne) and (ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)" flag="warning" id="BII2-T01-R023">[BII2-T01-R023]-A sellers postal address SHOULD have at least all of the following: 
- Address line
- City
- Post code 
- Country code</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT01">



<rule context="ram:CategoryCode" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-001-001]-Tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>

</pattern>
</schema>