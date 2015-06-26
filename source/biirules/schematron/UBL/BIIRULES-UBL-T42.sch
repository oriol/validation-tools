<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T42 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T42" id="UBL-T42">
  <param name="BIIRULE-T42-R001" value="(cbc:ProfileID)"/>
  <param name="BIIRULE-T42-R002" value="(cbc:CustomizationID)"/>
  <param name="BIIRULE-T42-R003" value="(cbc:IssueDate)"/>
  <param name="BIIRULE-T42-R004" value="(//cac:ResolutionDocumentReference/cbc:ID)"/>
  <param name="BIIRULE-T42-R005" value="(cac:SenderParty)"/>
  <param name="BIIRULE-T42-R006" value="(cac:ReceiverParty)"/>
  <param name="BIIRULE-T42-R007" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T42-R008" value="(cac:PartyName/cbc:Name) or (cac:PartyIdentification/cbc:ID)"/>
  <param name="BIIRULE-T42-R010" value="(cbc:ID)"/>
  <param name="BIIRULE-T42-R012" value="(cac:ResolutionDocumentReference/cbc:ID)"/>
  <param name="BIIRULE-T42-R013" value="false"/>
  <param name="Sending_Party" value="//cac:SenderParty"/>
  <param name="Receiving_Party" value="//cac:ReceiverParty"/>
  <param name="qualification_receipt_notification" value="/ubl:TendererQualificationResponse"/>
  <param name="Document_reference" value="//cac:DocumentReference"/>
</pattern>
