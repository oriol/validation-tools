<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T26 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T26">
  <rule context="$Customer">
    <assert test="$BII2-T26-R009" flag="fatal" id="BII2-T26-R009">[BII2-T26-R009]-The customer MUST have the name or an identifier</assert>
  </rule>
  <rule context="$Customer_Address">
    <assert test="$BII2-T26-R010" flag="warning" id="BII2-T26-R010">[BII2-T26-R010]-A customer's postal address SHOULD have at least all of the following:
- Address line
- City
- Post code
- Country code</assert>
  </rule>
  <rule context="$Payment_Instructions">
    <assert test="$BII2-T26-R011" flag="fatal" id="BII2-T26-R011">[BII2-T26-R011]-Payment means type MUST be provided if the statement has payment instructions</assert>
  </rule>
  <rule context="$Statement">
    <assert test="$BII2-T26-R001" flag="fatal" id="BII2-T26-R001">[BII2-T26-R001]-A statement MUST have a customization identifier</assert>
    <assert test="$BII2-T26-R002" flag="fatal" id="BII2-T26-R002">[BII2-T26-R002]-A statement MUST have a profile identifier</assert>
    <assert test="$BII2-T26-R003" flag="fatal" id="BII2-T26-R003">[BII2-T26-R003]-A statement MUST have a document identifier</assert>
    <assert test="$BII2-T26-R004" flag="fatal" id="BII2-T26-R004">[BII2-T26-R004]-A statement MUST have a document issue date</assert>
    <assert test="$BII2-T26-R005" flag="fatal" id="BII2-T26-R005">[BII2-T26-R005]-A statement MUST have a supplier party</assert>
    <assert test="$BII2-T26-R008" flag="fatal" id="BII2-T26-R008">[BII2-T26-R008]-A statement MUST have a customer</assert>
    <assert test="$BII2-T26-R014" flag="fatal" id="BII2-T26-R014">[BII2-T26-R014]-A statement MUST have at least one statement line</assert>
    <assert test="$BII2-T26-R016" flag="fatal" id="BII2-T26-R016">[BII2-T26-R016]-Statement total balance amount MUST be equal to sum of the statement line amounts</assert>
    <assert test="$BII2-T26-R017" flag="fatal" id="BII2-T26-R017">[BII2-T26-R017]-All amounts in the statement MUST be stated in a single currency</assert>
  </rule>
  <rule context="$Statement_Line">
    <assert test="$BII2-T26-R015" flag="fatal" id="BII2-T26-R015">[BII2-T26-R015]-Each statement line MUST have a statement line identifier that is unique within the statement</assert>
    <assert test="$BII2-T26-R018" flag="fatal" id="BII2-T26-R018">[BII2-T26-R018]-Each statement line MUST have a statement line date</assert>
    <assert test="$BII2-T26-R019" flag="fatal" id="BII2-T26-R019">[BII2-T26-R019]-Each statement line MUST contain an amount</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T26-R006" flag="fatal" id="BII2-T26-R006">[BII2-T26-R006]-The supplier MUST have the name or an identifier</assert>
  </rule>
  <rule context="$Supplier_Address">
    <assert test="$BII2-T26-R007" flag="warning" id="BII2-T26-R007">[BII2-T26-R007]-A supplier's postal address SHOULD have at least all of the following:
- Address line
- City
- Post code
- Country code</assert>
  </rule>
</pattern>
