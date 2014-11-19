<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T21 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T21" id="CEFACT-T21">
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
</pattern>
