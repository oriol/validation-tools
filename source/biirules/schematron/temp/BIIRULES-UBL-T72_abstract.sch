<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T72   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T72 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST72_phase">
    <active pattern="UBL-T72"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T72.sch?><pattern abstract="true" id="T72">
  <rule context="$catalogue_subscription_request">
    <assert test="$BII2-T72-R001" flag="fatal" id="BII2-T72-R001">[BII2-T72-R001]-A catalogue subscription request MUST have a profile identifier</assert>
    <assert test="$BII2-T72-R002" flag="fatal" id="BII2-T72-R002">[BII2-T72-R002]-A catalogue subscription request MUST have a customization identifier</assert>
    <assert test="$BII2-T72-R003" flag="fatal" id="BII2-T72-R003">[BII2-T72-R003]-A catalogue subscription request MUST contain the date of issue</assert>
    <assert test="$BII2-T72-R004" flag="fatal" id="BII2-T72-R004">[BII2-T72-R004]-A catalogue subscription request MUST contain the subscription identifier</assert>
    <assert test="$BII2-T72-R005" flag="fatal" id="BII2-T72-R005">[BII2-T72-R005]-The party requesting the catalogue subscription  MUST be specified</assert>
    <assert test="$BII2-T72-R008" flag="fatal" id="BII2-T72-R008">[BII2-T72-R008]-The party receiving the catalogue subscription  MUST be specified</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T72-R007" flag="fatal" id="BII2-T72-R007">[BII2-T72-R007]-A catalogue subscription request sending party MUST contain the full name or an identifier</assert>
    <assert test="$BII2-T72-R009" flag="fatal" id="BII2-T72-R009">[BII2-T72-R009]-A catalogue subscription request receiving party MUST contain the full name or an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T72.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T72.sch?><pattern is-a="T72" id="UBL-T72">
  <param name="BII2-T72-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T72-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T72-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T72-R004" value="(cbc:ID)"/>
  <param name="BII2-T72-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T72-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T72-R008" value="(cac:ReceiverParty)"/>
  <param name="BII2-T72-R009" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="catalogue_subscription_request" value="/ubl:ApplicationResponse"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T72.sch?>
</schema>