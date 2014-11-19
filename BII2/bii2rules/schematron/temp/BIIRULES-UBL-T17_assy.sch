<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2" queryBinding="xslt2">
  <title>BIIRULES  T17 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2"/>
  <phase id="BIIRULEST17_phase">
    <active pattern="UBL-T17"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT17"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T17 was here-->
  
  
  <!--Start pattern based on abstract T17--><pattern id="UBL-T17">
  <rule context="/ubl:Reminder">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T17-R001">[BII2-T17-R001]-A reminder MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T17-R002">[BII2-T17-R002]-A reminder MUST have a profile identifier</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T17-R003">[BII2-T17-R003]-A reminder MUST have a document identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T17-R004">[BII2-T17-R004]-A reminder MUST have the date of issue</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)" flag="fatal" id="BII2-T17-R005">[BII2-T17-R005]-A reminder MUST specify the sum of the line amounts</assert>
    <assert test="(cac:LegalMonetaryTotal/cbc:PayableAmount)" flag="fatal" id="BII2-T17-R006">[BII2-T17-R006]-A reminder MUST specify the total payable amount</assert>
    <assert test="(cac:ReminderLine)" flag="fatal" id="BII2-T17-R007">[BII2-T17-R007]-A reminder MUST specify at least one line</assert>
  </rule>
  <rule context="//cac:ReminderLine">
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T17-R008">[BII2-T17-R008]-Reminder lines MUST have a line identifier</assert>
    <assert test="(cac:BillingReference/cac:InvoiceDocumentReference/cbc:ID) or (cac:BillingReference/cac:CreditNoteDocumentReference/cbc:ID)" flag="warning" id="BII2-T17-R009">[BII2-T17-R009]-A reminder line SHOULD specify a referenced billing identifier</assert>
  </rule>
  <rule context="/ubl:Reminder">
    <assert test="number(cac:LegalMonetaryTotal/cbc:LineExtensionAmount) = number(round((sum(//cac:ReminderLine/cbc:DebitLineAmount)- sum(//cac:ReminderLine/cbc:CreditLineAmount)) * 10 * 10) div 100)" flag="fatal" id="BII2-T17-R010">[BII2-T17-R010]-Reminder total line extension amount MUST equal the sum of the line totals</assert>
  </rule>
  <rule context="//cac:PayeeParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T17-R011">[BII2-T17-R011]-The payee name or payee identifier MUST be specified if payee information is provided</assert>
  </rule>
  <rule context="//cac:AccountingSupplierParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T17-R012">[BII2-T17-R012]-A supplier in the reminder MUST be identified using the party name or the party identifier</assert>
  </rule>
  <rule context="//cac:AccountingCustomerParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T17-R013">[BII2-T17-R013]-A customer in the reminder MUST be identified using the party name or the party identifier</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT17">



<rule context="cac:TaxCategory/cbc:ID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T17-R005]-Reminder tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>

</pattern>
</schema>