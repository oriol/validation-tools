<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:TendererQualificationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T42 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:TendererQualificationResponse-2"/>
  <phase id="BIIRULEST42_phase">
    <active pattern="UBL-T42"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T42 was here-->
  
  
  <!--Start pattern based on abstract T42--><pattern id="UBL-T42">
  <rule context="//cac:DocumentReference">
    <assert test="(cac:ResolutionDocumentReference/cbc:ID)" flag="fatal" id="BIIRULE-T42-R012">[BIIRULE-T42-R012]-A  qualification receipt notification MUST contain a reference to the qualification document received</assert>
  </rule>
  <rule context="/ubl:TendererQualificationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BIIRULE-T42-R001">[BIIRULE-T42-R001]-A qualification receipt notification MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BIIRULE-T42-R002">[BIIRULE-T42-R002]-A qualification receipt notification MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BIIRULE-T42-R003">[BIIRULE-T42-R003]-A qualification receipt notification MUST contain the date of issue</assert>
    <assert test="(//cac:ResolutionDocumentReference/cbc:ID)" flag="fatal" id="BIIRULE-T42-R004">[BIIRULE-T42-R004]-A qualification receipt notification MUST refer to the qualification document</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BIIRULE-T42-R005">[BIIRULE-T42-R005]-The party sending the qualification receipt notification MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BIIRULE-T42-R006">[BIIRULE-T42-R006]-The party receiving the qualification receipt notification MUST be specified</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BIIRULE-T42-R010">[BIIRULE-T42-R010]-A qualification receipt notification MUST contain an identifier</assert>
    <assert test="false" flag="fatal" id="BIIRULE-T42-R013">[BIIRULE-T42-R013]-A qualification recept notification MUST state the date and time the qualification was received</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BIIRULE-T42-R008">[BIIRULE-T42-R008]-A qualification receipt notification receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BIIRULE-T42-R007">[BIIRULE-T42-R007]-A qualification receipt notification sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>