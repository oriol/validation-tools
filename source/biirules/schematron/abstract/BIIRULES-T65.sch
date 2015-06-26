<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T65 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T65">
  <rule context="$notice_publication_response">
    <assert test="$BII2-T65-R001" flag="fatal" id="BII2-T65-R001">[BII2-T65-R001]-A notice publication response MUST have a profile identifier</assert>
    <assert test="$BII2-T65-R002" flag="fatal" id="BII2-T65-R002">[BII2-T65-R002]-A notice publication response MUST have a customization identifier</assert>
    <assert test="$BII2-T65-R003" flag="fatal" id="BII2-T65-R003">[BII2-T65-R003]-A notice publication response MUST contain the date of issue</assert>
    <assert test="$BII2-T65-R004" flag="fatal" id="BII2-T65-R004">[BII2-T65-R004]-A notice publication response MUST contain the response identifier</assert>
    <assert test="$BII2-T65-R005" flag="fatal" id="BII2-T65-R005">[BII2-T65-R005]-The party sending the notice publication response  MUST be specified</assert>
    <assert test="$BII2-T65-R006" flag="fatal" id="BII2-T65-R006">[BII2-T65-R006]-The party receiving the notice publication response  MUST be specified</assert>
    <assert test="$BII2-T65-R010" flag="fatal" id="BII2-T65-R010">[BII2-T65-R010]-A notice publication response MUST contain a received notification request</assert>
    <assert test="$BII2-T65-R011" flag="fatal" id="BII2-T65-R011">[BII2-T65-R011]-A notice publication response MUST contain a document reception date and time</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T65-R008" flag="fatal" id="BII2-T65-R008">[BII2-T65-R008]-A notice publication response receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T65-R007" flag="fatal" id="BII2-T65-R007">[BII2-T65-R007]-A notice publication response sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
