<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T68 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T68" id="CEFACT-T68">
  <param name="BII2-T68-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T68-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T68-R004" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BII2-T68-R005" value="(//ram:ContractReferencedCIReferencedDocument/ram:IssuerAssignedID)"/>
  <param name="BII2-T68-R009" value="(//ram:DesignatedCIProductClassification[ram:SystemID]/ram:ClassCIProductCharacteristic)"/>
  <param name="BII2-T68-R010" value="(//ram:DesignatedCIProductClassification/ram:ClassCIProductCharacteristic)"/>
  <param name="BII2-T68-R011" value="(//ram:SpecifiedCICLSupplyChainTradeAgreement)"/>
  <param name="BII2-T68-R012" value="ram:Description"/>
  <param name="Pre-Award_Catalogue" value="rsm:CrossIndustryCatalogue"/>
  <param name="Item_Property" value="//ram:ApplicableCIProductCharacteristic"/>
  <param name="Item" value="//ram:SpecifiedCatalogueTradeProduct"/>
</pattern>
