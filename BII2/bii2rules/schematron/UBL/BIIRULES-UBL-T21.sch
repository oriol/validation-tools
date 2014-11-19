<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T21 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T21" id="UBL-T21">
  <param name="BII2-T21-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T21-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T21-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T21-R004" value="(cbc:ID)"/>
  <param name="BII2-T21-R006" value="(cbc:StartDate and cbc:EndDate) and (number(translate(cbc:StartDate,'-','')) &lt;= number(translate(cbc:EndDate,'-','')))"/>
  <param name="BII2-T21-R007" value="(cac:ProviderParty)"/>
  <param name="BII2-T21-R008" value="(cac:ReceiverParty)"/>
  <param name="BII2-T21-R009" value="count(cac:SellerSupplierParty) &lt;= 1"/>
  <param name="BII2-T21-R010" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R011" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R012" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R013" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R015" value="number(cbc:PriceAmount) &gt;=0"/>
  <param name="BII2-T21-R017" value="(cac:LineValidityPeriod/cbc:StartDate and cac:LineValidityPeriod/cbc:EndDate) and (number(translate(cac:LineValidityPeriod/cbc:StartDate,'-','')) &gt;= number(translate(//cac:ValidityPeriod/cbc:StartDate,'-',''))) and  (number(translate(cac:LineValidityPeriod/cbc:EndDate,'-','')) &lt;= number(translate(//cac:ValidityPeriod/cbc:EndDate,'-','')))"/>
  <param name="BII2-T21-R020" value="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID)"/>
  <param name="BII2-T21-R023" value="(cac:CatalogueLine)"/>
  <param name="BII2-T21-R024" value="(cbc:ID)"/>
  <param name="Catalogue_Provider" value="//cac:ProviderParty"/>
  <param name="Catalogue_Receiver" value="//cac:ReceiverParty"/>
  <param name="Catalogue_Customer" value="//cac:ContractorCustomerParty"/>
  <param name="Item_Price" value="//cac:RequiredItemLocationQuantity/cac:Price"/>
  <param name="Catalogue_Price_Update_Line" value="//cac:CatalogueLine"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Validity_Period" value="//cac:ValidityPeriod"/>
  <param name="Catalogue_Supplier" value="//cac:SellerSupplierParty"/>
  <param name="Catalogue_Price_Update" value="/ubl:CataloguePriceUpdate"/>
</pattern>
