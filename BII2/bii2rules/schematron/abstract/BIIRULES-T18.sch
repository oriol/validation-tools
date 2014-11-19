<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T18 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T18">
  <rule context="$Catalogue_Request">
    <assert test="$BII2-T18-R001" flag="fatal" id="BII2-T18-R001">[BII2-T18-R001]-A Catalogue Request MUST have a profile identifier</assert>
    <assert test="$BII2-T18-R002" flag="fatal" id="BII2-T18-R002">[BII2-T18-R002]-A Catalogue Request MUST have a customization identifier</assert>
    <assert test="$BII2-T18-R003" flag="fatal" id="BII2-T18-R003">[BII2-T18-R003]-A Catalogue Request MUST contain the date of issue</assert>
    <assert test="$BII2-T18-R004" flag="fatal" id="BII2-T18-R004">[BII2-T18-R004]-A Catalogue Request MUST contain the request identifier</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII2-T18-R005" flag="fatal" id="BII2-T18-R005">[BII2-T18-R005]-An item in a Catalogue Request line MUST be uniquely identifiable by at least one of the following:
- Seller item identification
- Standard item identification
- Catalogue item identification</assert>
    <assert test="$BII2-T18-R006" flag="warning" id="BII2-T18-R006">[BII2-T18-R006]-Standard Identifiers SHOULD contain the Schema Identifier (e.g. GTIN)</assert>
  </rule>
  <rule context="$Catalogue_Request">
    <assert test="$BII2-T18-R007" flag="fatal" id="BII2-T18-R007">[BII2-T18-R007]-The sender of the catalogue request (the Catalogue Receiver) MUST be specified. </assert>
    <assert test="$BII2-T18-R008" flag="fatal" id="BII2-T18-R008">[BII2-T18-R008]-The receiver of the catalogue request (the Catalogue Provider) MUST be specified. </assert>
  </rule>
</pattern>
