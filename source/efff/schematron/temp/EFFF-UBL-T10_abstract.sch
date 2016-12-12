<?xml version="1.0" encoding="UTF-8"?><!-- 

            UBL syntax binding to the T10  
            Created by Validex Schematron Generator. (2015) Midran Ltd.
            Timestamp: 2016-12-12 07:05:39 +0100
     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2">
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
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/EFFF-T10.sch?><pattern abstract="true" id="T10">
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
</pattern><?DSDL_INCLUDE_END abstract/EFFF-T10.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/EFFF-UBL-T10.sch?><pattern is-a="T10" id="UBL-T10">
  <param name="EFFF-T10-R001" value="cac:AdditionalDocumentReference/cbc:DocumentType = 'CommercialInvoice'"/>
  <param name="EFFF-T10-R002" value="exists(cac:AdditionalDocumentReference[cbc:ID='eFFF'])"/>
  <param name="EFFF-T10-R003" value="exists(cac:AdditionalDocumentReference[cbc:ID='eFFF'])"/>
  <param name="EFFF-T10-R004" value="string-length(cbc:DocumentType) &gt; 1"/>
  <param name="EFFF-T10-R005" value="(cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R006" value="(cbc:SettlementDiscountPercent) and (cbc:Amount)"/>
  <param name="EFFF-T10-R007" value="(cbc:SettlementDiscountPercent) and (cbc:EndDate)"/>
  <param name="EFFF-T10-R008" value="(cbc:Name = 'Belgian?')"/>
  <param name="EFFF-T10-R009" value="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount)"/>
  <param name="EFFF-T10-R010" value="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount)"/>
  <param name="EFFF-T10-R011" value="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID)"/>
  <param name="EFFF-T10-R012" value="(cbc:Name = 'Belgian?')"/>
  <param name="EFFF-T10-R013" value="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:Percent)"/>
  <param name="EFFF-T10-R014" value="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:InvoiceLine/TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason = 'Cash Discount')"/>
  <param name="EFFF-T10-R015" value="(cac:PaymentTerms/cbc:SettlementDiscountPercent) and (TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT')"/>
  <param name="EFFF-T10-R016" value="(cbc:Name = 'Belgian?')"/>
  <param name="Production_Software" value="//cac:AdditionalDocumentReference[cbc:ID='eFFF']"/>
  <param name="Tax_Category" value="//cac:TaxCategory"/>
  <param name="Payment" value="//cac:PaymentMeans"/>
  <param name="Invoice_Line" value="//cac:InvoiceLine"/>
  <param name="Invoice" value="/ubl:Invoice"/>
</pattern><?DSDL_INCLUDE_END UBL/EFFF-UBL-T10.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/EFFFCodesT10-UBL.sch?><?DSDL_INCLUDE_END codelist/EFFFCodesT10-UBL.sch?>
</schema>