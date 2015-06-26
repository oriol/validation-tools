<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T41 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T41" id="UBL-T41">
  <param name="BII2-T41-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T41-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T41-R003" value="(cbc:ID)"/>
  <param name="BII2-T41-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T41-R005" value="(cbc:IssueTime)"/>
  <param name="BII2-T41-R006" value="(cbc:ContractFolderID)"/>
  <param name="BII2-T41-R007" value="(cac:ContractingParty)"/>
  <param name="BII2-T41-R008" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T41-R010" value="(cac:TendererPartyQualification/cac:MainQualifyingParty)"/>
  <param name="BII2-T41-R011" value="(cac:MainQualifyingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName) and ((cac:AdditionalQualifyingParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName)or not(cac:AdditionalQualifyingParty))"/>
  <param name="BII2-T41-R013" value="false"/>
  <param name="BII2-T41-R014" value="false"/>
  <param name="BII2-T41-R015" value="(cac:MainQualifyingParty/cac:Party/cac:Person/cbc:FamilyName) or not((cac:MainQualifyingParty/cac:Party/cac:Person))"/>
  <param name="Contracting_Authority" value="//cac:ContractingParty"/>
  <param name="qualification_document" value="/ubl:TendererQualification"/>
  <param name="Economic_operator" value="//cac:TendererPartyQualification"/>
</pattern>
