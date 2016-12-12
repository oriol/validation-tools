<!-- Schematron binding rules automatically generated by Validex Generator Midran ltd -->
<!-- Data binding to UBL syntax for T110 -->
<!-- Timestamp: 2016-12-12 23:50:43 +0100 -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T110" id="UBL-T110">
  <param name="EUGEN-T110-R001" value="@schemeID"/>
  <param name="EUGEN-T110-R002" value="@schemeID"/>
  <param name="EUGEN-T110-R003" value="@listID =  'ISO4217'"/>
  <param name="EUGEN-T110-R004" value="@listID = 'ISO3166-1:Alpha2'"/>
  <param name="EUGEN-T110-R005" value="not(attribute::unitCode) or (attribute::unitCode and attribute::unitCodeListID = 'UNECERec20')"/>
  <param name="EUGEN-T110-R006" value="@schemeID = 'UNCL5305'"/>
  <param name="EUGEN-T110-R007" value="(cbc:CustomizationID) = 'urn:www.cenbii.eu:transaction:biitrns110:ver1.0:extended:urn:www.peppol.eu:bis:peppol42a:ver1.0'"/>
  <param name="EUGEN-T110-R008" value="(cbc:ProfileID)= 'urn:www.cenbii.eu:profile:bii42:ver1.0'"/>
  <param name="EUGEN-T110-R009" value="(cac:SellerSupplierParty/cac:Party/cbc:EndpointID)"/>
  <param name="EUGEN-T110-R010" value="(cac:BuyerCustomerParty/cac:Party/cbc:EndpointID)"/>
  <param name="EUGEN-T110-R011" value="//@currencyID = (cbc:DocumentCurrencyCode)"/>
  <param name="EUGEN-T110-R013" value="@listID"/>
  <param name="EUGEN-T110-R015" value="(cbc:AllowanceChargeReason)"/>
  <param name="EUGEN-T110-R016" value="((cbc:PayableAmount) &gt;= 0) or (not(cac:PayableAmount))"/>
  <param name="EUGEN-T110-R017" value="((cbc:LineExtensionAmount) &gt;= 0) or (not(cac:LineExtensionAmount))"/>
  <param name="EUGEN-T110-R018" value="((cac:LineExtensionAmount) and (cac:TaxExclusiveAmount) and (cac:TaxInclusiveAmount)) or (not(cac:PayableAmount))"/>
  <param name="EUGEN-T110-R019" value="(xs:decimal(cbc:LineExtensionAmount)) = (round(xs:decimal(sum(//cac:InvoiceLine/cbc:LineExtensionAmount)) * 10 * 10) div 100) or (not(cbc:LineExtensionAmount))"/>
  <param name="EUGEN-T110-R020" value="xs:decimal(cbc:ChargeTotalAmount) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&quot;true&quot;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:ChargeTotalAmount))"/>
  <param name="EUGEN-T110-R021" value="(xs:decimal(cbc:AllowanceTotalAmount)) = (round(xs:decimal(sum(/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator=&quot;false&quot;]/cbc:Amount)) * 10 * 10) div 100) or (not(cbc:AllowanceTotalAmount))"/>
  <param name="EUGEN-T110-R022" value="(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100)-((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) or (xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) +((round(xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10) div 100) or(xs:decimal(cbc:TaxExclusiveAmount)) = ((round(xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100) -((round(xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100) or (not(cbc:TaxExclusiveAmount))"/>
  <param name="EUGEN-T110-R023" value="(xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100) +((round(xs:decimal(/ubl:OrderResponse/cac:TaxTotal/cbc:TaxAmount )) * 10 * 10) div 100) or (xs:decimal(cbc:TaxInclusiveAmount)) = ((round(xs:decimal(cbc:TaxExclusiveAmount)) * 10 * 10) div 100) "/>
  <param name="EUGEN-T110-R024" value="(xs:decimal(cbc:PayableAmount)) = (round(xs:decimal(cbc:TaxInclusiveAmount) + xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100 or (xs:decimal(cbc:PayableAmount) = xs:decimal(cbc:TaxInclusiveAmount)) or (not(cbc:PayableAmount))"/>
  <param name="EUGEN-T110-R025" value="(cbc:UBLVersionID) = '2.1'"/>
  <param name="OrderAgreement" value="/ubl:OrderResponse"/>
  <param name="Endpoint" value="//cbc:EndpointID"/>
  <param name="Party_Identifier" value="//cac:PartyIdentification/cbc:ID"/>
  <param name="Currency_Code" value="//*[contains(name(),'CurrencyCode')]"/>
  <param name="Country_Identification_Code" value="//cac:Country/cbc:IdentificationCode"/>
  <param name="Unit_Code" value="//*[contains(name(),'Quantity')]"/>
  <param name="Tax_Category_Identifier" value="//cac:TaxCategory/cbc:ID"/>
  <param name="Allowance_Charge" value="/ubl:OrderResponse/cac:AllowanceCharge"/>
  <param name="Totals" value="/cac:LegalMonetaryTotal"/>
  <param name="ItemClassification" value="//cbc:ItemClassificationCode"/>
</pattern>
