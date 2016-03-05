<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T14   
        	Author: Oriol Bausà
            Timestamp: 2016-03-05 16:02:34 +0100
     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" queryBinding="xslt2">
  <title>BIIRULES  T14 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"/>
  <phase id="BIIRULEST14_phase">
    <active pattern="UBL-T14"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT14"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T14.sch?><pattern abstract="true" id="T14">
  <rule context="$Allowance_Charge">
    <assert test="$BII2-T14-R025" flag="fatal" id="BII2-T14-R025">[BII2-T14-R025]-Each document level allowance or charge details MUST have an allowance and charge reason text</assert>
    <assert test="$BII2-T14-R043" flag="fatal" id="BII2-T14-R043">[BII2-T14-R043]-Document level allowances and charges details MUST have allowance and charge VAT category if the credit note has a VAT total amount</assert>
  </rule>
  <rule context="$Credit_Note">
    <assert test="$BII2-T14-R001" flag="fatal" id="BII2-T14-R001">[BII2-T14-R001]-A credit note MUST have a customization identifier</assert>
    <assert test="$BII2-T14-R002" flag="fatal" id="BII2-T14-R002">[BII2-T14-R002]-A credit note MUST have a business process identifier</assert>
    <assert test="$BII2-T14-R003" flag="fatal" id="BII2-T14-R003">[BII2-T14-R003]-A credit note MUST have a credit note identifier</assert>
    <assert test="$BII2-T14-R004" flag="fatal" id="BII2-T14-R004">[BII2-T14-R004]-A credit note MUST have a credit note issue date</assert>
    <assert test="$BII2-T14-R005" flag="fatal" id="BII2-T14-R005">[BII2-T14-R005]-A credit note MUST specify the currency code for the document</assert>
    <assert test="$BII2-T14-R006" flag="fatal" id="BII2-T14-R006">[BII2-T14-R006]-A credit note MUST have a seller name and/or a seller identifier</assert>
    <assert test="$BII2-T14-R008" flag="fatal" id="BII2-T14-R008">[BII2-T14-R008]-A credit note MUST have a buyer name and/or a buyer identifier</assert>
    <assert test="$BII2-T14-R010" flag="fatal" id="BII2-T14-R010">[BII2-T14-R010]-A credit note MUST have the sum of line amounts</assert>
    <assert test="$BII2-T14-R011" flag="fatal" id="BII2-T14-R011">[BII2-T14-R011]-A credit note MUST have the credit note total without VAT</assert>
    <assert test="$BII2-T14-R012" flag="fatal" id="BII2-T14-R012">[BII2-T14-R012]-A credit note MUST have the credit note total with VAT (value of purchase)</assert>
    <assert test="$BII2-T14-R013" flag="fatal" id="BII2-T14-R013">[BII2-T14-R013]-A credit note MUST have the amount due for payment</assert>
    <assert test="$BII2-T14-R014" flag="fatal" id="BII2-T14-R014">[BII2-T14-R014]-A credit note MUST have at least one credit note line</assert>
    <assert test="$BII2-T14-R015" flag="fatal" id="BII2-T14-R015">[BII2-T14-R015]-A credit note MUST specify the VAT total amount, if there are VAT line amounts</assert>
    <assert test="$BII2-T14-R026" flag="fatal" id="BII2-T14-R026">[BII2-T14-R026]-A credit note MUST contain VAT category details  unless VAT total amount is omitted.</assert>
    <assert test="$BII2-T14-R035" flag="fatal" id="BII2-T14-R035">[BII2-T14-R035]-Credit Note total with VAT MUST NOT be negative</assert>
    <assert test="$BII2-T14-R037" flag="fatal" id="BII2-T14-R037">[BII2-T14-R037]-Amount due for payment in a credit note MUST NOT be negative</assert>
    <assert test="$BII2-T14-R044" flag="fatal" id="BII2-T14-R044">[BII2-T14-R044]-A seller VAT identifier MUST be provided if the credit note has a VAT total amount</assert>
    <assert test="$BII2-T14-R047" flag="fatal" id="BII2-T14-R047">[BII2-T14-R047]-A buyer VAT identifier MUST be present if the VAT category code is reverse VAT</assert>
    <assert test="$BII2-T14-R049" flag="fatal" id="BII2-T14-R049">[BII2-T14-R049]-The credit note total without VAT MUST be equal to the VAT category taxable amount if the VAT category code is reverse charge</assert>
    <assert test="$BII2-T14-R050" flag="fatal" id="BII2-T14-R050">[BII2-T14-R050]-The VAT category tax amount MUST be zero  if the VAT category code is reverse charge (since there is only one VAT category allowed it follows that the credit note tax total for reverse charge credit notes is zero)</assert>
    <assert test="$BII2-T14-R058" flag="fatal" id="BII2-T14-R058">[BII2-T14-R058]-Credit Note total without VAT MUST be equal to the sum of VAT category taxable amounts</assert>
  </rule>
  <rule context="$Credit_Note_Line">
    <assert test="$BII2-T14-R017" flag="fatal" id="BII2-T14-R017">[BII2-T14-R017]-Each credit note line MUST have a credit note line identifier</assert>
    <assert test="$BII2-T14-R018" flag="fatal" id="BII2-T14-R018">[BII2-T14-R018]-Each credit note line MUST have a credit noted quantity</assert>
    <assert test="$BII2-T14-R019" flag="fatal" id="BII2-T14-R019">[BII2-T14-R019]-Each credit note line MUST have a quantity unit of measure</assert>
    <assert test="$BII2-T14-R020" flag="fatal" id="BII2-T14-R020">[BII2-T14-R020]-Each credit note line MUST have a credit note line net amount</assert>
    <assert test="$BII2-T14-R021" flag="fatal" id="BII2-T14-R021">[BII2-T14-R021]-Each credit note line MUST have a credit note line item name and/or the credit note line item identifier</assert>
    <assert test="$BII2-T14-R032" flag="fatal" id="BII2-T14-R032">[BII2-T14-R032]-A scheme identifier for the credit note line item registered identifier MUST be provided if credit note line item registered identifiers are used to identify a product.(e.g. GTIN)</assert>
    <assert test="$BII2-T14-R033" flag="fatal" id="BII2-T14-R033">[BII2-T14-R033]-A scheme identifier for a credit note line item commodity classification MUST be provided if credit note line item commodity classification are used to classify a credit note line item (e.g. CPV or UNSPSC)</assert>
    <assert test="$BII2-T14-R034" flag="fatal" id="BII2-T14-R034">[BII2-T14-R034]-Credit Note line item net price MUST NOT be negative</assert>
    <assert test="$BII2-T14-R046" flag="fatal" id="BII2-T14-R046">[BII2-T14-R046]-Each credit note line MUST be categorized with the credit note line VAT category if the credit note has a VAT total amount </assert>
  </rule>
  <rule context="$Credit_Note_Period_Information">
    <assert test="$BII2-T14-R023" flag="fatal" id="BII2-T14-R023">[BII2-T14-R023]-Each credit note period information MUST have a credit note period start date</assert>
    <assert test="$BII2-T14-R024" flag="fatal" id="BII2-T14-R024">[BII2-T14-R024]-Each credit note period information MUST have a credit note period end date</assert>
    <assert test="$BII2-T14-R031" flag="fatal" id="BII2-T14-R031">[BII2-T14-R031]-A credit note period end date MUST be later or equal to a credit note period start date</assert>
  </rule>
  <rule context="$Total_Credit_Note">
    <assert test="$BII2-T14-R051" flag="fatal" id="BII2-T14-R051">[BII2-T14-R051]-Sum of line amounts MUST equal the credit note line net amounts</assert>
    <assert test="$BII2-T14-R052" flag="fatal" id="BII2-T14-R052">[BII2-T14-R052]-A credit note total without VAT MUST equal the sum of line amounts plus the sum of charges on document level minus the sum of allowances on document level</assert>
    <assert test="$BII2-T14-R053" flag="fatal" id="BII2-T14-R053">[BII2-T14-R053]-A credit note total with VAT MUST equal the credit note total without VAT plus the VAT total amount and the rounding of credit note total</assert>
    <assert test="$BII2-T14-R054" flag="fatal" id="BII2-T14-R054">[BII2-T14-R054]-The sum of allowances at document level MUST be equal to the sum of document level allowance amounts</assert>
    <assert test="$BII2-T14-R055" flag="fatal" id="BII2-T14-R055">[BII2-T14-R055]-The sum of charges at document level MUST be equal to the sum of document level charge amounts</assert>
    <assert test="$BII2-T14-R056" flag="fatal" id="BII2-T14-R056">[BII2-T14-R056]-Amount due for payment MUST be equal to the credit note total amount with VAT minus the paid amounts</assert>
  </rule>
  <rule context="$VAT_category">
    <assert test="$BII2-T14-R027" flag="fatal" id="BII2-T14-R027">[BII2-T14-R027]-Each VAT category details MUST have a VAT category taxable amount</assert>
    <assert test="$BII2-T14-R028" flag="fatal" id="BII2-T14-R028">[BII2-T14-R028]-Each VAT category details MUST have a VAT category tax amount</assert>
    <assert test="$BII2-T14-R029" flag="fatal" id="BII2-T14-R029">[BII2-T14-R029]-Every VAT category details MUST be defined through a VAT category code</assert>
    <assert test="$BII2-T14-R030" flag="fatal" id="BII2-T14-R030">[BII2-T14-R030]-The VAT category percentage MUST be provided if the VAT category code is standard.</assert>
    <assert test="$BII2-T14-R045" flag="fatal" id="BII2-T14-R045">[BII2-T14-R045]-A VAT exemption reason MUST be provided if the VAT category code is exempt  or reverse charge.</assert>
    <assert test="$BII2-T14-R048" flag="fatal" id="BII2-T14-R048">[BII2-T14-R048]-A credit note with a VAT category code of reverse charge MUST NOT contain other VAT categories</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T14.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T14.sch?><pattern is-a="T14" id="UBL-T14">
  <param name="BII2-T14-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T14-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T14-R003" value="(cbc:ID)"/>
  <param name="BII2-T14-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T14-R005" value="(cbc:DocumentCurrencyCode)"/>
  <param name="BII2-T14-R006" value="(cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name) or (cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T14-R008" value="(cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name) or (cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T14-R010" value="(cac:LegalMonetaryTotal/cbc:LineExtensionAmount)"/>
  <param name="BII2-T14-R011" value="(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount)"/>
  <param name="BII2-T14-R012" value="(cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount)"/>
  <param name="BII2-T14-R013" value="(cac:LegalMonetaryTotal/cbc:PayableAmount)"/>
  <param name="BII2-T14-R014" value="(cac:CreditNoteLine)"/>
  <param name="BII2-T14-R015" value="(cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) or not(cac:CreditNoteLine/cac:TaxTotal)"/>
  <param name="BII2-T14-R017" value="(cbc:ID)"/>
  <param name="BII2-T14-R018" value="(cbc:CreditedQuantity)"/>
  <param name="BII2-T14-R019" value="(cbc:CreditedQuantity/@unitCode)"/>
  <param name="BII2-T14-R020" value="(cbc:LineExtensionAmount)"/>
  <param name="BII2-T14-R021" value="(cac:Item/cbc:Name) or (cac:Item/cac:StandardItemIdentification/cbc:ID) or  (cac:Item/cac:SellersItemIdentification/cbc:ID)"/>
  <param name="BII2-T14-R023" value="(cbc:StartDate)"/>
  <param name="BII2-T14-R024" value="(cbc:EndDate)"/>
  <param name="BII2-T14-R025" value="(cbc:AllowanceChargeReason)"/>
  <param name="BII2-T14-R026" value="(//cac:TaxScheme/cbc:ID = 'VAT') or not(/ubl:CreditNote/cac:TaxTotal/cbc:TaxAmount)"/>
  <param name="BII2-T14-R027" value="(cbc:TaxableAmount)"/>
  <param name="BII2-T14-R028" value="(cbc:TaxAmount)"/>
  <param name="BII2-T14-R029" value="(cac:TaxCategory/cbc:ID)"/>
  <param name="BII2-T14-R030" value="(cac:TaxCategory/cbc:Percent) or not(normalize-space(cac:TaxCategory/cbc:ID) = 'S')"/>
  <param name="BII2-T14-R031" value="(cbc:StartDate and cbc:EndDate) and (number(translate(cbc:StartDate,'-','')) &lt;= number(translate(cbc:EndDate,'-','')))"/>
  <param name="BII2-T14-R032" value="(cac:Item/cac:StandardItemIdentification/cbc:ID/@schemeID) or not(cac:Item/cac:StandardItemIdentification)"/>
  <param name="BII2-T14-R033" value="(//cac:CommodityClassification/cbc:ItemClassificationCode/@listID) or not(//cac:CommodityClassification)"/>
  <param name="BII2-T14-R034" value="(cac:Price/cbc:PriceAmount) &gt;= 0"/>
  <param name="BII2-T14-R035" value="(cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount) &gt;= 0"/>
  <param name="BII2-T14-R037" value="(cac:LegalMonetaryTotal/cbc:PayableAmount) &gt;= 0"/>
  <param name="BII2-T14-R043" value="((/ubl:CreditNote/cac:TaxTotal/*/*/*/cbc:ID = 'VAT') and (cac:TaxCategory/cbc:ID)) or not(/ubl:CreditNote/cac:TaxTotal)"/>
  <param name="BII2-T14-R044" value="(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID) or not(cac:TaxTotal/*/*/*/cbc:ID = 'VAT')"/>
  <param name="BII2-T14-R045" value="(cac:TaxCategory/cbc:TaxExemptionReason) or not ((normalize-space(cac:TaxCategory/cbc:ID)='E') or (normalize-space(cac:TaxCategory/cbc:ID)='AE'))"/>
  <param name="BII2-T14-R046" value="(cac:Item/cac:ClassifiedTaxCategory/cbc:ID) or not(/ubl:CreditNote/cac:TaxTotal/*/*/*/cbc:ID='VAT')"/>
  <param name="BII2-T14-R047" value="(cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID) or not(cac:TaxTotal/*/*/cbc:ID = 'AE')"/>
  <param name="BII2-T14-R048" value="count(child::cac:TaxTotal/*/*/cbc:ID) = count(child::cac:TaxTotal/*/*/cbc:ID[. = 'AE']) or count(child::cac:TaxTotal/*/*/cbc:ID[. = 'AE']) = 0"/>
  <param name="BII2-T14-R049" value="(xs:decimal(cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cbc:ID = 'AE']/cbc:TaxableAmount) = xs:decimal(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount)) or  not(cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cbc:ID = 'AE'])"/>
  <param name="BII2-T14-R050" value="(xs:decimal(cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cbc:ID = 'AE']/cbc:TaxAmount) = 0) or  not(cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cbc:ID = 'AE'])"/>
  <param name="BII2-T14-R051" value="(xs:decimal(cbc:LineExtensionAmount)) = (round(xs:decimal(sum(//cac:CreditNoteLine/cbc:LineExtensionAmount)) * 10 * 10) div 100)"/>
  <param name="BII2-T14-R052" value="((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and ((xs:decimal(cbc:TaxExclusiveAmount)) = round((xs:decimal(cbc:LineExtensionAmount) + xs:decimal(cbc:ChargeTotalAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ))  or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and ((xs:decimal(cbc:TaxExclusiveAmount)) = round((xs:decimal(cbc:LineExtensionAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100)) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and ((xs:decimal(cbc:TaxExclusiveAmount)) = round((xs:decimal(cbc:LineExtensionAmount) + xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100)) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = xs:decimal(cbc:LineExtensionAmount)))"/>
  <param name="BII2-T14-R053" value="((cbc:PayableRoundingAmount) and ((xs:decimal(cbc:TaxInclusiveAmount)) = (round((xs:decimal(cbc:TaxExclusiveAmount) + (xs:decimal(sum(/ubl:CreditNote/cac:TaxTotal/cbc:TaxAmount))) + xs:decimal(cbc:PayableRoundingAmount)) *10 * 10) div 100))) or (not(cbc:PayableRoundingAmount) and ((xs:decimal(cbc:TaxInclusiveAmount)) = round((xs:decimal(cbc:TaxExclusiveAmount) + (xs:decimal(sum(/ubl:CreditNote/cac:TaxTotal/cbc:TaxAmount)))) * 10 * 10) div 100))"/>
  <param name="BII2-T14-R054" value="(xs:decimal(cbc:AllowanceTotalAmount)) = (round(xs:decimal(sum(/ubl:CreditNote/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount)) * 10 * 10) div 100) or not(cbc:AllowanceTotalAmount)"/>
  <param name="BII2-T14-R055" value="(xs:decimal(cbc:ChargeTotalAmount)) = (round(xs:decimal(sum(/ubl:CreditNote/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount)) * 10 * 10) div 100) or not(cbc:ChargeTotalAmount)"/>
  <param name="BII2-T14-R056" value="((cbc:PrepaidAmount) and ((xs:decimal(cbc:PayableAmount)) = (round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100))) or (xs:decimal(cbc:PayableAmount) = xs:decimal(cbc:TaxInclusiveAmount))"/>
  <param name="BII2-T14-R058" value="((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']/cbc:TaxAmount) and (round(xs:decimal(sum(cac:TaxTotal//cac:TaxSubtotal/cbc:TaxableAmount)) *10 * 10) div 100 = ((xs:decimal(cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount))))) or  not((cac:TaxTotal[cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']))"/>
  <param name="Payment_Means" value="//cac:PaymentMeans"/>
  <param name="VAT_category" value="//cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:ID = 'VAT']"/>
  <param name="Credit_Note_Line" value="//cac:CreditNoteLine"/>
  <param name="Credit_Note_Period_Information" value="//cac:InvoicePeriod"/>
  <param name="Allowance_Charge" value="/ubl:CreditNote/cac:AllowanceCharge"/>
  <param name="Credit_Note" value="/ubl:CreditNote"/>
  <param name="Total_Credit_Note" value="//cac:LegalMonetaryTotal"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T14.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/BIIRULESCodesT14-UBL.sch?><pattern id="CodesT14">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cbc:DocumentCurrencyCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T14-R002]-DocumentCurrencyCode MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="@currencyID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LTL LVL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MXV MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SKK SLL SOS SRD STD SVC SYP SZL THB TJS TMM TND TOP TRY TTD TWD TZS UAH UGX USD USN USS UYI UYU UZS VEF VND VUV WST XAF XAG XAU XBA XBB XBC XBD XCD XDR XFU XOF XPD XPF XTS XXX YER ZAR ZMK ZWR ZWD ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T14-R003]-currencyID MUST be coded using ISO code list 4217</assert>
</rule>

<rule context="cac:Country//cbc:IdentificationCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contain