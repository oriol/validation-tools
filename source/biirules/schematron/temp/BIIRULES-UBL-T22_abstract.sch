<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T22   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CatalogueDeletion-2" queryBinding="xslt2">
  <title>BIIRULES  T22 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CatalogueDeletion-2"/>
  <phase id="BIIRULEST22_phase">
    <active pattern="UBL-T22"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T22.sch?><pattern abstract="true" id="T22">
  <rule context="$Catalogue_Delete_Request">
    <assert test="$BIIRULE-T22-R001" flag="fatal" id="BIIRULE-T22-R001">[BIIRULE-T22-R001]-A catalogue deletion request MUST have a profile identifier</assert>
    <assert test="$BIIRULE-T22-R002" flag="fatal" id="BIIRULE-T22-R002">[BIIRULE-T22-R002]-A catalogue deletion request MUST have a customization identifier</assert>
    <assert test="$BIIRULE-T22-R003" flag="fatal" id="BIIRULE-T22-R003">[BIIRULE-T22-R003]-A catalogue deletion request MUST contain the date of issue</assert>
    <assert test="$BIIRULE-T22-R004" flag="fatal" id="BIIRULE-T22-R004">[BIIRULE-T22-R004]-A catalogue deletion request MUST contain the response identifier</assert>
    <assert test="$BIIRULE-T22-R005" flag="fatal" id="BIIRULE-T22-R005">[BIIRULE-T22-R005]-The party sending the catalogue deletion request  MUST be specified</assert>
    <assert test="$BIIRULE-T22-R006" flag="fatal" id="BIIRULE-T22-R006">[BIIRULE-T22-R006]-The party receiving the catalogue deletion request  MUST be specified</assert>
    <assert test="$BIIRULE-T22-R010" flag="fatal" id="BIIRULE-T22-R010">[BIIRULE-T22-R010]-A catalogue deletion request MUST contain a catalogue document reference</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BIIRULE-T22-R008" flag="fatal" id="BIIRULE-T22-R008">[BIIRULE-T22-R008]-A catalogue deletion request receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BIIRULE-T22-R007" flag="fatal" id="BIIRULE-T22-R007">[BIIRULE-T22-R007]-A catalogue deletion request sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T22.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T22.sch?><pattern is-a="T22" id="UBL-T22">
  <param name="BIIRULE-T22-R001" value="(cbc:ProfileID)"/>
  <param name="BIIRULE-T22-R002" value="(cbc:CustomizationID)"/>
  <param name="BIIRULE-T22-R003" value="(cbc:IssueDate)"/>
  <param name="BIIRULE-T22-R004" value="(cbc:ID)"/>
  <param name="BIIRULE-T22-R005" value="(cac:SenderParty)"/>
  <param name="BIIRULE-T22-R006" value="(cac:ReceiverParty)"/>
  <param name="BIIRULE-T22-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T22-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T22-R010" value="(cac:DocumentReference)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="Catalogue_Delete_Request" value="/ubl:ApplicationResponse"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T22.sch?>
</schema>