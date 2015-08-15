<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T02   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:OrderResponseSimple-2" queryBinding="xslt2">
  <title>BIIRULES  T02 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:OrderResponseSimple-2"/>
  <phase id="BIIRULEST02_phase">
    <active pattern="UBL-T02"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T02.sch?><pattern abstract="true" id="T02">
  <rule context="$Customer">
    <assert test="$BII2-T02-R005" flag="fatal" id="BII2-T02-R005">[BII2-T02-R005]-An order response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="$Order_Response">
    <assert test="$BII2-T02-R002" flag="fatal" id="BII2-T02-R002">[BII2-T02-R002]-An order response MUST have a customization identifier</assert>
    <assert test="$BII2-T02-R003" flag="fatal" id="BII2-T02-R003">[BII2-T02-R003]-An order response MUST have a profile identifier</assert>
    <assert test="$BII2-T02-R007" flag="fatal" id="BII2-T02-R007">[BII2-T02-R007]-An order response MUST contain the reference to the order</assert>
    <assert test="$BII2-T02-R008" flag="fatal" id="BII2-T02-R008">[BII2-T02-R008]-If the accept indicator is true, the order response MUST not contain a response clarification.</assert>
    <assert test="$BII2-T02-R009" flag="fatal" id="BII2-T02-R009">[BII2-T02-R009]-An order response MUST contain an identifier</assert>
    <assert test="$BII2-T02-R010" flag="fatal" id="BII2-T02-R010">[BII2-T02-R010]-An order response MUST contain an issue date</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T02-R006" flag="fatal" id="BII2-T02-R006">[BII2-T02-R006]-An order response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T02.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T02.sch?><pattern is-a="T02" id="UBL-T02">
  <param name="BII2-T02-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T02-R003" value="(cbc:ProfileID)"/>
  <param name="BII2-T02-R005" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T02-R006" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T02-R007" value="(cac:OrderReference/cbc:ID)"/>
  <param name="BII2-T02-R008" value="(cbc:AcceptedIndicator = true()) and not(cbc:Note)"/>
  <param name="BII2-T02-R009" value="(cbc:ID)"/>
  <param name="BII2-T02-R010" value="(cbc:IssueDate)"/>
  <param name="Customer" value="//cac:BuyerCustomerParty"/>
  <param name="Order_Response" value="/ubl:OrderResponseSimple"/>
  <param name="Supplier" value="//cac:SellerSupplierParty"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T02.sch?>
</schema>