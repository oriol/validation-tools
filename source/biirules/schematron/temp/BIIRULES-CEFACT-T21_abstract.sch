<?xml version="1.0" encoding="UTF-8"?><!-- 

        	CEFACT syntax binding to the T21   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T21 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST21_phase">
    <active pattern="CEFACT-T21"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT21"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T21.sch?><pattern abstract="true" id="T21">
  <rule context="$Catalogue_Customer">
    <assert test="$BII2-T21-R013" flag="fatal" id="BII2-T21-R013">[BII2-T21-R013]-A catalogue price update customer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Price_Update">
    <assert test="$BII2-T21-R001" flag="fatal" id="BII2-T21-R001">[BII2-T21-R001]-A catalogue price update MUST have a customization identifier</assert>
    <assert test="$BII2-T21-R002" flag="fatal" id="BII2-T21-R002">[BII2-T21-R002]-A catalogue price update MUST have a profile identifier</assert>
    <assert test="$BII2-T21-R003" flag="fatal" id="BII2-T21-R003">[BII2-T21-R003]-A catalogue price update MUST contain the date of issue</assert>
    <assert test="$BII2-T21-R004" flag="fatal" id="BII2-T21-R004">[BII2-T21-R004]-A catalogue price update MUST contain the document identifier</assert>
    <assert test="$BII2-T21-R007" flag="fatal" id="BII2-T21-R007">[BII2-T21-R007]-The party providing the catalogue price update MUST be specified</assert>
    <assert test="$BII2-T21-R008" flag="fatal" id="BII2-T21-R008">[BII2-T21-R008]-The party receiving the catalogue price update MUST be specified</assert>
    <assert test="$BII2-T21-R009" flag="fatal" id="BII2-T21-R009">[BII2-T21-R009]-A catalogue price update MUST have maximum one catalogue price update supplier</assert>
    <assert test="$BII2-T21-R023" flag="fatal" id="BII2-T21-R023">[BII2-T21-R023]-A catalogue price update MUST have at least one catalogue price update line</assert>
  </rule>
  <rule context="$Catalogue_Price_Update_Line">
    <assert test="$BII2-T21-R017" flag="warning" id="BII2-T21-R017">[BII2-T21-R017]-Catalogue line validity period MUST be within the range of the whole catalogue price update validity period</assert>
    <assert test="$BII2-T21-R020" flag="fatal" id="BII2-T21-R020">[BII2-T21-R020]-An item in a catalogue line MUST be uniquely identifiable by at least one of the following:
- Catalogue Item Update Provider identifier
- Standard identifier</assert>
    <assert test="$BII2-T21-R024" flag="fatal" id="BII2-T21-R024">[BII2-T21-R024]-A catalogue price update line MUST contain a unique line identifier</assert>
  </rule>
  <rule context="$Catalogue_Provider">
    <assert test="$BII2-T21-R010" flag="fatal" id="BII2-T21-R010">[BII2-T21-R010]-A catalogue price update provider MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Receiver">
    <assert test="$BII2-T21-R011" flag="fatal" id="BII2-T21-R011">[BII2-T21-R011]-A catalogue price update receiver MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Supplier">
    <assert test="$BII2-T21-R012" flag="fatal" id="BII2-T21-R012">[BII2-T21-R012]-A catalogue price update supplier MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Item_Price">
    <assert test="$BII2-T21-R015" flag="fatal" id="BII2-T21-R015">[BII2-T21-R015]-Prices of items MUST not be negative</assert>
  </rule>
  <rule context="$Validity_Period">
    <assert test="$BII2-T21-R006" flag="fatal" id="BII2-T21-R006">[BII2-T21-R006]-A validity period end date MUST be later or equal to a validity period start date if both validity period end date and validaty period start date are present</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T21.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T21.sch?><pattern is-a="T21" id="CEFACT-T21">
  <param name="BII2-T21-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T21-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T21-R003" value="(ram:CICHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T21-R004" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BII2-T21-R006" value="(ram:StartDateTime and ram:EndDateTime) and (number(translate(ram:StartDateTime,'-','')) &lt;= number(translate(ram:EndDateTime,'-','')))"/>
  <param name="BII2-T21-R007" value="//ram:CatalogueInformationProviderCITradeParty"/>
  <param name="BII2-T21-R008" value="//ram:CatalogueInformationReceiverCITradeParty"/>
  <param name="BII2-T21-R009" value="count(//ram:SellerCITradeParty) &lt;= 1"/>
  <param name="BII2-T21-R010" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T21-R011" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T21-R012" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T21-R013" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T21-R015" value="number(ram:ChargeAmount) &gt;= 0"/>
  <param name="BII2-T21-R017" value="(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime and //OrderingCISpecifiedPeriod/ram:EndDateTime) and (number(translate(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime,'-','')) &gt;= number(translate(//ram:EffectiveCISpecifiedPeriod/ram:StartDateTime,'-',''))) and  (number(translate(//ram:OrderingCISpecifiedPeriod/ram:EndDateTime,'-','')) &lt;= number(translate(//ram:EffectiveCISpecifiedPeriod/ram:EndDateTime,'-','')))"/>
  <param name="BII2-T21-R020" value="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID)"/>
  <param name="BII2-T21-R023" value="(ram:IncludedCICLSupplyChainTradeLineItem)"/>
  <param name="BII2-T21-R024" value="(ram:AssociatedCICLDocumentLineDocument/ram:LineID)"/>
  <param name="Catalogue_Provider" value="//ram:CatalogueInformationProviderCITradeParty"/>
  <param name="Catalogue_Receiver" value="//ram:CatalogueInformationReceiverCITradeParty"/>
  <param name="Catalogue_Customer" value="//ram:ProcurementCITradeParty"/>
  <param name="Item_Price" value="//ram:NetPriceProductCITradePrice"/>
  <param name="Catalogue_Price_Update_Line" value="//ram:IncludedCICLSupplyChainTradeLineItem"/>
  <param name="Item_Property" value="//ram:ApplicableCIProductCharacteristic"/>
  <param name="Validity_Period" value="//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod"/>
  <param name="Catalogue_Supplier" value="//ram:SellerCITradeParty"/>
  <param name="Catalogue_Price_Update" value="/rsm:CrossIndustryCatalogue"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T21.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT21-CEFACT.sch?><pattern id="CodesT21">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="ram:LineStatusCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' Add Delete Update ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T21-R001]-The line action code for a catalogue line MUST be add, update or delete if present</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT21-CEFACT.sch?>
</schema>