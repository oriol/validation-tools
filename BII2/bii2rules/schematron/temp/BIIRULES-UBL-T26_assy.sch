<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Statement-2" queryBinding="xslt2">
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
  
  
  <!--Suppressed abstract pattern T26 was here-->
  
  
  <!--Start pattern based on abstract T26--><pattern id="UBL-T26">
  <rule context="//cac:BuyerCustomerParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T26-R009">[BII2-T26-R009]-The customer MUST have the name or an identifier</assert>
  </rule>
  <rule context="//cac:BuyerCustomerParty/cac:Party/cac:PostalAddress">
    <assert test="(cbc:CityName) and (cbc:PostalZone) and (cac:Country/cbc:IdentificationCode)  " flag="warning" id="BII2-T26-R010">[BII2-T26-R010]-A customer's postal address SHOULD have at least all of the following:
- Address line
- City
- Post code
- Country code</assert>
  </rule>
  <rule context="//cac:PaymentMeans">
    <assert test="cbc:PaymentMeansCode" flag="fatal" id="BII2-T26-R011">[BII2-T26-R011]-Payment means type MUST be provided if the statement has payment instructions</assert>
  </rule>
  <rule context="/ubl:Statement">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T26-R001">[BII2-T26-R001]-A statement MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T26-R002">[BII2-T26-R002]-A statement MUST have a profile identifier</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T26-R003">[BII2-T26-R003]-A statement MUST have a document identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T26-R004">[BII2-T26-R004]-A statement MUST have a document issue date</assert>
    <assert test="(cac:SellerSupplierParty)" flag="fatal" id="BII2-T26-R005">[BII2-T26-R005]-A statement MUST have a supplier party</assert>
    <assert test="(cac:BuyerCustomerParty)" flag="fatal" id="BII2-T26-R008">[BII2-T26-R008]-A statement MUST have a customer</assert>
    <assert test="(cac:StatementLine)" flag="fatal" id="BII2-T26-R014">[BII2-T26-R014]-A statement MUST have at least one statement line</assert>
    <assert test="number(cbc:TotalBalanceAmount) = number(round(sum(//cbc:BalanceAmount) * 10 * 10) div 100)" flag="fatal" id="BII2-T26-R016">[BII2-T26-R016]-Statement total balance amount MUST be equal to sum of the statement line amounts</assert>
    <assert test="(cbc:DocumentCurrencyCode)" flag="fatal" id="BII2-T26-R017">[BII2-T26-R017]-All amounts in the statement MUST be stated in a single currency</assert>
  </rule>
  <rule context="//cac:StatementLine">
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T26-R015">[BII2-T26-R015]-Each statement line MUST have a statement line identifier that is unique within the statement</assert>
    <assert test="false" flag="fatal" id="BII2-T26-R018">[BII2-T26-R018]-Each statement line MUST have a statement line date</assert>
    <assert test="(cbc:BalanceAmount)" flag="fatal" id="BII2-T26-R019">[BII2-T26-R019]-Each statement line MUST contain an amount</assert>
  </rule>
  <rule context="//cac:SellerSupplierParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T26-R006">[BII2-T26-R006]-The supplier MUST have the name or an identifier</assert>
  </rule>
  <rule context="//cac:SellerSupplierParty/cac:Party/cac:PostalAddress">
    <assert test="(cbc:CityName) and (cbc:PostalZone) and (cac:Country/cbc:IdentificationCode)  " flag="warning" id="BII2-T26-R007">[BII2-T26-R007]-A supplier's postal address SHOULD have at least all of the following:
- Address line
- City
- Post code
- Country code</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT26">



<rule context="cac:PaymentMeans//cbc:PaymentMeansCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 60 61 62 63 64 65 66 67 70 74 75 76 77 78 91 92 93 94 95 96 97 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T26-R001]-Payment means in an statement MUST be coded using CEFACT code list 4461</assert>
</rule>

</pattern>
</schema>