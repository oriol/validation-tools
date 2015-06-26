<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T04 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T04" id="CEFACT-T04">
  <param name="BII2-T04-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T04-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T04-R003" value="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)"/>
  <param name="BII2-T04-R004" value="(ram:CIORHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T04-R006" value="(ram:CIORHExchangedDocument/ram:ID)"/>
  <param name="BII2-T04-R007" value="(ram:Reason)"/>
  <param name="BII2-T04-R009" value="(//ram:CIOHSupplyChainTradeTransaction/ram:ApplicableCIOHSupplyChainTradeSettlement/ram:OrderCurrencyCode)"/>
  <param name="BII2-T04-R010" value="number(//ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity) &gt;= 0"/>
  <param name="BII2-T04-R011" value="number(//ram:NetPriceProductCITradePrice/ram:ChargeAmount) &gt;= 0"/>
  <param name="BII2-T04-R012" value="true"/>
  <param name="BII2-T04-R013" value="number(ram:LineTotalAmount) &gt;= 0"/>
  <param name="BII2-T04-R014" value="number(//ram:SpecifiedCIIHTradeSettlementMonetarySummation/ram:LineTotalAmount) = number(round(sum(//ram:IncludedCIILSupplyChainTradeLineItem/*/*/ram:LineTotalAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T04-R015" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&quot;false&quot;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:AllowanceTotalAmount)"/>
  <param name="BII2-T04-R016" value="(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  and //ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount  = (round(sum(//SpecifiedCITradeAllowanceCharge[ram:ChargeIndicator=&quot;true&quot;]/ram:ActualAmount) * 10 * 10) div 100)) or not(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:ChargeTotalAmount)"/>
  <param name="BII2-T04-R017" value="true"/>
  <param name="BII2-T04-R018" value="number(//ram:SpecifiedCIOHTradeSettlementMonetarySummation/ram:TaxTotalAmount) =  number(round(sum(//ram:SpecifiedCIOLSupplyChainTradeSettlement/*/ram:CalculatedAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T04-R019" value="(ram:ID)"/>
  <param name="BII2-T04-R020" value="(ram:Description)"/>
  <param name="BII2-T04-R021" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T04-R022" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T04-R023" value="(ram:PostalCITradeAddress/ram:LineOne) and (ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)"/>
  <param name="BII2-T04-R024" value="(ram:PostalCITradeAddress/ram:LineOne) and (ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)"/>
  <param name="BII2-T04-R025" value="(ram:PostalCITradeAddress/ram:CityName) and (ram:PostalCITradeAddress/ram:PostcodeCode) and (ram:PostalCITradeAddress/ram:CountryID)"/>
  <param name="BII2-T04-R026" value="(ram:GlobalID/@schemeID)"/>
  <param name="BII2-T04-R027" value="(ram:DesignatedCIProductClassification/ram:ClassCode/@listID)"/>
  <param name="BII2-T04-R029" value="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity)"/>
  <param name="BII2-T04-R030" value="(ram:SpecifiedCIOLSupplyChainTradeDelivery/ram:RequestedQuantity/@unitCode)"/>
  <param name="BII2-T04-R031" value="(ram:SpecifiedCITradeProduct/ram:GlobalID) or (ram:SpecifiedCITradeProduct/ram:SellerAssignedID) or (ram:SpecifiedCITradeProduct/ram:Name)"/>
  <param name="BII2-T04-R032" value="(//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID)"/>
  <param name="counter_offer_line" value="//ram:IncludedCIOLSupplyChainTradeLineItem"/>
  <param name="counter_offer" value="/rsm:CrossIndustryOrderChange"/>
  <param name="Allowance_and_Charge" value="//ram:SpecifiedCITradeAllowanceCharge"/>
  <param name="Expected_totals" value="//ram:SpecifiedCIOHTradeSettlementMonetarySummation"/>
  <param name="Item_property" value="//ram:ApplicableCIOHSupplyChainTradeSettlement/ram:IncludedCIOLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic"/>
  <param name="Seller" value="//ram:SellerCITradeParty"/>
  <param name="Buyer" value="//ram:BuyerCITradeParty"/>
  <param name="Delivery_Address" value="//ram:DeliveryCITradeParty"/>
  <param name="Item" value="//ram:SpecifiedCITradeProduct"/>
</pattern>
