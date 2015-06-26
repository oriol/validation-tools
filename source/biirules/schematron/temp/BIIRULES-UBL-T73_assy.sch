<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T73 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST73_phase">
    <active pattern="UBL-T73"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T73 was here-->
  
  
  <!--Start pattern based on abstract T73--><pattern id="UBL-T73">
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T73-R001">[BII2-T73-R001]-A catalogue subscription response MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T73-R002">[BII2-T73-R002]-A catalogue subscription response MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T73-R003">[BII2-T73-R003]-A catalogue subscription response MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T73-R004">[BII2-T73-R004]-A catalogue subscription response MUST contain the response identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BII2-T73-R005">[BII2-T73-R005]-The party sending the catalogue subscription response MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T73-R006">[BII2-T73-R006]-The party receiving the catalogue subscription response MUST be specified</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T73-R007">[BII2-T73-R007]-A catalogue subscription response sending party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T73-R008">[BII2-T73-R008]-A catalogue subscription response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cac:Response)" flag="fatal" id="BII2-T73-R009">[BII2-T73-R009]-A catalogue subscription response MUST contain a response</assert>
    <assert test="(cbc:DocumentReference)" flag="fatal" id="BII2-T73-R010">[BII2-T73-R010]-A catalogue subscription response MUST contain a document reference to the catalogue subscription</assert>
  </rule>
  <rule context="//cac:DocumentReference">
    <assert test="(cbc:ID) and (cbc:DocumentTypeCode)" flag="fatal" id="BII2-T73-R012">[BII2-T73-R012]-A document reference to the subscription MUST contain an identifier and a document type</assert>
  </rule>
</pattern>
</schema>