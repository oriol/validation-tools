<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T18 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T18" id="UBL-T18">
  <param name="BII2-T18-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T18-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T18-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T18-R004" value="(cbc:ID)"/>
  <param name="BII2-T18-R005" value="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID) or (cac:CatalogueItemIdentification/cbc:ID)"/>
  <param name="BII2-T18-R006" value="(cac:StandardItemIdentification/cbc:ID/@schemeID)"/>
  <param name="BII2-T18-R007" value="(cac:ReceiverParty)"/>
  <param name="BII2-T18-R008" value="(cac:ProviderParty)"/>
  <param name="Catalogue_Request" value="/ubl:CatalogueRequest"/>
  <param name="Item" value="//cac:Item"/>
</pattern>
