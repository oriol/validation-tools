<?xml version="1.0" encoding="UTF-8"?><!-- 

        	CEFACT syntax binding to the T10   
        	Author: Oriol Bausà
            Timestamp: 2016-03-05 16:02:18 +0100
     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:4" queryBinding="xslt2">
  <title>BIIRULES  T10 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryInvoice:4"/>
  <phase id="BIIRULEST10_phase">
    <active pattern="CEFACT-T10"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT10"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T10.sch?><pattern abstract="true" id="T10">
  <rule context="$Allowance_Charge">
    <assert test="$BII2-T10-R025" flag="fatal" id="BII2-T10-R025">[BII2-T10-R025]-Each document level allowance or charge details MUST have an allowance and charge reason text</assert>
    <assert test="$BII2-T10-R043" flag="fatal" id="BII2-T10-R043">[BII2-T10-R043]-Document level allowances and charges details MUST have allowance and charge VAT category if the invoice has a VAT total amount</assert>
  </rule>
  <rule context="$Invoice">
    <assert test="$BII2-T10-R001" flag="fatal" id="BII2-T10-R001">[BII2-T10-R001]-An invoice MUST have a customization identifier</assert>
    <assert test="$BII2-T10-R002" flag="fatal" id="BII2-T10-R002">[BII2-T10-R002]-An invoice MUST have a business profile identifier</assert>
    <assert test="$BII2-T10-R003" flag="fatal" id="BII2-T10-R003">[BII2-T10-R003]-An invoice MUST have an invoice identifier</assert>
    <assert test="$BII2-T10-R004" flag="fatal" id="BII2-T10-R004">[BII2-T10-R004]-An invoice MUST have an invoice issue date</assert>
    <assert test="$BII2-T10-R005" flag="fatal" id="BII2-T10-R005">[BII2-T10-R005]-An invoice MUST specify the currency code for the document</assert>
    <assert test="$BII2-T10-R006" flag="fatal" id="BII2-T10-R006">[BII2-T10-R006]-An invoice MUST have a seller name and/or a seller identifier</assert>
    <assert test="$BII2-T10-R008" flag="fatal" id="BII2-T10-R008">[BII2-T10-R008]-An invoice MUST have a buyer name and/or a buyer identifier</assert>
    <assert test="$BII2-T10-R010" flag="fatal" id="BII2-T10-R010">[BII2-T10-R010]-An invoice MUST have the sum of line amounts</assert>
    <assert test="$BII2-T10-R011" flag="fatal" id="BII2-T10-R011">[BII2-T10-R011]-An invoice MUST have the invoice total without VAT</assert>
    <assert test="$BII2-T10-R012" flag="fatal" id="BII2-T10-R012">[BII2-T10-R012]-An invoice MUST have the invoice total with VAT (value of purchase)</assert>
    <assert test="$BII2-T10-R013" flag="fatal" id="BII2-T10-R013">[BII2-T10-R013]-An invoice MUST have the amount due for payment</assert>
    <assert test="$BII2-T10-R014" flag="fatal" id="BII2-T10-R014">[BII2-T10-R014]-An invoice MUST have at least one invoice line</assert>
    <assert test="$BII2-T10-R015" flag="fatal" id="BII2-T10-R015">[BII2-T10-R015]-An invoice MUST specify the VAT total amount, if there are VAT line amounts</assert>
    <assert test="$BII2-T10-R026" flag="fatal" id="BII2-T10-R026">[BII2-T10-R026]-An invoice MUST contain VAT category details unless VAT total amount is omitted.</assert>
    <assert test="$BII2-T10-R035" flag="fatal" id="BII2-T10-R035">[BII2-T10-R035]-Invoice total with VAT MUST NOT be negative</assert>
    <assert test="$BII2-T10-R037" flag="fatal" id="BII2-T10-R037">[BII2-T10-R037]-Amount due for payment in an invoice MUST NOT be negative</assert>
    <assert test="$BII2-T10-R044" flag="fatal" id="BII2-T10-R044">[BII2-T10-R044]-A seller VAT identifier MUST be provided if the invoice has a VAT total amount</assert>
    <assert test="$BII2-T10-R047" flag="fatal" id="BII2-T10-R047">[BII2-T10-R047]-A buyer VAT identifier MUST be present if the VAT category code is reverse VAT</assert>
    <assert test="$BII2-T10-R048" flag="fatal" id="BII2-T10-R048">[BII2-T10-R048]-An invoice with a VAT category code of reverse charge MUST NOT contain other VAT categories.</assert>
    <assert test="$BII2-T10-R049" flag="fatal" id="BII2-T10-R049">[BII2-T10-R049]-The invoice total without VAT MUST be equal to the VAT category taxable amount if the VAT category code is reverse charge</assert>
    <assert test="$BII2-T10-R050" flag="fatal" id="BII2-T10-R050">[BII2-T10-R050]-The VAT category tax amount MUST be zero  if the VAT category code is reverse charge (since there is only one VAT category allowed it follows that the invoice tax total for reverse charge invoices is zero)</assert>
    <assert test="$BII2-T10-R058" flag="fatal" id="BII2-T10-R058">[BII2-T10-R058]-Invoice total without VAT MUST be equal to the sum of VAT category taxable amounts</assert>
  </rule>
  <rule context="$Invoice_Line">
    <assert test="$BII2-T10-R017" flag="fatal" id="BII2-T10-R017">[BII2-T10-R017]-Each invoice line MUST have an invoice line identifier</assert>
    <assert test="$BII2-T10-R018" flag="fatal" id="BII2-T10-R018">[BII2-T10-R018]-Each invoice line MUST have an invoiced quantity</assert>
    <assert test="$BII2-T10-R019" flag="fatal" id="BII2-T10-R019">[BII2-T10-R019]-Each invoice line MUST have a quantity unit of measure</assert>
    <assert test="$BII2-T10-R020" flag="fatal" id="BII2-T10-R020">[BII2-T10-R020]-Each invoice line MUST have an invoice line net amount</assert>
    <assert test="$BII2-T10-R021" flag="fatal" id="BII2-T10-R021">[BII2-T10-R021]-Each invoice line MUST have an invoice line item name and/or the invoice line item identifier</assert>
    <assert test="$BII2-T10-R032" flag="fatal" id="BII2-T10-R032">[BII2-T10-R032]-A scheme identifier for the invoice line item registered identifier MUST be provided if invoice line item registered identifiers are used to identify a product.(e.g. GTIN)</assert>
    <assert test="$BII2-T10-R033" flag="fatal" id="BII2-T10-R033">[BII2-T10-R033]-A scheme identifier for a invoice line item commodity classification MUST be provided if invoice line item commodity classification are used to classify an invoice line item (e.g. CPV or UNSPSC)</assert>
    <assert test="$BII2-T10-R034" flag="fatal" id="BII2-T10-R034">[BII2-T10-R034]-Invoice line item net price MUST NOT be negative</assert>
    <assert test="$BII2-T10-R046" flag="fatal" id="BII2-T10-R046">[BII2-T10-R046]-Each invoice line MUST be categorized with the invoice line VAT category if the invoice has a VAT total amount </assert>
  </rule>
  <rule context="$Invoice_Period_Information">
    <assert test="$BII2-T10-R023" flag="fatal" id="BII2-T10-R023">[BII2-T10-R023]-Each invoice period information MUST have an invoice period start date</assert>
    <assert test="$BII2-T10-R024" flag="fatal" id="BII2-T10-R024">[BII2-T10-R024]-Each invoice period information MUST have an invoice period end date</assert>
    <assert test="$BII2-T10-R031" flag="fatal" id="BII2-T10-R031">[BII2-T10-R031]-An invoice period end date MUST be later or equal to an invoice period start date</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$BII2-T10-R039" flag="fatal" id="BII2-T10-R039">[BII2-T10-R039]-An account identifier MUST be present if payment means type is funds transfer</assert>
    <assert test="$BII2-T10-R040" flag="fatal" id="BII2-T10-R040">[BII2-T10-R040]-A sellers financial institution identifier MUST be provided if the scheme of the account identifier is IBAN and the payment means is international bank transfer</assert>
    <assert test="$BII2-T10-R041" flag="fatal" id="BII2-T10-R041">[BII2-T10-R041]-A payment means MUST specify the payment means type</assert>
    <assert test="$BII2-T10-R042" flag="fatal" id="BII2-T10-R042">[BII2-T10-R042]-A sellers financial institution identifier scheme MUST be BIC if the scheme of the account identifier is IBAN and the payment means type is international account transfer </assert>
  </rule>
  <rule context="$Total_Invoice">
    <assert test="$BII2-T10-R051" flag="fatal" id="BII2-T10-R051">[BII2-T10-R051]-Sum of line amounts MUST equal the invoice line net amounts</assert>
    <assert test="$BII2-T10-R052" flag="fatal" id="BII2-T10-R052">[BII2-T10-R052]-An invoice total without VAT MUST equal the sum of line amounts plus the sum of charges on document level minus the sum of allowances on document level</assert>
    <assert test="$BII2-T10-R053" flag="fatal" id="BII2-T10-R053">[BII2-T10-R053]-An invoice total with VAT MUST equal the invoice total without VAT plus the VAT total amount and the rounding of invoice total</assert>
    <assert test="$BII2-T10-R054" flag="fatal" id="BII2-T10-R054">[BII2-T10-R054]-The sum of allowances at document level MUST be equal to the sum of document level allowance amounts</assert>
    <assert test="$BII2-T10-R055" flag="fatal" id="BII2-T10-R055">[BII2-T10-R055]-The sum of charges at document level MUST be equal to the sum of document level charge amounts</assert>
    <assert test="$BII2-T10-R056" flag="fatal" id="BII2-T10-R056">[BII2-T10-R056]-Amount due for payment MUST be equal to the invoice total amount with VAT minus the paid amounts</assert>
  </rule>
  <rule context="$VAT_category">
    <assert test="$BII2-T10-R027" flag="fatal" id="BII2-T10-R027">[BII2-T10-R027]-Each VAT category details MUST have a VAT category taxable amount</assert>
    <assert test="$BII2-T10-R028" flag="fatal" id="BII2-T10-R028">[BII2-T10-R028]-Each VAT category details MUST have a VAT category tax amount</assert>
    <assert test="$BII2-T10-R029" flag="fatal" id="BII2-T10-R029">[BII2-T10-R029]-Every VAT category details MUST be defined through a VAT category code</assert>
    <assert test="$BII2-T10-R030" flag="fatal" id="BII2-T10-R030">[BII2-T10-R030]-The VAT category percentage MUST be provided if the VAT category code is standard.</assert>
    <assert test="$BII2-T10-R045" flag="fatal" id="BII2-T10-R045">[BII2-T10-R045]-A VAT exemption reason MUST be provided if the VAT category code is exempt or reverse charge.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T10.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T10.sch?><pattern is-a="T10" id="CEFACT-T10">
  <param name="BII2-T10-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T10-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T10-R003" value="(ram:CIIHExchangedDocument/ram:ID)"/>
  <param name="BII2-T10-R004" value="(ram:CIIHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T10-R005" value="(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:InvoiceCurrencyCode)"/>
  <param name="BII2-T10-R006" value="(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:Name) or (ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:ID)"/>
  <param name="BII2-T10-R008" value="(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:Name) or (ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:ID)"/>
  <param name="BII2-T10-R010" value="number(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount)"/>
  <param name="BII2-T10-R011" value="number(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:TaxBasisTotalAmount)"/>
  <param name="BII2-T10-R012" value="number(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:GrandTotalAmount)"/>
  <param name="BII2-T10-R013" value="number(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:DuePayableAmount)"/>
  <param name="BII2-T10-R014" value="(//ram:IncludedCIILSupplyChainTradeLineItem)"/>
  <param name="BII2-T10-R015" value="((//ram:SpecifiedCIILSupplyChainTradeSettlement/ram:ApplicableCITradeTax/ram:CalculatedAmount) and //ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:TaxTotalAmount) or not(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:TaxTotalAmount)"/>
  <param name="BII2-T10-R017" value="(ram:AssociatedCIILDocumentLineDocument/ram:LineID)"/>
  <param name="BII2-T10-R018" value="(ram:SpecifiedCIILSupplyChainTradeDelivery/ram:BilledQuantity)"/>
  <param name="BII2-T10-R019" value="(ram:SpecifiedCIILSupplyChainTradeDelivery/ram:BilledQuantity/@unitCode)"/>
  <param name="BII2-T10-R020" value="number(ram:SpecifiedCIILSupplyChainTradeSettlement/ram:SpecifiedCIILTradeSettlementMonetarySummation/ram:LineTotalAmount)"/>
  <param name="BII2-T10-R021" value="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)"/>
  <param name="BII2-T10-R023" value="(ram:StartDateTime)"/>
  <param name="BII2-T10-R024" value="(ram:EndDateTime)"/>
  <param name="BII2-T10-R025" value="(ram:Reason)"/>
  <param name="BII2-T10-R026" value="(ram:TypeCode = 'VAT') or not(/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SubtotalCalculatedCITradeTax/ram:CalculatedAmount)"/>
  <param name="BII2-T10-R027" value="boolean(self::node()[ram:TypeCode = 'VAT']/ram:BasisAmount)"/>
  <param name="BII2-T10-R028" value="boolean(self::node()[ram:TypeCode = 'VAT']/ram:CalculatedAmount)"/>
  <param name="BII2-T10-R029" value="(ram:CategoryCode)"/>
  <param name="BII2-T10-R030" value="(ram:CalculatedRate) or not(ram:CategoryCode = 'S')"/>
  <param name="BII2-T10-R031" value="(ram:StartDateTime and ram:EndDateTime) and (number(translate(ram:StartDateTime,'-','')) &lt;= number(translate(ram:EndDateTime,'-','')))"/>
  <param name="BII2-T10-R032" value="(ram:SpecifiedCITradeProduct/ram:GlobalID/@schemeID) or not(ram:SpecifiedCITradeProduct/ram:GlobalID)"/>
  <param name="BII2-T10-R033" value="(ram:SpecifiedCITradeProduct/ram:DesignatedCIProductClassification/ram:SystemID) or not(ram:SpecifiedCITradeProduct/ram:DesignatedCIProductClassification)"/>
  <param name="BII2-T10-R034" value="number(ram:SpecifiedCIILSupplyChainTradeAgreement/ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0"/>
  <param name="BII2-T10-R035" value="number(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:GrandTotalAmount) &gt;= 0"/>
  <param name="BII2-T10-R037" value="number(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:DuePayableAmount) &gt;= 0"/>
  <param name="BII2-T10-R039" value="((ram:TypeCode = '31') and (ram:PayeePartyCICreditorFinancialAccount/ram:IBANID)) or (ram:TypeCode != '31')"/>
  <param name="BII2-T10-R040" value="false()"/>
  <param name="BII2-T10-R041" value="(ram:TypeCode)"/>
  <param name="BII2-T10-R042" value="false()"/>
  <param name="BII2-T10-R043" value="(ram:CategoryCITradeTax/ram:CategoryCode) and (/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SubtotalCalculatedCITradeTax/ram:CategoryCode = 'VAT')"/>
  <param name="BII2-T10-R044" value="(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:SpecifiedCITaxRegistration/ram:ID) or not(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SubtotalCalculatedCITradeTax/ram:TypeCode = 'VAT')"/>
  <param name="BII2-T10-R045" value="(ram:ExemptionReason) or not((ram:CategoryCode='E') or (ram:CategoryCode='AE'))"/>
  <param name="BII2-T10-R046" value="(ram:SpecifiedCIILSupplyChainTradeSettlement/ram:ApplicableCITradeTax/ram:CategoryCode) or not(//ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SubtotalCalculatedCITradeTax/ram:TypeCode='VAT')"/>
  <param name="BII2-T10-R047" value="(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:SpecifiedCITaxRegistration/ram:ID) or not(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SubtotalCalculatedCITradeTax/ram:CategoryCode = 'AE')"/>
  <param name="BII2-T10-R048" value="count(//ram:SubtotalCalculatedCITradeTax/ram:CategoryCode) = count(//ram:SubtotalCalculatedCITradeTax/ram:CategoryCode[. = 'AE']) or count(//ram:SubtotalCalculatedCITradeTax/ram:CategoryCode[. = 'AE']) = 0"/>
  <param name="BII2-T10-R049" value="(ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SubtotalCalculatedCITradeTax[ram:CategoryCode = 'AE']/ram:BasisAmount = ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SubtotalCalculatedCITradeTax[ram:CategoryCode = 'AE']/ram:BasisAmount)"/>
  <param name="BII2-T10-R050" value="(//ram:SpecifiedCIILSupplyChainTradeSettlement[ram:SpecifiedCITradeAllowanceCharge/ram:CategoryCITradeTax/ram:CategoryCode = 'AE']/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:TaxTotalAmount = 0) or not(//ram:SpecifiedCIILSupplyChainTradeSettlement/ram:SpecifiedCITradeAllowanceCharge/ram:CategoryCITradeTax/ram:CategoryCode = 'AE')"/>
  <param name="BII2-T10-R051" value="number(ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T10-R052" value="((ram:ChargeTotalAmount) and (ram:AllowanceTotalAmount) and (number(ram:TaxBasisTotalAmount) = (number(ram:LineTotalAmount) + number(ram:ChargeTotalAmount) - number(ram:AllowanceTotalAmount)))) or (not(ram:ChargeTotalAmount) and (ram:AllowanceTotalAmount) and (number(ram:TaxBasisTotalAmount) = number(ram:LineTotalAmount) - number(ram:AllowanceTotalAmount))) or ((ram:ChargeTotalAmount) and not(ram:AllowanceTotalAmount) and (number(ram:TaxBasisTotalAmount) = number(ram:LineTotalAmount) + number(ram:ChargeTotalAmount))) or (not(ram:ChargeTotalAmount) and not(ram:AllowanceTotalAmount) and (number(ram:TaxBasisTotalAmount) = number(ram:LineTotalAmount)))"/>
  <param name="BII2-T10-R053" value="((ram:RoundingAmount) and (number(ram:GrandTotalAmount) = number(ram:TaxBasisTotalAmount) + number(round(sum(/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:TaxTotalAmount) * 10 * 10) div 100) + number(ram:RoundingAmount))  or (number(ram:GrandTotalAmount) = number(ram:TaxBasisTotalAmount) + number(round(sum(/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:TaxTotalAmount) * 10 * 10) div 100)))"/>
  <param name="BII2-T10-R054" value="ram:AllowanceTotalAmount = (round(sum(/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;false&#34;]/ram:ActualAmount) * 10 * 10) div 100) or not(ram:AllowanceTotalAmount)"/>
  <param name="BII2-T10-R055" value="ram:ChargeTotalAmount = (round(sum(/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&#34;true&#34;]/ram:ActualAmount) * 10 * 10) div 100) or not(ram:ChargeTotalAmount)"/>
  <param name="BII2-T10-R056" value="(ram:TotalPrepaidAmount) and number(ram:DuePayableAmount) = (ram:GrandTotalAmount - ram:TotalPrepaidAmount) or (ram:DuePayableAmount = ram:TotalPrepaidAmount) "/>
  <param name="BII2-T10-R058" value="((//ram:TaxTotalAmount) and (round(sum(ram:SubtotalCalculatedCITradeTax/ram:BasisAmount) *10 * 10) div 100 = number(//ram:TaxBasisTotalAmount))) or  not((ram:TaxTotalAmount))"/>
  <param name="Payment_Means" value="//ram:SpecifiedCITradeSettlementPaymentMeans"/>
  <param name="VAT_category" value="//ram:SubtotalCalculatedCITradeTax"/>
  <param name="Invoice_Line" value="//ram:IncludedCIILSupplyChainTradeLineItem"/>
  <param name="Invoice_Period_Information" value="//ram:BillingCISpecifiedPeriod"/>
  <param name="Allowance_Charge" value="/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCITradeAllowanceCharge"/>
  <param name="Invoice" value="/rsm:CrossIndustryInvoice"/>
  <param name="Total_Invoice" value="//ram:SpecifiedCIIHTradeSettlementMonetarySummation"/>
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T10.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT10-CEFACT.sch?><pattern id="CodesT10">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="ram:CIIHExchangedDocument//ram:TypeCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 380 393 384 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T10-R001]-An Invoice MUST be coded with the InvoiceTypeCode code list UNCL D1001 BII2 subset</assert>
</rule>

<rule context="ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement//ram:InvoiceCurrencyCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T10-R002]-DocumentCurrencyCode MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="@currencyID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T10-R003]-currencyID MUST be coded using ISO