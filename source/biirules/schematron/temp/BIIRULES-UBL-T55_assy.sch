<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T55 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST55_phase">
    <active pattern="UBL-T55"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T55 was here-->
  
  
  <!--Start pattern based on abstract T55--><pattern id="UBL-T55">
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T55-R001">[BII2-T55-R001]-A catalogue request rejection MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T55-R002">[BII2-T55-R002]-A catalogue request rejection MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T55-R003">[BII2-T55-R003]-A catalogue request rejection MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T55-R004">[BII2-T55-R004]-A catalogue request rejection MUST contain the response identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BII2-T55-R005">[BII2-T55-R005]-The party sending the catalogue request rejection MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="warning" id="BII2-T55-R006">[BII2-T55-R006]-The party receiving the catalogue request rejection SHOULD be specified</assert>
    <assert test="(cac:DocumentResponse/cbc:ResponseCode)" flag="fatal" id="BII2-T55-R009">[BII2-T55-R009]-A catalogue request rejection MUST contain a response coded decision</assert>
    <assert test="(cac:DocumentReference/cbc:ID)" flag="fatal" id="BII2-T55-R010">[BII2-T55-R010]-A catalogue request rejection MUST contain a document reference</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T55-R008">[BII2-T55-R008]-A catalogue request rejection receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T55-R007">[BII2-T55-R007]-A catalogue request rejection sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>