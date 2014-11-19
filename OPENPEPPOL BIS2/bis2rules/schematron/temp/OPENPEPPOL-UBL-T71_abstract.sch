<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T71   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>OPENPEPPOL  T71 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="OPENPEPPOLT71_phase">
    <active pattern="UBL-T71"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT71"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/OPENPEPPOL-T71.sch?><pattern abstract="true" id="T71">
  <rule context="$Document_Type_Code">
    <assert test="$EUGEN-T71-R001" flag="fatal" id="EUGEN-T71-R001">[EUGEN-T71-R001]-An document type code MUST have a list identifier attribute 'UNCL1001'.</assert>
  </rule>
  <rule context="$Response_Code">
    <assert test="$EUGEN-T71-R002" flag="fatal" id="EUGEN-T71-R002">[EUGEN-T71-R002]-A response code MUST have a list identifier attribute 'UNCL4343'.</assert>
  </rule>
  <rule context="$Issue_Type_Code">
    <assert test="$EUGEN-T71-R003" flag="fatal" id="EUGEN-T71-R003">[EUGEN-T71-R003]-A status reason code MUST have a list identifier attribute ‘PEPPOLSTATUS'</assert>
  </rule>
  <rule context="$Endpoint">
    <assert test="$EUGEN-T71-R004" flag="fatal" id="EUGEN-T71-R004">[EUGEN-T71-R004]-An endpoint identifier MUST have a scheme identifier attribute.</assert>
  </rule>
  <rule context="$Party_Identifier">
    <assert test="$EUGEN-T71-R005" flag="fatal" id="EUGEN-T71-R005">[EUGEN-T71-R005]-A party identifier MUST have a scheme identifier attribute.</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/OPENPEPPOL-T71.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/OPENPEPPOL-UBL-T71.sch?><pattern is-a="T71" id="UBL-T71">
  <param name="EUGEN-T71-R001" value="@listID = 'UNCL1001'"/>
  <param name="EUGEN-T71-R002" value="@listID = 'UNCL4343'"/>
  <param name="EUGEN-T71-R003" value="@listID = 'PEPPOLSTATUS'"/>
  <param name="EUGEN-T71-R004" value="@schemeID"/>
  <param name="EUGEN-T71-R005" value="@schemeID"/>
  <param name="Document_Type_Code" value="//cac:DocumentReference/cbc:DocumentTypeCode"/>
  <param name="Response_Code" value="//cac:Response/cbc:ResponseCode"/>
  <param name="Issue_Type_Code" value="//cac:Status/cbc:StatusReasonCode"/>
  <param name="Endpoint" value="//cbc:EndpointID"/>
  <param name="Party_Identifier" value="//cac:DocumentReference/cbc:DocumentTypeCode"/>
</pattern><?DSDL_INCLUDE_END UBL/OPENPEPPOL-UBL-T71.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/OPENPEPPOLCodesT71-UBL.sch?><pattern id="CodesT71">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cbc:EndpointID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T71-R001]-An Endpoint Identifier Scheme MUST be from the list of PEPPOL Party Identifiers described in the "PEPPOL Policy for using Identifiers".</assert>
</rule>

<rule context="cac:PartyIdentification/cbc:ID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T71-R002]-An Party Identifier Scheme MUST be from the list of PEPPOL Party Identifiers described in the "PEPPOL Policy for using Identifiers".</assert>
</rule>

<rule context="cac:Status//cbc:StatusReasonCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' SV BV BW ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-071-R003]-A message level response MUST specify the status reason code using the PEPPOL Status code list</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/OPENPEPPOLCodesT71-UBL.sch?>
</schema>