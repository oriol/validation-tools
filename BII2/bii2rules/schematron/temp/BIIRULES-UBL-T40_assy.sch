<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CallForTenders-2" queryBinding="xslt2">
  <title>BIIRULES  T40 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CallForTenders-2"/>
  <phase id="BIIRULEST40_phase">
    <active pattern="UBL-T40"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT40"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T40 was here-->
  
  
  <!--Start pattern based on abstract T40--><pattern id="UBL-T40">
  <rule context="/ubl:CallForTenders">
    <assert test="(cbc:CustomizationID)" flag="fatal" id="BII2-T40-R001">[BII2-T40-R001]-A call for tenders MUST have a customization identifier</assert>
    <assert test="(cbc:ProfileID)" flag="fatal" id="BII2-T40-R002">[BII2-T40-R002]-A call for tenders MUST have a profile identifier</assert>
    <assert test="(cbc:ID)" flag="fatal" id="BII2-T40-R003">[BII2-T40-R003]-A call for tenders MUST have a call for tender identifier</assert>
    <assert test="(cbc:ContractFolderID)" flag="fatal" id="BII2-T40-R004">[BII2-T40-R004]-A call for tenders MUST have a contract folder identifier</assert>
    <assert test="(cbc:IssueDate)" flag="fatal" id="BII2-T40-R005">[BII2-T40-R005]-A call for tenders MUST have a document issue date</assert>
    <assert test="(cac:TenderingProcess)" flag="fatal" id="BII2-T40-R006">[BII2-T40-R006]-A call for tenders MUST specifiy the tendering process to be used to award the contract</assert>
    <assert test="(cac:ContractingParty)" flag="fatal" id="BII2-T40-R007">[BII2-T40-R007]-A call for tenders MUST have a contracting authority purchasing the goods, services or works</assert>
    <assert test="(cac:ProcurementProject/cbc:Description)" flag="fatal" id="BII2-T40-R010">[BII2-T40-R010]-A call for tenders MUST have a procurement project identifying the object of the procurement.</assert>
    <assert test="(cac:ProcurementProject/cac:RealizedLocation)" flag="fatal" id="BII2-T40-R022">[BII2-T40-R022]-The call for tenders MUST contain information about the place where the works, services or goods will be delivered</assert>
    <assert test="(cac:ProcurementProject/cac:PlannedPeriod)" flag="fatal" id="BII2-T40-R023">[BII2-T40-R023]-The call for tenders MUST contain information about the period of execution of the contract, or date of delivery</assert>
    <assert test="(cac:TenderingTerms/cac:AppealTerms)" flag="fatal" id="BII2-T40-R026">[BII2-T40-R026]-The call for tenders MUST contain information about the procedure for appeal.</assert>
    <assert test="(cac:TenderingProcess/cac:TenderSubmissionDeadlinePeriod/cbc:EndDate)" flag="fatal" id="BII2-T40-R027">[BII2-T40-R027]-The call for tenders MUST include information about the deadline for the submission of tenders</assert>
    <assert test="(cac:TenderingTerms/cbc:AwardingMethodTypeCode)" flag="fatal" id="BII2-T40-R029">[BII2-T40-R029]-The contracting authority MUST specify if the contract will be awarded based on lowest price or economically most advantageous tender</assert>
    <assert test="(cac:TenderingTerms/cbc:AwardingMethodTypeCode = '2') and (cac:TenderingTerms/cac:AwardingTerms/cac:AwardingCriteria)" flag="fatal" id="BII2-T40-R030">[BII2-T40-R030]-If the contract has to be awarded based on economically most advantageous tender it MUST include information about awarding criteria </assert>
    <assert test="((cac:TenderingProcess/cbc:ProcedureCode = 3) or (cac:TenderingProcess/cbc:ProcedureCode = 6)) and (cac:ProcessJustification/cbc:ProcessReason) " flag="fatal" id="BII2-T40-R032">[BII2-T40-R032]-A procedure justification MUST be present when the procedure type code is accelerated.</assert>
    <assert test="(//cbc:ProcedureCode)" flag="fatal" id="BII2-T40-R033">[BII2-T40-R033]-A call for tenders MUST include information about of the type of tendering procedure (open/restricted/negotiated/competitive dialogue).</assert>
  </rule>
  <rule context="//cac:ContractingParty">
    <assert test="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)" flag="fatal" id="BII2-T40-R008">[BII2-T40-R008]-A contracting authority MUST have the contracting authority party name or a contracting authority party identifier</assert>
  </rule>
  <rule context="//cac:ProcurementProject">
    <assert test="(cbc:ProcurementTypeCode)" flag="fatal" id="BII2-T40-R013">[BII2-T40-R013]-A procurement project type MUST be present </assert>
    <assert test="(cac:RequiredCommodityClassification/cbc:ItemClassificationCode[@listID = 'CPV'])" flag="fatal" id="BII2-T40-R016">[BII2-T40-R016]-The procurement project MUST contain at least one classification code using the CPV classification system</assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R034">[BII2-T40-R034]-The call for tenders MUST include information about the estimated total value, calculated according with Directive 2004/18/EC</assert>
  </rule>
  <rule context="//cac:RequestForTenderLine">
    <assert test="(cbc:ID)" flag="warning" id="BII2-T40-R018">[BII2-T40-R018]-Each requested deliverable SHOULD contain an identifier</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT40">



</pattern>
</schema>