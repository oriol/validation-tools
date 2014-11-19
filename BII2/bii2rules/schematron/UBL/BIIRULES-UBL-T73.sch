<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T73 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T73" id="UBL-T73">
  <param name="BII2-T73-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T73-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T73-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T73-R004" value="(cbc:ID)"/>
  <param name="BII2-T73-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T73-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T73-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T73-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T73-R009" value="(cac:Response)"/>
  <param name="BII2-T73-R010" value="(cbc:DocumentReference)"/>
  <param name="BII2-T73-R012" value="(cbc:ID) and (cbc:DocumentTypeCode)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="catalogue_subscription_response" value="/ubl:ApplicationResponse"/>
  <param name="Document_reference" value="//cac:DocumentReference"/>
</pattern>
