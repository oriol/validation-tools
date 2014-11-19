<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T59 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T59" id="UBL-T59">
  <param name="BII2-T59-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T59-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T59-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T59-R004" value="(cbc:ID)"/>
  <param name="BII2-T59-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T59-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T59-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T59-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T59-R009" value="(cac:DocumentResponse/cbc:ResponseCode)"/>
  <param name="BII2-T59-R010" value="(cac:DocumentReference/cbc:ID)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="catalogue_item_update_rejection" value="/ubl:ApplicationResponse"/>
</pattern>
