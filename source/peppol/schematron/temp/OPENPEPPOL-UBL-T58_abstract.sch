<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T58   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
  <title>OPENPEPPOL  T58 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2"/>
  <phase id="OPENPEPPOLT58_phase">
    <active pattern="UBL-T58"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT58"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/OPENPEPPOL-T58.sch?><pattern abstract="true" id="T58">
  <rule context="$endpoint">
    <assert test="$EUGEN-T58-R001" flag="fatal" id="EUGEN-T58-R001">[EUGEN-T58-R001]-An endpoint identifier MUST have a scheme identifier attribute</assert>
  </rule>
  <rule context="$party_identifier">
    <assert test="$EUGEN-T58-R002" flag="fatal" id="EUGEN-T58-R002">[EUGEN-T58-R002]-A party identifier MUST have a scheme identifier attribute</assert>
  </rule>
  <rule context="$response_code">
    <assert test="$EUGEN-T58-R003" flag="fatal" id="EUGEN-T58-R003">[EUGEN-T58-R003]-A response code MUST have a list identifier attribute “UNCL4343”</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/OPENPEPPOL-T58.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/OPENPEPPOL-UBL-T58.sch?><pattern is-a="T58" id="UBL-T58">
  <param name="EUGEN-T58-R001" value="@schemeID"/>
  <param name="EUGEN-T58-R002" value="@schemeID"/>
  <param name="EUGEN-T58-R003" value="@listID = 'UNCL4343'"/>
  <param name="endpoint" value="//cbc:EndpointID"/>
  <param name="party_identifier" value="//cac:PartyIdentification/cbc:ID"/>
  <param name="response_code" value="//cbc:ResponseCode"/>
</pattern><?DSDL_INCLUDE_END UBL/OPENPEPPOL-UBL-T58.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/OPENPEPPOLCodesT58-UBL.sch?><pattern id="CodesT58">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cbc:EndpointID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T58-R001]-An Endpoint Identifier Scheme MUST be from the list of PEPPOL Party Identifiers described in the "PEPPOL Policy for using Identifiers".</assert>
</rule>

<rule context="cac:PartyIdentification/cbc:ID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T58-R002]-A Party Identifier Scheme MUST be from the list of PEPPOL Party Identifiers described in the "PEPPOL Policy for using Identifiers".</assert>
</rule>

<rule context="cbc:ResponseCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AP RE ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T58-R003]-A Response code MUST be from the UN CEFACT 4343 code list PEPPOL subset</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern><?DSDL_INCLUDE_END codelist/OPENPEPPOLCodesT58-UBL.sch?>
</schema>