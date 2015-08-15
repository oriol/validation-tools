<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T26 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T26" id="UBL-T26">
  <param name="BII2-T26-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T26-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T26-R003" value="(cbc:ID)"/>
  <param name="BII2-T26-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T26-R005" value="(cac:SellerSupplierParty)"/>
  <param name="BII2-T26-R006" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T26-R007" value="(cbc:CityName) and (cbc:PostalZone) and (cac:Country/cbc:IdentificationCode)  "/>
  <param name="BII2-T26-R008" value="(cac:BuyerCustomerParty)"/>
  <param name="BII2-T26-R009" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T26-R010" value="(cbc:CityName) and (cbc:PostalZone) and (cac:Country/cbc:IdentificationCode)  "/>
  <param name="BII2-T26-R011" value="cbc:PaymentMeansCode"/>
  <param name="BII2-T26-R014" value="(cac:StatementLine)"/>
  <param name="BII2-T26-R015" value="(cbc:ID)"/>
  <param name="BII2-T26-R016" value="number(cbc:TotalBalanceAmount) = number(round(sum(//cbc:BalanceAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T26-R017" value="(cbc:DocumentCurrencyCode)"/>
  <param name="BII2-T26-R018" value="false()"/>
  <param name="BII2-T26-R019" value="(cbc:BalanceAmount)"/>
  <param name="Statement_Line" value="//cac:StatementLine"/>
  <param name="Supplier_Address" value="//cac:SellerSupplierParty/cac:Party/cac:PostalAddress"/>
  <param name="Statement" value="/ubl:Statement"/>
  <param name="Customer_Address" value="//cac:BuyerCustomerParty/cac:Party/cac:PostalAddress"/>
  <param name="Payment_Instructions" value="//cac:PaymentMeans"/>
  <param name="Supplier" value="//cac:SellerSupplierParty"/>
  <param name="Customer" value="//cac:BuyerCustomerParty"/>
</pattern>
