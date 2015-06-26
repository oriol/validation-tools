<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T17 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T17">
  <rule context="$Reminder">
    <assert test="$BII2-T17-R001" flag="fatal" id="BII2-T17-R001">[BII2-T17-R001]-A reminder MUST have a customization identifier</assert>
    <assert test="$BII2-T17-R002" flag="fatal" id="BII2-T17-R002">[BII2-T17-R002]-A reminder MUST have a profile identifier</assert>
    <assert test="$BII2-T17-R003" flag="fatal" id="BII2-T17-R003">[BII2-T17-R003]-A reminder MUST have a document identifier</assert>
    <assert test="$BII2-T17-R004" flag="fatal" id="BII2-T17-R004">[BII2-T17-R004]-A reminder MUST have the date of issue</assert>
    <assert test="$BII2-T17-R005" flag="fatal" id="BII2-T17-R005">[BII2-T17-R005]-A reminder MUST specify the sum of the line amounts</assert>
    <assert test="$BII2-T17-R006" flag="fatal" id="BII2-T17-R006">[BII2-T17-R006]-A reminder MUST specify the total payable amount</assert>
    <assert test="$BII2-T17-R007" flag="fatal" id="BII2-T17-R007">[BII2-T17-R007]-A reminder MUST specify at least one line</assert>
  </rule>
  <rule context="$Reminder_Line">
    <assert test="$BII2-T17-R008" flag="fatal" id="BII2-T17-R008">[BII2-T17-R008]-Reminder lines MUST have a line identifier</assert>
    <assert test="$BII2-T17-R009" flag="warning" id="BII2-T17-R009">[BII2-T17-R009]-A reminder line SHOULD specify a referenced billing identifier</assert>
  </rule>
  <rule context="$Reminder">
    <assert test="$BII2-T17-R010" flag="fatal" id="BII2-T17-R010">[BII2-T17-R010]-Reminder total line extension amount MUST equal the sum of the line totals</assert>
  </rule>
  <rule context="$Payee">
    <assert test="$BII2-T17-R011" flag="fatal" id="BII2-T17-R011">[BII2-T17-R011]-The payee name or payee identifier MUST be specified if payee information is provided</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T17-R012" flag="fatal" id="BII2-T17-R012">[BII2-T17-R012]-A supplier in the reminder MUST be identified using the party name or the party identifier</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BII2-T17-R013" flag="fatal" id="BII2-T17-R013">[BII2-T17-R013]-A customer in the reminder MUST be identified using the party name or the party identifier</assert>
  </rule>
</pattern>
