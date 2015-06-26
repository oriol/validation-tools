<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T20 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T20">
  <rule context="$Catalogue_Item_Update">
    <assert test="$BII2-T20-R001" flag="fatal" id="BII2-T20-R001">[BII2-T20-R001]-A catalogue item update MUST have a profile identifier</assert>
    <assert test="$BII2-T20-R002" flag="fatal" id="BII2-T20-R002">[BII2-T20-R002]-A catalogue item update MUST have a customization identifier</assert>
    <assert test="$BII2-T20-R003" flag="fatal" id="BII2-T20-R003">[BII2-T20-R003]-A catalogue item update MUST contain the date of issue</assert>
    <assert test="$BII2-T20-R004" flag="fatal" id="BII2-T20-R004">[BII2-T20-R004]-A catalogue item update MUST contain a document identifier</assert>
    <assert test="$BII2-T20-R007" flag="fatal" id="BII2-T20-R007">[BII2-T20-R007]-The party providing the catalogue MUST be specified</assert>
    <assert test="$BII2-T20-R008" flag="fatal" id="BII2-T20-R008">[BII2-T20-R008]-The party receiving the catalogue MUST be specified</assert>
    <assert test="$BII2-T20-R009" flag="fatal" id="BII2-T20-R009">[BII2-T20-R009]-A catalogue item update MUST have maximum one catalogue supplier</assert>
    <assert test="$BII2-T20-R023" flag="fatal" id="BII2-T20-R023">[BII2-T20-R023]-A catalogue item update MUST have at least one catalogue line</assert>
  </rule>
  <rule context="$Catalogue_Item_Update_Customer">
    <assert test="$BII2-T20-R013" flag="fatal" id="BII2-T20-R013">[BII2-T20-R013]-A catalogue item update customer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Item_Update_Line">
    <assert test="$BII2-T20-R024" flag="fatal" id="BII2-T20-R024">[BII2-T20-R024]-A catalogue item update line MUST contain a unique line identifier</assert>
  </rule>
  <rule context="$Catalogue_Item_Update_Provider">
    <assert test="$BII2-T20-R010" flag="fatal" id="BII2-T20-R010">[BII2-T20-R010]-A catalogue item update provider MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Item_Update_Receiver">
    <assert test="$BII2-T20-R011" flag="fatal" id="BII2-T20-R011">[BII2-T20-R011]-A catalogue item update receiver MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Catalogue_Item_Update_Supplier">
    <assert test="$BII2-T20-R012" flag="fatal" id="BII2-T20-R012">[BII2-T20-R012]-A catalogue item update supplier MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII2-T20-R019" flag="warning" id="BII2-T20-R019">[BII2-T20-R019]-An item in a catalogue line SHOULD have a name</assert>
    <assert test="$BII2-T20-R020" flag="fatal" id="BII2-T20-R020">[BII2-T20-R020]-An item in a catalogue line MUST be uniquely identifiable by at least one of the following:
- Catalogue Item Update Provider identifier
- Standard identifier</assert>
    <assert test="$BII2-T20-R021" flag="warning" id="BII2-T20-R021">[BII2-T20-R021]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
    <assert test="$BII2-T20-R022" flag="warning" id="BII2-T20-R022">[BII2-T20-R022]-Classification codes SHOULD contain the Classification scheme Identifier (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="$Item_Property">
    <assert test="$BII2-T20-R027" flag="fatal" id="BII2-T20-R027">[BII2-T20-R027]-An item property data name  MUST specify a data value</assert>
  </rule>
  <rule context="$Validity_Period">
    <assert test="$BII2-T20-R006" flag="fatal" id="BII2-T20-R006">[BII2-T20-R006]-A validity period end date MUST be later or equal to a validity period start date if both validity period end date and validaty period start date are present</assert>
  </rule>
</pattern>
