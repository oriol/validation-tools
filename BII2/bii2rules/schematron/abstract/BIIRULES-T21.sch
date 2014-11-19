<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T21 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T21">
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
</pattern>
