<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T76   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T76 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2"/>
  <phase id="BIIRULEST76_phase">
    <active pattern="UBL-T76"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T76.sch?><pattern abstract="true" id="T76">
  <rule context="$order_response">
    <assert test="$BII2-T76-R001" flag="fatal" id="BII2-T76-R001">[BII2-T76-R001]-A order response MUST have a customization identifier</assert>
    <assert test="$BII2-T76-R002" flag="fatal" id="BII2-T76-R002">[BII2-T76-R002]-A order response MUST have a profile identifier</assert>
  </rule>
  <rule context="$order_response_line">
    <assert test="$BII2-T76-R003" flag="fatal" id="BII2-T76-R003">[BII2-T76-R003]-Each order response line MUST have a document line identifier that is unique within the order response</assert>
  </rule>
  <rule context="$order_response">
    <assert test="$BII2-T76-R004" flag="fatal" id="BII2-T76-R004">[BII2-T76-R004]-A order response MUST have a document issue date</assert>
    <assert test="$BII2-T76-R006" flag="fatal" id="BII2-T76-R006">[BII2-T76-R006]-A order response MUST have a document identifier</assert>
  </rule>
  <rule context="$Buyer">
    <assert test="$BII2-T76-R021" flag="fatal" id="BII2-T76-R021">[BII2-T76-R021]-A order response MUST have the buyer party name or a buyer party identifier</assert>
  </rule>
  <rule context="$Seller">
    <assert test="$BII2-T76-R022" flag="fatal" id="BII2-T76-R022">[BII2-T76-R022]-A order response MUST have the seller party name or a seller party identifier</assert>
  </rule>
  <rule context="$order_response">
    <assert test="$BII2-T76-R032" flag="fatal" id="BII2-T76-R032">[BII2-T76-R032]-A order response MUST have a reference to an order</assert>
    <assert test="$BII2-T76-R033" flag="fatal" id="BII2-T76-R033">[BII2-T76-R033]-A order response MUST have a response code</assert>
  </rule>
  <rule context="$order_response_line">
    <assert test="$BII2-T76-R034" flag="fatal" id="BII2-T76-R034">[BII2-T76-R034]-An order response line MUST contain a reference to its corresponding order line.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T76.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T76.sch?><pattern is-a="T76" id="UBL-T76">
  <param name="BII2-T76-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T76-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T76-R003" value="(cac:LineItem/cbc:ID)"/>
  <param name="BII2-T76-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T76-R006" value="(cbc:ID)"/>
  <param name="BII2-T76-R021" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T76-R022" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T76-R032" value="(cac:OrderReference/cbc:ID)"/>
  <param name="BII2-T76-R033" value="(//cbc:OrderResponseCode)"/>
  <param name="BII2-T76-R034" value="(//cac:OrderLineReference/cbc:LineID)"/>
  <param name="order_response_line" value="//cac:OrderLine"/>
  <param name="order_response" value="/ubl:OrderResponse"/>
  <param name="Buyer" value="//cac:BuyerCustomerParty"/>
  <param name="Seller" value="//cac:SellerSupplierParty"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T76.sch?>
</schema>