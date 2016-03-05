<?xml version="1.0" encoding="UTF-8"?><!-- 

        	CEFACT syntax binding to the T01   
        	Author: Oriol Bausà
            Timestamp: 2016-03-05 16:01:32 +0100
     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryOrder:3" queryBinding="xslt2">
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
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T01.sch?><pattern abstract="true" id="T01">
  <rule context="$Allowance_Charges">
    <assert test="$BII2-T01-R007" flag="fatal" id="BII2-T01-R007">[BII2-T01-R007]-Allowances and charges MUST have a reason</assert>
  </rule>
  <rule context="$Buyer">
    <assert test="$BII2-T01-R021" flag="fatal" id="BII2-T01-R021">[BII2-T01-R021]-An order MUST have the buyer party name or a buyer party identifier</assert>
  </rule>
  <rule context="$Expected_totals">
    <assert test="$BII2-T01-R012" flag="fatal" id="BII2-T01-R012">[BII2-T01-R012]-Expected total amount for payment MUST NOT be negative, if expected total amount for payment is provided</assert>
    <assert test="$BII2-T01-R013" flag="fatal" id="BII2-T01-R013">[BII2-T01-R013]-Expected total sum of line amounts MUST NOT be negative, if expected total sum of line amounts is provided</assert>
    <assert test="$BII2-T01-R014" flag="fatal" id="BII2-T01-R014">[BII2-T01-R014]-Expected total sum of line amounts MUST equal the sum of the order line amounts at order line level, if expected total sum of line amounts is provided</assert>
    <assert test="$BII2-T01-R015" flag="fatal" id="BII2-T01-R015">[BII2-T01-R015]-Expected total sum of allowance at document level MUST be equal to the sum of allowance amounts at document level, if expected total sum of allowance at document level is provided</assert>
    <assert test="$BII2-T01-R016" flag="fatal" id="BII2-T01-R016">[BII2-T01-R016]-Expected total sum of charges at document level MUST be equal to the sum of charges at document level, if expected total sum of charges at document level is provided</assert>
    <assert test="$BII2-T01-R017" flag="fatal" id="BII2-T01-R017">[BII2-T01-R017]-Expected total amount for payment MUST be equal to the sum of line amounts minus sum of allowances at document level plus sum of charges at document level  and VAT total amount, if expected total amount for payment is provided</assert>
  </rule>
  <rule context="$Item_property">
    <assert test="$BII2-T01-R019" flag="fatal" id="BII2-T01-R019">[BII2-T01-R019]-Each item property MUST have a data name, if item property is provided</assert>
    <assert test="$BII2-T01-R020" flag="fatal" id="BII2-T01-R020">[BII2-T01-R020]-Each item property MUST have a data value, if item property is provided</assert>
  </rule>
  <rule context="$Order">
    <assert test="$BII2-T01-R001" flag="fatal" id="BII2-T01-R001">[BII2-T01-R001]-An order MUST have a customization identifier</assert>
    <assert test="$BII2-T01-R002" flag="fatal" id="BII2-T01-R002">[BII2-T01-R002]-An order MUST have a profile identifier</assert>
    <assert test="$BII2-T01-R004" flag="fatal" id="BII2-T01-R004">[BII2-T01-R004]-An order MUST have a document issue date</assert>
    <assert test="$BII2-T01-R005" flag="warning" id="BII2-T01-R005">[BII2-T01-R005]-An order SHOULD provide information about its validity end date</assert>
    <assert test="$BII2-T01-R006" flag="fatal" id="BII2-T01-R006">[BII2-T01-R006]-An order MUST have a document identifier</assert>
    <assert test="$BII2-T01-R009" flag="fatal" id="BII2-T01-R009">[BII2-T01-R009]-An order MUST be stated in a single currency</assert>
    <assert test="$BII2-T01-R018" flag="warning" id="BII2-T01-R018">[BII2-T01-R018]-VAT total amount SHOULD be the sum of order line tax amounts, if order line tax amounts are provided</assert>
  </rule>
  <rule context="$Order_Line">
    <assert test="$BII2-T01-R003" flag="fatal" id="BII2-T01-R003">[BII2-T01-R003]-Each order line MUST have a document line identifier that is unique within the order</assert>
    <assert test="$BII2-T01-R010" flag="fatal" id="BII2-T01-R010">[BII2-T01-R010]-Each order line ordered quantity MUST not be negative</assert>
    <assert test="$BII2-T01-R011" flag="fatal" id="BII2-T01-R011">[BII2-T01-R011]-Each order line item net price MUST not be negative</assert>
    <assert test="$BII2-T01-R029" flag="warning" id="BII2-T01-R029">[BII2-T01-R029]-Each order line SHOULD have an ordered quantity</assert>
    <assert test="$BII2-T01-R030" flag="fatal" id="BII2-T01-R030">[BII2-T01-R030]-Each order line ordered quantity  MUST have an associated unit of measure</assert>
    <assert test="$BII2-T01-R031" flag="fatal" id="BII2-T01-R031">[BII2-T01-R031]-Each order line MUST have an item identifier and/or an item name</assert>
  </rule>
  <rule context="$Seller">
    <assert test="$BII2-T01-R022" flag="fatal" id="BII2-T01-R022">[BII2-T01-R022]-An order MUST have the seller party name or a seller party identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T01.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T01.sch?><pattern is-a="T01" id="CEFACT-T01">
  <param name="BII2-T01-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T01-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T01-R003" value="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)"/>
  <param name="BII2-T01-R004" value="(ram:CIIHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T01-R005" value="(ram:CIIHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:EndDateTime)"/>
  <param name="BII2-T01-R006" value="(ram:CIIHExchangedDocument/ram:ID)"/>
  <param name="BII2-T01-R007" value="(ram:Reason)"/>
  <param name="BII2-T01-R009" value="(ram:CIOHSupplyChainTradeTransaction/ram:ApplicableCIOHSupplyChainTradeSettlement/ram:OrderCurrencyCode)"/>
  <param name="BII2-T01-R010" value="number(//ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity) &gt;= 0"/>
  <param name="BII2-T01-R011" value="number(//ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0"/>
  <param name="BII2-T01-R012" value="false()"/>
  <param name="BII2-T01-R013" value="number(ram:LineTotalAmount) &gt;= 0"/>
  <param name="BII2-T01-R014" value="number(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T01-R015" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;false&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount)"/>
  <param name="BII2-T01-R016" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;true&#34;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount)"/>
  <param name="BII2-T01-R017" value="false()"/>
  <param name="BII2-T01-R018" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount and number(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount) =  number(round(sum(//ram:SpecifiedCIOLSupplyChainTradeSettlement/*/ram:CalculatedAmount) * 10 * 10) div 100)) or not (//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount)"/>
  <param name="BII2-T01-R019" value="(ram:ID)"/>
  <param name="BII2-T01-R020" value="(ram:Description)"/>
  <param name="BII2-T01-R021" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T01-R022" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T01-R029" value="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity)"/>
  <param name="BII2-T01-R030" value="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity/@unitCode)"/>
  <param name="BII2-T01-R031" value="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)"/>
  <param name="Order_Line" value="//ram:IncludedCIOLSupplyChainTradeLineItem"/>
  <param name="Order" value="/rsm:CrossIndustryOrder"/>
  <param name="Allowance_Charges" value="//ram:SpecifiedCITradeAllowanceCharge"/>
  <param name="Expected_totals" value="//ram:SpecifiedCIOHTradeSettlementMonetarySummation"/>
  <param name="Item_property" value="//ram:ApplicableCIOHSupplyChainTradeSettlement/ram:IncludedCIOLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic"/>
  <param name="Seller" value="//ram:SellerCITradeParty"/>
  <param name="Buyer" value="//ram:BuyerCITradeParty"/>
  <param name="Item" value="//ram:SpecifiedCITradeProduct"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T01.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT01-CEFACT.sch?><pattern id="CodesT01">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="ram:CategoryCode" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-001-001]-Tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT01-CEFACT.sch?>
</schema>