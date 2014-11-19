<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T05 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T05">
  <rule context="$Counter_Offer_Response">
    <assert test="$BII2-T05-R001" flag="fatal" id="BII2-T05-R001">[BII2-T05-R001]-A counter offer response MUST have an identifier</assert>
    <assert test="$BII2-T05-R002" flag="fatal" id="BII2-T05-R002">[BII2-T05-R002]-A counter offer response MUST have a customization identifier</assert>
    <assert test="$BII2-T05-R003" flag="fatal" id="BII2-T05-R003">[BII2-T05-R003]-A counter offer response MUST have a profile identifier</assert>
    <assert test="$BII2-T05-R004" flag="fatal" id="BII2-T05-R004">[BII2-T05-R004]-A counter offer response MUST refer to the Counter Offer it responses to.</assert>
    <assert test="$BII2-T05-R008" flag="fatal" id="BII2-T05-R008">[BII2-T05-R008]-A counter offer response MUST have an issue date</assert>
  </rule>
  <rule context="$Customer">
    <assert test="$BII2-T05-R005" flag="fatal" id="BII2-T05-R005">[BII2-T05-R005]-A counter offer response  MUST contain the full name or an identifier of the customer</assert>
  </rule>
  <rule context="$Supplier">
    <assert test="$BII2-T05-R006" flag="fatal" id="BII2-T05-R006">[BII2-T05-R006]-A counter offer response  MUST contain the full name or an identifier of the supplier</assert>
  </rule>
</pattern>
