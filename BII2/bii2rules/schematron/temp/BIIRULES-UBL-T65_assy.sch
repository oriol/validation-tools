<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T65 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST65_phase">
    <active pattern="UBL-T65"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T65 was here-->
  
  
  <!--Start pattern based on abstract T65--><pattern id="UBL-T65">
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T65-R001">[BII2-T65-R001]-A notice publication response MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T65-R002">[BII2-T65-R002]-A notice publication response MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T65-R003">[BII2-T65-R003]-A notice publication response MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T65-R004">[BII2-T65-R004]-A notice publication response MUST contain the response identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BII2-T65-R005">[BII2-T65-R005]-The party sending the notice publication response  MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T65-R006">[BII2-T65-R006]-The party receiving the notice publication response  MUST be specified</assert>
    <assert test="(cac:DocumentReference)" flag="fatal" id="BII2-T65-R010">[BII2-T65-R010]-A notice publication response MUST contain a received notification request</assert>
    <assert test="false" flag="fatal" id="BII2-T65-R011">[BII2-T65-R011]-A notice publication response MUST contain a document reception date and time</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T65-R008">[BII2-T65-R008]-A notice publication response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T65-R007">[BII2-T65-R007]-A notice publication response sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>