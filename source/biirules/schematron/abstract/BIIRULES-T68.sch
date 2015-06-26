<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T68 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T68">
  <rule context="$Item">
    <assert test="$BII2-T68-R009" flag="warning" id="BII2-T68-R009">[BII2-T68-R009]-CPV classification code SHOULD be provided</assert>
    <assert test="$BII2-T68-R010" flag="warning" id="BII2-T68-R010">[BII2-T68-R010]-An item in a Pre-Award Catalogue line SHOULD be categoryzed from one or more classification systems
It must be possible to refer an item to the corresponding classes from one or more classification systems.</assert>
  </rule>
  <rule context="$Item_Property">
    <assert test="$BII2-T68-R012" flag="fatal" id="BII2-T68-R012">[BII2-T68-R012]-An item property data name  MUST specify a data value</assert>
  </rule>
  <rule context="$Pre-Award_Catalogue">
    <assert test="$BII2-T68-R001" flag="fatal" id="BII2-T68-R001">[BII2-T68-R001]-A Pre-Award Catalogue MUST have a customization identifier</assert>
    <assert test="$BII2-T68-R002" flag="fatal" id="BII2-T68-R002">[BII2-T68-R002]-A Pre-Award Catalogue MUST have a profile identifier</assert>
    <assert test="$BII2-T68-R004" flag="fatal" id="BII2-T68-R004">[BII2-T68-R004]-A Pre-Award Catalogue MUST contain the Pre-Award Catalogue document identifier</assert>
    <assert test="$BII2-T68-R005" flag="warning" id="BII2-T68-R005">[BII2-T68-R005]-A Pre-Award Catalogue SHOULD provide a reference to the call for tender identifier</assert>
    <assert test="$BII2-T68-R011" flag="fatal" id="BII2-T68-R011">[BII2-T68-R011]-A Pre-Award Catalogue MUST have at least one Pre-Award Catalogue line</assert>
  </rule>
</pattern>
