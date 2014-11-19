<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T76 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T76" id="CEFACT-T76">
  <param name="BII2-T76-R001" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T76-R002" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T76-R003" value="(ram:AssociatedCIOLDocumentLineDocument/ram:LineID)"/>
  <param name="BII2-T76-R004" value="(ram:CIORHExchangedDocument/ram:IssueDateTime)"/>
  <param name="BII2-T76-R006" value="(ram:CIORHExchangedDocument/ram:ID)"/>
  <param name="BII2-T76-R021" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T76-R022" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T76-R032" value="(//ram:ApplicableCIOHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID)"/>
  <param name="BII2-T76-R033" value="(ram:CIORHExchangedDocument/ram:ResponseReasonCode)"/>
  <param name="BII2-T76-R034" value="//ram:BuyerOrderReferencedCIReferencedDocument/ram:LineID"/>
  <param name="order_response_line" value="//ram:IncludedCIOLSupplyChainTradeLineItem"/>
  <param name="order_response" value="/rsm:CrossIndustryOrderChange"/>
  <param name="Buyer" value="//ram:BuyerCITradeParty"/>
  <param name="Seller" value="//ram:SellerCITradeParty"/>
</pattern>
