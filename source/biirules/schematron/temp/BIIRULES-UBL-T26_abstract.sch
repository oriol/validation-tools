<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T26   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Statement-2" queryBinding="xslt2">
  <title>BIIRULES  T26 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Statement-2"/>
  <phase id="BIIRULEST26_phase">
    <active pattern="UBL-T26"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT26"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T26.sch?><pattern abstract="true" id="T26">
  <rule context="$Customer">
    <assert test="$BII2-T26-R009" flag="fatal" id="BII2-T26-R009">[BII2-T26-R009]-The customer MUST have the name or an identifier</assert>
  </rule>
  <rule context="$Customer_Address">
    <assert test="$BII2-T26-R010" flag="warning" id="BII2-T26-R010">[BII2-T26-R010]-A customer's postal address SHOULD have at least all of the following:
- Address line
- City
- Post code
- Country code</assert>
  </rule>
  <rule context="$Payment_Instructions">
    <assert test="$BII2-T26-R011" flag="fatal" id="BII2-T26-R011">[BII2-T26-R011]-Payment means type MUST be provided if the statement has payment instructions</assert>
  </rule>
  <rule context="$Statement">
    <assert test="$BII2-T26-R001" flag="fatal" id="BII2-T26-R001">[BII2-T26-R001]-A statement MUST have a customization identifier</assert>
    <assert test="$BII2-T26-R002" flag="fatal" id="BII2-T26-R002">[BII2-T26-R002]-A statement MUST have a profile identifier</assert>
    <assert test="$BII2-T26-R003" flag="fatal" id="BII2-T26-R003">[BII2-T26-R003]-A statement MUST have a document identifier</assert>
    <assert test="$BII2-T26-R004" flag="fatal" id="BII2-T26-R004">[BII2-T26-R004]-A statement MUST have a document issue date</assert>
    <assert test="$BII2-T26-R005" flag="fatal" id="BII2-T26-R005">[BII2-T26-R005]-A statement MUST have a supplier party</assert>
    <assert test="$BII2-T26-R008" flag="fatal" id="BII2-T26-R008">[BII2-T26-R008]-A statement MUST have a customer</assert>
    <assert test="$BII2-T26-R014" flag="fatal" id="BII2-T26-R014">[BII2-T26-R014]-A statement MUST have at least one statement line</assert>
    <assert test="$BII2-T26-R016" flag="fatal" id="BII2-T26-R016">[BII2-T26-R016]-Statement total balance amount MUST be equal to sum of the statement line amounts</assert>
    <assert test="$BII2-T26-R017" flag="fatal" id="BII2-T26-R017">[BII2-T26-R017]-All amounts in the statement MUST be stated in a single currency</assert>
  </rule>
  <rule context="$Statement_Line">
    <assert test="$BII2-T26-R015" flag="fatal" id="BII2-T26-R015">[BII2-T26-R015]-Each statement line MUST have a statement line identifier that is unique within the statement</assert>
    <assert test="$BII2-T26-R018" flag="fatal" id="BII2-T26-R018">[BII2-T26-R018]-Each statement line MUST have a statement line date</assert>
    <assert test="$BII2-T26-R019" flag="fatal" id="BII2-T26-R019">[BII2-T26-R019]-Each statement line MUST contain an amount</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T26-R006" flag="fatal" id="BII2-T26-R006">[BII2-T26-R006]-The supplier MUST have the name or an identifier</assert>
  </rule>
  <rule context="$Supplier_Address">
    <assert test="$BII2-T26-R007" flag="warning" id="BII2-T26-R007">[BII2-T26-R007]-A supplier's postal address SHOULD have at least all of the following:
- Address line
- City
- Post code
- Country code</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T26.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T26.sch?><pattern is-a="T26" id="UBL-T26">
  <param name="BII2-T26-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T26-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T26-R003" value="(cbc:ID)"/>
  <param name="BII2-T26-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T26-R005" value="(cac:SellerSupplierParty)"/>
  <param name="BII2-T26-R006" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T26-R007" value="(cbc:CityName) and (cbc:PostalZone) and (cac:Country/cbc:IdentificationCode)  "/>
  <param name="BII2-T26-R008" value="(cac:BuyerCustomerParty)"/>
  <param name="BII2-T26-R009" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T26-R010" value="(cbc:CityName) and (cbc:PostalZone) and (cac:Country/cbc:IdentificationCode)  "/>
  <param name="BII2-T26-R011" value="cbc:PaymentMeansCode"/>
  <param name="BII2-T26-R014" value="(cac:StatementLine)"/>
  <param name="BII2-T26-R015" value="(cbc:ID)"/>
  <param name="BII2-T26-R016" value="number(cbc:TotalBalanceAmount) = number(round(sum(//cbc:BalanceAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T26-R017" value="(cbc:DocumentCurrencyCode)"/>
  <param name="BII2-T26-R018" value="false()"/>
  <param name="BII2-T26-R019" value="(cbc:BalanceAmount)"/>
  <param name="Statement_Line" value="//cac:StatementLine"/>
  <param name="Supplier_Address" value="//cac:SellerSupplierParty/cac:Party/cac:PostalAddress"/>
  <param name="Statement" value="/ubl:Statement"/>
  <param name="Customer_Address" value="//cac:BuyerCustomerParty/cac:Party/cac:PostalAddress"/>
  <param name="Payment_Instructions" value="//cac:PaymentMeans"/>
  <param name="Supplier" value="//cac:SellerSupplierParty"/>
  <param name="Customer" value="//cac:BuyerCustomerParty"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T26.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT26-UBL.sch?><pattern id="CodesT26">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:PaymentMeans//cbc:PaymentMeansCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 60 61 62 63 64 65 66 67 70 74 75 76 77 78 91 92 93 94 95 96 97 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T26-R001]-Payment means in an statement MUST be coded using CEFACT code list 4461</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT26-UBL.sch?>
</schema>