<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T44 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T44" id="UBL-T44">
  <param name="BII2-T44-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T44-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T44-R003" value="(cbc:ID)"/>
  <param name="BII2-T44-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T44-R005" value="(cbc:IssueTime)"/>
  <param name="BII2-T44-R006" value="(cbc:ContractFolderID)"/>
  <param name="BII2-T44-R007" value="(cac:ContractingParty)"/>
  <param name="BII2-T44-R008" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T44-R010" value="(cac:TendererParty)"/>
  <param name="BII2-T44-R011" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T44-R013" value="(cac:TenderLine/cbc:ID)"/>
  <param name="BII2-T44-R014" value="(cac:AwardingCriteriaID)"/>
  <param name="BII2-T44-R015" value="//cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount"/>
  <param name="Contracting_Authority" value="//cac:ContractingParty"/>
  <param name="tender" value="/ubl:Tender"/>
  <param name="Economic_operator" value="//cac:TendererParty"/>
  <param name="Deliverable_offered" value="//cac:TenderedProject"/>
  <param name="Awarding_criterion_response" value="//cac:AwardingCriteriaResponse"/>
</pattern>
