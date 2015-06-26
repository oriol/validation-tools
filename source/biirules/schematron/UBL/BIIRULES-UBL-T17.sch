<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T17 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T17" id="UBL-T17">
  <param name="BII2-T17-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T17-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T17-R003" value="(cbc:ID)"/>
  <param name="BII2-T17-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T17-R005" value="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)"/>
  <param name="BII2-T17-R006" value="(cac:LegalMonetaryTotal/cbc:PayableAmount)"/>
  <param name="BII2-T17-R007" value="(cac:ReminderLine)"/>
  <param name="BII2-T17-R008" value="(cbc:ID)"/>
  <param name="BII2-T17-R009" value="(cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID) or (cac:BillingReference/cac:CreditNoteDocumentReference/cbc:ID)"/>
  <param name="BII2-T17-R010" value="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount) = (round((sum(//cac:ReminderLine/cbc:DebitLineAmount)- sum(//cac:ReminderLine/cbc:CreditLineAmount)) * 10 * 10) div 100)"/>
  <param name="BII2-T17-R011" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T17-R012" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T17-R013" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="Reminder_Line" value="//cac:ReminderLine"/>
  <param name="Reminder" value="/ubl:Reminder"/>
  <param name="Customer" value="//cac:AccountingCustomerParty"/>
  <param name="Supplier" value="//cac:AccountingSupplierParty"/>
  <param name="Payee" value="//cac:PayeeParty"/>
</pattern>
