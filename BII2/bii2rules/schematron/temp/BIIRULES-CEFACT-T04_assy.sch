<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryOrderChange:3" queryBinding="xslt2">
  <title>BIIRULES  T04 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryOrderChange:3"/>
  <phase id="BIIRULEST04_phase">
    <active pattern="CEFACT-T04"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T04 was here-->
  
  
  <!--Start pattern based on abstract T04--><pattern id="CEFACT-T04">
  <rule context="//ram:SpecifiedCITradeAllowanceCharge">
    <assert test="(ram:Reason)" flag="fatal" id="BII2-T04-R007">[BII2-T04-R007]-Allowances and charges MUST have an allowance and charge reason</assert>
  </rule>
  <rule context="//ram:BuyerCITradeParty">
    <assert test="(ram:PostalCITradeAddress/ram:LineOne) and (ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)" flag="warning" id="BII2-T04-R024">[BII2-T04-R024]-A buyers postal address SHOULD have at least all of the following: 
- Address line
- City
- Post code 
- Country code</assert>
  </rule>
  <rule context="/rsm:CrossIndustryOrderChange">
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T04-R001">[BII2-T04-R001]-A counter offer MUST have a customization identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T04-R002">[BII2-T04-R002]-A counter offer MUST have a profile identifier</assert>
    <assert test="(ram:CIORHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T04-R004">[BII2-T04-R004]-A counter offer MUST have a document issue date</assert>
    <assert test="(ram:CIORHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T04-R006">[BII2-T04-R006]-A counter offer MUST have a document identifier</assert>
    <assert test="(//ram:CIOHSupplyChainTradeTransaction/ram:ApplicableCIOHSupplyChainTradeSettlement/ram:OrderCurrencyCode)" flag="fatal" id="BII2-T04-R009">[BII2-T04-R009]-A counter offer MUST be stated in a single currency</assert>
    <assert test="number(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount) =  number(round(sum(//ram:SpecifiedCIOLSupplyChainTradeSettlement/*/ram:CalculatedAmount) * 10 * 10) div 100)" flag="warning" id="BII2-T04-R018">[BII2-T04-R018]-VAT total amount SHOULD be the sum of counter offer line tax amounts, if counter offer line tax amounts are provided</assert>
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T04-R021">[BII2-T04-R021]-A counter offer MUST have the buyer party name or a buyer party identifier</assert>
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T04-R022">[BII2-T04-R022]-A counter offer MUST have the seller party name or a seller party identifier</assert>
    <assert test="(//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID)" flag="fatal" id="BII2-T04-R032">[BII2-T04-R032]-A counter offer MUST have a reference to an order</assert>
  </rule>
  <rule context="//ram:IncludedCIOLSupplyChainTradeLineItem">
    <assert test="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)" flag="fatal" id="BII2-T04-R003">[BII2-T04-R003]-Each counter offer line MUST have a document line identifier that is unique within the counter offer</assert>
    <assert test="number(//ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity) &gt;= 0" flag="fatal" id="BII2-T04-R010">[BII2-T04-R010]-Each counter offer line offered quantity MUST not be negative</assert>
    <assert test="number(//ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0" flag="fatal" id="BII2-T04-R011">[BII2-T04-R011]-Each counter offer line item net price MUST not be negative</assert>
    <assert test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity)" flag="warning" id="BII2-T04-R029">[BII2-T04-R029]-Each counter offer line SHOULD have an offered quantity</assert>
    <assert test="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity/@unitCode)" flag="fatal" id="BII2-T04-R030">[BII2-T04-R030]-Each counter offer line offered quantity  MUST have an associated unit of measure</assert>
    <assert test="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)" flag="fatal" id="BII2-T04-R031">[BII2-T04-R031]-Each counter offer line MUST have an item identifier and/or an item name</assert>
  </rule>
  <rule context="//ram:DeliveryCITradeParty">
    <assert test="(ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)" flag="warning" id="BII2-T04-R025">[BII2-T04-R025]-A delivery address  SHOULD have at least and address identifier or all of the following: 
- City
- Post code 
- Country code</assert>
  </rule>
  <rule context="//ram:SpecifiedCIOHTradeSettlementMonetarySummation">
    <assert test="true" flag="fatal" id="BII2-T04-R012">[BII2-T04-R012]-Expected total amount for payment MUST NOT be negative, if expected total amount for payment is provided</assert>
    <assert test="number(ram:LineTotalAmount) &gt;= 0" flag="fatal" id="BII2-T04-R013">[BII2-T04-R013]-Expected total sum of line amounts MUST NOT be negative, if expected total sum of line amounts is provided</assert>
    <assert test="number(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)" flag="fatal" id="BII2-T04-R014">[BII2-T04-R014]-Expected total sum of line amounts MUST equal the sum of the counter offer line amounts at counter offer line level, if expected total sum of line amounts is provided</assert>
    <assert test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;false&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount)" flag="fatal" id="BII2-T04-R015">[BII2-T04-R015]-Expected total sum of allowance at document level MUST be equal to the sum of allowance amounts at document level, if expected total sum of allowance at document level is provided</assert>
    <assert test="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;true&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount)" flag="fatal" id="BII2-T04-R016">[BII2-T04-R016]-Expected total sum of charges at document level MUST be equal to the sum of charges at document level, if expected total sum of charges at document level is provided</assert>
    <assert test="true" flag="fatal" id="BII2-T04-R017">[BII2-T04-R017]-Expected total amount for payment MUST be equal to the sum of line amounts minus sum of allowances at document level plus sum of charges at document level  and VAT total amount, if expected total amount for payment is provided</assert>
  </rule>
  <rule context="//ram:SpecifiedCITradeProduct">
    <assert test="(ram:GlobalID/@schemeID)" flag="warning" id="BII2-T04-R026">[BII2-T04-R026]-An item standard Identifier SHOULD have an identification schema (e.g. GTIN)</assert>
    <assert test="(ram:DesignatedCIProductClassification/ram:ClassCode/@listID)" flag="warning" id="BII2-T04-R027">[BII2-T04-R027]-An item commodity classification SHOULD have a code list identifier (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="//ram:ApplicableCIOHSupplyChainTradeSettlement/ram:IncludedCIOLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic">
    <assert test="(ram:ID)" flag="fatal" id="BII2-T04-R019">[BII2-T04-R019]-Each item property MUST have a data name, if item property is provided</assert>
    <assert test="(ram:Description)" flag="fatal" id="BII2-T04-R020">[BII2-T04-R020]-Each item property MUST have a data value, if item property is provided</assert>
  </rule>
  <rule context="//ram:SellerCITradeParty">
    <assert test="(ram:PostalCITradeAddress/ram:LineOne) and (ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)" flag="warning" id="BII2-T04-R023">[BII2-T04-R023]-A sellers postal address SHOULD have at least all of the following: 
- Address line
- City
- Post code 
- Country code</assert>
  </rule>
</pattern>
</schema>