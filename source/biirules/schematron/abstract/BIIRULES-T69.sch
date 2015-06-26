<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T69 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T69">
  <rule context="$Item">
    <assert test="$BII2-T69-R005" flag="fatal" id="BII2-T69-R005">[BII2-T69-R005]-An item in a Pre-Award Catalogue Template line MUST have a name</assert>
    <assert test="$BII2-T69-R006" flag="warning" id="BII2-T69-R006">[BII2-T69-R006]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
    <assert test="$BII2-T69-R007" flag="warning" id="BII2-T69-R007">[BII2-T69-R007]-CPV classification code SHOULD be provided at line level</assert>
    <assert test="$BII2-T69-R008" flag="warning" id="BII2-T69-R008">[BII2-T69-R008]-An item in a Pre-Award Catalogue Template line SHOULD be categoryzed from one or more classification systems
It must be possible to refer an item to the corresponding classes from one or more classification systems.</assert>
  </rule>
  <rule context="$Item_Property">
    <assert test="$BII2-T69-R010" flag="fatal" id="BII2-T69-R010">[BII2-T69-R010]-An item property data name  MUST specify a data value or a range of values</assert>
  </rule>
  <rule context="$Pre-Award_Catalogue_Template">
    <assert test="$BII2-T69-R001" flag="fatal" id="BII2-T69-R001">[BII2-T69-R001]-A Pre-Award Catalogue Template MUST have a customization identifier</assert>
    <assert test="$BII2-T69-R002" flag="fatal" id="BII2-T69-R002">[BII2-T69-R002]-A Pre-Award Catalogue Template MUST have a profile identifier</assert>
    <assert test="$BII2-T69-R003" flag="fatal" id="BII2-T69-R003">[BII2-T69-R003]-A Pre-Award Catalogue Template MUST contain the Pre-Award Catalogue Template document identifier</assert>
    <assert test="$BII2-T69-R004" flag="fatal" id="BII2-T69-R004">[BII2-T69-R004]-A Pre-Award Catalogue Template MUST provide a reference to the call for tender identifier</assert>
    <assert test="$BII2-T69-R009" flag="fatal" id="BII2-T69-R009">[BII2-T69-R009]-A Pre-Award Catalogue Template MUST have at least one Pre-Award Catalogue Template line</assert>
  </rule>
</pattern>
