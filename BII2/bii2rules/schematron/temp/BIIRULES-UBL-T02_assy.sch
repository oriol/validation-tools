<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:OrderResponseSimple-2" queryBinding="xslt2">
  <title>BIIRULES  T02 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:OrderResponseSimple-2"/>
  <phase id="BIIRULEST02_phase">
    <active pattern="UBL-T02"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T02 was here-->
  
  
  <!--Start pattern based on abstract T02--><pattern id="UBL-T02">
  <rule context="//cac:BuyerCustomerParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T02-R005">[BII2-T02-R005]-An order response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="/ubl:OrderResponseSimple">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T02-R002">[BII2-T02-R002]-An order response MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T02-R003">[BII2-T02-R003]-An order response MUST have a profile identifier</assert>
    <assert test="(cac:OrderReference/cbc:ID)" flag="fatal" id="BII2-T02-R007">[BII2-T02-R007]-An order response MUST contain the reference to the order</assert>
    <assert test="(cbc:AcceptedIndicator = true()) and not(cbc:Note)" flag="fatal" id="BII2-T02-R008">[BII2-T02-R008]-If the accept indicator is true, the order response MUST not contain a response clarification.</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T02-R009">[BII2-T02-R009]-An order response MUST contain an identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T02-R010">[BII2-T02-R010]-An order response MUST contain an issue date</assert>
  </rule>
  <rule context="//cac:SellerSupplierParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T02-R006">[BII2-T02-R006]-An order response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern>
</schema>