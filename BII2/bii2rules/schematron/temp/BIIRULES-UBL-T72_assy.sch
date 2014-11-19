<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T72 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST72_phase">
    <active pattern="UBL-T72"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T72 was here-->
  
  
  <!--Start pattern based on abstract T72--><pattern id="UBL-T72">
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T72-R001">[BII2-T72-R001]-A catalogue subscription request MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T72-R002">[BII2-T72-R002]-A catalogue subscription request MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T72-R003">[BII2-T72-R003]-A catalogue subscription request MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T72-R004">[BII2-T72-R004]-A catalogue subscription request MUST contain the subscription identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BII2-T72-R005">[BII2-T72-R005]-The party requesting the catalogue subscription  MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T72-R008">[BII2-T72-R008]-The party receiving the catalogue subscription  MUST be specified</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T72-R007">[BII2-T72-R007]-A catalogue subscription request sending party MUST contain the full name or an identifier</assert>
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T72-R009">[BII2-T72-R009]-A catalogue subscription request receiving party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>