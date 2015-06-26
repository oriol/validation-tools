<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T01   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Order-2" queryBinding="xslt2">
  <title>BIIRULES  T01 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Order-2"/>
  <phase id="BIIRULEST01_phase">
    <active pattern="UBL-T01"/>
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
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T01.sch?><pattern is-a="T01" id="UBL-T01">
  <param name="BII2-T01-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T01-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T01-R003" value="(cac:LineItem/cbc:ID)"/>
  <param name="BII2-T01-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T01-R005" value="(cac:ValidityPeriod/cbc:EndDate)"/>
  <param name="BII2-T01-R006" value="(cbc:ID)"/>
  <param name="BII2-T01-R007" value="(cbc:AllowanceChargeReason)"/>
  <param name="BII2-T01-R009" value="(cbc:DocumentCurrencyCode)"/>
  <param name="BII2-T01-R010" value="(cac:LineItem/cbc:Quantity) &gt;= 0"/>
  <param name="BII2-T01-R011" value="(cac:LineItem/cac:Price/cbc:PriceAmount) &gt;= 0"/>
  <param name="BII2-T01-R012" value="(cbc:PayableAmount) &gt;= 0"/>
  <param name="BII2-T01-R013" value="(cbc:LineExtensionAmount) &gt;= 0"/>
  <param name="BII2-T01-R014" value="(cbc:LineExtensionAmount) = (round(sum(/ubl:Order/cac:OrderLine/cac:LineItem/cbc:LineExtensionAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T01-R015" value="(cbc:AllowanceTotalAmount and cbc:AllowanceTotalAmount = (round(sum(/ubl:Order/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount) * 10 * 10) div 100)) or not(cbc:AllowanceTotalAmount)"/>
  <param name="BII2-T01-R016" value="(cbc:ChargeTotalAmount and cbc:ChargeTotalAmount = (round(sum(/ubl:Order/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount) * 10 * 10) div 100)) or not(cbc:ChargeTotalAmount)"/>
  <param name="BII2-T01-R017" value="(/ubl:Order/cac:TaxTotal/cbc:TaxAmount) and ((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and ((cbc:PayableAmount) = ((cbc:LineExtensionAmount) + (/ubl:Order/cac:TaxTotal/cbc:TaxAmount) + (cbc:ChargeTotalAmount) - (cbc:AllowanceTotalAmount)))) or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and ((cbc:PayableAmount) = (cbc:LineExtensionAmount) + (/ubl:Order/cac:TaxTotal/cbc:TaxAmount)  - (cbc:AllowanceTotalAmount))) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and ((cbc:PayableAmount) = (cbc:LineExtensionAmount) + (/ubl:Order/cac:TaxTotal/cbc:TaxAmount)  + (cbc:ChargeTotalAmount))) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and ((cbc:PayableAmount) = (cbc:LineExtensionAmount) + (/ubl:Order/cac:TaxTotal/cbc:TaxAmount))) or not(/ubl:Order/cac:TaxTotal/cbc:TaxAmount) and ((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and  ((cbc:PayableAmount) = ((cbc:LineExtensionAmount) + (cbc:ChargeTotalAmount) - (cbc:AllowanceTotalAmount)))) or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and ((cbc:PayableAmount) = (cbc:LineExtensionAmount)  - (cbc:AllowanceTotalAmount))) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and ((cbc:PayableAmount) = (cbc:LineExtensionAmount)  + (cbc:ChargeTotalAmount))) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and ((cbc:PayableAmount) = (cbc:LineExtensionAmount)))"/>
  <param name="BII2-T01-R018" value="(cac:TaxTotal and cac:TaxTotal/cbc:TaxAmount = (round(sum(/ubl:Order/cac:OrderLine/cac:LineItem/cbc:TotalTaxAmount) * 10 * 10) div 100)) or not(/ubl:Order/cac:OrderLine/cac:LineItem/cbc:TotalTaxAmount)"/>
  <param name="BII2-T01-R019" value="(cbc:Name)"/>
  <param name="BII2-T01-R020" value="(cbc:Value)"/>
  <param name="BII2-T01-R021" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T01-R022" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T01-R029" value="(cac:LineItem/cbc:Quantity)"/>
  <param name="BII2-T01-R030" value="(cac:LineItem/cbc:Quantity/@unitCode)"/>
  <param name="BII2-T01-R031" value="(cac:LineItem/cac:Item/cbc:Name) or (cac:LineItem/cac:Item/cac:StandardItemIdentification/cbc:ID) or  (cac:LineItem/cac:Item/cac:SellersItemIdentification/cbc:ID)"/>
  <param name="Order_Line" value="//cac:OrderLine"/>
  <param name="Order" value="/ubl:Order"/>
  <param name="Allowance_Charges" value="//cac:AllowanceCharge"/>
  <param name="Expected_totals" value="//cac:AnticipatedMonetaryTotal"/>
  <param name="Item_property" value="//cac:AdditionalItemProperty"/>
  <param name="Seller" value="//cac:SellerSupplierParty"/>
  <param name="Buyer" value="//cac:BuyerCustomerParty"/>
  <param name="Item" value="//cac:Item"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T01.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT01-UBL.sch?><pattern id="CodesT01">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:TaxCategory/cbc:ID" flag="warning">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )" flag="warning">[CL-001-001]-Tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT01-UBL.sch?>
</schema>