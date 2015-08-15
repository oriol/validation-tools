<?xml version="1.0" encoding="UTF-8"?><!-- 

        	CEFACT syntax binding to the T19   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
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
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T19.sch?><pattern abstract="true" id="T19">
  <rule context="$Catalogue">
    <assert test="$BII2-T19-R001" flag="fatal" id="BII2-T19-R001">[BII2-T19-R001]-A catalogue MUST have a customization identifier</assert>
    <assert test="$BII2-T19-R002" flag="fatal" id="BII2-T19-R002">[BII2-T19-R002]-A catalogue MUST have a profile identifier</assert>
    <assert test="$BII2-T19-R003" flag="fatal" id="BII2-T19-R003">[BII2-T19-R003]-A catalogue MUST contain the date of issue</assert>
    <assert test="$BII2-T19-R004" flag="fatal" id="BII2-T19-R004">[BII2-T19-R004]-A catalogue MUST contain the catalogue document identifier</assert>
    <assert test="$BII2-T19-R007" flag="fatal" id="BII2-T19-R007">[BII2-T19-R007]-The party providing the catalogue MUST be specified</assert>
    <assert test="$BII2-T19-R008" flag="fatal" id="BII2-T19-R008">[BII2-T19-R008]-The party receiving the catalogue MUST be specified</assert>
    <assert test="$BII2-T19-R009" flag="fatal" id="BII2-T19-R009">[BII2-T19-R009]-A catalogue MUST have maximum one catalogue supplier</assert>
    <assert test="$BII2-T19-R023" flag="fatal" id="BII2-T19-R023">[BII2-T19-R023]-A catalogue MUST have at least one catalogue line</assert>
  </rule>
  <rule context="$Catalogue_Customer">
    <assert test="$BII2-T19-R013" flag="fatal" id="BII2-T19-R013">[BII2-T19-R013]-A catalogue customer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Line">
    <assert test="$BII2-T19-R017" flag="warning" id="BII2-T19-R017">[BII2-T19-R017]-Catalogue line validity period MUST be within the range of the whole catalogue validity period</assert>
    <assert test="$BII2-T19-R018" flag="warning" id="BII2-T19-R018">[BII2-T19-R018]-Price validity period MUST be within the range of the whole catalogue line validity period</assert>
    <assert test="$BII2-T19-R024" flag="fatal" id="BII2-T19-R024">[BII2-T19-R024]-A catalogue line MUST contain a unique line identifier</assert>
    <assert test="$BII2-T19-R026" flag="fatal" id="BII2-T19-R026">[BII2-T19-R026]-Orderable quantities MUST be greater than zero</assert>
    <assert test="$BII2-T19-R029" flag="warning" id="BII2-T19-R029">[BII2-T19-R029]-Maximum quantity MUST be greater than zero</assert>
    <assert test="$BII2-T19-R030" flag="warning" id="BII2-T19-R030">[BII2-T19-R030]-Minimum quantity MUST be greater than zero</assert>
    <assert test="$BII2-T19-R031" flag="warning" id="BII2-T19-R031">[BII2-T19-R031]-Maximum quantity MUST be greater or equal to the Minimum quantity</assert>
  </rule>
  <rule context="$Catalogue_Provider">
    <assert test="$BII2-T19-R010" flag="fatal" id="BII2-T19-R010">[BII2-T19-R010]-A catalogue provider MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Receiver">
    <assert test="$BII2-T19-R011" flag="fatal" id="BII2-T19-R011">[BII2-T19-R011]-A catalogue receiver MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Supplier">
    <assert test="$BII2-T19-R012" flag="fatal" id="BII2-T19-R012">[BII2-T19-R012]-A catalogue supplier MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII2-T19-R019" flag="warning" id="BII2-T19-R019">[BII2-T19-R019]-An item in a catalogue line SHOULD have a name</assert>
    <assert test="$BII2-T19-R020" flag="fatal" id="BII2-T19-R020">[BII2-T19-R020]-An item in a catalogue line MUST be uniquely identifiable by at least one of the following:
