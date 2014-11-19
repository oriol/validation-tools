<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:TenderReceipt-2" queryBinding="xslt2">
  <title>BIIRULES  T45 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:TenderReceipt-2"/>
  <phase id="BIIRULEST45_phase">
    <active pattern="UBL-T45"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T45 was here-->
  
  
  <!--Start pattern based on abstract T45--><pattern id="UBL-T45">
  <rule context="/ubl:TenderReceipt">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T45-R001">[BII2-T45-R001]-A tender reception notification MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T45-R002">[BII2-T45-R002]-A tender reception notification MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T45-R003">[BII2-T45-R003]-A tender reception notification MUST contain the date of issue</assert>
    <assert test="(cbc:ContractFolderID)" flag="fatal" id="BII2-T45-R004">[BII2-T45-R004]-A tender reception notification MUST have a contract folder identifier</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T45-R005">[BII2-T45-R005]-A tender reception notification MUST contain the response identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BII2-T45-R006">[BII2-T45-R006]-The contracting authority sending the tender reception notification  MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T45-R007">[BII2-T45-R007]-The tenderer receiving the tender reception notification  MUST be specified</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T45-R008">[BII2-T45-R008]-A tender reception notification contracting authority MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T45-R009">[BII2-T45-R009]-A tender reception notification tenderer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="/ubl:TenderReceipt">
    <assert test="(cac:TenderDocumentReference)" flag="fatal" id="BII2-T45-R010">[BII2-T45-R010]-A tender reception notification MUST contain at least one reference to submitted documents</assert>
  </rule>
  <rule context="//cac:TenderDocumentReference">
    <assert test="(cbc:ID) and (cbc:DocumentTypeCode)" flag="fatal" id="BII2-T45-R011">[BII2-T45-R011]-A document reference MUST contain an identifier and a document type</assert>
  </rule>
  <rule context="/ubl:TenderReceipt">
    <assert test="(cbc:RegisteredDate and cbc:RegisteredTime)" flag="fatal" id="BII2-T45-R012">[BII2-T45-R012]-The Tender Reception Notification MUST state the date and time the tender was received</assert>
  </rule>
</pattern>
</schema>