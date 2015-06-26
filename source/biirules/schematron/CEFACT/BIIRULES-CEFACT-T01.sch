<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T01 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T01" id="CEFACT-T01">
  <param name="BII2-T01-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T01-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T01-R003" value="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)"/>
  <param name="BII2-T01-R004" value="(ram:CIIHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T01-R005" value="(ram:CIIHExchangedDocument/ram:EffectiveCISpecifiedPeriod/ram:EndDateTime)"/>
  <param name="BII2-T01-R006" value="(ram:CIIHExchangedDocument/ram:ID)"/>
  <param name="BII2-T01-R007" value="(ram:Reason)"/>
  <param name="BII2-T01-R009" value="(ram:CIOHSupplyChainTradeTransaction/ram:ApplicableCIOHSupplyChainTradeSettlement/ram:OrderCurrencyCode)"/>
  <param name="BII2-T01-R010" value="number(//ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity) &gt;= 0"/>
  <param name="BII2-T01-R011" value="number(//ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0"/>
  <param name="BII2-T01-R012" value="false"/>
  <param name="BII2-T01-R013" value="number(ram:LineTotalAmount) &gt;= 0"/>
  <param name="BII2-T01-R014" value="number(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T01-R015" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&quot;false&quot;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount)"/>
  <param name="BII2-T01-R016" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&quot;true&quot;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount)"/>
  <param name="BII2-T01-R017" value="false"/>
  <param name="BII2-T01-R018" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount and number(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount) =  number(round(sum(//ram:SpecifiedCIOLSupplyChainTradeSettlement/*/ram:CalculatedAmount) * 10 * 10) div 100)) or not (//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount)"/>
  <param name="BII2-T01-R019" value="(ram:ID)"/>
  <param name="BII2-T01-R020" value="(ram:Description)"/>
  <param name="BII2-T01-R021" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T01-R022" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T01-R029" value="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity)"/>
  <param name="BII2-T01-R030" value="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity/@unitCode)"/>
  <param name="BII2-T01-R031" value="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)"/>
  <param name="Order_Line" value="//ram:IncludedCIOLSupplyChainTradeLineItem"/>
  <param name="Order" value="/rsm:CrossIndustryOrder"/>
  <param name="Allowance_Charges" value="//ram:SpecifiedCITradeAllowanceCharge"/>
  <param name="Expected_totals" value="//ram:SpecifiedCIOHTradeSettlementMonetarySummation"/>
  <param name="Item_property" value="//ram:ApplicableCIOHSupplyChainTradeSettlement/ram:IncludedCIOLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic"/>
  <param name="Seller" value="//ram:SellerCITradeParty"/>
  <param name="Buyer" value="//ram:BuyerCITradeParty"/>
  <param name="Item" value="//ram:SpecifiedCITradeProduct"/>
</pattern>