- Catalogue Provider identifier
- Standard identifier</assert>
  </rule>
  <rule context="$Item_Commodity">
    <assert test="$BII2-T19-R022" flag="warning" id="BII2-T19-R022">[BII2-T19-R022]-Classification codes SHOULD contain the Classification scheme Identifier (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="$Item_Price">
    <assert test="$BII2-T19-R015" flag="fatal" id="BII2-T19-R015">[BII2-T19-R015]-Prices of items MUST not be negative</assert>
  </rule>
  <rule context="$Item_Property">
    <assert test="$BII2-T19-R027" flag="fatal" id="BII2-T19-R027">[BII2-T19-R027]-An item property data name  MUST specify a data value</assert>
  </rule>
  <rule context="$Item_Standard">
    <assert test="$BII2-T19-R021" flag="warning" id="BII2-T19-R021">[BII2-T19-R021]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
  </rule>
  <rule context="$Validity_Period">
    <assert test="$BII2-T19-R006" flag="fatal" id="BII2-T19-R006">[BII2-T19-R006]-A validity period end date MUST be later or equal to a validity period start date if both validity period end date and validaty period start date are present</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T19.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T19.sch?><pattern is-a="T19" id="CEFACT-T19">
  <param name="BII2-T19-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T19-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T19-R003" value="(ram:CICHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T19-R004" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BII2-T19-R006" value="(ram:StartDateTime and ram:EndDateTime) and (number(translate(ram:StartDateTime,'-','')) &lt;= number(translate(ram:EndDateTime,'-','')))"/>
  <param name="BII2-T19-R007" value="//ram:CatalogueInformationProviderCITradeParty"/>
  <param name="BII2-T19-R008" value="//ram:CatalogueInformationReceiverCITradeParty"/>
  <param name="BII2-T19-R009" value="count(//ram:SellerCITradeParty) &lt;= 1"/>
  <param name="BII2-T19-R010" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T19-R011" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T19-R012" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T19-R013" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T19-R014" value="(ram:LineOne) and (ram:CityName) and (ram:PostcodeCode) and (ram:CountryID)"/>
  <param name="BII2-T19-R015" value="number(ram:ChargeAmount) &gt;= 0"/>
  <param name="BII2-T19-R017" value="(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime and //OrderingCISpecifiedPeriod/ram:EndDateTime) and (number(translate(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime,'-','')) &gt;= number(translate(//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:StartDateTime,'-',''))) and  (number(translate(//ram:OrderingCISpecifiedPeriod/ram:EndDateTime,'-','')) &lt;= number(translate(//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:EndDateTime,'-','')))"/>
  <param name="BII2-T19-R018" value="(//ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:StartDateTime and //ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:EndDateTime) and (number(translate(//ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:StartDateTime,'-','')) &gt;= number(translate(//ram:OrderingCISpecifiedPeriod/ram:StartDateTime,'-',''))) and  (number(translate(//ram:NetPriceProductCITradePrice/ram:ValidityCISpecifiedPeriod/ram:EndDateTime,'-','')) &lt;= number(translate(//ram:OrderingCISpecifiedPeriod/ram:EndDateTime,'-','')))"/>
  <param name="BII2-T19-R019" value="(ram:Name)"/>
  <param name="BII2-T19-R020" value="(ram:GlobalID) or (ram:SellerAssignedID)"/>
  <param name="BII2-T19-R021" value="(ram:GlobalID/@schemeID)"/>
  <param name="BII2-T19-R022" value="(ram:DesignatedCIProductClassification/ram:ClassCode/@listID)"/>
  <param name="BII2-T19-R023" value="(ram:IncludedCICLSupplyChainTradeLineItem)"/>
  <param name="BII2-T19-R024" value="(ram:AssociatedCICLDocumentLineDocument/ram:LineID)"/>
  <param name="BII2-T19-R026" value="number(ram:SpecifiedCICLSupplyChainTradeAgreement/ram:OrderProductUnitMeasureCode) &gt;= 0"/>
  <param name="BII2-T19-R027" value="ram:Description"/>
  <param name="BII2-T19-R029" value="number(//ram:MaximumProductOrderableQuantity) &gt;= 0"/>
  <param name="BII2-T19-R030" value="number(//ram:MinimumProductOrderableQuantity) &gt;= 0"/>
  <param name="BII2-T19-R031" value="number(//ram:MaximumProductOrderableQuantity) &gt;= number(//ram:MinimumProductOrderableQuantity)"/>
  <param name="Catalogue_Provider" value="//ram:CatalogueInformationProviderCITradeParty"/>
  <param name="Catalogue_Receiver" value="//ram:CatalogueInformationReceiverCITradeParty"/>
  <param name="Catalogue_Customer" value="//ram:ProcurementCITradeParty"/>
  <param name="Catalogue_Supplier_Address" value="//ram:SellerCITradeParty/ram:PostalCITradeAddress"/>
  <param name="Item_Price" value="//ram:NetPriceProductCITradePrice"/>
  <param name="Catalogue_Line" value="//ram:IncludedCICLSupplyChainTradeLineItem"/>
  <param name="Item_Property" value="//ram:ApplicableCIProductCharacteristic"/>
  <param name="Validity_Period" value="//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod"/>
  <param name="Catalogue_Supplier" value="//ram:SellerCITradeParty"/>
  <param name="Catalogue" value="/rsm:CrossIndustryCatalogue"/>
  <param name="Item" value="//ram:SpecifiedCatalogueTradeProduct"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T19.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT19-CEFACT.sch?><?DSDL_INCLUDE_END codelist/BIIRULESCodesT19-CEFACT.sch?>
</schema>