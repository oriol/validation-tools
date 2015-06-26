<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T10 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T10" id="CEFACT-T10">
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
  <param name="BII2-T10-R054" value="ram:AllowanceTotalAmount = (round(sum(/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&quot;false&quot;]/ram:ActualAmount) * 10 * 10) div 100) or not(ram:AllowanceTotalAmount)"/>
  <param name="BII2-T10-R055" value="ram:ChargeTotalAmount = (round(sum(/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&quot;true&quot;]/ram:ActualAmount) * 10 * 10) div 100) or not(ram:ChargeTotalAmount)"/>
  <param name="BII2-T10-R056" value="(ram:TotalPrepaidAmount) and number(ram:DuePayableAmount) = (ram:GrandTotalAmount - ram:TotalPrepaidAmount) or (ram:DuePayableAmount = ram:TotalPrepaidAmount) "/>
  <param name="BII2-T10-R058" value="((//ram:TaxTotalAmount) and (round(sum(ram:SubtotalCalculatedCITradeTax/ram:BasisAmount) *10 * 10) div 100 = number(//ram:TaxBasisTotalAmount))) or  not((ram:TaxTotalAmount))"/>
  <param name="Payment_Means" value="//ram:SpecifiedCITradeSettlementPaymentMeans"/>
  <param name="VAT_category" value="//ram:SubtotalCalculatedCITradeTax"/>
  <param name="Invoice_Line" value="//ram:IncludedCIILSupplyChainTradeLineItem"/>
  <param name="Invoice_Period_Information" value="//ram:BillingCISpecifiedPeriod"/>
  <param name="Allowance_Charge" value="/rsm:CrossIndustryInvoice/ram:CIIHSupplyChainTradeTransaction/ram:ApplicableCIIHSupplyChainTradeSettlement/ram:SpecifiedCITradeAllowanceCharge"/>
  <param name="Invoice" value="/rsm:CrossIndustryInvoice"/>
  <param name="Total_Invoice" value="//ram:SpecifiedCIIHTradeSettlementMonetarySummation"/>
</pattern>
