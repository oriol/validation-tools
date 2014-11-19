<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T23 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T23">
  <rule context="$Catalogue_Delete_Confirmation">
    <assert test="$BII2-T23-R001" flag="fatal" id="BII2-T23-R001">[BII2-T23-R001]-A catalogue deletion confirmation MUST have a profile identifier</assert>
    <assert test="$BII2-T23-R002" flag="fatal" id="BII2-T23-R002">[BII2-T23-R002]-A catalogue deletion confirmation MUST have a customization identifier</assert>
    <assert test="$BII2-T23-R003" flag="fatal" id="BII2-T23-R003">[BII2-T23-R003]-A catalogue deletion confirmation MUST contain the date of issue</assert>
    <assert test="$BII2-T23-R004" flag="fatal" id="BII2-T23-R004">[BII2-T23-R004]-A catalogue deletion confirmation MUST contain the response identifier</assert>
    <assert test="$BII2-T23-R005" flag="fatal" id="BII2-T23-R005">[BII2-T23-R005]-The party sending the catalogue deletion confirmation (issuer of the confirmation or catalogue receiver) MUST be specified</assert>
    <assert test="$BII2-T23-R006" flag="fatal" id="BII2-T23-R006">[BII2-T23-R006]-The party receiving the catalogue deletion confirmation (receiver of the confirmation or catalogue provider) MUST be specified</assert>
    <assert test="$BII2-T23-R010" flag="fatal" id="BII2-T23-R010">[BII2-T23-R010]-A catalogue deletion confirmation MUST refer to a catalogue deletion confirmation request</assert>
  </rule>
  <rule context="$Receiving_Party">
    <assert test="$BII2-T23-R008" flag="fatal" id="BII2-T23-R008">[BII2-T23-R008]-A catalogue deletion confirmation receiving party MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Sending_Party">
    <assert test="$BII2-T23-R007" flag="fatal" id="BII2-T23-R007">[BII2-T23-R007]-A catalogue deletion confirmation sending party MUST contain the full name or an identifier</assert>
  </rule>
</pattern>
