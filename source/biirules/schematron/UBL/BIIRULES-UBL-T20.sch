<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T20 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T20" id="UBL-T20">
  <param name="BII2-T20-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T20-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T20-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T20-R004" value="(cbc:ID)"/>
  <param name="BII2-T20-R006" value="(cbc:StartDate and cbc:EndDate) and (number(translate(cbc:StartDate,'-','')) &lt;= number(translate(cbc:EndDate,'-','')))"/>
  <param name="BII2-T20-R007" value="(cac:ProviderParty)"/>
  <param name="BII2-T20-R008" value="(cac:ReceiverParty)"/>
  <param name="BII2-T20-R009" value="count(cac:SellerSupplierParty) &lt;= 1"/>
  <param name="BII2-T20-R010" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T20-R011" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T20-R012" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T20-R013" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T20-R019" value="(cbc:Name)"/>
  <param name="BII2-T20-R020" value="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID)"/>
  <param name="BII2-T20-R021" value="(cac:StandardItemIdentification/cbc:ID/@schemeID)"/>
  <param name="BII2-T20-R022" value="(cac:CommodityClassification/cbc:ItemClassificationCode/@listID)"/>
  <param name="BII2-T20-R023" value="(cac:CatalogueLine)"/>
  <param name="BII2-T20-R024" value="(cbc:ID)"/>
  <param name="BII2-T20-R027" value="(cbc:Value)"/>
  <param name="Catalogue_Item_Update_Provider" value="//cac:ProviderParty"/>
  <param name="Catalogue_Item_Update_Receiver" value="//cac:ReceiverParty"/>
  <param name="Catalogue_Item_Update_Supplier" value="//cac:SellerSupplierParty"/>
  <param name="Catalogue_Item_Update_Customer" value="//cac:ContractorCustomerParty"/>
  <param name="Catalogue_Item_Update_Line" value="//cac:CatalogueLine"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Item" value="//cac:Item"/>
  <param name="Catalogue_Item_Update" value="/ubl:CatalogueItemSpecificationUpdate"/>
  <param name="Validity_Period" value="//cac:ValidityPeriod"/>
</pattern>
