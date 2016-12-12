<!-- Schematron rules generated automatically by Validex Generator Midran ltd -->
<!-- Abstract rules for T10 -->
<!-- Timestamp: 2016-12-12 07:05:39 +0100 -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T10">
  <rule context="$Invoice">
    <assert test="$EFFF-T10-R001" flag="fatal" id="EFFF-T10-R001">[EFFF-T10-R001]-The PDF representation of the invoice SHALL be included and have “CommercialInvoice” as document type.</assert>
    <assert test="$EFFF-T10-R002" flag="fatal" id="EFFF-T10-R002">[EFFF-T10-R002]-An additional document reference containing the information related to the software producing the invoice SHALL be present.</assert>
    <assert test="$EFFF-T10-R003" flag="fatal" id="EFFF-T10-R003">[EFFF-T10-R003]-The identifier of the document reference containing the information related to the software producing the invoice SHALL contain "eFFF" as value</assert>
  </rule>
  <rule context="$Production_Software">
    <assert test="$EFFF-T10-R004" flag="fatal" id="EFFF-T10-R004">[EFFF-T10-R004]-The document type of the document reference containing the information related to the software producing the invoice SHALL contain the name and version of the software producing the invoice.</assert>
  </rule>
  <rule context="$Payment">
    <assert test="$EFFF-T10-R005" flag="warning" id="EFFF-T10-R005">[EFFF-T10-R005]-The percentage used to calculate the cash payment discount amount SHOULD be present.</assert>
    <assert test="$EFFF-T10-R006" flag="fatal" id="EFFF-T10-R006">[EFFF-T10-R006]-If the percentage used to calculate the cash payment discount is present, the calculated cash discount amount to subtract SHALL be present.</assert>
    <assert test="$EFFF-T10-R007" flag="fatal" id="EFFF-T10-R007">[EFFF-T10-R007]-If the percentage used to calculate the cash payment discount is present, the ultimate date the cash payment discount can be applied SHALL be present</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$EFFF-T10-R008" flag="fatal" id="EFFF-T10-R008">[EFFF-T10-R008]-The Belgian Tax category SHALL be specified.</assert>
  </rule>
  <rule context="$Payment">
    <assert test="$EFFF-T10-R009" flag="fatal" id="EFFF-T10-R009">[EFFF-T10-R009]-If the percentage used to calculate the cash payment discount is present, the taxable amount at line level SHALL be present</assert>
    <assert test="$EFFF-T10-R010" flag="fatal" id="EFFF-T10-R010">[EFFF-T10-R010]-If the percentage used to calculate the cash payment discount is present, the tax amount at line level SHALL be present</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$EFFF-T10-R011" flag="fatal" id="EFFF-T10-R011">[EFFF-T10-R011]-If the percentage used to calculate the cash payment discount is present, the UNCL5305 ID SHALL be present</assert>
    <assert test="$EFFF-T10-R012" flag="fatal" id="EFFF-T10-R012">[EFFF-T10-R012]-If the percentage used to calculate the cash payment discount is present, the Belgian tax category SHALL be present</assert>
    <assert test="$EFFF-T10-R013" flag="fatal" id="EFFF-T10-R013">[EFFF-T10-R013]-If the percentage used to calculate the cash payment discount is present, the tax percentage SHALL be present</assert>
  </rule>
  <rule context="$Invoice_line">
    <assert test="$EFFF-T10-R014" flag="fatal" id="EFFF-T10-R014">[EFFF-T10-R014]-If the percentage used to calculate the cash payment discount is present and the amount is exempt from VAT, the tax exemption reason SHALL contain "Cash Discount" as value.</assert>
    <assert test="$EFFF-T10-R015" flag="fatal" id="EFFF-T10-R015">[EFFF-T10-R015]-If the percentage used to calculate the cash payment discount is present, the tax scheme identifier SHALL contains "VAT" as value.</assert>
    <assert test="$EFFF-T10-R016" flag="fatal" id="EFFF-T10-R016">[EFFF-T10-R016]-The Belgian Tax category SHALL be specified at line level.</assert>
  </rule>
</pattern>
