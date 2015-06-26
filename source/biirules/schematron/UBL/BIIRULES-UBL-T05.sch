<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T05 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T05" id="UBL-T05">
  <param name="BII2-T05-R001" value="(cbc:ID)"/>
  <param name="BII2-T05-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T05-R003" value="(cbc:ProfileID)"/>
  <param name="BII2-T05-R004" value="(//cac:OrderReference/cbc:ID)"/>
  <param name="BII2-T05-R005" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T05-R006" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T05-R008" value="(cbc:IssueDate)"/>
  <param name="Customer" value="//cac:BuyerCustomerParty"/>
  <param name="Counter_Offer_Response" value="/ubl:OrderChange"/>
  <param name="Supplier" value="//cac:SellerSupplierParty"/>
</pattern>
