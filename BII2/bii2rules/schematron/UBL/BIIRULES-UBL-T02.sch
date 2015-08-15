<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T02 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T02" id="UBL-T02">
  <param name="BII2-T02-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T02-R003" value="(cbc:ProfileID)"/>
  <param name="BII2-T02-R005" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T02-R006" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T02-R007" value="(cac:OrderReference/cbc:ID)"/>
  <param name="BII2-T02-R008" value="(cbc:AcceptedIndicator = true()) and not(cbc:Note)"/>
  <param name="BII2-T02-R009" value="(cbc:ID)"/>
  <param name="BII2-T02-R010" value="(cbc:IssueDate)"/>
  <param name="Customer" value="//cac:BuyerCustomerParty"/>
  <param name="Order_Response" value="/ubl:OrderResponseSimple"/>
  <param name="Supplier" value="//cac:SellerSupplierParty"/>
</pattern>
