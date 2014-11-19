<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T22 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T22">
  <rule context="$Catalogue_Delete_Request">
    <assert test="$BIIRULE-T22-R001" flag="fatal" id="BIIRULE-T22-R001">[BIIRULE-T22-R001]-A catalogue deletion request MUST have a profile identifier</assert>
    <assert test="$BIIRULE-T22-R002" flag="fatal" id="BIIRULE-T22-R002">[BIIRULE-T22-R002]-A catalogue deletion request MUST have a customization identifier</assert>
    <assert test="$BIIRULE-T22-R003" flag="fatal" id="BIIRULE-T22-R003">[BIIRULE-T22-R003]-A catalogue deletion request MUST contain the date of issue</assert>
    <assert test="$BIIRULE-T22-R004" flag="fatal" id="BIIRULE-T22-R004">[BIIRULE-T22-R004]-A catalogue deletion request MUST contain the response identifier</assert>
    <assert test="$BIIRULE-T22-R005" flag="fatal" id="BIIRULE-T22-R005">[BIIRULE-T22-R005]-The party sending the catalogue deletion request  MUST be specified</assert>
    <assert test="$BIIRULE-T22-R006" flag="fatal" id="BIIRULE-T22-R006">[BIIRULE-T22-R006]-The party receiving the catalogue deletion request  MUST be specified</assert>
    <assert test="$BIIRULE-T22-R010" flag="fatal" id="BIIRULE-T22-R010">[BIIRULE-T22-R010]-A catalogue deletion request MUST contain a catalogue document reference</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BIIRULE-T22-R008" flag="fatal" id="BIIRULE-T22-R008">[BIIRULE-T22-R008]-A catalogue deletion request receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BIIRULE-T22-R007" flag="fatal" id="BIIRULE-T22-R007">[BIIRULE-T22-R007]-A catalogue deletion request sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
