<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T42 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T42">
  <rule context="$Document_reference">
    <assert test="$BIIRULE-T42-R012" flag="fatal" id="BIIRULE-T42-R012">[BIIRULE-T42-R012]-A  qualification receipt notification MUST contain a reference to the qualification document received</assert>
  </rule>
  <rule context="$qualification_receipt_notification">
    <assert test="$BIIRULE-T42-R001" flag="fatal" id="BIIRULE-T42-R001">[BIIRULE-T42-R001]-A qualification receipt notification MUST have a profile identifier</assert>
    <assert test="$BIIRULE-T42-R002" flag="fatal" id="BIIRULE-T42-R002">[BIIRULE-T42-R002]-A qualification receipt notification MUST have a customization identifier</assert>
    <assert test="$BIIRULE-T42-R003" flag="fatal" id="BIIRULE-T42-R003">[BIIRULE-T42-R003]-A qualification receipt notification MUST contain the date of issue</assert>
    <assert test="$BIIRULE-T42-R004" flag="fatal" id="BIIRULE-T42-R004">[BIIRULE-T42-R004]-A qualification receipt notification MUST refer to the qualification document</assert>
    <assert test="$BIIRULE-T42-R005" flag="fatal" id="BIIRULE-T42-R005">[BIIRULE-T42-R005]-The party sending the qualification receipt notification MUST be specified</assert>
    <assert test="$BIIRULE-T42-R006" flag="fatal" id="BIIRULE-T42-R006">[BIIRULE-T42-R006]-The party receiving the qualification receipt notification MUST be specified</assert>
    <assert test="$BIIRULE-T42-R010" flag="fatal" id="BIIRULE-T42-R010">[BIIRULE-T42-R010]-A qualification receipt notification MUST contain an identifier</assert>
    <assert test="$BIIRULE-T42-R013" flag="fatal" id="BIIRULE-T42-R013">[BIIRULE-T42-R013]-A qualification recept notification MUST state the date and time the qualification was received</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BIIRULE-T42-R008" flag="fatal" id="BIIRULE-T42-R008">[BIIRULE-T42-R008]-A qualification receipt notification receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BIIRULE-T42-R007" flag="fatal" id="BIIRULE-T42-R007">[BIIRULE-T42-R007]-A qualification receipt notification sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
