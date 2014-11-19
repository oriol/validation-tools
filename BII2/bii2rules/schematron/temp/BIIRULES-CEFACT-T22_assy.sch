<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T22 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST22_phase">
    <active pattern="CEFACT-T22"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T22 was here-->
  
  
  <!--Start pattern based on abstract T22--><pattern id="CEFACT-T22">
  <rule context="/rsm:CrossIndustryCatalogue">
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BIIRULE-T22-R001">[BIIRULE-T22-R001]-A catalogue deletion request MUST have a profile identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BIIRULE-T22-R002">[BIIRULE-T22-R002]-A catalogue deletion request MUST have a customization identifier</assert>
    <assert test="(ram:CICHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BIIRULE-T22-R003">[BIIRULE-T22-R003]-A catalogue deletion request MUST contain the date of issue</assert>
    <assert test="(ram:CICHExchangedDocument/ram:ID)" flag="fatal" id="BIIRULE-T22-R004">[BIIRULE-T22-R004]-A catalogue deletion request MUST contain the response identifier</assert>
    <assert test="(//ram:CatalogueInformationProviderCITradeParty)" flag="fatal" id="BIIRULE-T22-R005">[BIIRULE-T22-R005]-The party sending the catalogue deletion request  MUST be specified</assert>
    <assert test="(//ram:CatalogueInformationReceiverCITradeParty)" flag="fatal" id="BIIRULE-T22-R006">[BIIRULE-T22-R006]-The party receiving the catalogue deletion request  MUST be specified</assert>
    <assert test="(//ram:CatalogueReferencedCIReferencedDocument)" flag="fatal" id="BIIRULE-T22-R010">[BIIRULE-T22-R010]-A catalogue deletion request MUST contain a catalogue document reference</assert>
  </rule>
  <rule context="//ram:CatalogueInformationReceiverCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BIIRULE-T22-R008">[BIIRULE-T22-R008]-A catalogue deletion request receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:CatalogueInformationProviderCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BIIRULE-T22-R007">[BIIRULE-T22-R007]-A catalogue deletion request sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>