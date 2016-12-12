<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2">
  <title>EFFF  T10 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
  <phase id="EFFFT10_phase">
    <active pattern="UBL-T10"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT10"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T10 was here-->
  
  
  <!--Start pattern based on abstract T10--><pattern id="UBL-T10">
  <rule context="/ubl:Invoice">
    <assert test="cac:AdditionalDocumentReference/cbc:DocumentType = 'CommercialInvoice'" flag="fatal" id="EFFF-T10-R001">[EFFF-T10-R001]-The PDF representation of the invoice SHALL be included and have “CommercialInvoice” as document type.</assert>
    <assert test="exists(cac:AdditionalDocumentReference[cbc:ID='eFFF'])" flag="fatal" id="EFFF-T10-R002">[EFFF-T10-R002]-An additional document reference containing the information related to the software producing the invoice SHALL be present.</assert>
    <assert test="exists(cac:AdditionalDocumentReference[cbc:ID='eFFF'])" flag="fatal" id="EFFF-T10-R003">[EFFF-T10-R003]-The identifier of the document reference containing the information related to the software producing the invoice SHALL contain "eFFF" as value</assert>
  </rule>
  <rule context="//cac:AdditionalDocumentReference[cbc:ID='eFFF']">
    <assert test="string-length(cbc:DocumentType) &gt; 1" flag="fatal" id="EFFF-T10-R004">[EFFF-T10-R004]-The document type of the document reference containing the information related to the software producing the invoice SHALL contain the name and version of the software producing the invoice.</assert>
  </rule>
  <rule context="//cac:PaymentMeans">
    <assert test="(cbc:SettlementDiscountPercent)" flag="warning" id="EFFF-T10-R005">[EFFF-T10-R005]-The percentage used to calculate the cash payment discount amount SHOULD be present.</assert>
    <assert test="(cbc:SettlementDiscountPercent) and (cbc:Amount)" flag="fatal" id="EFFF-T10-R006">[EFFF-T10-R006]-If the percentage used to calculate the cash payment discount is present, the calculated cash discount amount to subtract SHALL be present.</assert>
    <assert test="(cbc:SettlementDiscountPercent) and (cbc:EndDate)" flag="fatal" id="EFFF-T10-R007">[EFFF-T10-R007]-If the percentage used to calculate the cash payment discount is present, the ultimate date the cash payment discount can be applied SHALL be present</assert>
  </rule>
  <rule context="/ubl:Invoice">
    <assert test="(cbc:Name = 'Belgian?')" flag="fatal" id="EFFF-T10-R008">[EFFF-T10-R008]-The Belgian Tax category SHALL be specified.</assert>
  </rule>
  <rule context="//cac:PaymentMeans">
    <assert test="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount)" flag="fatal" id="EFFF-T10-R009">[EFFF-T10-R009]-If the percentage used to calculate the cash payment discount is present, the taxable amount at line level SHALL be present</assert>
    <assert test="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount)" flag="fatal" id="EFFF-T10-R010">[EFFF-T10-R010]-If the percentage used to calculate the cash payment discount is present, the tax amount at line level SHALL be present</assert>
  </rule>
  <rule context="//cac:TaxCategory">
    <assert test="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID)" flag="fatal" id="EFFF-T10-R011">[EFFF-T10-R011]-If the percentage used to calculate the cash payment discount is present, the UNCL5305 ID SHALL be present</assert>
    <assert test="(cbc:Name = 'Belgian?')" flag="fatal" id="EFFF-T10-R012">[EFFF-T10-R012]-If the percentage used to calculate the cash payment discount is present, the Belgian tax category SHALL be present</assert>
    <assert test="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:Percent)" flag="fatal" id="EFFF-T10-R013">[EFFF-T10-R013]-If the percentage used to calculate the cash payment discount is present, the tax percentage SHALL be present</assert>
  </rule>
  <rule context="/ubl:Invoice_line">
    <assert test="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:InvoiceLine/TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason = 'Cash Discount')" flag="fatal" id="EFFF-T10-R014">[EFFF-T10-R014]-If the percentage used to calculate the cash payment discount is present and the amount is exempt from VAT, the tax exemption reason SHALL contain "Cash Discount" as value.</assert>
    <assert test="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT')" flag="fatal" id="EFFF-T10-R015">[EFFF-T10-R015]-If the percentage used to calculate the cash payment discount is present, the tax scheme identifier SHALL contains "VAT" as value.</assert>
    <assert test="(cbc:Name = 'Belgian?')" flag="fatal" id="EFFF-T10-R016">[EFFF-T10-R016]-The Belgian Tax category SHALL be specified at line level.</assert>
  </rule>
</pattern>
  
  
  
</schema>