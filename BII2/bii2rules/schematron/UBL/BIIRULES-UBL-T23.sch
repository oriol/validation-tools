<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T23 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T23" id="UBL-T23">
  <param name="BII2-T23-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T23-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T23-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T23-R004" value="(cbc:ID)"/>
  <param name="BII2-T23-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T23-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T23-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T23-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T23-R010" value="(cac:DocumentReference)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="Catalogue_Delete_Confirmation" value="/ubl:ApplicationResponse"/>
</pattern>
