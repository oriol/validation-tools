<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T73 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T73">
  <rule context="$catalogue_subscription_response">
    <assert test="$BII2-T73-R001" flag="fatal" id="BII2-T73-R001">[BII2-T73-R001]-A catalogue subscription response MUST have a profile identifier</assert>
    <assert test="$BII2-T73-R002" flag="fatal" id="BII2-T73-R002">[BII2-T73-R002]-A catalogue subscription response MUST have a customization identifier</assert>
    <assert test="$BII2-T73-R003" flag="fatal" id="BII2-T73-R003">[BII2-T73-R003]-A catalogue subscription response MUST contain the date of issue</assert>
    <assert test="$BII2-T73-R004" flag="fatal" id="BII2-T73-R004">[BII2-T73-R004]-A catalogue subscription response MUST contain the response identifier</assert>
    <assert test="$BII2-T73-R005" flag="fatal" id="BII2-T73-R005">[BII2-T73-R005]-The party sending the catalogue subscription response MUST be specified</assert>
    <assert test="$BII2-T73-R006" flag="fatal" id="BII2-T73-R006">[BII2-T73-R006]-The party receiving the catalogue subscription response MUST be specified</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T73-R007" flag="fatal" id="BII2-T73-R007">[BII2-T73-R007]-A catalogue subscription response sending party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T73-R008" flag="fatal" id="BII2-T73-R008">[BII2-T73-R008]-A catalogue subscription response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$catalogue_subscription_response">
    <assert test="$BII2-T73-R009" flag="fatal" id="BII2-T73-R009">[BII2-T73-R009]-A catalogue subscription response MUST contain a response</assert>
    <assert test="$BII2-T73-R010" flag="fatal" id="BII2-T73-R010">[BII2-T73-R010]-A catalogue subscription response MUST contain a document reference to the catalogue subscription</assert>
  </rule>
  <rule context="$Document_reference">
    <assert test="$BII2-T73-R012" flag="fatal" id="BII2-T73-R012">[BII2-T73-R012]-A document reference to the subscription MUST contain an identifier and a document type</assert>
  </rule>
</pattern>
