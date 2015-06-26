<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T40 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T40" id="UBL-T40">
  <param name="BII2-T40-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T40-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T40-R003" value="(cbc:ID)"/>
  <param name="BII2-T40-R004" value="(cbc:ContractFolderID)"/>
  <param name="BII2-T40-R005" value="(cbc:IssueDate)"/>
  <param name="BII2-T40-R006" value="(cac:TenderingProcess)"/>
  <param name="BII2-T40-R007" value="(cac:ContractingParty)"/>
  <param name="BII2-T40-R008" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T40-R010" value="(cac:ProcurementProject/cbc:Description)"/>
  <param name="BII2-T40-R013" value="(cbc:ProcurementTypeCode)"/>
  <param name="BII2-T40-R016" value="(cac:RequiredCommodityClassification/cbc:ItemClassificationCode[@listID = 'CPV'])"/>
  <param name="BII2-T40-R018" value="(cbc:ID)"/>
  <param name="BII2-T40-R022" value="(cac:ProcurementProject/cac:RealizedLocation)"/>
  <param name="BII2-T40-R023" value="(cac:ProcurementProject/cac:PlannedPeriod)"/>
  <param name="BII2-T40-R026" value="(cac:TenderingTerms/cac:AppealTerms)"/>
  <param name="BII2-T40-R027" value="(cac:TenderingProcess/cac:TenderSubmissionDeadlinePeriod/cbc:EndDate)"/>
  <param name="BII2-T40-R029" value="(cac:TenderingTerms/cbc:AwardingMethodTypeCode)"/>
  <param name="BII2-T40-R030" value="(cac:TenderingTerms/cbc:AwardingMethodTypeCode = '2') and (cac:TenderingTerms/cac:AwardingTerms/cac:AwardingCriteria)"/>
  <param name="BII2-T40-R032" value="((cac:TenderingProcess/cbc:ProcedureCode = 3) or (cac:TenderingProcess/cbc:ProcedureCode = 6)) and (cac:ProcessJustification/cbc:ProcessReason) "/>
  <param name="BII2-T40-R033" value="(//cbc:ProcedureCode)"/>
  <param name="BII2-T40-R034" value="false"/>
  <param name="Call_for_tenders" value="/ubl:CallForTenders"/>
  <param name="contracting_authority" value="//cac:ContractingParty"/>
  <param name="Procurement_Project" value="//cac:ProcurementProject"/>
  <param name="Requested_deliverable" value="//cac:RequestForTenderLine"/>
  <param name="Contract_Award_Criterion" value="//cac:AwardingCriteria"/>
  <param name="Lot" value="//cac:ProcurementProjectLot"/>
</pattern>
