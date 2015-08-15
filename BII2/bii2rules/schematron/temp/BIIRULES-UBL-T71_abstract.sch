<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T71   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T71 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST71_phase">
    <active pattern="UBL-T71"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T71.sch?><pattern abstract="true" id="T71">
  <rule context="$message_level_response">
    <assert test="$BII2-T71-R001" flag="fatal" id="BII2-T71-R001">[BII2-T71-R001]-A message level response MUST have a profile identifier</assert>
    <assert test="$BII2-T71-R002" flag="fatal" id="BII2-T71-R002">[BII2-T71-R002]-A message level response MUST have a customization identifier</assert>
    <assert test="$BII2-T71-R003" flag="fatal" id="BII2-T71-R003">[BII2-T71-R003]-A message level response MUST contain the date of issue</assert>
    <assert test="$BII2-T71-R004" flag="fatal" id="BII2-T71-R004">[BII2-T71-R004]-A message level response MUST contain the response identifier</assert>
    <assert test="$BII2-T71-R005" flag="fatal" id="BII2-T71-R005">[BII2-T71-R005]-The party sending the message level response  MUST be specified</assert>
    <assert test="$BII2-T71-R006" flag="fatal" id="BII2-T71-R006">[BII2-T71-R006]-The party receiving the message level response  MUST be specified</assert>
    <assert test="$BII2-T71-R010" flag="fatal" id="BII2-T71-R010">[BII2-T71-R010]-A message level response MUST contain a document reference pointing towards the business message that the response relates to</assert>
    <assert test="$BII2-T71-R012" flag="fatal" id="BII2-T71-R012">[BII2-T71-R012]-A response document MUST be able to clearly indicate whether the received document was accepted or not.</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T71-R008" flag="fatal" id="BII2-T71-R008">[BII2-T71-R008]-A message level response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T71-R007" flag="fatal" id="BII2-T71-R007">[BII2-T71-R007]-A message level response sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T71.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T71.sch?><pattern is-a="T71" id="UBL-T71">
  <param name="BII2-T71-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T71-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T71-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T71-R004" value="(cbc:ID)"/>
  <param name="BII2-T71-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T71-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T71-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T71-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T71-R010" value="(cac:DocumentResponse/cac:DocumentReference/cbc:ID)"/>
  <param name="BII2-T71-R012" value="(cac:DocumentResponse/cac:Response/cbc:ResponseCode)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="message_level_response" value="/ubl:ApplicationResponse"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T71.sch?>
</schema>