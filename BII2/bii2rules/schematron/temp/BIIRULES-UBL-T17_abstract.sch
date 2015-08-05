<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T17   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Reminder-2" queryBinding="xslt2">
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
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T17.sch?><pattern abstract="true" id="T17">
  <rule context="$Reminder">
    <assert test="$BII2-T17-R001" flag="fatal" id="BII2-T17-R001">[BII2-T17-R001]-A reminder MUST have a customization identifier</assert>
    <assert test="$BII2-T17-R002" flag="fatal" id="BII2-T17-R002">[BII2-T17-R002]-A reminder MUST have a profile identifier</assert>
    <assert test="$BII2-T17-R003" flag="fatal" id="BII2-T17-R003">[BII2-T17-R003]-A reminder MUST have a document identifier</assert>
    <assert test="$BII2-T17-R004" flag="fatal" id="BII2-T17-R004">[BII2-T17-R004]-A reminder MUST have the date of issue</assert>
    <assert test="$BII2-T17-R005" flag="fatal" id="BII2-T17-R005">[BII2-T17-R005]-A reminder MUST specify the sum of the line amounts</assert>
    <assert test="$BII2-T17-R006" flag="fatal" id="BII2-T17-R006">[BII2-T17-R006]-A reminder MUST specify the total payable amount</assert>
    <assert test="$BII2-T17-R007" flag="fatal" id="BII2-T17-R007">[BII2-T17-R007]-A reminder MUST specify at least one line</assert>
  </rule>
  <rule context="$Reminder_Line">
    <assert test="$BII2-T17-R008" flag="fatal" id="BII2-T17-R008">[BII2-T17-R008]-Reminder lines MUST have a line identifier</assert>
    <assert test="$BII2-T17-R009" flag="warning" id="BII2-T17-R009">[BII2-T17-R009]-A reminder line SHOULD specify a referenced billing identifier</assert>
  </rule>
  <rule context="$Reminder">
    <assert test="$BII2-T17-R010" flag="fatal" id="BII2-T17-R010">[BII2-T17-R010]-Reminder total line extension amount MUST equal the sum of the line totals</assert>
  </rule>
  <rule context="$Payee">
    <assert test="$BII2-T17-R011" flag="fatal" id="BII2-T17-R011">[BII2-T17-R011]-The payee name or payee identifier MUST be specified if payee information is provided</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T17-R012" flag="fatal" id="BII2-T17-R012">[BII2-T17-R012]-A supplier in the reminder MUST be identified using the party name or the party identifier</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BII2-T17-R013" flag="fatal" id="BII2-T17-R013">[BII2-T17-R013]-A customer in the reminder MUST be identified using the party name or the party identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T17.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T17.sch?><pattern is-a="T17" id="UBL-T17">
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
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T17.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT17-UBL.sch?><pattern id="CodesT17">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:TaxCategory/cbc:ID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T17-R005]-Reminder tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT17-UBL.sch?>
</schema>