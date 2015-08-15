<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T19 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST19_phase">
    <active pattern="CEFACT-T19"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT19"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T19 was here-->
  
  
  <!--Start pattern based on abstract T19--><pattern id="CEFACT-T19">
  <rule context="/rsm:CrossIndustryCatalogue">
    <assert test="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T19-R001">[BII2-T19-R001]-A catalogue MUST have a customization identifier</assert>
    <assert test="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)" flag="fatal" id="BII2-T19-R002">[BII2-T19-R002]-A catalogue MUST have a profile identifier</assert>
    <assert test="(ram:CICHExchangedDocument/ram:IssueDateTime)" flag="fatal" id="BII2-T19-R003">[BII2-T19-R003]-A catalogue MUST contain the date of issue</assert>
    <assert test="(ram:CICHExchangedDocument/ram:ID)" flag="fatal" id="BII2-T19-R004">[BII2-T19-R004]-A catalogue MUST contain the catalogue document identifier</assert>
    <assert test="//ram:CatalogueInformationProviderCITradeParty" flag="fatal" id="BII2-T19-R007">[BII2-T19-R007]-The party providing the catalogue MUST be specified</assert>
    <assert test="//ram:CatalogueInformationReceiverCITradeParty" flag="fatal" id="BII2-T19-R008">[BII2-T19-R008]-The party receiving the catalogue MUST be specified</assert>
    <assert test="count(//ram:SellerCITradeParty) &lt;= 1" flag="fatal" id="BII2-T19-R009">[BII2-T19-R009]-A catalogue MUST have maximum one catalogue supplier</assert>
    <assert test="(ram:IncludedCICLSupplyChainTradeLineItem)" flag="fatal" id="BII2-T19-R023">[BII2-T19-R023]-A catalogue MUST have at least one catalogue line</assert>
  </rule>
  <rule context="//ram:ProcurementCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T19-R013">[BII2-T19-R013]-A catalogue customer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:IncludedCICLSupplyChainTradeLineItem">
    <assert test="(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime and //OrderingCISpecifiedPeriod/ram:EndDateTime) and (number(translate(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime,'-','')) &gt;= number(translate(//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:StartDateTime,'-',''))) and  (number(translate(//ram:OrderingCISpecifiedPeriod/ram:EndDateTime,'-','')) &lt;= number(translate(//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:EndDateTime,'-','')))" flag="warning" id="BII2-T19-R017">[BII2-T19-R017]-Catalogue line validity period MUST be within the range of the whole catalogue validity period</assert>
    <assert test="(//ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:StartDateTime and //ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:EndDateTime) and (number(translate(//ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:StartDateTime,'-','')) &gt;= number(translate(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime,'-',''))) and  (number(translate(//ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:EndDateTime,'-','')) &lt;= number(translate(//ram:OrderingCISpecifiedPeriod/ram:EndDateTime,'-','')))" flag="warning" id="BII2-T19-R018">[BII2-T19-R018]-Price validity period MUST be within the range of the whole catalogue line validity period</assert>
    <assert test="(ram:AssociatedCICLDocumentLineDocument/ram:LineID)" flag="fatal" id="BII2-T19-R024">[BII2-T19-R024]-A catalogue line MUST contain a unique line identifier</assert>
    <assert test="number(ram:SpecifiedCICLSupplyChainTradeAgreement/ram:OrderProductUnitMeasureCode) &gt;= 0" flag="fatal" id="BII2-T19-R026">[BII2-T19-R026]-Orderable quantities MUST be greater than zero</assert>
    <assert test="number(//ram:MaximumProductOrderableQuantity) &gt;= 0" flag="warning" id="BII2-T19-R029">[BII2-T19-R029]-Maximum quantity MUST be greater than zero</assert>
    <assert test="number(//ram:MinimumProductOrderableQuantity) &gt;= 0" flag="warning" id="BII2-T19-R030">[BII2-T19-R030]-Minimum quantity MUST be greater than zero</assert>
    <assert test="number(//ram:MaximumProductOrderableQuantity) &gt;= number(//ram:MinimumProductOrderableQuantity)" flag="warning" id="BII2-T19-R031">[BII2-T19-R031]-Maximum quantity MUST be greater or equal to the Minimum quantity</assert>
  </rule>
  <rule context="//ram:CatalogueInformationProviderCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T19-R010">[BII2-T19-R010]-A catalogue provider MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:CatalogueInformationReceiverCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T19-R011">[BII2-T19-R011]-A catalogue receiver MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:SellerCITradeParty">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T19-R012">[BII2-T19-R012]-A catalogue supplier MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//ram:SpecifiedCatalogueTradeProduct">
    <assert test="(ram:Name)" flag="warning" id="BII2-T19-R019">[BII2-T19-R019]-An item in a catalogue line SHOULD have a name</assert>
    <assert test="(ram:GlobalID) or (ram:SellerAssignedID)" flag="fatal" id="BII2-T19-R020">[BII2-T19-R020]-An item in a catalogue line MUST be uniquely identifiable by at least one of the following:
- Catalogue Provider identifier
- Standard identifier</assert>
  </rule>
  <rule context="//ram:SpecifiedCatalogueTradeProduct_Commodity">
    <assert test="(ram:DesignatedCIProductClassification/ram:ClassCode/@listID)" flag="warning" id="BII2-T19-R022">[BII2-T19-R022]-Classification codes SHOULD contain the Classification scheme Identifier (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="//ram:NetPriceProductCITradePrice">
    <assert test="number(ram:ChargeAmount) &gt;= 0" flag="fatal" id="BII2-T19-R015">[BII2-T19-R015]-Prices of items MUST not be negative</assert>
  </rule>
  <rule context="//ram:ApplicableCIProductCharacteristic">
    <assert test="ram:Description" flag="fatal" id="BII2-T19-R027">[BII2-T19-R027]-An item property data name  MUST specify a data value</assert>
  </rule>
  <rule context="//ram:SpecifiedCatalogueTradeProduct_Standard">
    <assert test="(ram:GlobalID/@schemeID)" flag="warning" id="BII2-T19-R021">[BII2-T19-R021]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
  </rule>
  <rule context="//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod">
    <assert test="(ram:StartDateTime and ram:EndDateTime) and (number(translate(ram:StartDateTime,'-','')) &lt;= number(translate(ram:EndDateTime,'-','')))" flag="fatal" id="BII2-T19-R006">[BII2-T19-R006]-A validity period end date MUST be later or equal to a validity period start date if both validity period end date and validaty period start date are present</assert>
  </rule>
</pattern>
  
  
  
</schema>