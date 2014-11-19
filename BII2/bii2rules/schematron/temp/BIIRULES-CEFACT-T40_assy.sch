<?xml version="1.0" encoding="utf-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:ata:standard:InvitationToTender:8" queryBinding="xslt2">
  <title>BIIRULES  T40 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:ata:standard:InvitationToTender:8"/>
  <phase id="BIIRULEST40_phase">
    <active pattern="CEFACT-T40"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT40"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T40 was here-->
  
  
  <!--Start pattern based on abstract T40--><pattern id="CEFACT-T40">
  <rule context="/rsm:InvitationToTender">
    <assert test="false()" flag="fatal" id="BII2-T40-R001">[BII2-T40-R001]-A call for tenders MUST have a customization identifier</assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R002">[BII2-T40-R002]-A call for tenders MUST have a profile identifier</assert>
    <assert test="//ram:TenderInvitationDocument/ram:ID" flag="fatal" id="BII2-T40-R003">[BII2-T40-R003]-A call for tenders MUST have a call for tender identifier</assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R004">[BII2-T40-R004]-A call for tenders MUST have a contract folder identifier</assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R005">[BII2-T40-R005]-A call for tenders MUST have a document issue date</assert>
    <assert test="(ram:TenderTenderingProcess)" flag="fatal" id="BII2-T40-R006">[BII2-T40-R006]-A call for tenders MUST specifiy the tendering process to be used to award the contract</assert>
    <assert test="(ram:ProcuringOrganization)" flag="fatal" id="BII2-T40-R007">[BII2-T40-R007]-A call for tenders MUST have a contracting authority purchasing the goods, services or works</assert>
    <assert test="(ram:ProcuringProject/ram:Description)" flag="fatal" id="BII2-T40-R010">[BII2-T40-R010]-A call for tenders MUST have a procurement project identifying the object of the procurement.</assert>
    <assert test="(ram:ProcuringProject/ram:PhysicalProjectActualizationLocation)" flag="fatal" id="BII2-T40-R022">[BII2-T40-R022]-The call for tenders MUST contain information about the place where the works, services or goods will be delivered</assert>
    <assert test="(ram:ProcuringProject/ram:PlanTenderingPeriod)" flag="fatal" id="BII2-T40-R023">[BII2-T40-R023]-The call for tenders MUST contain information about the period of execution of the contract, or date of delivery</assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R026">[BII2-T40-R026]-The call for tenders MUST contain information about the procedure for appeal.</assert>
    <assert test="(//ram:TenderTenderingProcess/ram:AcceptanceTenderingPeriod/ram:EndDateTime)" flag="fatal" id="BII2-T40-R027">[BII2-T40-R027]-The call for tenders MUST include information about the deadline for the submission of tenders</assert>
    <assert test="(ram:TenderTenderingProcess/ram:JudgingCriteriaCode)" flag="fatal" id="BII2-T40-R029">[BII2-T40-R029]-The contracting authority MUST specify if the contract will be awarded based on lowest price or economically most advantageous tender</assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R030">[BII2-T40-R030]-If the contract has to be awarded based on economically most advantageous tender it MUST include information about awarding criteria </assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R032">[BII2-T40-R032]-A procedure justification MUST be present when the procedure type code is accelerated.</assert>
    <assert test="(//ram:TenderingProcedureCode)" flag="fatal" id="BII2-T40-R033">[BII2-T40-R033]-A call for tenders MUST include information about of the type of tendering procedure (open/restricted/negotiated/competitive dialogue).</assert>
  </rule>
  <rule context="//ram:ProcuringOrganization">
    <assert test="(ram:Name) or (ram:ID)" flag="fatal" id="BII2-T40-R008">[BII2-T40-R008]-A contracting authority MUST have the contracting authority party name or a contracting authority party identifier</assert>
  </rule>
  <rule context="//ram:ProcuringProject">
    <assert test="(ram:TypeCode)" flag="fatal" id="BII2-T40-R013">[BII2-T40-R013]-A procurement project type MUST be present </assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R016">[BII2-T40-R016]-The procurement project MUST contain at least one classification code using the CPV classification system</assert>
    <assert test="false()" flag="fatal" id="BII2-T40-R034">[BII2-T40-R034]-The call for tenders MUST include information about the estimated total value, calculated according with Directive 2004/18/EC</assert>
  </rule>
  <rule context="//ram:TenderBillOfQuantities">
    <assert test="(ram:ID)" flag="warning" id="BII2-T40-R018">[BII2-T40-R018]-Each requested deliverable SHOULD contain an identifier</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT40">



</pattern>
</schema>