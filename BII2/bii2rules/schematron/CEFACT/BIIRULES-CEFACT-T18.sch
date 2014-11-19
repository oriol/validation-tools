<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T18 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T18" id="CEFACT-T18">
  <param name="BII2-T18-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T18-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T18-R003" value="(ram:CICHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T18-R004" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BII2-T18-R005" value="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)"/>
  <param name="BII2-T18-R006" value="(ram:GlobalID/@schemeID)"/>
  <param name="BII2-T18-R007" value="(//ram:CatalogueInformationReceiverCITradeParty)"/>
  <param name="BII2-T18-R008" value="(//ram:CatalogueInformationProviderCITradeParty)"/>
  <param name="Catalogue_Request" value="/rsm:CrossIndustryCatalogue"/>
  <param name="Item" value="//ram:SpecifiedCatalogueTradeProduct"/>
</pattern>
