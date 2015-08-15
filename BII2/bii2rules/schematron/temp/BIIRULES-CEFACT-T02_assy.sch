<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryOrderResponse:3" queryBinding="xslt2">
  <title>BIIRULES  T02 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryOrderResponse:3"/>
  <phase id="BIIRULEST02_phase">
    <active pattern="CEFACT-T02"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T02 was here-->
  
  
  <!--Start pattern based on abstract T02--><pattern id="CEFACT-T02">
  <rule context="//ram:BuyerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T02-R005">[BII2-T02-R005]-An order response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="/rsm:CrossIndustryOrderResponse">
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T02-R002">[BII2-T02-R002]-An order response MUST have a customization identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T02-R003">[BII2-T02-R003]-An order response MUST have a profile identifier</assert>
    <assert test="//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID" flag="fatal" id="BII2-T02-R007">[BII2-T02-R007]-An order response MUST contain the reference to the order</assert>
    <assert test="(ram:CIORHExchangedDocument/ram:ResponseReasonCode = true()) and not(ram:CIORHExchangedDocument/ram:IncludedCINote)" flag="fatal" id="BII2-T02-R008">[BII2-T02-R008]-If the accept indicator is true, the order response MUST not contain a response clarification.</assert>
    <assert test="(ram:CIORHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T02-R009">[BII2-T02-R009]-An order response MUST contain an identifier</assert>
    <assert test="(ram:CIORHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T02-R010">[BII2-T02-R010]-An order response MUST contain an issue date</assert>
  </rule>
  <rule context="//ram:SellerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T02-R006">[BII2-T02-R006]-An order response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern>
</schema>