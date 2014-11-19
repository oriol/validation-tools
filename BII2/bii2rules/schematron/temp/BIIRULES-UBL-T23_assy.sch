<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T23 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST23_phase">
    <active pattern="UBL-T23"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T23 was here-->
  
  
  <!--Start pattern based on abstract T23--><pattern id="UBL-T23">
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T23-R001">[BII2-T23-R001]-A catalogue deletion confirmation MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T23-R002">[BII2-T23-R002]-A catalogue deletion confirmation MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T23-R003">[BII2-T23-R003]-A catalogue deletion confirmation MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T23-R004">[BII2-T23-R004]-A catalogue deletion confirmation MUST contain the response identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BII2-T23-R005">[BII2-T23-R005]-The party sending the catalogue deletion confirmation (issuer of the confirmation or catalogue receiver) MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T23-R006">[BII2-T23-R006]-The party receiving the catalogue deletion confirmation (receiver of the confirmation or catalogue provider) MUST be specified</assert>
    <assert test="(cac:DocumentReference)" flag="fatal" id="BII2-T23-R010">[BII2-T23-R010]-A catalogue deletion confirmation MUST refer to a catalogue deletion confirmation request</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T23-R008">[BII2-T23-R008]-A catalogue deletion confirmation receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T23-R007">[BII2-T23-R007]-A catalogue deletion confirmation sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>