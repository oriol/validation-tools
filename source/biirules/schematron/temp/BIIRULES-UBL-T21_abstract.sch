<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T21   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CataloguePriceUpdate-2" queryBinding="xslt2">
  <title>BIIRULES  T21 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CataloguePriceUpdate-2"/>
  <phase id="BIIRULEST21_phase">
    <active pattern="UBL-T21"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT21"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T21.sch?><pattern abstract="true" id="T21">
  <rule context="$Catalogue_Customer">
    <assert test="$BII2-T21-R013" flag="fatal" id="BII2-T21-R013">[BII2-T21-R013]-A catalogue price update customer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Price_Update">
    <assert test="$BII2-T21-R001" flag="fatal" id="BII2-T21-R001">[BII2-T21-R001]-A catalogue price update MUST have a customization identifier</assert>
    <assert test="$BII2-T21-R002" flag="fatal" id="BII2-T21-R002">[BII2-T21-R002]-A catalogue price update MUST have a profile identifier</assert>
    <assert test="$BII2-T21-R003" flag="fatal" id="BII2-T21-R003">[BII2-T21-R003]-A catalogue price update MUST contain the date of issue</assert>
    <assert test="$BII2-T21-R004" flag="fatal" id="BII2-T21-R004">[BII2-T21-R004]-A catalogue price update MUST contain the document identifier</assert>
    <assert test="$BII2-T21-R007" flag="fatal" id="BII2-T21-R007">[BII2-T21-R007]-The party providing the catalogue price update MUST be specified</assert>
    <assert test="$BII2-T21-R008" flag="fatal" id="BII2-T21-R008">[BII2-T21-R008]-The party receiving the catalogue price update MUST be specified</assert>
    <assert test="$BII2-T21-R009" flag="fatal" id="BII2-T21-R009">[BII2-T21-R009]-A catalogue price update MUST have maximum one catalogue price update supplier</assert>
    <assert test="$BII2-T21-R023" flag="fatal" id="BII2-T21-R023">[BII2-T21-R023]-A catalogue price update MUST have at least one catalogue price update line</assert>
  </rule>
  <rule context="$Catalogue_Price_Update_Line">
    <assert test="$BII2-T21-R017" flag="warning" id="BII2-T21-R017">[BII2-T21-R017]-Catalogue line validity period MUST be within the range of the whole catalogue price update validity period</assert>
    <assert test="$BII2-T21-R020" flag="fatal" id="BII2-T21-R020">[BII2-T21-R020]-An item in a catalogue line MUST be uniquely identifiable by at least one of the following:
- Catalogue Item Update Provider identifier
- Standard identifier</assert>
    <assert test="$BII2-T21-R024" flag="fatal" id="BII2-T21-R024">[BII2-T21-R024]-A catalogue price update line MUST contain a unique line identifier</assert>
  </rule>
  <rule context="$Catalogue_Provider">
    <assert test="$BII2-T21-R010" flag="fatal" id="BII2-T21-R010">[BII2-T21-R010]-A catalogue price update provider MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Receiver">
    <assert test="$BII2-T21-R011" flag="fatal" id="BII2-T21-R011">[BII2-T21-R011]-A catalogue price update receiver MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Supplier">
    <assert test="$BII2-T21-R012" flag="fatal" id="BII2-T21-R012">[BII2-T21-R012]-A catalogue price update supplier MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Item_Price">
    <assert test="$BII2-T21-R015" flag="fatal" id="BII2-T21-R015">[BII2-T21-R015]-Prices of items MUST not be negative</assert>
  </rule>
  <rule context="$Validity_Period">
    <assert test="$BII2-T21-R006" flag="fatal" id="BII2-T21-R006">[BII2-T21-R006]-A validity period end date MUST be later or equal to a validity period start date if both validity period end date and validaty period start date are present</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T21.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T21.sch?><pattern is-a="T21" id="UBL-T21">
  <param name="BII2-T21-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T21-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T21-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T21-R004" value="(cbc:ID)"/>
  <param name="BII2-T21-R006" value="(cbc:StartDate and cbc:EndDate) and (number(translate(cbc:StartDate,'-','')) &lt;= number(translate(cbc:EndDate,'-','')))"/>
  <param name="BII2-T21-R007" value="(cac:ProviderParty)"/>
  <param name="BII2-T21-R008" value="(cac:ReceiverParty)"/>
  <param name="BII2-T21-R009" value="count(cac:SellerSupplierParty) &lt;= 1"/>
  <param name="BII2-T21-R010" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R011" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R012" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R013" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T21-R015" value="number(cbc:PriceAmount) &gt;=0"/>
  <param name="BII2-T21-R017" value="(cac:LineValidityPeriod/cbc:StartDate and cac:LineValidityPeriod/cbc:EndDate) and (number(translate(cac:LineValidityPeriod/cbc:StartDate,'-','')) &gt;= number(translate(//cac:ValidityPeriod/cbc:StartDate,'-',''))) and  (number(translate(cac:LineValidityPeriod/cbc:EndDate,'-','')) &lt;= number(translate(//cac:ValidityPeriod/cbc:EndDate,'-','')))"/>
  <param name="BII2-T21-R020" value="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID)"/>
  <param name="BII2-T21-R023" value="(cac:CatalogueLine)"/>
  <param name="BII2-T21-R024" value="(cbc:ID)"/>
  <param name="Catalogue_Provider" value="//cac:ProviderParty"/>
  <param name="Catalogue_Receiver" value="//cac:ReceiverParty"/>
  <param name="Catalogue_Customer" value="//cac:ContractorCustomerParty"/>
  <param name="Item_Price" value="//cac:RequiredItemLocationQuantity/cac:Price"/>
  <param name="Catalogue_Price_Update_Line" value="//cac:CatalogueLine"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Validity_Period" value="//cac:ValidityPeriod"/>
  <param name="Catalogue_Supplier" value="//cac:SellerSupplierParty"/>
  <param name="Catalogue_Price_Update" value="/ubl:CataloguePriceUpdate"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T21.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT21-UBL.sch?><pattern id="CodesT21">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:CatalogueLine//cbc:ActionCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' Add Delete Update ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T21-R001]-The line action code for a catalogue line MUST be add, update or delete if present</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT21-UBL.sch?>
</schema>