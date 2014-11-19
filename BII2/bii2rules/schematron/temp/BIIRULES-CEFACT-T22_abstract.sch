<?xml version="1.0" encoding="utf-8"?><!-- 

        	CEFACT syntax binding to the T22   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T22 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST22_phase">
    <active pattern="CEFACT-T22"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T22.sch?><pattern abstract="true" id="T22">
  <rule context="$Catalogue_Delete_Request">
    <assert test="$BIIRULE-T22-R001" flag="fatal" id="BIIRULE-T22-R001">[BIIRULE-T22-R001]-A catalogue deletion request MUST have a profile identifier</assert>
    <assert test="$BIIRULE-T22-R002" flag="fatal" id="BIIRULE-T22-R002">[BIIRULE-T22-R002]-A catalogue deletion request MUST have a customization identifier</assert>
    <assert test="$BIIRULE-T22-R003" flag="fatal" id="BIIRULE-T22-R003">[BIIRULE-T22-R003]-A catalogue deletion request MUST contain the date of issue</assert>
    <assert test="$BIIRULE-T22-R004" flag="fatal" id="BIIRULE-T22-R004">[BIIRULE-T22-R004]-A catalogue deletion request MUST contain the response identifier</assert>
    <assert test="$BIIRULE-T22-R005" flag="fatal" id="BIIRULE-T22-R005">[BIIRULE-T22-R005]-The party sending the catalogue deletion request  MUST be specified</assert>
    <assert test="$BIIRULE-T22-R006" flag="fatal" id="BIIRULE-T22-R006">[BIIRULE-T22-R006]-The party receiving the catalogue deletion request  MUST be specified</assert>
    <assert test="$BIIRULE-T22-R010" flag="fatal" id="BIIRULE-T22-R010">[BIIRULE-T22-R010]-A catalogue deletion request MUST contain a catalogue document reference</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BIIRULE-T22-R008" flag="fatal" id="BIIRULE-T22-R008">[BIIRULE-T22-R008]-A catalogue deletion request receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BIIRULE-T22-R007" flag="fatal" id="BIIRULE-T22-R007">[BIIRULE-T22-R007]-A catalogue deletion request sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T22.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T22.sch?><pattern is-a="T22" id="CEFACT-T22">
  <param name="BIIRULE-T22-R001" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BIIRULE-T22-R002" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BIIRULE-T22-R003" value="(ram:CICHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BIIRULE-T22-R004" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BIIRULE-T22-R005" value="(//ram:CatalogueInformationProviderCITradeParty)"/>
  <param name="BIIRULE-T22-R006" value="(//ram:CatalogueInformationReceiverCITradeParty)"/>
  <param name="BIIRULE-T22-R007" value="(ram:Name) or (ram:ID)"/>
  <param name="BIIRULE-T22-R008" value="(ram:Name) or (ram:ID)"/>
  <param name="BIIRULE-T22-R010" value="(//ram:CatalogueReferencedCIReferencedDocument)"/>
  <param name="Sending_Party" value="//ram:CatalogueInformationProviderCITradeParty"/>
  <param name="Receiving_Party" value="//ram:CatalogueInformationReceiverCITradeParty"/>
  <param name="Catalogue_Delete_Request" value="/rsm:CrossIndustryCatalogue"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T22.sch?>
</schema>