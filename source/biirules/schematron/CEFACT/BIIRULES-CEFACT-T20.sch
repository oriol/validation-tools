<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T20 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T20" id="CEFACT-T20">
  <param name="BII2-T20-R001" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T20-R002" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T20-R003" value="(ram:CICHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T20-R004" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BII2-T20-R006" value="(ram:StartDateTime and ram:EndDateTime) and (number(translate(ram:StartDateTime,'-','')) &lt;= number(translate(ram:EndDateTime,'-','')))"/>
  <param name="BII2-T20-R007" value="//ram:CatalogueInformationProviderCITradeParty"/>
  <param name="BII2-T20-R008" value="//ram:CatalogueInformationReceiverCITradeParty"/>
  <param name="BII2-T20-R009" value="count(//ram:SellerCITradeParty) &lt;= 1"/>
  <param name="BII2-T20-R010" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T20-R011" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T20-R012" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T20-R013" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T20-R019" value="(ram:Name)"/>
  <param name="BII2-T20-R020" value="(ram:GlobalID) or (ram:SellerAssignedID)"/>
  <param name="BII2-T20-R021" value="(ram:GlobalID/@schemeID)"/>
  <param name="BII2-T20-R022" value="(ram:DesignatedCIProductClassification/ram:ClassCode/@listID)"/>
  <param name="BII2-T20-R023" value="(ram:IncludedCICLSupplyChainTradeLineItem)"/>
  <param name="BII2-T20-R024" value="(ram:AssociatedCICLDocumentLineDocument/ram:LineID)"/>
  <param name="BII2-T20-R027" value="ram:Description"/>
  <param name="Catalogue_Item_Update_Provider" value="//ram:CatalogueInformationProviderCITradeParty"/>
  <param name="Catalogue_Item_Update_Receiver" value="//ram:CatalogueInformationReceiverCITradeParty"/>
  <param name="Catalogue_Item_Update_Supplier" value="//ram:SellerCITradeParty"/>
  <param name="Catalogue_Item_Update_Customer" value="//ram:ProcurementCITradeParty"/>
  <param name="Catalogue_Item_Update_Line" value="//ram:IncludedCICLSupplyChainTradeLineItem"/>
  <param name="Item_Property" value="//ram:ApplicableCIProductCharacteristic"/>
  <param name="Item" value="//ram:SpecifiedCatalogueTradeProduct"/>
  <param name="Catalogue_Item_Update" value="/rsm:CrossIndustryCatalogue"/>
  <param name="Validity_Period" value="//ram:CICHExchangedDocument/ram:EffectiveCISpecifiedPeriod"/>
</pattern>
