<?xml version="1.0" encoding="utf-8"?><!-- 

        	UBL syntax binding to the T04   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2" queryBinding="xslt2">
  <title>BIIRULES  T04 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2"/>
  <phase id="BIIRULEST04_phase">
    <active pattern="UBL-T04"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/BIIRULES-T04.sch?><pattern abstract="true" id="T04">
  <rule context="$Allowance_and_Charge">
    <assert test="$BII2-T04-R007" flag="fatal" id="BII2-T04-R007">[BII2-T04-R007]-Allowances and charges MUST have an allowance and charge reason</assert>
  </rule>
  <rule context="$Buyer">
    <assert test="$BII2-T04-R024" flag="warning" id="BII2-T04-R024">[BII2-T04-R024]-A buyers postal address SHOULD have at least all of the following: 
- Address line
- City
- Post code 
- Country code</assert>
  </rule>
  <rule context="$counter_offer">
    <assert test="$BII2-T04-R001" flag="fatal" id="BII2-T04-R001">[BII2-T04-R001]-A counter offer MUST have a customization identifier</assert>
    <assert test="$BII2-T04-R002" flag="fatal" id="BII2-T04-R002">[BII2-T04-R002]-A counter offer MUST have a profile identifier</assert>
    <assert test="$BII2-T04-R004" flag="fatal" id="BII2-T04-R004">[BII2-T04-R004]-A counter offer MUST have a document issue date</assert>
    <assert test="$BII2-T04-R006" flag="fatal" id="BII2-T04-R006">[BII2-T04-R006]-A counter offer MUST have a document identifier</assert>
    <assert test="$BII2-T04-R009" flag="fatal" id="BII2-T04-R009">[BII2-T04-R009]-A counter offer MUST be stated in a single currency</assert>
    <assert test="$BII2-T04-R018" flag="warning" id="BII2-T04-R018">[BII2-T04-R018]-VAT total amount SHOULD be the sum of counter offer line tax amounts, if counter offer line tax amounts are provided</assert>
    <assert test="$BII2-T04-R021" flag="fatal" id="BII2-T04-R021">[BII2-T04-R021]-A counter offer MUST have the buyer party name or a buyer party identifier</assert>
    <assert test="$BII2-T04-R022" flag="fatal" id="BII2-T04-R022">[BII2-T04-R022]-A counter offer MUST have the seller party name or a seller party identifier</assert>
    <assert test="$BII2-T04-R032" flag="fatal" id="BII2-T04-R032">[BII2-T04-R032]-A counter offer MUST have a reference to an order</assert>
  </rule>
  <rule context="$counter_offer_line">
    <assert test="$BII2-T04-R003" flag="fatal" id="BII2-T04-R003">[BII2-T04-R003]-Each counter offer line MUST have a document line identifier that is unique within the counter offer</assert>
    <assert test="$BII2-T04-R010" flag="fatal" id="BII2-T04-R010">[BII2-T04-R010]-Each counter offer line offered quantity MUST not be negative</assert>
    <assert test="$BII2-T04-R011" flag="fatal" id="BII2-T04-R011">[BII2-T04-R011]-Each counter offer line item net price MUST not be negative</assert>
    <assert test="$BII2-T04-R029" flag="warning" id="BII2-T04-R029">[BII2-T04-R029]-Each counter offer line SHOULD have an offered quantity</assert>
    <assert test="$BII2-T04-R030" flag="fatal" id="BII2-T04-R030">[BII2-T04-R030]-Each counter offer line offered quantity  MUST have an associated unit of measure</assert>
    <assert test="$BII2-T04-R031" flag="fatal" id="BII2-T04-R031">[BII2-T04-R031]-Each counter offer line MUST have an item identifier and/or an item name</assert>
  </rule>
  <rule context="$Delivery_Address">
    <assert test="$BII2-T04-R025" flag="warning" id="BII2-T04-R025">[BII2-T04-R025]-A delivery address  SHOULD have at least and address identifier or all of the following: 
