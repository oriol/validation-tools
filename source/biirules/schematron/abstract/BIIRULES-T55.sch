<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T55 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T55">
  <rule context="$catalogue_request_rejection">
    <assert test="$BII2-T55-R001" flag="fatal" id="BII2-T55-R001">[BII2-T55-R001]-A catalogue request rejection MUST have a profile identifier</assert>
    <assert test="$BII2-T55-R002" flag="fatal" id="BII2-T55-R002">[BII2-T55-R002]-A catalogue request rejection MUST have a customization identifier</assert>
    <assert test="$BII2-T55-R003" flag="fatal" id="BII2-T55-R003">[BII2-T55-R003]-A catalogue request rejection MUST contain the date of issue</assert>
    <assert test="$BII2-T55-R004" flag="fatal" id="BII2-T55-R004">[BII2-T55-R004]-A catalogue request rejection MUST contain the response identifier</assert>
    <assert test="$BII2-T55-R005" flag="fatal" id="BII2-T55-R005">[BII2-T55-R005]-The party sending the catalogue request rejection MUST be specified</assert>
    <assert test="$BII2-T55-R006" flag="warning" id="BII2-T55-R006">[BII2-T55-R006]-The party receiving the catalogue request rejection SHOULD be specified</assert>
    <assert test="$BII2-T55-R009" flag="fatal" id="BII2-T55-R009">[BII2-T55-R009]-A catalogue request rejection MUST contain a response coded decision</assert>
    <assert test="$BII2-T55-R010" flag="fatal" id="BII2-T55-R010">[BII2-T55-R010]-A catalogue request rejection MUST contain a document reference</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T55-R008" flag="fatal" id="BII2-T55-R008">[BII2-T55-R008]-A catalogue request rejection receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T55-R007" flag="fatal" id="BII2-T55-R007">[BII2-T55-R007]-A catalogue request rejection sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
