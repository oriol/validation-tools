<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:ApplicationResponse-2" queryBinding="xslt2">
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
  
  
  <!--Suppressed abstract pattern T71 was here-->
  
  
  <!--Start pattern based on abstract T71--><pattern id="UBL-T71">
  <rule context="//cac:DocumentReference/cbc:DocumentTypeCode">
    <assert test="@listID = 'UNCL1001'" flag="fatal" id="EUGEN-T71-R001">[EUGEN-T71-R001]-An document type code MUST have a list identifier attribute 'UNCL1001'.</assert>
  </rule>
  <rule context="//cac:Response/cbc:ResponseCode">
    <assert test="@listID = 'UNCL4343'" flag="fatal" id="EUGEN-T71-R002">[EUGEN-T71-R002]-A response code MUST have a list identifier attribute 'UNCL4343'.</assert>
  </rule>
  <rule context="//cac:Status/cbc:StatusReasonCode">
    <assert test="@listID = 'PEPPOLSTATUS'" flag="fatal" id="EUGEN-T71-R003">[EUGEN-T71-R003]-A status reason code MUST have a list identifier attribute ‘PEPPOLSTATUS'</assert>
  </rule>
  <rule context="//cbc:EndpointID">
    <assert test="@schemeID" flag="fatal" id="EUGEN-T71-R004">[EUGEN-T71-R004]-An endpoint identifier MUST have a scheme identifier attribute.</assert>
  </rule>
  <rule context="//cac:DocumentReference/cbc:DocumentTypeCode">
    <assert test="@schemeID" flag="fatal" id="EUGEN-T71-R005">[EUGEN-T71-R005]-A party identifier MUST have a scheme identifier attribute.</assert>
  </rule>
</pattern>
  
  
  <pattern id="CodesT71">



<rule context="cbc:EndpointID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T71-R001]-An Endpoint Identifier Scheme MUST be from the list of PEPPOL Party Identifiers described in the "PEPPOL Policy for using Identifiers".</assert>
</rule>

<rule context="cac:PartyIdentification/cbc:ID//@schemeID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T71-R002]-An Party Identifier Scheme MUST be from the list of PEPPOL Party Identifiers described in the "PEPPOL Policy for using Identifiers".</assert>
</rule>

<rule context="cac:Status//cbc:StatusReasonCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' SV BV BW ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-071-R003]-A message level response MUST specify the status reason code using the PEPPOL Status code list</assert>
</rule>

</pattern>
</schema>