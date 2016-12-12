<?xml version="1.0" encoding="UTF-8"?><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2" queryBinding="xslt2">
  <title>OPENPEPPOL  T110 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2"/>
  <phase id="OPENPEPPOLT110_phase">
    <active pattern="UBL-T110"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT110"/>
  </phase>
  
  
  <!--Suppressed abstract pattern T110 was here-->
  
  
  <!--Start pattern based on abstract T110--><pattern id="UBL-T110">
  <rule context="/ubl:OrderResponse/cac:AllowanceCharge">
    <assert test="(cbc:AllowanceChargeReason)" flag="fatal" id="EUGEN-T110-R015">[EUGEN-T110-R015]-Allowances and charges MUST have a reason</assert>
  </rule>
  <rule context="//cac:Country/cbc:IdentificationCode">
    <assert test="@listID = 'ISO3166-1:Alpha2'" flag="fatal" id="EUGEN-T110-R004">[EUGEN-T110-R004]-A country identification code MUST have a list identifier attribute “ISO3166-1:Alpha2”</assert>
  </rule>
  <rule context="//*[contains(name(),'CurrencyCode')]">
    <assert test="@listID =  'ISO4217'" flag="fatal" id="EUGEN-T110-R003">[EUGEN-T110-R003]-A document currency code MUST have a list identifier attribute “ISO4217”</assert>
  </rule>
  <rule context="//cbc:EndpointID">
    <assert test="@schemeID" flag="fatal" id="EUGEN-T110-R001">[EUGEN-T110-R001]-An endpoint identifier MUST have a scheme identifier attribute</assert>
  </rule>
  <rule context="//cbc:ItemClassificationCode">
    <assert test="@listID" flag="fatal" id="EUGEN-T110-R013">[EUGEN-T110-R013]-Item classification codes must include code list value</assert>
  </rule>
  <rule context="/ubl:OrderResponse">
    <assert test="(cbc:CustomizationID) = 'urn:www.cenbii.eu:transaction:biitrns110:ver1.0:extended:urn:www.peppol.eu:bis:peppol42a:ver1.0'" flag="fatal" id="EUGEN-T110-R007">[EUGEN-T110-R007]-Customization id must be:  urn:www.cenbii.eu:transaction:biitrns110:ver1.0:extended:urn:www.peppol.eu:bis:peppol42a:ver1.0</assert>
    <assert test="(cbc:ProfileID)= 'urn:www.cenbii.eu:profile:bii42:ver1.0'" flag="fatal" id="EUGEN-T110-R008">[EUGEN-T110-R008]-Profile id must be: urn:www.cenbii.eu:profile:bii42:ver1.0</assert>
    <assert test="(cac:SellerSupplierParty/cac:Party/cbc:EndpointID)" flag="fatal" id="EUGEN-T110-R009">[EUGEN-T110-R009]-Sellers endpoint id must exist</assert>
    <assert test="(cac:BuyerCustomerParty/cac:Party/cbc:EndpointID)" flag="fatal" id="EUGEN-T110-R010">[EUGEN-T110-R010]-Buyers endpoint id must exist</assert>
    <assert test="//@currencyID = (cbc:DocumentCurrencyCode)" flag="fatal" id="EUGEN-T110-R011">[EUGEN-T110-R011]-All amounts must have same currency code as document currency</assert>
    <assert test="(cbc:UBLVersionID) = '2.1'" flag="fatal" id="EUGEN-T110-R025">[EUGEN-T110-R025]-UBLVersionID shall be 2.1</assert>
  </rule>
  <rule context="//cac:PartyIdentification/cbc:ID">
    <assert test="@schemeID" flag="fatal" id="EUGEN-T110-R002">[EUGEN-T110-R002]-A party identifier MUST have a scheme identifier attribute</assert>
  </rule>
  <rule context="//cac:TaxCategory/cbc:ID">
    <assert test="@schemeID = 'UNCL5305'" flag="fatal" id="EUGEN-T110-R006">[EUGEN-T110-R006]-A tax category identifier MUST have a scheme identifier attribute “UNCL5305”</assert>
  </rule>
  <rule context="/cac:LegalMonetaryTotal">
    <assert test="((cbc:PayableAmount) &gt;= 0) or (not(cac:PayableAmount))" flag="fatal" id="EUGEN-T110-R016">[EUGEN-T110-R016]-Total amount for payment MUST NOT be negative, if expected total amount for payment is provided.</assert>
    <assert test="((cbc:LineExtensionAmount) &gt;= 0) or (not(cac:LineExtensionAmount))" flag="fatal" id="EUGEN-T110-R017">[EUGEN-T110-R017]-Total sum of line amounts MUST NOT be negative, if expected total sum of line amounts is provided.</assert>
    <assert test="((cac:LineExtensionAmount) and (cac:TaxExclusiveAmount) and (cac:TaxInclusiveAmount)) or (not((cac:PayableAmount))" flag="fatal" id="EUGEN-T110-R018">[EUGEN-T110-R018]-If payable amount is provided then Line Extension Amount and Tax Exclusive Amount and Tax Inclusive Amount must be provided. </assert>
    <assert test="(xs:decimal(cbc:LineExtensionAmount)) = (round(xs:decimal(sum(//cac:InvoiceLine/cbc:LineExtensionAmount)) * 10 * 10) div 100) or (not(cbc:LineExtensionAmount))" flag="fatal" id="EUGEN-T110-R019">[EUGEN-T110-R019]-Total sum of line amounts MUST equal the sum of the order line amounts at order line level, if total sum of line amounts is provided.</assert>
    <assert test="((xs:decimal(cbc:ChargeTotalAmount)) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:ChargeTotalAmount))" flag="fatal" id="EUGEN-T110-R020">[EUGEN-T110-R020]-Total sum of charges at document level MUST be equal to the sum of charges at document level, if total sum of charges at document level is provided.</assert>
    <assert test="(xs:decimal(cbc:AllowanceTotalAmount)) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:AllowanceTotalAmount))" flag="fatal" id="EUGEN-T110-R021">[EUGEN-T110-R021]-Total sum of allowance at document level MUST be equal to the sum of allowance amounts at document level, if total sum of allowance at document level is provided.</assert>
    <assert test="(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100)-((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100) or(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) -((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (not(cbc:TaxExclusiveAmount))" flag="fatal" id="EUGEN-T110-R022">[EUGEN-T110-R022]-Tax exclusive amount must equal the sum of line amount plus total charge amount at document level less total allowance amount at document level if tax exclusive amount is provided.</assert>
    <assert test="(xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100) +((round(xs:decimal(/ubl:OrderResponse/cac:TaxTotal/cbc:TaxAmount )) * 10 * 10) div 100) or (xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100) " flag="fatal" id="EUGEN-T110-R023">[EUGEN-T110-R023]-Tax inclusive amount must equal tax exclusive amount plus total tax amount.</assert>
    <assert test="(xs:decimal(cbc:PayableAmount)) = (round((xs:decimal(cbc:TaxInclusiveAmount) + xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100))) or (xs:decimal(cbc:PayableAmount) = xs:decimal(cbc:TaxInclusiveAmount)) or (not(cbc:PayableAmount))" flag="fatal" id="EUGEN-T110-R024">[EUGEN-T110-R024]-Total amount for payment MUST be equal to the tax inclusive amount plus rounding amount.</assert>
  </rule>
  <rule context="//*[contains(name(),'Quantity')]">
    <assert test="not(attribute::unitCode) or (attribute::unitCode and attribute::unitCodeListID = 'UNECERec20')" flag="fatal" id="EUGEN-T110-R005">[EUGEN-T110-R005]-A unit code attribute MUST have a unit code list identifier attribute “UNECERec20”</assert>
  </rule>
</pattern>
  
  
  
</schema>