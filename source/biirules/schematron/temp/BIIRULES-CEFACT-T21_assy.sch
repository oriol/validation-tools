<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
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
  
  
  <!--Suppressed abstract pattern T21 was here-->
  
  
  <!--Start pattern based on abstract T21--><pattern id="CEFACT-T21">
  <rule context="//ram:ProcurementCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T21-R013">[BII2-T21-R013]-A catalogue price update customer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="/rsm:CrossIndustryCatalogue">
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T21-R001">[BII2-T21-R001]-A catalogue price update MUST have a customization identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T21-R002">[BII2-T21-R002]-A catalogue price update MUST have a profile identifier</assert>
    <assert test="(ram:CICHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T21-R003">[BII2-T21-R003]-A catalogue price update MUST contain the date of issue</assert>
    <assert test="(ram:CICHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T21-R004">[BII2-T21-R004]-A catalogue price update MUST contain the document identifier</assert>
    <assert test="//ram:CatalogueInformationProviderCITradeParty" flag="fatal" id="BII2-T21-R007">[BII2-T21-R007]-The party providing the catalogue price update MUST be specified</assert>
    <assert test="//ram:CatalogueInformationReceiverCITradeParty" flag="fatal" id="BII2-T21-R008">[BII2-T21-R008]-The party receiving the catalogue price update MUST be specified</assert>
    <assert test="count(//ram:SellerCITradeParty) &lt;= 1" flag="fatal" id="BII2-T21-R009">[BII2-T21-R009]-A catalogue price update MUST have maximum one catalogue price update supplier</assert>
    <assert test="(ram:IncludedCICLSupplyChainTradeLineItem)" flag="fatal" id="BII2-T21-R023">[BII2-T21-R023]-A catalogue price update MUST have at least one catalogue price update line</assert>
  </rule>
  <rule context="//ram:IncludedCICLSupplyChainTradeLineItem">
    <assert test="(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime and //OrderingCISpecifiedPeriod/ram:EndDateTime) and (number(translate(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime,'-','')) &gt;= number(translate(//ram:EffectiveCISpecifiedPeriod/ram:StartDateTime,'-',''))) and  (number(translate(//ram:OrderingCISpecifiedPeriod/ram:EndDateTime,'-','')) &lt;= number(translate(//ram:EffectiveCISpecifiedPeriod/ram:EndDateTime,'-','')))" flag="warning" id="BII2-T21-R017">[BII2-T21-R017]-Catalogue line validity period MUST be within the range of the whole catalogue price update validity period</assert>
    <assert test="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID)" flag="fatal" id="BII2-T21-R020">[BII2-T21-R020]-An item in a catalogue line MUST be uniquely identifiable by at least one of the following:
- Catalogue Item Update Provider identifier
- Standard identifier</assert>
    <assert test="(ram:AssociatedCICLDocumentLineDocument/ram:LineID)" flag="fatal" id="BII2-T21-R024">[BII2-T21-R024]-A catalogue price update line MUST contain a unique line identifier</assert>
  </rule>
  <rule context="//ram:CatalogueInformationProviderCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T21-R010">[BII2-T21-R010]-A catalogue price update provider MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:CatalogueInformationReceiverCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T21-R011">[BII2-T21-R011]-A catalogue price update receiver MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:SellerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T21-R012">[BII2-T21-R012]-A catalogue price update supplier MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:NetPriceProductCITradePrice">
    <assert test="number(ram:ChargeAmount) &gt;= 0" flag="fatal" id="BII2-T21-R015">[BII2-T21-R015]-Prices of items MUST not be negative</assert>
  </rule>
  <rule context="//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod">
    <assert test="(ram:StartDateTime and ram:EndDateTime) and (number(translate(ram:StartDateTime,'-','')) &lt;= number(translate(ram:EndDateTime,'-','')))" flag="fatal" id="BII2-T21-R006">[BII2-T21-R006]-A validity period end date MUST be later or equal to a validity period start date if both validity period end date and validaty period start date are present</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT21">



<rule context="ram:LineStatusCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' Add Delete Update ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T21-R001]-The line action code for a catalogue line MUST be add, update or delete if present</assert>
</rule>

</pattern>
</schema>