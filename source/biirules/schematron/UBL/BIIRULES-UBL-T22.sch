<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T22 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T22" id="UBL-T22">
  <param name="BIIRULE-T22-R001" value="(cbc:ProfileID)"/>
  <param name="BIIRULE-T22-R002" value="(cbc:CustomizationID)"/>
  <param name="BIIRULE-T22-R003" value="(cbc:IssueDate)"/>
  <param name="BIIRULE-T22-R004" value="(cbc:ID)"/>
  <param name="BIIRULE-T22-R005" value="(cac:SenderParty)"/>
  <param name="BIIRULE-T22-R006" value="(cac:ReceiverParty)"/>
  <param name="BIIRULE-T22-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T22-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T22-R010" value="(cac:DocumentReference)"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="Catalogue_Delete_Request" value="/ubl:ApplicationResponse"/>
</pattern>
