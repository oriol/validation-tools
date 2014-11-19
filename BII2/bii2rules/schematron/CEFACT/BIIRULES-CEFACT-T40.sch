<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T40 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T40" id="CEFACT-T40">
  <param name="BII2-T40-R001" value="false()"/>
  <param name="BII2-T40-R002" value="false()"/>
  <param name="BII2-T40-R003" value="//ram:TenderInvitationDocument/ram:ID"/>
  <param name="BII2-T40-R004" value="false()"/>
  <param name="BII2-T40-R005" value="false()"/>
  <param name="BII2-T40-R006" value="(ram:TenderTenderingProcess)"/>
  <param name="BII2-T40-R007" value="(ram:ProcuringOrganization)"/>
  <param name="BII2-T40-R008" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T40-R010" value="(ram:ProcuringProject/ram:Description)"/>
  <param name="BII2-T40-R013" value="(ram:TypeCode)"/>
  <param name="BII2-T40-R016" value="false()"/>
  <param name="BII2-T40-R018" value="(ram:ID)"/>
  <param name="BII2-T40-R022" value="(ram:ProcuringProject/ram:PhysicalProjectActualizationLocation)"/>
  <param name="BII2-T40-R023" value="(ram:ProcuringProject/ram:PlanTenderingPeriod)"/>
  <param name="BII2-T40-R026" value="false()"/>
  <param name="BII2-T40-R027" value="(//ram:TenderTenderingProcess/ram:AcceptanceTenderingPeriod/ram:EndDateTime)"/>
  <param name="BII2-T40-R029" value="(ram:TenderTenderingProcess/ram:JudgingCriteriaCode)"/>
  <param name="BII2-T40-R030" value="false()"/>
  <param name="BII2-T40-R032" value="false()"/>
  <param name="BII2-T40-R033" value="(//ram:TenderingProcedureCode)"/>
  <param name="BII2-T40-R034" value="false()"/>
  <param name="Call_for_tenders" value="/rsm:InvitationToTender"/>
  <param name="contracting_authority" value="//ram:ProcuringOrganization"/>
  <param name="Procurement_Project" value="//ram:ProcuringProject"/>
  <param name="Requested_deliverable" value="//ram:TenderBillOfQuantities"/>
  <param name="Contract_Award_Criterion" value="/rsm:InvitationToTender"/>
  <param name="Lot" value="/rsm:InvitationToTender"/>
</pattern>
