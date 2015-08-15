<?xml version="1.0" encoding="UTF-8"?><!-- 

        	CEFACT syntax binding to the T02   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryOrderResponse:3" queryBinding="xslt2">
  <title>BIIRULES  T02 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryOrderResponse:3"/>
  <phase id="BIIRULEST02_phase">
    <active pattern="CEFACT-T02"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T02.sch?><pattern abstract="true" id="T02">
  <rule context="$Customer">
    <assert test="$BII2-T02-R005" flag="fatal" id="BII2-T02-R005">[BII2-T02-R005]-An order response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="$Order_Response">
    <assert test="$BII2-T02-R002" flag="fatal" id="BII2-T02-R002">[BII2-T02-R002]-An order response MUST have a customization identifier</assert>
    <assert test="$BII2-T02-R003" flag="fatal" id="BII2-T02-R003">[BII2-T02-R003]-An order response MUST have a profile identifier</assert>
    <assert test="$BII2-T02-R007" flag="fatal" id="BII2-T02-R007">[BII2-T02-R007]-An order response MUST contain the reference to the order</assert>
    <assert test="$BII2-T02-R008" flag="fatal" id="BII2-T02-R008">[BII2-T02-R008]-If the accept indicator is true, the order response MUST not contain a response clarification.</assert>
    <assert test="$BII2-T02-R009" flag="fatal" id="BII2-T02-R009">[BII2-T02-R009]-An order response MUST contain an identifier</assert>
    <assert test="$BII2-T02-R010" flag="fatal" id="BII2-T02-R010">[BII2-T02-R010]-An order response MUST contain an issue date</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T02-R006" flag="fatal" id="BII2-T02-R006">[BII2-T02-R006]-An order response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T02.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T02.sch?><pattern is-a="T02" id="CEFACT-T02">
  <param name="BII2-T02-R002" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T02-R003" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T02-R005" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T02-R006" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T02-R007" value="//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID"/>
  <param name="BII2-T02-R008" value="(ram:CIORHExchangedDocument/ram:ResponseReasonCode = true()) and not(ram:CIORHExchangedDocument/ram:IncludedCINote)"/>
  <param name="BII2-T02-R009" value="(ram:CIORHExchangedDocument/ram:ID)"/>
  <param name="BII2-T02-R010" value="(ram:CIORHExchangedDocument/ram:IssueDateTime)"/>
  <param name="Customer" value="//ram:BuyerCITradeParty"/>
  <param name="Order_Response" value="/rsm:CrossIndustryOrderResponse"/>
  <param name="Supplier" value="//ram:SellerCITradeParty"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T02.sch?>
</schema>