<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T55 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T55" id="UBL-T55">
  <param name="BII2-T55-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T55-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T55-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T55-R004" value="(cbc:ID)"/>
  <param name="BII2-T55-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T55-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T55-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T55-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T55-R009" value="(cac:DocumentResponse/cbc:ResponseCode)"/>
  <param name="BII2-T55-R010" value="(cac:DocumentReference/cbc:ID)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="catalogue_request_rejection" value="/ubl:ApplicationResponse"/>
</pattern>
