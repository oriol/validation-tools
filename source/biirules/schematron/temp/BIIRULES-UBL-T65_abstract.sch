<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T65   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T65 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST65_phase">
    <active pattern="UBL-T65"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T65.sch?><pattern abstract="true" id="T65">
  <rule context="$notice_publication_response">
    <assert test="$BII2-T65-R001" flag="fatal" id="BII2-T65-R001">[BII2-T65-R001]-A notice publication response MUST have a profile identifier</assert>
    <assert test="$BII2-T65-R002" flag="fatal" id="BII2-T65-R002">[BII2-T65-R002]-A notice publication response MUST have a customization identifier</assert>
    <assert test="$BII2-T65-R003" flag="fatal" id="BII2-T65-R003">[BII2-T65-R003]-A notice publication response MUST contain the date of issue</assert>
    <assert test="$BII2-T65-R004" flag="fatal" id="BII2-T65-R004">[BII2-T65-R004]-A notice publication response MUST contain the response identifier</assert>
    <assert test="$BII2-T65-R005" flag="fatal" id="BII2-T65-R005">[BII2-T65-R005]-The party sending the notice publication response  MUST be specified</assert>
    <assert test="$BII2-T65-R006" flag="fatal" id="BII2-T65-R006">[BII2-T65-R006]-The party receiving the notice publication response  MUST be specified</assert>
    <assert test="$BII2-T65-R010" flag="fatal" id="BII2-T65-R010">[BII2-T65-R010]-A notice publication response MUST contain a received notification request</assert>
    <assert test="$BII2-T65-R011" flag="fatal" id="BII2-T65-R011">[BII2-T65-R011]-A notice publication response MUST contain a document reception date and time</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T65-R008" flag="fatal" id="BII2-T65-R008">[BII2-T65-R008]-A notice publication response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T65-R007" flag="fatal" id="BII2-T65-R007">[BII2-T65-R007]-A notice publication response sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T65.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T65.sch?><pattern is-a="T65" id="UBL-T65">
  <param name="BII2-T65-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T65-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T65-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T65-R004" value="(cbc:ID)"/>
  <param name="BII2-T65-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T65-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T65-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T65-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T65-R010" value="(cac:DocumentReference)"/>
  <param name="BII2-T65-R011" value="false()"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="notice_publication_response" value="/ubl:ApplicationResponse"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T65.sch?>
</schema>