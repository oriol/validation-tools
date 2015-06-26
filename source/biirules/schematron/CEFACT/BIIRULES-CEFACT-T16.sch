<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T16 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T16" id="CEFACT-T16">
  <param name="BII2-T16-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T16-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T16-R003" value="(ram:HeaderCIDDHExchangedDocument/ram:ID)"/>
  <param name="BII2-T16-R004" value="(ram:HeaderCIDDHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T16-R005" value="(ram:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID)"/>
  <param name="BII2-T16-R006" value="(//ram:ShipFromCITradeParty)"/>
  <param name="BII2-T16-R007" value="(ram:Name) and (ram:ID)"/>
  <param name="BII2-T16-R008" value="(//ram:ShipToCITradeParty)"/>
  <param name="BII2-T16-R009" value="(ram:Name) and (ram:ID)"/>
  <param name="BII2-T16-R011" value="//ram:SpecifiedCIDDLLogisticsPackage/ram:ID"/>
  <param name="BII2-T16-R012" value="//ram:IncludedCIDDLSupplyChainTradeLineItem"/>
  <param name="BII2-T16-R013" value="//ram:AssociatedCIDDLDocumentLineDocument/ram:LineID"/>
  <param name="BII2-T16-R016" value="//ram:SpecifiedCITradeProduct/ram:Name or //ram:SpecifiedCITradeProduct/ram:SellerAssignedID or //ram:SpecifiedCITradeProduct/ram:GlobalID"/>
  <param name="BII2-T16-R017" value="//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity"/>
  <param name="BII2-T16-R018" value="(//ram:SpecifiedCITradeProduct/ram:GlobalID/@schemeID) or not(//ram:SpecifiedCITradeProduct/ram:GlobalID)"/>
  <param name="BII2-T16-R019" value="number(//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity) &gt;= 0"/>
  <param name="BII2-T16-R020" value="//ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity/@unitCode"/>
  <param name="BII2-T16-R021" value="false()"/>
  <param name="despatching_Party" value="//ram:ShipFromCITradeParty"/>
  <param name="Consignee_Party" value="//ram:ShipToCITradeParty"/>
  <param name="despatch_delivery_address" value="//ram:ShipToCITradeParty/ram:PostalCITradeAddress"/>
  <param name="despatched_shipment" value="//ram:SpecifiedCIDDLLogisticsPackage"/>
  <param name="despatch_advice_Line" value="//ram:IncludedCIDDLSupplyChainTradeLineItem"/>
  <param name="Item" value="/rsm:CrossIndustryDespatchAdvice"/>
  <param name="despatch_advice" value="/rsm:CrossIndustryDespatchAdvice"/>
</pattern>
