<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T41 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T41">
  <rule context="$Contracting_Authority">
    <assert test="$BII2-T41-R008" flag="fatal" id="BII2-T41-R008">[BII2-T41-R008]-A contracting authority MUST have a contracting authority name or a contracting authority identifier</assert>
  </rule>
  <rule context="$Economic_operator">
    <assert test="$BII2-T41-R011" flag="fatal" id="BII2-T41-R011">[BII2-T41-R011]-Each economic operator in a qualification document MUST have an economic operator name</assert>
    <assert test="$BII2-T41-R015" flag="fatal" id="BII2-T41-R015">[BII2-T41-R015]-Each natural person MUST have a natural person name</assert>
  </rule>
  <rule context="$qualification_document">
    <assert test="$BII2-T41-R001" flag="fatal" id="BII2-T41-R001">[BII2-T41-R001]-A qualification document MUST have a customization identifier</assert>
    <assert test="$BII2-T41-R002" flag="fatal" id="BII2-T41-R002">[BII2-T41-R002]-A qualification document MUST have a business process identifier</assert>
    <assert test="$BII2-T41-R003" flag="fatal" id="BII2-T41-R003">[BII2-T41-R003]-A qualification document MUST have a document identifier</assert>
    <assert test="$BII2-T41-R004" flag="fatal" id="BII2-T41-R004">[BII2-T41-R004]-A qualification document MUST have a document issue date</assert>
    <assert test="$BII2-T41-R005" flag="fatal" id="BII2-T41-R005">[BII2-T41-R005]-A qualification document MUST have a message issue time</assert>
    <assert test="$BII2-T41-R006" flag="fatal" id="BII2-T41-R006">[BII2-T41-R006]-A qualification document MUST have a call for tender reference</assert>
    <assert test="$BII2-T41-R007" flag="fatal" id="BII2-T41-R007">[BII2-T41-R007]-A qualification document MUST have a contracting authority</assert>
    <assert test="$BII2-T41-R010" flag="fatal" id="BII2-T41-R010">[BII2-T41-R010]-A qualification document MUST have at least one economic operator</assert>
    <assert test="$BII2-T41-R013" flag="fatal" id="BII2-T41-R013">[BII2-T41-R013]-Each criteria that is being met MUST have a criterion name</assert>
    <assert test="$BII2-T41-R014" flag="fatal" id="BII2-T41-R014">[BII2-T41-R014]-Each criteria that is being met MUST have a criterion description</assert>
  </rule>
</pattern>
