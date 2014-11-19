<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T45 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T45">
  <rule context="$tender_reception_notification">
    <assert test="$BII2-T45-R001" flag="fatal" id="BII2-T45-R001">[BII2-T45-R001]-A tender reception notification MUST have a profile identifier</assert>
    <assert test="$BII2-T45-R002" flag="fatal" id="BII2-T45-R002">[BII2-T45-R002]-A tender reception notification MUST have a customization identifier</assert>
    <assert test="$BII2-T45-R003" flag="fatal" id="BII2-T45-R003">[BII2-T45-R003]-A tender reception notification MUST contain the date of issue</assert>
    <assert test="$BII2-T45-R004" flag="fatal" id="BII2-T45-R004">[BII2-T45-R004]-A tender reception notification MUST have a contract folder identifier</assert>
    <assert test="$BII2-T45-R005" flag="fatal" id="BII2-T45-R005">[BII2-T45-R005]-A tender reception notification MUST contain the response identifier</assert>
    <assert test="$BII2-T45-R006" flag="fatal" id="BII2-T45-R006">[BII2-T45-R006]-The contracting authority sending the tender reception notification  MUST be specified</assert>
    <assert test="$BII2-T45-R007" flag="fatal" id="BII2-T45-R007">[BII2-T45-R007]-The tenderer receiving the tender reception notification  MUST be specified</assert>
  </rule>
  <rule context="$Contracting_authority">
    <assert test="$BII2-T45-R008" flag="fatal" id="BII2-T45-R008">[BII2-T45-R008]-A tender reception notification contracting authority MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$Tenderer">
    <assert test="$BII2-T45-R009" flag="fatal" id="BII2-T45-R009">[BII2-T45-R009]-A tender reception notification tenderer MUST contain the full name or an identifier</assert>
  </rule>
  <rule context="$tender_reception_notification">
    <assert test="$BII2-T45-R010" flag="fatal" id="BII2-T45-R010">[BII2-T45-R010]-A tender reception notification MUST contain at least one reference to submitted documents</assert>
  </rule>
  <rule context="$Document_Reference">
    <assert test="$BII2-T45-R011" flag="fatal" id="BII2-T45-R011">[BII2-T45-R011]-A document reference MUST contain an identifier and a document type</assert>
  </rule>
  <rule context="$tender_reception_notification">
    <assert test="$BII2-T45-R012" flag="fatal" id="BII2-T45-R012">[BII2-T45-R012]-The Tender Reception Notification MUST state the date and time the tender was received</assert>
  </rule>
</pattern>
