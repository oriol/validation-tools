<?xml version="1.0" encoding="UTF-8"?><!-- 

        	CEFACT syntax binding to the T40   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:ata:standard:InvitationToTender:8" queryBinding="xslt2">
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
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T40.sch?><pattern abstract="true" id="T40">
  <rule context="$Call_for_tenders">
    <assert test="$BII2-T40-R001" flag="fatal" id="BII2-T40-R001">[BII2-T40-R001]-A call for tenders MUST have a customization identifier</assert>
    <assert test="$BII2-T40-R002" flag="fatal" id="BII2-T40-R002">[BII2-T40-R002]-A call for tenders MUST have a profile identifier</assert>
    <assert test="$BII2-T40-R003" flag="fatal" id="BII2-T40-R003">[BII2-T40-R003]-A call for tenders MUST have a call for tender identifier</assert>
    <assert test="$BII2-T40-R004" flag="fatal" id="BII2-T40-R004">[BII2-T40-R004]-A call for tenders MUST have a contract folder identifier</assert>
    <assert test="$BII2-T40-R005" flag="fatal" id="BII2-T40-R005">[BII2-T40-R005]-A call for tenders MUST have a document issue date</assert>
    <assert test="$BII2-T40-R006" flag="fatal" id="BII2-T40-R006">[BII2-T40-R006]-A call for tenders MUST specifiy the tendering process to be used to award the contract</assert>
    <assert test="$BII2-T40-R007" flag="fatal" id="BII2-T40-R007">[BII2-T40-R007]-A call for tenders MUST have a contracting authority purchasing the goods, services or works</assert>
    <assert test="$BII2-T40-R010" flag="fatal" id="BII2-T40-R010">[BII2-T40-R010]-A call for tenders MUST have a procurement project identifying the object of the procurement.</assert>
    <assert test="$BII2-T40-R022" flag="fatal" id="BII2-T40-R022">[BII2-T40-R022]-The call for tenders MUST contain information about the place where the works, services or goods will be delivered</assert>
    <assert test="$BII2-T40-R023" flag="fatal" id="BII2-T40-R023">[BII2-T40-R023]-The call for tenders MUST contain information about the period of execution of the contract, or date of delivery</assert>
    <assert test="$BII2-T40-R026" flag="fatal" id="BII2-T40-R026">[BII2-T40-R026]-The call for tenders MUST contain information about the procedure for appeal.</assert>
    <assert test="$BII2-T40-R027" flag="fatal" id="BII2-T40-R027">[BII2-T40-R027]-The call for tenders MUST include information about the deadline for the submission of tenders</assert>
    <assert test="$BII2-T40-R029" flag="fatal" id="BII2-T40-R029">[BII2-T40-R029]-The contracting authority MUST specify if the contract will be awarded based on lowest price or economically most advantageous tender</assert>
    <assert test="$BII2-T40-R030" flag="fatal" id="BII2-T40-R030">[BII2-T40-R030]-If the contract has to be awarded based on economically most advantageous tender it MUST include information about awarding criteria </assert>
    <assert test="$BII2-T40-R032" flag="fatal" id="BII2-T40-R032">[BII2-T40-R032]-A procedure justification MUST be present when the procedure type code is accelerated.</assert>
    <assert test="$BII2-T40-R033" flag="fatal" id="BII2-T40-R033">[BII2-T40-R033]-A call for tenders MUST include information about of the type of tendering procedure (open/restricted/negotiated/competitive dialogue).</assert>
  </rule>
  <rule context="$contracting_authority">
    <assert test="$BII2-T40-R008" flag="fatal" id="BII2-T40-R008">[BII2-T40-R008]-A contracting authority MUST have the contracting authority party name or a contracting authority party identifier</assert>
  </rule>
  <rule context="$Procurement_Project">
    <assert test="$BII2-T40-R013" flag="fatal" id="BII2-T40-R013">[BII2-T40-R013]-A procurement project type MUST be present </assert>
    <assert test="$BII2-T40-R016" flag="fatal" id="BII2-T40-R016">[BII2-T40-R016]-The procurement project MUST contain at least one classification code using the CPV classification system</assert>
    <assert test="$BII2-T40-R034" flag="fatal" id="BII2-T40-R034">[BII2-T40-R034]-The call for tenders MUST include information about the estimated total value, calculated according with Directive 2004/18/EC</assert>
  </rule>
  <rule context="$Requested_deliverable">
    <assert test="$BII2-T40-R018" flag="warning" id="BII2-T40-R018">[BII2-T40-R018]-Each requested deliverable SHOULD contain an identifier</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T40.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START CEFACT/BIIRULES-CEFACT-T40.sch?><pattern is-a="T40" id="CEFACT-T40">
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
</pattern><?DSDL_INCLUDE_END CEFACT/BIIRULES-CEFACT-T40.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT40-CEFACT.sch?><pattern id="CodesT40">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/BIIRULESCodesT40-CEFACT.sch?>
</schema>