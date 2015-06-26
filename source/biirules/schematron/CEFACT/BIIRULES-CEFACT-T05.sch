<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T05 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T05" id="CEFACT-T05">
  <param name="BII2-T05-R001" value="(//ram:CIOCHExchangedDocument/ram:ID)"/>
  <param name="BII2-T05-R002" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T05-R003" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T05-R004" value="//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID"/>
  <param name="BII2-T05-R005" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T05-R006" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T05-R008" value="(//ram:CIOCHExchangedDocument/ram:IssueDateTime)"/>
  <param name="Customer" value="//ram:BuyerCITradeParty"/>
  <param name="Counter_Offer_Response" value="/rsm:CrossIndustryOrderChange"/>
  <param name="Supplier" value="//ram:SellerCITradeParty"/>
</pattern>
