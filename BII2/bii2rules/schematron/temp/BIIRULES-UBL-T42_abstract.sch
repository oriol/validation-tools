<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T42   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:TendererQualificationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T42 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:TendererQualificationResponse-2"/>
  <phase id="BIIRULEST42_phase">
    <active pattern="UBL-T42"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T42.sch?><pattern abstract="true" id="T42">
  <rule context="$Document_reference">
    <assert test="$BIIRULE-T42-R012" flag="fatal" id="BIIRULE-T42-R012">[BIIRULE-T42-R012]-A  qualification receipt notification MUST contain a reference to the qualification document received</assert>
  </rule>
  <rule context="$qualification_receipt_notification">
    <assert test="$BIIRULE-T42-R001" flag="fatal" id="BIIRULE-T42-R001">[BIIRULE-T42-R001]-A qualification receipt notification MUST have a profile identifier</assert>
    <assert test="$BIIRULE-T42-R002" flag="fatal" id="BIIRULE-T42-R002">[BIIRULE-T42-R002]-A qualification receipt notification MUST have a customization identifier</assert>
    <assert test="$BIIRULE-T42-R003" flag="fatal" id="BIIRULE-T42-R003">[BIIRULE-T42-R003]-A qualification receipt notification MUST contain the date of issue</assert>
    <assert test="$BIIRULE-T42-R004" flag="fatal" id="BIIRULE-T42-R004">[BIIRULE-T42-R004]-A qualification receipt notification MUST refer to the qualification document</assert>
    <assert test="$BIIRULE-T42-R005" flag="fatal" id="BIIRULE-T42-R005">[BIIRULE-T42-R005]-The party sending the qualification receipt notification MUST be specified</assert>
    <assert test="$BIIRULE-T42-R006" flag="fatal" id="BIIRULE-T42-R006">[BIIRULE-T42-R006]-The party receiving the qualification receipt notification MUST be specified</assert>
    <assert test="$BIIRULE-T42-R010" flag="fatal" id="BIIRULE-T42-R010">[BIIRULE-T42-R010]-A qualification receipt notification MUST contain an identifier</assert>
    <assert test="$BIIRULE-T42-R013" flag="fatal" id="BIIRULE-T42-R013">[BIIRULE-T42-R013]-A qualification recept notification MUST state the date and time the qualification was received</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BIIRULE-T42-R008" flag="fatal" id="BIIRULE-T42-R008">[BIIRULE-T42-R008]-A qualification receipt notification receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BIIRULE-T42-R007" flag="fatal" id="BIIRULE-T42-R007">[BIIRULE-T42-R007]-A qualification receipt notification sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T42.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T42.sch?><pattern is-a="T42" id="UBL-T42">
  <param name="BIIRULE-T42-R001" value="(cbc:ProfileID)"/>
  <param name="BIIRULE-T42-R002" value="(cbc:CustomizationID)"/>
  <param name="BIIRULE-T42-R003" value="(cbc:IssueDate)"/>
  <param name="BIIRULE-T42-R004" value="(//cac:ResolutionDocumentReference/cbc:ID)"/>
  <param name="BIIRULE-T42-R005" value="(cac:SenderParty)"/>
  <param name="BIIRULE-T42-R006" value="(cac:ReceiverParty)"/>
  <param name="BIIRULE-T42-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T42-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T42-R010" value="(cbc:ID)"/>
  <param name="BIIRULE-T42-R012" value="(cac:ResolutionDocumentReference/cbc:ID)"/>
  <param name="BIIRULE-T42-R013" value="false"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="qualification_receipt_notification" value="/ubl:TendererQualificationResponse"/>
  <param name="Document_reference" value="//cac:DocumentReference"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T42.sch?>
</schema>