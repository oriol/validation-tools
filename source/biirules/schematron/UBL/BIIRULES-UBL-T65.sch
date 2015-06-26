<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T65 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T65" id="UBL-T65">
  <param name="BII2-T65-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T65-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T65-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T65-R004" value="(cbc:ID)"/>
  <param name="BII2-T65-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T65-R006" value="(cac:ReceiverParty)"/>
  <param name="BII2-T65-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T65-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T65-R010" value="(cac:DocumentReference)"/>
  <param name="BII2-T65-R011" value="false"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="notice_publication_response" value="/ubl:ApplicationResponse"/>
</pattern>
