<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T22 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T22" id="CEFACT-T22">
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
</pattern>
