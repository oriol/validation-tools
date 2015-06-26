<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T02 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T02">
  <rule context="$Customer">
    <assert test="$BII2-T02-R005" flag="fatal" id="BII2-T02-R005">[BII2-T02-R005]-An order response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="$Order_Response">
    <assert test="$BII2-T02-R002" flag="fatal" id="BII2-T02-R002">[BII2-T02-R002]-An order response MUST have a customization identifier</assert>
    <assert test="$BII2-T02-R003" flag="fatal" id="BII2-T02-R003">[BII2-T02-R003]-An order response MUST have a profile identifier</assert>
    <assert test="$BII2-T02-R007" flag="fatal" id="BII2-T02-R007">[BII2-T02-R007]-An order response MUST contain the reference to the order</assert>
    <assert test="$BII2-T02-R008" flag="fatal" id="BII2-T02-R008">[BII2-T02-R008]-If the accept indicator is true, the order response MUST not contain a response clarification.</assert>
    <assert test="$BII2-T02-R009" flag="fatal" id="BII2-T02-R009">[BII2-T02-R009]-An order response MUST contain an identifier</assert>
    <assert test="$BII2-T02-R010" flag="fatal" id="BII2-T02-R010">[BII2-T02-R010]-An order response MUST contain an issue date</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T02-R006" flag="fatal" id="BII2-T02-R006">[BII2-T02-R006]-An order response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern>
