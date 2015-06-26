<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T69 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T69" id="CEFACT-T69">
  <param name="BII2-T69-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T69-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T69-R003" value="(ram:CICHExchangedDocument/ram:ID)"/>
  <param name="BII2-T69-R004" value="//ram:ContractReferencedCIReferencedDocument/ram:IssuerAssignedID"/>
  <param name="BII2-T69-R005" value="(//ram:Name)"/>
  <param name="BII2-T69-R006" value="(ram:GlobalID/@schemeID)"/>
  <param name="BII2-T69-R007" value="(ram:DesignatedCIProductClassification/ram:ClassCode[@listID='CPV'])"/>
  <param name="BII2-T69-R008" value="(ram:DesignatedCIProductClassification)"/>
  <param name="BII2-T69-R009" value="//ram:IncludedCICLSupplyChainTradeLineItem"/>
  <param name="BII2-T69-R010" value="ram:Description"/>
  <param name="Pre-Award_Catalogue_Template" value="/rsm:CrossIndustryCatalogue"/>
  <param name="Item_Property" value="//ram:ApplicableCIProductCharacteristic"/>
  <param name="Item" value="//ram:SpecifiedCatalogueTradeProduct"/>
</pattern>
