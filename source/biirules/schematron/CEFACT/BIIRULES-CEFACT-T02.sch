<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T02 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T02" id="CEFACT-T02">
  <param name="BII2-T02-R002" value="(ram:CIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T02-R003" value="(ram:CIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID)"/>
  <param name="BII2-T02-R005" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T02-R006" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T02-R007" value="//ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID"/>
  <param name="BII2-T02-R008" value="(ram:CIORHExchangedDocument/ram:ResponseReasonCode = true()) and not(ram:CIORHExchangedDocument/ram:IncludedCINote)"/>
  <param name="BII2-T02-R009" value="(ram:CIORHExchangedDocument/ram:ID)"/>
  <param name="BII2-T02-R010" value="(ram:CIORHExchangedDocument/ram:IssueDateTime)"/>
  <param name="Customer" value="//ram:BuyerCITradeParty"/>
  <param name="Order_Response" value="/rsm:CrossIndustryOrderResponse"/>
  <param name="Supplier" value="//ram:SellerCITradeParty"/>
</pattern>
