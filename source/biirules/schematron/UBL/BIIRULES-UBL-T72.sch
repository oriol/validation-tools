<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T72 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T72" id="UBL-T72">
  <param name="BII2-T72-R001" value="(cbc:ProfileID)"/>
  <param name="BII2-T72-R002" value="(cbc:CustomizationID)"/>
  <param name="BII2-T72-R003" value="(cbc:IssueDate)"/>
  <param name="BII2-T72-R004" value="(cbc:ID)"/>
  <param name="BII2-T72-R005" value="(cac:SenderParty)"/>
  <param name="BII2-T72-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T72-R008" value="(cac:ReceiverParty)"/>
  <param name="BII2-T72-R009" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="catalogue_subscription_request" value="/ubl:ApplicationResponse"/>
</pattern>
