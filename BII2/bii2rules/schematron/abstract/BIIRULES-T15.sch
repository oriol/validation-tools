<!-- Schematron rules generated automatically. -->
<!-- Abstract rules for T15 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T15">
  <rule context="$Allowance_Charge">
    <assert test="$BII2-T15-R025" flag="fatal">[BII2-T15-R025]-Each document level allowance or charge details MUST have an allowance and charge reason text</assert>
    <assert test="$BII2-T15-R043" flag="fatal">[BII2-T15-R043]-Document level allowances and charges details MUST have allowance and charge VAT category if the Corrective Invoice has a VAT total amount</assert>
  </rule>
  <rule context="$Corrective_Invoice">
    <assert test="$BII2-T15-R001" flag="fatal">[BII2-T15-R001]-An Corrective Invoice MUST have a customization identifier</assert>
    <assert test="$BII2-T15-R002" flag="fatal">[BII2-T15-R002]-An Corrective Invoice MUST have a business process identifier</assert>
    <assert test="$BII2-T15-R003" flag="fatal">[BII2-T15-R003]-An Corrective Invoice MUST have a Corrective Invoice identifier</assert>
    <assert test="$BII2-T15-R004" flag="fatal">[BII2-T15-R004]-An Corrective Invoice MUST have a Corrective Invoice issue date</assert>
    <assert test="$BII2-T15-R005" flag="fatal">[BII2-T15-R005]-An Corrective Invoice MUST specify the currency code for the document</assert>
    <assert test="$BII2-T15-R006" flag="fatal">[BII2-T15-R006]-An Corrective Invoice MUST have a seller name and/or a seller identifier</assert>
    <assert test="$BII2-T15-R008" flag="fatal">[BII2-T15-R008]-An Corrective Invoice MUST have a buyer name and/or a buyer identifier</assert>
    <assert test="$BII2-T15-R010" flag="fatal">[BII2-T15-R010]-An Corrective Invoice MUST have the sum of line amounts</assert>
    <assert test="$BII2-T15-R011" flag="fatal">[BII2-T15-R011]-An Corrective Invoice MUST have the Corrective Invoice total without VAT</assert>
    <assert test="$BII2-T15-R012" flag="fatal">[BII2-T15-R012]-An Corrective Invoice MUST have the Corrective Invoice total with VAT (value of purchase)</assert>
    <assert test="$BII2-T15-R013" flag="fatal">[BII2-T15-R013]-An Corrective Invoice MUST have the amount due for payment</assert>
    <assert test="$BII2-T15-R014" flag="fatal">[BII2-T15-R014]-An Corrective Invoice MUST have at least one Corrective Invoice line</assert>
    <assert test="$BII2-T15-R015" flag="fatal">[BII2-T15-R015]-An Corrective Invoice MUST specify the VAT total amount, if there are VAT line amounts</assert>
    <assert test="$BII2-T15-R026" flag="fatal">[BII2-T15-R026]-An Corrective Invoice MUST contain VAT category details</assert>
    <assert test="$BII2-T15-R035" flag="fatal">[BII2-T15-R035]-Corrective Invoice total with VAT MUST NOT be negative</assert>
    <assert test="$BII2-T15-R037" flag="fatal">[BII2-T15-R037]-Amount due for payment in an Corrective Invoice MUST NOT be negative</assert>
    <assert test="$BII2-T15-R044" flag="fatal">[BII2-T15-R044]-A seller VAT identifier MUST be provided if the Corrective Invoice has a VAT total amount</assert>
    <assert test="$BII2-T15-R047" flag="fatal">[BII2-T15-R047]-A buyer VAT identifier MUST be present if the VAT category code is reverse VAT</assert>
    <assert test="$BII2-T15-R049" flag="fatal">[BII2-T15-R049]-The Corrective Invoice total without VAT MUST be equal to the VAT category taxable amount if the VAT category code is reverse charge</assert>
    <assert test="$BII2-T15-R050" flag="fatal">[BII2-T15-R050]-The VAT category tax amount MUST be zero  if the VAT category code is reverse charge (since there is only one VAT category allowed it follows that the Corrective Invoice tax total for reverse charge Corrective Invoices is zero)</assert>
    <assert test="$BII2-T15-R051" flag="fatal">[BII2-T15-R051]-Sum of line amounts MUST equal the Corrective Invoice line net amounts</assert>
    <assert test="$BII2-T15-R052" flag="fatal">[BII2-T15-R052]-An Corrective Invoice total without VAT MUST equal the sum of line amounts plus the sum of charges on document level minus the sum of allowances on document level</assert>
    <assert test="$BII2-T15-R053" flag="fatal">[BII2-T15-R053]-An Corrective Invoice total with VAT MUST equal the Corrective Invoice total without VAT plus the VAT total amount and the rounding of Corrective Invoice total</assert>
    <assert test="$BII2-T15-R054" flag="fatal">[BII2-T15-R054]-The sum of allowances at document level MUST be equal to the sum of document level allowance amounts</assert>
    <assert test="$BII2-T15-R055" flag="fatal">[BII2-T15-R055]-The sum of charges at document level MUST be equal to the sum of document level charge amounts</assert>
    <assert test="$BII2-T15-R056" flag="fatal">[BII2-T15-R056]-Amount due for payment MUST be equal to the Corrective Invoice total amount with VAT minus the paid amounts</assert>
    <assert test="$BII2-T15-R058" flag="fatal">[BII2-T15-R058]-Corrective Invoice total without VAT MUST be equal to the sum of VAT category taxable amounts</assert>
  </rule>
  <rule context="$Corrective_Invoice_Line">
    <assert test="$BII2-T15-R017" flag="fatal">[BII2-T15-R017]-Each Corrective Invoice line MUST have an Corrective Invoice line identifier</assert>
    <assert test="$BII2-T15-R018" flag="fatal">[BII2-T15-R018]-Each Corrective Invoice line MUST have an Corrective Invoiced quantity</assert>
    <assert test="$BII2-T15-R019" flag="fatal">[BII2-T15-R019]-Each Corrective Invoice line MUST have a quantity unit of measure</assert>
    <assert test="$BII2-T15-R020" flag="fatal">[BII2-T15-R020]-Each Corrective Invoice line MUST have an Corrective Invoice line net amount</assert>
    <assert test="$BII2-T15-R021" flag="fatal">[BII2-T15-R021]-Each Corrective Invoice line MUST have an Corrective Invoice line item name and/or the Corrective Invoice line item identifier</assert>
    <assert test="$BII2-T15-R032" flag="fatal">[BII2-T15-R032]-A scheme identifier for the Corrective Invoice line item registered identifier MUST be provided if Corrective Invoice line item registered identifiers are used to identify a product.(e.g. GTIN)</assert>
    <assert test="$BII2-T15-R033" flag="fatal">[BII2-T15-R033]-A scheme identifier for a Corrective Invoice line item commodity classification MUST be provided if Corrective Invoice line item commodity classification are used to classify an Corrective Invoice line item (e.g. CPV or UNSPSC)</assert>
    <assert test="$BII2-T15-R034" flag="fatal">[BII2-T15-R034]-Corrective Invoice line item net price MUST NOT be negative</assert>
    <assert test="$BII2-T15-R046" flag="fatal">[BII2-T15-R046]-Each Corrective Invoice line MUST be categorized with the Corrective Invoice line VAT category if the Corrective Invoice has a VAT total amount </assert>
    <assert test="$BII2-T15-R057" flag="fatal">[BII2-T15-R057]-Each Corrective Invoice line net amount MUST be equal to the Corrective Invoice line item net price amount multiplied by the Corrective Invoiced quantity at line level plus charges minus allowances at line level</assert>
  </rule>
  <rule context="$Corrective_Invoice_Period">
    <assert test="$BII2-T15-R031" flag="fatal">[BII2-T15-R031]-An Corrective Invoice period end date MUST be later or equal to an Corrective Invoice period start date</assert>
  </rule>
  <rule context="$Corrective_Invoice_Period_Information">
    <assert test="$BII2-T15-R023" flag="fatal">[BII2-T15-R023]-Each Corrective Invoice period information MUST have an Corrective Invoice period start date</assert>
    <assert test="$BII2-T15-R024" flag="fatal">[BII2-T15-R024]-Each Corrective Invoice period information MUST have an Corrective Invoice period end date</assert>
  </rule>
  <rule context="$Document_level_Allowance_or_Charge">
    <assert test="$BII2-T15-R038" flag="fatal">[BII2-T15-R038]-A document level allowance or charge amount MUST NOT be negative</assert>
  </rule>
  <rule context="$Payment_Means">
    <assert test="$BII2-T15-R039" flag="fatal">[BII2-T15-R039]-An account identifier MUST be present if payment means type is funds transfer</assert>
    <assert test="$BII2-T15-R040" flag="fatal">[BII2-T15-R040]-A sellers financial institution identifier MUST be provided if the scheme of the account identifier is IBAN and the payment means is international bank transfer</assert>
    <assert test="$BII2-T15-R041" flag="fatal">[BII2-T15-R041]-A payment means MUST specify the payment means type</assert>
    <assert test="$BII2-T15-R042" flag="fatal">[BII2-T15-R042]-A sellers financial institution identifier scheme MUST be BIC if the scheme of the account identifier is IBAN and the payment means type is international account transfer </assert>
  </rule>
  <rule context="$VAT_category">
    <assert test="$BII2-T15-R027" flag="fatal">[BII2-T15-R027]-Each VAT category details MUST have a VAT category taxable amount</assert>
    <assert test="$BII2-T15-R028" flag="fatal">[BII2-T15-R028]-Each VAT category details MUST have a VAT category tax amount</assert>
    <assert test="$BII2-T15-R029" flag="fatal">[BII2-T15-R029]-Every VAT category details MUST be defined through a VAT category code</assert>
    <assert test="$BII2-T15-R030" flag="fatal">[BII2-T15-R030]-The VAT category percentage MUST be provided if the VAT category code is standard.</assert>
    <assert test="$BII2-T15-R045" flag="fatal">[BII2-T15-R045]-A VAT exemption reason text or a VAT exemption reason code MUST be provided if the VAT category code is exempt.</assert>
    <assert test="$BII2-T15-R048" flag="fatal">[BII2-T15-R048]-An Corrective Invoice with a VAT category code of reverse charge MUST NOT contain other VAT categories.</assert>
  </rule>
</pattern>
