<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CataloguePriceUpdate-2" queryBinding="xslt2">
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
  
  
  <!--Suppressed abstract pattern T21 was here-->
  
  
  <!--Start pattern based on abstract T21--><pattern id="UBL-T21">
  <rule context="//cac:ContractorCustomerParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T21-R013">[BII2-T21-R013]-A catalogue price update customer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="/ubl:CataloguePriceUpdate">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T21-R001">[BII2-T21-R001]-A catalogue price update MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T21-R002">[BII2-T21-R002]-A catalogue price update MUST have a profile identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T21-R003">[BII2-T21-R003]-A catalogue price update MUST contain the date of issue</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T21-R004">[BII2-T21-R004]-A catalogue price update MUST contain the document identifier</assert>
    <assert test="(cac:ProviderParty)" flag="fatal" id="BII2-T21-R007">[BII2-T21-R007]-The party providing the catalogue price update MUST be specified</assert>
    <assert test="(cac:ReceiverParty)" flag="fatal" id="BII2-T21-R008">[BII2-T21-R008]-The party receiving the catalogue price update MUST be specified</assert>
    <assert test="count(cac:SellerSupplierParty) &lt;= 1" flag="fatal" id="BII2-T21-R009">[BII2-T21-R009]-A catalogue price update MUST have maximum one catalogue price update supplier</assert>
    <assert test="(cac:CatalogueLine)" flag="fatal" id="BII2-T21-R023">[BII2-T21-R023]-A catalogue price update MUST have at least one catalogue price update line</assert>
  </rule>
  <rule context="//cac:CatalogueLine">
    <assert test="(cac:LineValidityPeriod/cbc:StartDate and cac:LineValidityPeriod/cbc:EndDate) and (number(translate(cac:LineValidityPeriod/cbc:StartDate,'-','')) &gt;= number(translate(//cac:ValidityPeriod/cbc:StartDate,'-',''))) and  (number(translate(cac:LineValidityPeriod/cbc:EndDate,'-','')) &lt;= number(translate(//cac:ValidityPeriod/cbc:EndDate,'-','')))" flag="warning" id="BII2-T21-R017">[BII2-T21-R017]-Catalogue line validity period MUST be within the range of the whole catalogue price update validity period</assert>
    <assert test="(cac:StandardItemIdentification/cbc:ID) or  (cac:SellersItemIdentification/cbc:ID)" flag="fatal" id="BII2-T21-R020">[BII2-T21-R020]-An item in a catalogue line MUST be uniquely identifiable by at least one of the following:
- Catalogue Item Update Provider identifier
- Standard identifier</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T21-R024">[BII2-T21-R024]-A catalogue price update line MUST contain a unique line identifier</assert>
  </rule>
  <rule context="//cac:ProviderParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T21-R010">[BII2-T21-R010]-A catalogue price update provider MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:ReceiverParty">
    <assert test="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T21-R011">[BII2-T21-R011]-A catalogue price update receiver MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:SellerSupplierParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T21-R012">[BII2-T21-R012]-A catalogue price update supplier MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="//cac:RequiredItemLocationQuantity/cac:Price">
    <assert test="number(cbc:PriceAmount) &gt;=0" flag="fatal" id="BII2-T21-R015">[BII2-T21-R015]-Prices of items MUST not be negative</assert>
  </rule>
  <rule context="//cac:ValidityPeriod">
    <assert test="(cbc:StartDate and cbc:EndDate) and (number(translate(cbc:StartDate,'-','')) &lt;= number(translate(cbc:EndDate,'-','')))" flag="fatal" id="BII2-T21-R006">[BII2-T21-R006]-A validity period end date MUST be later or equal to a validity period start date if both validity period end date and validaty period start date are present</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT21">



<rule context="cac:CatalogueLine//cbc:ActionCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' Add Delete Update ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T21-R001]-The line action code for a catalogue line MUST be add, update or delete if present</assert>
</rule>

</pattern>
</schema>