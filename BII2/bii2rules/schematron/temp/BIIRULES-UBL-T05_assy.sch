<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:OrderChange-2" queryBinding="xslt2">
  <title>BIIRULES  T05 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:OrderChange-2"/>
  <phase id="BIIRULEST05_phase">
    <active pattern="UBL-T05"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T05 was here-->
  
  
  <!--Start pattern based on abstract T05--><pattern id="UBL-T05">
  <rule context="/ubl:OrderChange">
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T05-R001">[BII2-T05-R001]-A counter offer response MUST have an identifier</assert>
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T05-R002">[BII2-T05-R002]-A counter offer response MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T05-R003">[BII2-T05-R003]-A counter offer response MUST have a profile identifier</assert>
    <assert test="(//cac:OrderReference/cbc:ID)" flag="fatal" id="BII2-T05-R004">[BII2-T05-R004]-A counter offer response MUST refer to the Counter Offer it responses to.</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T05-R008">[BII2-T05-R008]-A counter offer response MUST have an issue date</assert>
  </rule>
  <rule context="//cac:BuyerCustomerParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T05-R005">[BII2-T05-R005]-A counter offer response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="//cac:SellerSupplierParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T05-R006">[BII2-T05-R006]-A counter offer response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern>
</schema>