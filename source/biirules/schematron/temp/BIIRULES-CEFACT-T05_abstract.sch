<?xml version="1.0" encoding="UTF-8"?><!-- 

        	CEFACT syntax binding to the T05   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryOrderChange:3" queryBinding="xslt2">
  <title>BIIRULES  T05 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryOrderChange:3"/>
  <phase id="BIIRULEST05_phase">
    <active pattern="CEFACT-T05"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T05.sch?><pattern abstract="true" id="T05">
  <rule context="$Counter_Offer_Response">
    <assert test="$BII2-T05-R001" flag="fatal" id="BII2-T05-R001">[BII2-T05-R001]-A counter offer response MUST have an identifier</assert>
    <assert test="$BII2-T05-R002" flag="fatal" id="BII2-T05-R002">[BII2-T05-R002]-A counter offer response MUST have a customization identifier</assert>
    <assert test="$BII2-T05-R003" flag="fatal" id="BII2-T05-R003">[BII2-T05-R003]-A counter offer response MUST have a profile identifier</assert>
    <assert test="$BII2-T05-R004" flag="fatal" id="BII2-T05-R004">[BII2-T05-R004]-A counter offer response MUST refer to the Counter Offer it responses to.</assert>
    <assert test="$BII2-T05-R008" flag="fatal" id="BII2-T05-R008">[BII2-T05-R008]-A counter offer response MUST have an issue date</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BII2-T05-R005" flag="fatal" id="BII2-T05-R005">[BII2-T05-R005]-A counter offer response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T05-R006" flag="fatal" id="BII2-T05-R006">[BII2-T05-R006]-A counter offer response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T05.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T05.sch?><pattern is-a="T05" id="CEFACT-T05">
  <param name="BII2-T05-R001" value="(//ram:CIOCHExchangedDocument/ram:ID)"/>
  <param name="BII2-T05-R002" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T05-R003" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T05-R004" value="//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID"/>
  <param name="BII2-T05-R005" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T05-R006" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T05-R008" value="(//ram:CIOCHExchangedDocument/ram:IssueDateTime)"/>
  <param name="Customer" value="//ram:BuyerCITradeParty"/>
  <param name="Counter_Offer_Response" value="/rsm:CrossIndustryOrderChange"/>
  <param name="Supplier" value="//ram:SellerCITradeParty"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T05.sch?>
</schema>