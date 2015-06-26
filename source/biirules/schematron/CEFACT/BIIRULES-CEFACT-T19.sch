<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T19 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T19" id="CEFACT-T19">
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
</pattern>
