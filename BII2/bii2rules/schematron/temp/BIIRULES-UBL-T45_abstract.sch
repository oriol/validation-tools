<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T45   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:TenderReceipt-2" queryBinding="xslt2">
  <title>BIIRULES  T45 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:TenderReceipt-2"/>
  <phase id="BIIRULEST45_phase">
    <active pattern="UBL-T45"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T45.sch?><pattern abstract="true" id="T45">
  <rule context="$tender_reception_notification">
    <assert test="$BII2-T45-R001" flag="fatal" id="BII2-T45-R001">[BII2-T45-R001]-A tender reception notification MUST have a profile identifier</assert>
    <assert test="$BII2-T45-R002" flag="fatal" id="BII2-T45-R002">[BII2-T45-R002]-A tender reception notification MUST have a customization identifier</assert>
    <assert test="$BII2-T45-R003" flag="fatal" id="BII2-T45-R003">[BII2-T45-R003]-A tender reception notification MUST contain the date of issue</assert>
    <assert test="$BII2-T45-R004" flag="fatal" id="BII2-T45-R004">[BII2-T45-R004]-A tender reception notification MUST have a contract folder identifier</assert>
    <assert test="$BII2-T45-R005" flag="fatal" id="BII2-T45-R005">[BII2-T45-R005]-A tender reception notification MUST contain the response identifier</assert>
    <assert test="$BII2-T45-R006" flag="fatal" id="BII2-T45-R006">[BII2-T45-R006]-The contracting authority sending the tender reception notification  MUST be specified</assert>
    <assert test="$BII2-T45-R007" flag="fatal" id="BII2-T45-R007">[BII2-T45-R007]-The tenderer receiving the tender reception notification  MUST be specified</assert>
  </rule>
  <rule context="$Contracting_authority">
    <assert test="$BII2-T45-R008" flag="fatal" id="BII2-T45-R008">[BII2-T45-R008]-A tender reception notification contracting authority MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Tenderer">
    <assert test="$BII2-T45-R009" flag="fatal" id="BII2-T45-R009">[BII2-T45-R009]-A tender reception notification tenderer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$tender_reception_notification">
    <assert test="$BII2-T45-R010" flag="fatal" id="BII2-T45-R010">[BII2-T45-R010]-A tender reception notification MUST contain at least one reference to submitted documents</assert>
  </rule>
  <rule context="$Document_Reference">
    <assert test="$BII2-T45-R011" flag="fatal" id="BII2-T45-R011">[BII2-T45-R011]-A document reference MUST contain an identifier and a document type</assert>
  </rule>
  <rule context="$tender_reception_notification">
    <assert test="$BII2-T45-R012" flag="fatal" id="BII2-T45-R012">[BII2-T45-R012]-The Tender Reception Notification MUST state the date and time the tender was received</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T45.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T45.sch?><pattern is-a="T45" id="UBL-T45">
  <param name="BII2-T45-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T45-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T45-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T45-R004" value="(cbc:ContractFolderID)"/>
  <param name="BII2-T45-R005" value="(cbc:ID)"/>
  <param name="BII2-T45-R006" value="(cac:SenderParty)"/>
  <param name="BII2-T45-R007" value="(cac:ReceiverParty)"/>
  <param name="BII2-T45-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T45-R009" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T45-R010" value="(cac:TenderDocumentReference)"/>
  <param name="BII2-T45-R011" value="(cbc:ID) and (cbc:DocumentTypeCode)"/>
  <param name="BII2-T45-R012" value="(cbc:RegisteredDate and cbc:RegisteredTime)"/>
  <param name="Contracting_authority" value="//cac:SenderParty"/>
  <param name="Tenderer" value="//cac:ReceiverParty"/>
  <param name="tender_reception_notification" value="/ubl:TenderReceipt"/>
  <param name="Document_Reference" value="//cac:TenderDocumentReference"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T45.sch?>
</schema>