- City
- Post code 
- Country code</assert>
  </rule>
  <rule context="$Expected_totals">
    <assert test="$BII2-T04-R012" flag="fatal" id="BII2-T04-R012">[BII2-T04-R012]-Expected total amount for payment MUST NOT be negative, if expected total amount for payment is provided</assert>
    <assert test="$BII2-T04-R013" flag="fatal" id="BII2-T04-R013">[BII2-T04-R013]-Expected total sum of line amounts MUST NOT be negative, if expected total sum of line amounts is provided</assert>
    <assert test="$BII2-T04-R014" flag="fatal" id="BII2-T04-R014">[BII2-T04-R014]-Expected total sum of line amounts MUST equal the sum of the counter offer line amounts at counter offer line level, if expected total sum of line amounts is provided</assert>
    <assert test="$BII2-T04-R015" flag="fatal" id="BII2-T04-R015">[BII2-T04-R015]-Expected total sum of allowance at document level MUST be equal to the sum of allowance amounts at document level, if expected total sum of allowance at document level is provided</assert>
    <assert test="$BII2-T04-R016" flag="fatal" id="BII2-T04-R016">[BII2-T04-R016]-Expected total sum of charges at document level MUST be equal to the sum of charges at document level, if expected total sum of charges at document level is provided</assert>
    <assert test="$BII2-T04-R017" flag="fatal" id="BII2-T04-R017">[BII2-T04-R017]-Expected total amount for payment MUST be equal to the sum of line amounts minus sum of allowances at document level plus sum of charges at document level  and VAT total amount, if expected total amount for payment is provided</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII2-T04-R026" flag="warning" id="BII2-T04-R026">[BII2-T04-R026]-An item standard Identifier SHOULD have an identification schema (e.g. GTIN)</assert>
    <assert test="$BII2-T04-R027" flag="warning" id="BII2-T04-R027">[BII2-T04-R027]-An item commodity classification SHOULD have a code list identifier (e.g. CPV or UNSPSC)</assert>
  </rule>
  <rule context="$Item_property">
    <assert test="$BII2-T04-R019" flag="fatal" id="BII2-T04-R019">[BII2-T04-R019]-Each item property MUST have a data name, if item property is provided</assert>
    <assert test="$BII2-T04-R020" flag="fatal" id="BII2-T04-R020">[BII2-T04-R020]-Each item property MUST have a data value, if item property is provided</assert>
  </rule>
  <rule context="$Seller">
    <assert test="$BII2-T04-R023" flag="warning" id="BII2-T04-R023">[BII2-T04-R023]-A sellers postal address SHOULD have at least all of the following: 
