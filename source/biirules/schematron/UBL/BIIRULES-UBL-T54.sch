<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T54 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T54" id="UBL-T54">
  <param name="BII2-T54-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T54-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T54-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T54-R004" value="(cbc:ID)"/>
  <param name="BII2-T54-R006" value="(cbc:StartDate and cbc:EndDate) and (number(translate(cbc:StartDate,'-','')) &lt;= number(translate(cbc:EndDate,'-','')))"/>
  <param name="BII2-T54-R007" value="(cac:ProviderParty)"/>
  <param name="BII2-T54-R008" value="(cac:ReceiverParty)"/>
  <param name="BII2-T54-R009" value="count(cac:SellerSupplierParty) &lt;= 1"/>
  <param name="BII2-T54-R010" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T54-R011" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T54-R012" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T54-R013" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T54-R014" value="(cbc:StreetName) and (cbc:CityName) and (cbc:PostalZone) and (cac:Country/cbc:IdentificationCode)"/>
  <param name="BII2-T54-R015" value="number(cbc:PriceAmount) &gt;=0"/>
  <param name="BII2-T54-R017" value="(cac:LineValidityPeriod/cbc:StartDate and cac:LineValidityPeriod/cbc:EndDate) and (number(translate(cac:LineValidityPeriod/cbc:StartDate,'-','')) &gt;= number(translate(//cac:ValidityPeriod/cbc:StartDate,'-',''))) and  (number(translate(cac:LineValidityPeriod/cbc:EndDate,'-','')) &lt;= number(translate(//cac:ValidityPeriod/cbc:EndDate,'-','')))"/>
  <param name="BII2-T54-R018" value="(//cac:UsabilityPeriod/cbc:StartDate and //cac:UsabilityPeriod/cbc:EndDate) and (number(translate(//cac:UsabilityPeriod/cbc:StartDate,'-','')) &gt;= number(translate(//cac:LineValidityPeriod/cbc:StartDate,'-',''))) and  (number(translate(//cac:UsabilityPeriod/cbc:EndDate,'-','')) &lt;= number(translate(//cac:LineValidityPeriod/cbc:EndDate,'-','')))"/>
  <param name="BII2-T54-R019" value="(cbc:Name)"/>
  <param name="BII2-T54-R020" value="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID)"/>
  <param name="BII2-T54-R021" value="(cac:StandardItemIdentification/cbc:ID/@schemeID)"/>
  <param name="BII2-T54-R022" value="(cac:CommodityClassification/cbc:ItemClassificationCode/@listID)"/>
  <param name="BII2-T54-R023" value="(cac:CatalogueLine)"/>
  <param name="BII2-T54-R024" value="(cbc:ID)"/>
  <param name="BII2-T54-R026" value="number(cbc:OrderableUnit) &gt;= 0"/>
  <param name="BII2-T54-R027" value="(cbc:Value)"/>
  <param name="BII2-T54-R029" value="number(cbc:MaximumOrderQuantity) &gt;= 0"/>
  <param name="BII2-T54-R030" value="number(cbc:MinimumOrderQuantity) &gt;= 0"/>
  <param name="BII2-T54-R031" value="number(cbc:MaximumOrderQuantity) &gt;= number(cbc:MinimumOrderQuantity)"/>
  <param name="Catalogue_Provider" value="//cac:ProviderParty"/>
  <param name="Catalogue_Receiver" value="//cac:ReceiverParty"/>
  <param name="Catalogue_Customer" value="//cac:ContractorCustomerParty"/>
  <param name="Catalogue_Supplier_Address" value="//cac:SellerSupplierParty/cac:Party/cac:PostalAddress"/>
  <param name="Item_Price" value="//cac:RequiredItemLocationQuantity/cac:Price"/>
  <param name="Catalogue_Line" value="//cac:CatalogueLine"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Validity_Period" value="//cac:ValidityPeriod"/>
  <param name="Catalogue_Supplier" value="//cac:SellerSupplierParty"/>
  <param name="Catalogue" value="/ubl:Catalogue"/>
  <param name="Item" value="//cac:Item"/>
</pattern>
