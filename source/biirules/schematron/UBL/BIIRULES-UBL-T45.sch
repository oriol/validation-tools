<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T45 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T45" id="UBL-T45">
  <param name="BII2-T45-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T45-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T45-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T45-R004" value="(cbc:ContractFolderID)"/>
  <param name="BII2-T45-R005" value="(cbc:ID)"/>
  <param name="BII2-T45-R006" value="(cac:SenderParty)"/>
  <param name="BII2-T45-R007" value="(cac:ReceiverParty)"/>
  <param name="BII2-T45-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T45-R009" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T45-R010" value="(cac:TenderDocumentReference)"/>
  <param name="BII2-T45-R011" value="(cbc:ID) and (cbc:DocumentTypeCode)"/>
  <param name="BII2-T45-R012" value="(cbc:RegisteredDate and cbc:RegisteredTime)"/>
  <param name="Contracting_authority" value="//cac:SenderParty"/>
  <param name="Tenderer" value="//cac:ReceiverParty"/>
  <param name="tender_reception_notification" value="/ubl:TenderReceipt"/>
  <param name="Document_Reference" value="//cac:TenderDocumentReference"/>
</pattern>
