<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T41 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T41" id="CEFACT-T41">
  <param name="BII2-T41-R001" value="false()"/>
  <param name="BII2-T41-R002" value="false()"/>
  <param name="BII2-T41-R003" value="(ram:QualificationApplicationDocument/ram:ID)"/>
  <param name="BII2-T41-R004" value="(ram:QualificationApplicationDocument/ram:SubmissionDateTime)"/>
  <param name="BII2-T41-R005" value="(ram:QualificationApplicationDocument/ram:SubmissionDateTime)"/>
  <param name="BII2-T41-R006" value="false()"/>
  <param name="BII2-T41-R007" value="(ram:ProcuringOrganization)"/>
  <param name="BII2-T41-R008" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T41-R010" value="(ram:TendererOrganization)"/>
  <param name="BII2-T41-R011" value="(ram:Name)"/>
  <param name="BII2-T41-R013" value="false()"/>
  <param name="BII2-T41-R014" value="false()"/>
  <param name="BII2-T41-R015" value="false()"/>
  <param name="Contracting_Authority" value="//ram:ProcuringOrganization"/>
  <param name="qualification_document" value="/rsm:QualificationApplication"/>
  <param name="Economic_operator" value="//ram:TendererOrganization"/>
</pattern>
