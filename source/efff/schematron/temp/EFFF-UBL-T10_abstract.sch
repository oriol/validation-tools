<?xml version="1.0" encoding="UTF-8"?><!-- 

            UBL syntax binding to the T10  
            Created by Validex Schematron Generator. (2015) Midran Ltd.
            Timestamp: 2017-01-13 11:51:36 +0100
     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2">
  <title>EFFF  T10 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="cn" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
  <phase id="EFFFT10_phase">
    <active pattern="UBL-T10"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/EFFF-T10.sch?><pattern abstract="true" id="T10">
  <rule context="$Invoice">
    <assert test="$EFFF-T10-R001" flag="fatal" id="EFFF-T10-R001">[EFFF-T10-R001]-The PDF representation of the invoice MUST be included and have “CommercialInvoice” as document type.</assert>
    <assert test="$EFFF-T10-R003" flag="fatal" id="EFFF-T10-R003">[EFFF-T10-R003]-The identifier of the document reference containing the information related to the software producing the invoice MUST contain "eFFF" as value</assert>
  </rule>
  <rule context="$Production_Software">
    <assert test="$EFFF-T10-R002" flag="fatal" id="EFFF-T10-R002">[EFFF-T10-R002]-An additional document reference containing the information related to the software producing the invoice MUST be present.</assert>
    <assert test="$EFFF-T10-R004" flag="fatal" id="EFFF-T10-R004">[EFFF-T10-R004]-The document type of  the document reference containing the information related to the software producing the invoice MUST contain the name and version of the software producing the invoice.</assert>
  </rule>
  <rule context="$Payment">
    <assert test="$EFFF-T10-R005" flag="fatal" id="EFFF-T10-R005">[EFFF-T10-R005]-If the percentage used to calculate the cash payment discount is present, the calculated cash discount amount to subtract MUST be present.</assert>
    <assert test="$EFFF-T10-R006" flag="fatal" id="EFFF-T10-R006">[EFFF-T10-R006]-If the percentage used to calculate the cash payment discount is present, the ultimate date the cash payment discount can be applied MUST be present</assert>
  </rule>
  <rule context="$Tax_Category">
    <assert test="$EFFF-T10-R007" flag="fatal" id="EFFF-T10-R007">[EFFF-T10-R007]-The Belgian Tax category MUST be specified.</assert>
    <assert test="$EFFF-T10-R017" flag="warning" id="EFFF-T10-R017">[EFFF-T10-R017]-The Belgian Tax category code SHOULD match the PEPPOL Tax category code.</assert>
  </rule>
  <rule context="$Invoice_line">
    <assert test="$EFFF-T10-R008" flag="fatal" id="EFFF-T10-R008">[EFFF-T10-R008]-If the percentage used to calculate the cash payment discount is present, the taxable amount at line level MUST be present</assert>
    <assert test="$EFFF-T10-R009" flag="fatal" id="EFFF-T10-R009">[EFFF-T10-R009]-If the percentage used to calculate the cash payment discount is present, the tax amount at line level MUST be present</assert>
    <assert test="$EFFF-T10-R010" flag="fatal" id="EFFF-T10-R010">[EFFF-T10-R010]-If the percentage used to calculate the cash payment discount is present, the UNCL5305 ID MUST be present</assert>
    <assert test="$EFFF-T10-R011" flag="fatal" id="EFFF-T10-R011">[EFFF-T10-R011]-If the percentage used to calculate the cash payment discount is present, the Belgian tax category MUST be present</assert>
    <assert test="$EFFF-T10-R012" flag="fatal" id="EFFF-T10-R012">[EFFF-T10-R012]-If the percentage used to calculate the cash payment discount is present, the  tax percentage MUST be present</assert>
    <assert test="$EFFF-T10-R014" flag="fatal" id="EFFF-T10-R014">[EFFF-T10-R014]-If the percentage used to calculate the cash payment discount is present, the tax scheme identifier MUST contain "VAT" as value.</assert>
    <assert test="$EFFF-T10-R015" flag="fatal" id="EFFF-T10-R015">[EFFF-T10-R015]-The Belgian Tax category MUST be specified at line level.</assert>
  </rule>
  <rule context="$Tax_Exempt">
    <assert test="$EFFF-T10-R013" flag="fatal" id="EFFF-T10-R013">[EFFF-T10-R013]-If the percentage used to calculate the cash payment discount is present and the amount is exempt from VAT, the tax exemption reason MUST contain "Cash Discount" as value.</assert>
  </rule>
  <rule context="$Tax_Category_Name">
    <assert test="$EFFF-T10-R016" flag="fatal" id="EFFF-T10-R016">[EFFF-T10-R016]-The Belgian Tax category MUST be specified using the Belgian Tax Category code list.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/EFFF-T10.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/EFFF-UBL-T10.sch?><pattern is-a="T10" id="UBL-T10">
  <param name="EFFF-T10-R001" value="(cac:AdditionalDocumentReference/cbc:DocumentType = 'CommercialInvoice') or (cac:AdditionalDocumentReference/cbc:DocumentType = 'CreditNote')"/>
  <param name="EFFF-T10-R002" value="(cbc:ID='eFFF')"/>
  <param name="EFFF-T10-R003" value="exists(cac:AdditionalDocumentReference[cbc:ID='eFFF'])"/>
  <param name="EFFF-T10-R004" value="string-length(cbc:DocumentType) &gt; 1"/>
  <param name="EFFF-T10-R005" value="((cbc:SettlementDiscountPercent) and (cbc:Amount)) or not(cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R006" value="((cbc:SettlementDiscountPercent) and (cac:SettlementPeriod/cbc:EndDate)) or not(cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R007" value="(cbc:Name)"/>
  <param name="EFFF-T10-R008" value="((../cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount)) or not(../cac:PaymentTerms/cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R009" value="((../cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount)) or not(../cac:PaymentTerms/cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R010" value="((../cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID)) or not(../cac:PaymentTerms/cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R011" value="((../cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:Name)) or not(../cac:PaymentTerms/cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R012" value="((../cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:Percent)) or not(../cac:PaymentTerms/cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R013" value="((../../cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxCategory/cbc:TaxExemptionReason = 'Cash Discount')) or not(../../cac:PaymentTerms/cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R014" value="((../cac:PaymentTerms/cbc:SettlementDiscountPercent) and (cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT')) or not(../cac:PaymentTerms/cbc:SettlementDiscountPercent)"/>
  <param name="EFFF-T10-R015" value="(cac:Item/cac:ClassifiedTaxCategory/cbc:Name)"/>
  <param name="EFFF-T10-R016" value="( ( not(contains(normalize-space(.),' ')) and contains( ' 00 01 02 03 45 NA MA 00/44 46/GO 47/TO 47/AS 47/DI 47/SE 46/TR 44 47/EX 47/EI 47/EE 03/SE  ',concat(' ',normalize-space(.),' ') ) ) )"/>
  <param name="EFFF-T10-R017" value="exists(cbc:Name) and ((cbc:Name = '00' and cbc:ID = 'Z') or (cbc:Name = '01' and cbc:ID = 'AA') or (cbc:Name = '02' and cbc:ID = 'AA') or (cbc:Name = '03' and cbc:ID = 'S') or (cbc:Name = '45' and cbc:ID = 'AE') or (cbc:Name = 'NA' and cbc:ID = 'E') or (cbc:Name = 'MA' and cbc:ID = 'S') or (cbc:Name = '00/44' and cbc:ID = 'E') or (cbc:Name = '46/GO' and cbc:ID = 'AE') or (cbc:Name = '47/TO' and cbc:ID = 'AE') or (cbc:Name = '47/AS' and cbc:ID = 'AE') or (cbc:Name = '47/DI' and cbc:ID = 'AE') or (cbc:Name = '47/SE' and cbc:ID = 'AE') or (cbc:Name = '46/TR' and cbc:ID = 'AE') or (cbc:Name = '44' and cbc:ID = 'AE') or (cbc:Name = '47/EX' and cbc:ID = 'E') or (cbc:Name = '47/EI' and cbc:ID = 'E') or (cbc:Name = '47/EE' and cbc:ID = 'E') or (cbc:Name = '03/SE' and cbc:ID = 'S')) or not(cbc:Name)"/>
  <param name="Production_Software" value="//cac:AdditionalDocumentReference[cbc:ID='eFFF']"/>
  <param name="Tax_Category_Name" value="//cac:TaxCategory/cbc:Name"/>
  <param name="Tax_Category" value="//cac:TaxCategory"/>
  <param name="Payment" value="//cac:PaymentTerms"/>
  <param name="Invoice_line" value="//cac:InvoiceLine | //cac:CreditNoteLine"/>
  <param name="Invoice" value="/ubl:Invoice | /cn:CreditNote"/>
  <param name="Tax_Exempt" value="//cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cbc:ID = 'E']"/>
</pattern><?DSDL_INCLUDE_END UBL/EFFF-UBL-T10.sch?>
</schema>