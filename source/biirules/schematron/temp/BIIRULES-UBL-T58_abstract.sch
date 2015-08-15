<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T58   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T58 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST58_phase">
    <active pattern="UBL-T58"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T58.sch?><pattern abstract="true" id="T58">
  <rule context="$catalogue_rejection">
    <assert test="$BII2-T58-R001" flag="fatal" id="BII2-T58-R001">[BII2-T58-R001]-A catalogue rejection MUST have a profile identifier</assert>
    <assert test="$BII2-T58-R002" flag="fatal" id="BII2-T58-R002">[BII2-T58-R002]-A catalogue rejection MUST have a customization identifier</assert>
    <assert test="$BII2-T58-R003" flag="fatal" id="BII2-T58-R003">[BII2-T58-R003]-A catalogue rejection MUST contain the date of issue</assert>
    <assert test="$BII2-T58-R004" flag="fatal" id="BII2-T58-R004">[BII2-T58-R004]-A catalogue rejection MUST contain the response identifier</assert>
    <assert test="$BII2-T58-R005" flag="fatal" id="BII2-T58-R005">[BII2-T58-R005]-The party sending the catalogue rejection MUST be specified</assert>
    <assert test="$BII2-T58-R006" flag="fatal" id="BII2-T58-R006">[BII2-T58-R006]-The party receiving the catalogue rejection MUST be specified</assert>
    <assert test="$BII2-T58-R009" flag="fatal" id="BII2-T58-R009">[BII2-T58-R009]-A catalogue rejection MUST contain a response decision</assert>
    <assert test="$BII2-T58-R010" flag="fatal" id="BII2-T58-R010">[BII2-T58-R010]-A catalogue rejection MUST contain a document reference</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T58-R008" flag="fatal" id="BII2-T58-R008">[BII2-T58-R008]-A catalogue rejection receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T58-R007" flag="fatal" id="BII2-T58-R007">[BII2-T58-R007]-A catalogue rejection sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T58.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T58.sch?><pattern is-a="T58" id="UBL-T58">
  <param name="BII2-T58-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T58-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T58-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T58-R004" value="(cbc:ID)"/>
  <param name="BII2-T58-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T58-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T58-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T58-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T58-R009" value="(cac:DocumentResponse/cac:Response/cbc:ResponseCode)"/>
  <param name="BII2-T58-R010" value="(//cac:DocumentReference/cbc:ID)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="catalogue_rejection" value="/ubl:ApplicationResponse"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T58.sch?>
</schema>