<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CatalogueDeletion-2" queryBinding="xslt2">
  <title>BIIRULES  T22 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CatalogueDeletion-2"/>
  <phase id="BIIRULEST22_phase">
    <active pattern="UBL-T22"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T22 was here-->
  
  
  <!--Start pattern based on abstract T22--><pattern id="UBL-T22">
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BIIRULE-T22-R001">[BIIRULE-T22-R001]-A catalogue deletion request MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BIIRULE-T22-R002">[BIIRULE-T22-R002]-A catalogue deletion request MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BIIRULE-T22-R003">[BIIRULE-T22-R003]-A catalogue deletion request MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BIIRULE-T22-R004">[BIIRULE-T22-R004]-A catalogue deletion request MUST contain the response identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BIIRULE-T22-R005">[BIIRULE-T22-R005]-The party sending the catalogue deletion request  MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BIIRULE-T22-R006">[BIIRULE-T22-R006]-The party receiving the catalogue deletion request  MUST be specified</assert>
    <assert test="(cac:DocumentReference)" flag="fatal" id="BIIRULE-T22-R010">[BIIRULE-T22-R010]-A catalogue deletion request MUST contain a catalogue document reference</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BIIRULE-T22-R008">[BIIRULE-T22-R008]-A catalogue deletion request receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BIIRULE-T22-R007">[BIIRULE-T22-R007]-A catalogue deletion request sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>