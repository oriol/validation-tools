<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T71 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="BIIRULEST71_phase">
    <active pattern="UBL-T71"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T71 was here-->
  
  
  <!--Start pattern based on abstract T71--><pattern id="UBL-T71">
  <rule context="/ubl:ApplicationResponse">
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T71-R001">[BII2-T71-R001]-A message level response MUST have a profile identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T71-R002">[BII2-T71-R002]-A message level response MUST have a customization identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T71-R003">[BII2-T71-R003]-A message level response MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T71-R004">[BII2-T71-R004]-A message level response MUST contain the response identifier</assert>
    <assert test="(cac:SenderParty)" flag="fatal" id="BII2-T71-R005">[BII2-T71-R005]-The party sending the message level response  MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T71-R006">[BII2-T71-R006]-The party receiving the message level response  MUST be specified</assert>
    <assert test="(cac:DocumentResponse/cac:DocumentReference/cbc:ID)" flag="fatal" id="BII2-T71-R010">[BII2-T71-R010]-A message level response MUST contain a document reference pointing towards the business message that the response relates to</assert>
    <assert test="(cac:DocumentResponse/cac:Response/cbc:ResponseCode)" flag="fatal" id="BII2-T71-R012">[BII2-T71-R012]-A response document MUST be able to clearly indicate whether the received document was accepted or not.</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T71-R008">[BII2-T71-R008]-A message level response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:SenderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T71-R007">[BII2-T71-R007]-A message level response sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
</schema>