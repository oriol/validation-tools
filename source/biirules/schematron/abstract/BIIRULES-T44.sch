<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T44 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T44">
  <rule context="$tender">
    <assert test="$BII2-T44-R001" flag="fatal" id="BII2-T44-R001">[BII2-T44-R001]-A tender MUST have a customization identifier</assert>
    <assert test="$BII2-T44-R002" flag="fatal" id="BII2-T44-R002">[BII2-T44-R002]-A tender MUST have a profile identifier</assert>
    <assert test="$BII2-T44-R003" flag="fatal" id="BII2-T44-R003">[BII2-T44-R003]-A tender MUST have a tender identifier</assert>
    <assert test="$BII2-T44-R004" flag="fatal" id="BII2-T44-R004">[BII2-T44-R004]-A tender MUST have an issuing date</assert>
    <assert test="$BII2-T44-R005" flag="fatal" id="BII2-T44-R005">[BII2-T44-R005]-A tender MUST have an issuing time</assert>
    <assert test="$BII2-T44-R006" flag="fatal" id="BII2-T44-R006">[BII2-T44-R006]-A tender MUST have a call for tender reference</assert>
    <assert test="$BII2-T44-R007" flag="fatal" id="BII2-T44-R007">[BII2-T44-R007]-A tender MUST have a contracting authority</assert>
  </rule>
  <rule context="$Contracting_Authority">
    <assert test="$BII2-T44-R008" flag="fatal" id="BII2-T44-R008">[BII2-T44-R008]-A contracting authority MUST have a contracting authority name or a contracting authority identifier</assert>
  </rule>
  <rule context="$tender">
    <assert test="$BII2-T44-R010" flag="fatal" id="BII2-T44-R010">[BII2-T44-R010]-A tender MUST have at least one economic operator</assert>
  </rule>
  <rule context="$Economic_operator">
    <assert test="$BII2-T44-R011" flag="fatal" id="BII2-T44-R011">[BII2-T44-R011]-Each economic operator in a tender MUST have a name or an identifier</assert>
  </rule>
  <rule context="$Deliverable_offered">
    <assert test="$BII2-T44-R013" flag="warning" id="BII2-T44-R013">[BII2-T44-R013]-Each deliverable offered SHOULD refer to a call for tender requested deliverable through the use of the call for tender reference identifier</assert>
  </rule>
  <rule context="$Awarding_criterion_response">
    <assert test="$BII2-T44-R014" flag="warning" id="BII2-T44-R014">[BII2-T44-R014]-Each awarding criterion response SHOULD have a call for tender awarding criterion reference identifier</assert>
  </rule>
  <rule context="$tender">
    <assert test="$BII2-T44-R015" flag="fatal" id="BII2-T44-R015">[BII2-T44-R015]-The tender MUST contain the total amount of the tender and applicable taxes. </assert>
  </rule>
</pattern>
