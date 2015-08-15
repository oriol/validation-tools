<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T44 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T44" id="CEFACT-T44">
  <param name="BII2-T44-R001" value="false()"/>
  <param name="BII2-T44-R002" value="false()"/>
  <param name="BII2-T44-R003" value="(ram:TenderDocument/ram:ID)"/>
  <param name="BII2-T44-R004" value="false()"/>
  <param name="BII2-T44-R005" value="false()"/>
  <param name="BII2-T44-R006" value="false()"/>
  <param name="BII2-T44-R007" value="(ram:ProcuringOrganization)"/>
  <param name="BII2-T44-R008" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T44-R010" value="(ram:TendererOrganization)"/>
  <param name="BII2-T44-R011" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T44-R013" value="(ram:SpecificationReference)"/>
  <param name="BII2-T44-R014" value="false()"/>
  <param name="BII2-T44-R015" value="//ram:ProcuringProject/ram:TotalBudgetAmount"/>
  <param name="Contracting_Authority" value="//ram:ProcuringOrganization"/>
  <param name="tender" value="/rsm:Tender"/>
  <param name="Economic_operator" value="//ram:TendererOrganization"/>
  <param name="Deliverable_offered" value="//ram:TenderingDeliverable"/>
  <param name="Awarding_criterion_response" value="/rsm:Tender"/>
</pattern>