- Address line
- City
- Post code 
- Country code</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/BIIRULES-T04.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/BIIRULES-UBL-T04.sch?><pattern is-a="T04" id="UBL-T04">
  <param name="BII2-T04-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T04-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T04-R003" value="(cac:LineItem/cbc:ID)"/>
  <param name="BII2-T04-R004" value="(cbc:IssueDate)"/>
  <param name="BII2-T04-R006" value="(cbc:ID)"/>
  <param name="BII2-T04-R007" value="(cbc:AllowanceChargeReason)"/>
  <param name="BII2-T04-R009" value="(cbc:DocumentCurrencyCode)"/>
  <param name="BII2-T04-R010" value="number(cac:LineItem/cbc:Quantity) &gt;= 0"/>
  <param name="BII2-T04-R011" value="number(cac:LineItem/cac:Price/cbc:PriceAmount) &gt;= 0"/>
  <param name="BII2-T04-R012" value="number(cbc:PayableAmount) &gt;= 0"/>
  <param name="BII2-T04-R013" value="number(cbc:LineExtensionAmount) &gt;= 0"/>
  <param name="BII2-T04-R014" value="number(cbc:LineExtensionAmount) = number(round(sum(/ubl:Order/cac:OrderLine/cac:LineItem/cbc:LineExtensionAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T04-R015" value="cbc:AllowanceTotalAmount = (round(sum(/ubl:Order/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;false&#34;]/cbc:Amount) * 10 * 10) div 100) or not(cbc:AllowanceTotalAmount)"/>
  <param name="BII2-T04-R016" value="cbc:ChargeTotalAmount = (round(sum(/ubl:Order/cac:AllowanceCharge[cbc:ChargeIndicator=&#34;true&#34;]/cbc:Amount) * 10 * 10) div 100) or not(cbc:ChargeTotalAmount)"/>
  <param name="BII2-T04-R017" value="((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:PayableAmount) = (number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount) - number(cbc:AllowanceTotalAmount)))) or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (number(cbc:PayableAmount) = number(cbc:LineExtensionAmount) - number(cbc:AllowanceTotalAmount))) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:PayableAmount) = number(cbc:LineExtensionAmount) + number(cbc:ChargeTotalAmount))) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (number(cbc:PayableAmount) = number(cbc:LineExtensionAmount)))"/>
  <param name="BII2-T04-R018" value="cac:TaxTotal/cbc:TaxAmount = (round(sum(/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cbc:TotalTaxAmount) * 10 * 10) div 100)"/>
  <param name="BII2-T04-R019" value="(cbc:Name)"/>
  <param name="BII2-T04-R020" value="(cbc:Value)"/>
  <param name="BII2-T04-R021" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T04-R022" value="(cac:Party/cac:PartyName/cbc:Name) or (cac:Party/cac:PartyIdentification/cbc:ID)"/>
  <param name="BII2-T04-R023" value="(cac:Party/cac:PostalAddress/cbc:StreetName) and (cac:Party/cac:PostalAddress/cbc:CityName) and (cac:Party/cac:PostalAddress/cbc:PostalZone) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)  "/>
  <param name="BII2-T04-R024" value="(cac:Party/cac:PostalAddress/cbc:StreetName) and (cac:Party/cac:PostalAddress/cbc:CityName) and (cac:Party/cac:PostalAddress/cbc:PostalZone) and (cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode)  "/>
  <param name="BII2-T04-R025" value="(cac:Address/cbc:CityName) and (cac:Address/cbc:PostalZone) and (cac:Address/cac:Country/cbc:IdentificationCode)  "/>
  <param name="BII2-T04-R026" value="(cac:StandardItemIdentification/cbc:ID/@schemeID)"/>
  <param name="BII2-T04-R027" value="(cac:CommodityClassification/cbc:ItemClassificationCode/@listID)"/>
  <param name="BII2-T04-R029" value="(cac:LineItem/cbc:Quantity)"/>
  <param name="BII2-T04-R030" value="(cac:LineItem/cbc:Quantity/@unitCode)"/>
  <param name="BII2-T04-R031" value="(cac:LineItem/cac:Item/cbc:Name) or (cac:LineItem/cac:Item/cac:StandardItemIdentification/cbc:ID) or  (cac:LineItem/cac:Item/cac:SellersItemIdentification/cbc:ID)"/>
  <param name="BII2-T04-R032" value="(cac:OrderDocumentReference/cbc:ID)"/>
  <param name="counter_offer_line" value="//cac:OrderLine"/>
  <param name="counter_offer" value="/ubl:OrderResponse"/>
  <param name="Allowance_and_Charge" value="//cac:AllowanceCharge"/>
  <param name="Expected_totals" value="//cac:LegalMonetaryTotal"/>
  <param name="Item_property" value="//cac:AdditionalItemProperty"/>
  <param name="Seller" value="//cac:SellerSupplierParty"/>
  <param name="Buyer" value="//cac:BuyerCustomerParty"/>
  <param name="Delivery_Address" value="//cac:DeliveryAddress"/>
  <param name="Item" value="//cac:Item"/>
</pattern><?DSDL_INCLUDE_END UBL/BIIRULES-UBL-T04.sch?>
</schema>