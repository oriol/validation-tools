<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T16   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2" queryBinding="xslt2">
  <title>BIIRULES  T16 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2"/>
  <phase id="BIIRULEST16_phase">
    <active pattern="UBL-T16"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T16.sch?><pattern abstract="true" id="T16">
  <rule context="$Consignee_Party">
    <assert test="$BII2-T16-R009" flag="warning" id="BII2-T16-R009">[BII2-T16-R009]-A consignee party SHOULD have the party name or a party identifier</assert>
  </rule>
  <rule context="$despatch_advice">
    <assert test="$BII2-T16-R001" flag="fatal" id="BII2-T16-R001">[BII2-T16-R001]-A despatch advice MUST have a customization identifier</assert>
    <assert test="$BII2-T16-R002" flag="fatal" id="BII2-T16-R002">[BII2-T16-R002]-A despatch advice MUST have a profile identifier</assert>
    <assert test="$BII2-T16-R003" flag="fatal" id="BII2-T16-R003">[BII2-T16-R003]-A despatch advice MUST have a document identifier</assert>
    <assert test="$BII2-T16-R004" flag="fatal" id="BII2-T16-R004">[BII2-T16-R004]-A despatch advice MUST have a document issue date</assert>
    <assert test="$BII2-T16-R005" flag="warning" id="BII2-T16-R005">[BII2-T16-R005]-A despatch advice SHOULD have an order identifier</assert>
    <assert test="$BII2-T16-R006" flag="fatal" id="BII2-T16-R006">[BII2-T16-R006]-A despatch advice MUST have a despatching party</assert>
    <assert test="$BII2-T16-R008" flag="fatal" id="BII2-T16-R008">[BII2-T16-R008]-A despatch advice MUST have a consignee party</assert>
    <assert test="$BII2-T16-R012" flag="fatal" id="BII2-T16-R012">[BII2-T16-R012]-A despatch advice MUST have at least one despatch advice line</assert>
  </rule>
  <rule context="$despatch_advice_Line">
    <assert test="$BII2-T16-R013" flag="fatal" id="BII2-T16-R013">[BII2-T16-R013]-Each despatch advice line MUST have a despatch line identifier that is unique within the despatch advice</assert>
    <assert test="$BII2-T16-R016" flag="fatal" id="BII2-T16-R016">[BII2-T16-R016]-Each despatch advice line MUST have an item identifier and/or an item name</assert>
    <assert test="$BII2-T16-R017" flag="warning" id="BII2-T16-R017">[BII2-T16-R017]-Each despatch advice line SHOULD have a delivered quantity</assert>
    <assert test="$BII2-T16-R019" flag="fatal" id="BII2-T16-R019">[BII2-T16-R019]-Each despatch advice line delivered quantity MUST not be negative</assert>
    <assert test="$BII2-T16-R020" flag="warning" id="BII2-T16-R020">[BII2-T16-R020]-Each despatch advice line delivered quantity  SHOULD have an associated unit of measure</assert>
    <assert test="$BII2-T16-R021" flag="warning" id="BII2-T16-R021">[BII2-T16-R021]-An outstanding quantity reason SHOULD be provided if the despatch line contains an outstanding quantity</assert>
  </rule>
  <rule context="$despatched_shipment">
    <assert test="$BII2-T16-R011" flag="fatal" id="BII2-T16-R011">[BII2-T16-R011]-Shipment identifier MUST be provided if the despatch advice contains shipment information</assert>
  </rule>
  <rule context="$despatching_Party">
    <assert test="$BII2-T16-R007" flag="warning" id="BII2-T16-R007">[BII2-T16-R007]-A despatching party SHOULD have the despatching party name</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII2-T16-R018" flag="fatal" id="BII2-T16-R018">[BII2-T16-R018]-An item standard identifier MUST have an identification schema (e.g. GTIN)</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T16.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T16.sch?><pattern is-a="T16" id="UBL-T16">
  <param name="BII2-T16-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T16-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T16-R003" value="(cbc:ID)"/>
  <param name="BII2-T16-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T16-R005" value="(cac:OrderReference/cbc:ID)"/>
  <param name="BII2-T16-R006" value="(cac:DespatchSupplierParty)"/>
  <param name="BII2-T16-R007" value="(cac:Party/cac:PartyName/cbc:Name)"/>
  <param name="BII2-T16-R008" value="(cac:DeliveryCustomerParty)"/>
  <param name="BII2-T16-R009" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T16-R011" value="(cbc:ID)"/>
  <param name="BII2-T16-R012" value="(cac:DespatchLine)"/>
  <param name="BII2-T16-R013" value="(cbc:ID)"/>
  <param name="BII2-T16-R016" value="(cac:Item/cbc:Name) or (cac:Item/cac:StandardItemIdentification/cbc:ID) or  (cac:Item/cac:SellersItemIdentification/cbc:ID)"/>
  <param name="BII2-T16-R017" value="(cbc:DeliveredQuantity)"/>
  <param name="BII2-T16-R018" value="(//cac:StandardItemIdentification/cbc:ID/@schemeID) or not(//cac:StandardItemIdentification)"/>
  <param name="BII2-T16-R019" value="number(cbc:DeliveredQuantity) &gt;= 0"/>
  <param name="BII2-T16-R020" value="(cbc:DeliveredQuantity/@unitCode)"/>
  <param name="BII2-T16-R021" value="((cbc:OutstandingQuantity) and (cbc:OutstandingReason)) or not(cbc:OutstandingQuantity)"/>
  <param name="despatching_Party" value="//cac:DespatchSupplierParty"/>
  <param name="Consignee_Party" value="//cac:DeliveryCustomerParty"/>
  <param name="despatch_delivery_address" value="//cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress"/>
  <param name="despatched_shipment" value="//cac:Shipment"/>
  <param name="despatch_advice_Line" value="//cac:DespatchLine"/>
  <param name="Item" value="//cac:Item"/>
  <param name="despatch_advice" value="/ubl:DespatchAdvice"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T16.sch?>
</schema>