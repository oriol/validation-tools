<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T05   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:OrderChange-2" queryBinding="xslt2">
  <title>BIIRULES  T05 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:OrderChange-2"/>
  <phase id="BIIRULEST05_phase">
    <active pattern="UBL-T05"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T05.sch?><pattern abstract="true" id="T05">
  <rule context="$Counter_Offer_Response">
    <assert test="$BII2-T05-R001" flag="fatal" id="BII2-T05-R001">[BII2-T05-R001]-A counter offer response MUST have an identifier</assert>
    <assert test="$BII2-T05-R002" flag="fatal" id="BII2-T05-R002">[BII2-T05-R002]-A counter offer response MUST have a customization identifier</assert>
    <assert test="$BII2-T05-R003" flag="fatal" id="BII2-T05-R003">[BII2-T05-R003]-A counter offer response MUST have a profile identifier</assert>
    <assert test="$BII2-T05-R004" flag="fatal" id="BII2-T05-R004">[BII2-T05-R004]-A counter offer response MUST refer to the Counter Offer it responses to.</assert>
    <assert test="$BII2-T05-R008" flag="fatal" id="BII2-T05-R008">[BII2-T05-R008]-A counter offer response MUST have an issue date</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BII2-T05-R005" flag="fatal" id="BII2-T05-R005">[BII2-T05-R005]-A counter offer response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T05-R006" flag="fatal" id="BII2-T05-R006">[BII2-T05-R006]-A counter offer response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T05.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T05.sch?><pattern is-a="T05" id="UBL-T05">
  <param name="BII2-T05-R001" value="(cbc:ID)"/>
  <param name="BII2-T05-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T05-R003" value="(cbc:ProfileID)"/>
  <param name="BII2-T05-R004" value="(//cac:OrderReference/cbc:ID)"/>
  <param name="BII2-T05-R005" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T05-R006" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T05-R008" value="(cbc:IssueDate)"/>
  <param name="Customer" value="//cac:BuyerCustomerParty"/>
  <param name="Counter_Offer_Response" value="/ubl:OrderChange"/>
  <param name="Supplier" value="//cac:SellerSupplierParty"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T05.sch?>
</schema>