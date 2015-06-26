<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryOrderChange:3" queryBinding="xslt2">
  <title>BIIRULES  T05 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryOrderChange:3"/>
  <phase id="BIIRULEST05_phase">
    <active pattern="CEFACT-T05"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T05 was here-->
  
  
  <!--Start pattern based on abstract T05--><pattern id="CEFACT-T05">
  <rule context="/rsm:CrossIndustryOrderChange">
    <assert test="(//ram:CIOCHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T05-R001">[BII2-T05-R001]-A counter offer response MUST have an identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T05-R002">[BII2-T05-R002]-A counter offer response MUST have a customization identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T05-R003">[BII2-T05-R003]-A counter offer response MUST have a profile identifier</assert>
    <assert test="//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID" flag="fatal" id="BII2-T05-R004">[BII2-T05-R004]-A counter offer response MUST refer to the Counter Offer it responses to.</assert>
    <assert test="(//ram:CIOCHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T05-R008">[BII2-T05-R008]-A counter offer response MUST have an issue date</assert>
  </rule>
  <rule context="//ram:BuyerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T05-R005">[BII2-T05-R005]-A counter offer response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="//ram:SellerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T05-R006">[BII2-T05-R006]-A counter offer response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern>
</schema>