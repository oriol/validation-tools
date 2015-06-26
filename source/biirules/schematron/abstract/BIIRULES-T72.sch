<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T72 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T72">
  <rule context="$catalogue_subscription_request">
    <assert test="$BII2-T72-R001" flag="fatal" id="BII2-T72-R001">[BII2-T72-R001]-A catalogue subscription request MUST have a profile identifier</assert>
    <assert test="$BII2-T72-R002" flag="fatal" id="BII2-T72-R002">[BII2-T72-R002]-A catalogue subscription request MUST have a customization identifier</assert>
    <assert test="$BII2-T72-R003" flag="fatal" id="BII2-T72-R003">[BII2-T72-R003]-A catalogue subscription request MUST contain the date of issue</assert>
    <assert test="$BII2-T72-R004" flag="fatal" id="BII2-T72-R004">[BII2-T72-R004]-A catalogue subscription request MUST contain the subscription identifier</assert>
    <assert test="$BII2-T72-R005" flag="fatal" id="BII2-T72-R005">[BII2-T72-R005]-The party requesting the catalogue subscription  MUST be specified</assert>
    <assert test="$BII2-T72-R008" flag="fatal" id="BII2-T72-R008">[BII2-T72-R008]-The party receiving the catalogue subscription  MUST be specified</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T72-R007" flag="fatal" id="BII2-T72-R007">[BII2-T72-R007]-A catalogue subscription request sending party MUST contain the full name or an identifier</assert>
    <assert test="$BII2-T72-R009" flag="fatal" id="BII2-T72-R009">[BII2-T72-R009]-A catalogue subscription request receiving party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
