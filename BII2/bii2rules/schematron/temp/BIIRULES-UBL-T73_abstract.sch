<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T73   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T73 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST73_phase">
    <active pattern="UBL-T73"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T73.sch?><pattern abstract="true" id="T73">
  <rule context="$catalogue_subscription_response">
    <assert test="$BII2-T73-R001" flag="fatal" id="BII2-T73-R001">[BII2-T73-R001]-A catalogue subscription response MUST have a profile identifier</assert>
    <assert test="$BII2-T73-R002" flag="fatal" id="BII2-T73-R002">[BII2-T73-R002]-A catalogue subscription response MUST have a customization identifier</assert>
    <assert test="$BII2-T73-R003" flag="fatal" id="BII2-T73-R003">[BII2-T73-R003]-A catalogue subscription response MUST contain the date of issue</assert>
    <assert test="$BII2-T73-R004" flag="fatal" id="BII2-T73-R004">[BII2-T73-R004]-A catalogue subscription response MUST contain the response identifier</assert>
    <assert test="$BII2-T73-R005" flag="fatal" id="BII2-T73-R005">[BII2-T73-R005]-The party sending the catalogue subscription response MUST be specified</assert>
    <assert test="$BII2-T73-R006" flag="fatal" id="BII2-T73-R006">[BII2-T73-R006]-The party receiving the catalogue subscription response MUST be specified</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T73-R007" flag="fatal" id="BII2-T73-R007">[BII2-T73-R007]-A catalogue subscription response sending party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T73-R008" flag="fatal" id="BII2-T73-R008">[BII2-T73-R008]-A catalogue subscription response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$catalogue_subscription_response">
    <assert test="$BII2-T73-R009" flag="fatal" id="BII2-T73-R009">[BII2-T73-R009]-A catalogue subscription response MUST contain a response</assert>
    <assert test="$BII2-T73-R010" flag="fatal" id="BII2-T73-R010">[BII2-T73-R010]-A catalogue subscription response MUST contain a document reference to the catalogue subscription</assert>
  </rule>
  <rule context="$Document_reference">
    <assert test="$BII2-T73-R012" flag="fatal" id="BII2-T73-R012">[BII2-T73-R012]-A document reference to the subscription MUST contain an identifier and a document type</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T73.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T73.sch?><pattern is-a="T73" id="UBL-T73">
  <param name="BII2-T73-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T73-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T73-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T73-R004" value="(cbc:ID)"/>
  <param name="BII2-T73-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T73-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T73-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T73-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T73-R009" value="(cac:Response)"/>
  <param name="BII2-T73-R010" value="(cbc:DocumentReference)"/>
  <param name="BII2-T73-R012" value="(cbc:ID) and (cbc:DocumentTypeCode)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="catalogue_subscription_response" value="/ubl:ApplicationResponse"/>
  <param name="Document_reference" value="//cac:DocumentReference"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T73.sch?>
</schema>