<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:schold="http://www.ascc.net/xml/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:clm5ISO42173A="urn:un:unece:uncefact:codelist:standard:5:ISO42173A:2011-08-31" xmlns:clm60133="urn:un:unece:uncefact:codelist:standard:6:0133:40106" xmlns:clm63055="urn:un:unece:uncefact:codelist:standard:6:3055:D11A" xmlns:clm6Recommendation20="urn:un:unece:uncefact:codelist:standard:6:Recommendation20:7" xmlns:clm210AccountingE704="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccessRightsType:D11A" xmlns:clm210AccountingE602="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountBalanceReopeningType:D11A" xmlns:clm210AccountingE902="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountClassification:D11A" xmlns:clm210AccountingE502="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountNatureType:D11A" xmlns:clm210AccountingE305="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountStatus:D11A" xmlns:clm210AccountingE501="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountType:D11A" xmlns:clm210AccountingE603="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAmountQualifierType:D11A" xmlns:clm210AccountingE601="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAmountType:D11A" xmlns:clm210AccountingE023="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingContact:D11A" xmlns:clm210AccountingE006="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingDocumentType:D11A" xmlns:clm210AccountingE202="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryCategory:D11A" xmlns:clm210AccountingE203="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryLineCategory:D11A" xmlns:clm210AccountingE302="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryLineSource:D11A" xmlns:clm210AccountingE201="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryProcessing:D11A" xmlns:clm210AccountingE012="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingJournal:D11A" xmlns:clm210AccountingE013="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingJournalCategory:D11A" xmlns:clm210AccountingE703="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingPeriodFunctionType:D11A" xmlns:clm210AccountingE021="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingPerquisite:D11A" xmlns:clm210AccountingE101="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingVoucherMedium:D11A" xmlns:clm210AccountingE904="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AdditionalPostponement:D11A" xmlns:clm210AccountingE011="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AddressFormatType:D11A" xmlns:clm210AccountingE304="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AlternateCurrencyAmount:D11A" xmlns:clm210AccountingE204="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AmortizationMethod:D11A" xmlns:clm210AccountingE702="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AmountWeightType:D11A" xmlns:clm210AccountingE004="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:CertificateType:D11A" xmlns:clm210AccountingE016="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:FinancialAccountType:D11A" xmlns:clm210AccountingE015="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:FinancialInstitutionRole:D11A" xmlns:clm210LifetimeEndCostE206="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:LifetimeEndCost:D11A" xmlns:clm210OrganizationFunctionTypeE706="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:OrganizationFunctionType:D11A" xmlns:clm210PartyTypeE705="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:PartyType:D11A" xmlns:clm210RefundMethodE022="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:RefundMethod:D11A" xmlns:clm210ScenarioTypeE018="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:ScenarioType:D11A" xmlns:clm210SoftwareUserTypeE019="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:SoftwareUserType:D11A" xmlns:clm210AccountingE307="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:TaxExemptionReason:D11A" xmlns:clmIANACharacterSetCode="urn:un:unece:uncefact:codelist:standard:IANA:CharacterSetCode:2010-11-04" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:standard:IANA:MIMEMediaType:2011-09-23" xmlns:clm5ISO63912A="urn:un:unece:uncefact:codelist:standard:ISO:ISO2AlphaLanguageCode:20061027" xmlns:clm61229LineStatusCode="urn:un:unece:uncefact:codelist:standard:UNECE:ActionCode:D10B" xmlns:clm63131="urn:un:unece:uncefact:codelist:standard:UNECE:AddressType:D10B" xmlns:clm64465="urn:un:unece:uncefact:codelist:standard:UNECE:AdjustmentReasonDescriptionCode:D10B" xmlns:clm64465AdjustmentReasonCodeFinancial="urn:un:unece:uncefact:codelist:standard:UNECE:AdjustmentReasonDescriptionCodeFinancial:D10B" xmlns:clm63055CargoOperationalCategory="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeCargoOperationalCategory:D10A" xmlns:clm63055GoodsTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeGoodsTypeCode:D10A" xmlns:clm63055TransportEquipmentSizeTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeTransportEquipmentSizeTypeCode:D10A" xmlns:clm65189AllowanceChargeID="urn:un:unece:uncefact:codelist:standard:UNECE:AllowanceChargeIdentificationCode:D10B" xmlns:clm64465AllowanceChargeReasonCode="urn:un:unece:uncefact:codelist:standard:UNECE:AllowanceChargeReasonCode:D10B" xmlns:clm67233AutomaticDataCaptureMethodCode="urn:un:unece:uncefact:codelist:standard:UNECE:AutomaticDataCaptureMethodCode:D10B" xmlns:clm67085b="urn:un:unece:uncefact:codelist:standard:UNECE:CargoOperationalCategoryCode:D10B" xmlns:clm67085="urn:un:unece:uncefact:codelist:standard:UNECE:CargoTypeClassificationCode:D10B" xmlns:clm6Recommendation21AnnexI="urn:un:unece:uncefact:codelist:standard:UNECE:CargoTypeCode:1996Rev2Final" xmlns:clm67357="urn:un:unece:uncefact:codelist:standard:UNECE:CommodityIdentificationCode:D10B" xmlns:clm63155CommunicationChannelCode="urn:un:unece:uncefact:codelist:standard:UNECE:CommunicationMeansTypeCode:D10B" xmlns:clm63139ContactTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ContactFunctionCode:D10B" xmlns:clm69651="urn:un:unece:uncefact:codelist:standard:UNECE:ContractTypeCode:D10B" xmlns:clm6ContractorType="urn:un:unece:uncefact:codelist:standard:UNECE:ContractorType:D10B" xmlns:clm69653="urn:un:unece:uncefact:codelist:standard:UNECE:CostManagementCode:D10B" xmlns:clm69655="urn:un:unece:uncefact:codelist:standard:UNECE:CostReportingCode:D10B" xmlns:clm69213="urn:un:unece:uncefact:codelist:standard:UNECE:CustomsDutyRegimeTypeCode:D10B" xmlns:clm68339="urn:un:unece:uncefact:codelist:standard:UNECE:DangerousGoodsPackingCode:D10B" xmlns:clm68273="urn:un:unece:uncefact:codelist:standard:UNECE:DangerousGoodsRegulationCode:D10B" xmlns:clm62005DateTimePeriodFunctionCode="urn:un:unece:uncefact:codelist:standard:UNECE:DateTimePeriodFunctionCode:D10B" xmlns:clm64017CommitmentLevelCode="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryPlanCommitmentLevelCode:D10B" xmlns:clm64053="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryTermsCode:2000" xmlns:clm64055DeliveryTermsFunctionCode="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryTermsFunctionCode:D10B" xmlns:clm66145="urn:un:unece:uncefact:codelist:standard:UNECE:DimensionTypeCode:D10B" xmlns:clm61001="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCode:D10B" xmlns:clm61001Accounting="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeAccounting:D10B" xmlns:clm61001Billing="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeBilling:D10B" xmlns:clm61001Invoice="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeInvoice:D10B" xmlns:clm61001DocumentTypeCodeQuotation="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeQuotation:D10B" xmlns:clm61001DocumentTypeCodeRemittance="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeRemittance:D10B" xmlns:clm61001DocumentTypeCodeScheduling="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeScheduling:D10B" xmlns:clm61373="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentStatusCode:D10B" xmlns:clm65153="urn:un:unece:uncefact:codelist:standard:UNECE:DutyTaxFeeTypeCode:D10B" xmlns:clm65305="urn:un:unece:uncefact:codelist:standard:UNECE:DutyorTaxorFeeCategoryCode:D10B" xmlns:clm69657="urn:un:unece:uncefact:codelist:standard:UNECE:EarnedValueCalculationMethod:D10B" xmlns:clm68155="urn:un:unece:uncefact:codelist:standard:UNECE:EquipmentSizeTypeDescriptionCode:D10B" xmlns:clm68077="urn:un:unece:uncefact:codelist:standard:UNECE:EquipmentSupplierCode:D10B" xmlns:clm62475="urn:un:unece:uncefact:codelist:standard:UNECE:EventTimeReferenceCode:D10B" xmlns:clm62475PaymentTermsEvent="urn:un:unece:uncefact:codelist:standard:UNECE:EventTimeReferenceCodePaymentTermsEvent:D10B" xmlns:clm6TDED6131="urn:un:unece:uncefact:codelist:standard:UNECE:FreightChargeQuantityUnitBasisCode:D10B" xmlns:clm65243="urn:un:unece:uncefact:codelist:standard:UNECE:FreightChargeTariffCode:D10B" xmlns:clm69659="urn:un:unece:uncefact:codelist:standard:UNECE:FundingTypeCode:D10B" xmlns:clm6TDED7357="urn:un:unece:uncefact:codelist:standard:UNECE:GoodsTypeCode:D10B" xmlns:clm6TDED7361="urn:un:unece:uncefact:codelist:standard:UNECE:GoodsTypeExtensionCode:D10B" xmlns:clm69417="urn:un:unece:uncefact:codelist:standard:UNECE:GovernmentActionCode:D10B" xmlns:clm69661="urn:un:unece:uncefact:codelist:standard:UNECE:HierarchicalStructureTypeCode:D10B" xmlns:clm63227="urn:un:unece:uncefact:codelist:standard:UNECE:LocationFunctionCode:D10B" xmlns:clm64233="urn:un:unece:uncefact:codelist:standard:UNECE:MarkingInstructionCode:D10B" xmlns:clm66313="urn:un:unece:uncefact:codelist:standard:UNECE:MeasuredAttributeCode:D10B" xmlns:clm6Recommendation20Airflow="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeAirflow:4" xmlns:clm6Recommendation20Duration="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeDuration:4" xmlns:clm6Recommendation20Linear="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeLinear:4" xmlns:clm6Recommendation20Temperature="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeTemperature:4" xmlns:clm6Recommendation20Volume="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeVolume:4" xmlns:clm6Recommendation20Weight="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeWeight:4" xmlns:clm61225MessageFunctionTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:MessageFunctionCode:D10B" xmlns:clm61225Acknowledgement="urn:un:unece:uncefact:codelist:standard:UNECE:MessageFunctionCodeAcknowledgement:D10B" xmlns:clm6TDED4377="urn:un:unece:uncefact:codelist:standard:UNECE:ObligationGuaranteeCode:D10B" xmlns:clm67065="urn:un:unece:uncefact:codelist:standard:UNECE:PackageTypeCode:2006" xmlns:clm67075="urn:un:unece:uncefact:codelist:standard:UNECE:PackagingLevelCode:D10B" xmlns:clm67233PackagingMarkingCode="urn:un:unece:uncefact:codelist:standard:UNECE:PackagingMarkingCode:D10B" xmlns:clm63035="urn:un:unece:uncefact:codelist:standard:UNECE:PartyRoleCode:D10B" xmlns:clm63035ChargePaying="urn:un:unece:uncefact:codelist:standard:UNECE:PartyRoleCodeChargePaying:D10B" xmlns:clm64431="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentGuaranteeMeansCode:D10B" xmlns:clm64435="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMeansChannelCode:D10B" xmlns:clm64461="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMeansCode:D10B" xmlns:clm64439="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMethodCode:D10B" xmlns:clm64279="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentTermsTypeCode:D10B" xmlns:clm6PlanningLevel="urn:un:unece:uncefact:codelist:standard:UNECE:PlanningLevel:D10B" xmlns:clm65375="urn:un:unece:uncefact:codelist:standard:UNECE:PriceTypeCode:D10B" xmlns:clm64037PriorityDescriptionCode="urn:un:unece:uncefact:codelist:standard:UNECE:PriorityDescriptionCode:D10B" xmlns:clm67187="urn:un:unece:uncefact:codelist:standard:UNECE:ProcessTypeCode:D10B" xmlns:clm69665="urn:un:unece:uncefact:codelist:standard:UNECE:ProjectTypeCode:D10B" xmlns:clm61153ReferenceTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ReferenceTypeCode:D10B" xmlns:clm69667="urn:un:unece:uncefact:codelist:standard:UNECE:ReportingThresholdTriggerType:D10B" xmlns:clm69669="urn:un:unece:uncefact:codelist:standard:UNECE:ResourceCostCategory:D10B" xmlns:clm69671="urn:un:unece:uncefact:codelist:standard:UNECE:ResourcePlanMeasureType:D10B" xmlns:clm64343ResponseTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ResponseTypeCode:D10B" xmlns:clm69415ResponsibleAgencyCode="urn:un:unece:uncefact:codelist:standard:UNECE:ResponsibleAgencyCode:D10B" xmlns:clm69411ResponsibleAgencyInvolvementCode="urn:un:unece:uncefact:codelist:standard:UNECE:ResponsibleAgencyInvolvementCode:D10B" xmlns:clm69673="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTaskRelationshipType:D10B" xmlns:clm69675="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTaskType:D10B" xmlns:clm6ScheduleTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTypeCode:D10B" xmlns:clm64517="urn:un:unece:uncefact:codelist:standard:UNECE:SealConditionCode:D10B" xmlns:clm6SealTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:SealTypeCode:D10B" xmlns:clm69303="urn:un:unece:uncefact:codelist:standard:UNECE:SealingPartyRoleCode:D10B" xmlns:clm69677="urn:un:unece:uncefact:codelist:standard:UNECE:SecurityClassificationType:D10B" xmlns:clm64405="urn:un:unece:uncefact:codelist:standard:UNECE:StatusCode:D10B" xmlns:clm64405AccountingDebitCredit="urn:un:unece:uncefact:codelist:standard:UNECE:StatusDescriptionCodeAccountingDebitCredit:D10B" xmlns:clm64405StatusCodeWorkflow="urn:un:unece:uncefact:codelist:standard:UNECE:StatusDescriptionCodeWorkflow:D10B" xmlns:clm66245="urn:un:unece:uncefact:codelist:standard:UNECE:TemperatureTypeCode:D10B" xmlns:clm68053="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentCategoryCode:D10B" xmlns:clm68169="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentFullnessCode:D10B" xmlns:clm68341="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentHaulageArrangementsCode:D10B" xmlns:clm68101="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMeansDirectionCode:D10B" xmlns:clm6Recommendation28="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMeansTypeCode:2007" xmlns:clm6Recommendation19="urn:un:unece:uncefact:codelist:standard:UNECE:TransportModeCode:2" xmlns:clm68051="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMovementStageCode:D10B" xmlns:clm68323TransportMovementTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMovementTypeCode:D10B" xmlns:clm64237TransportPaymentArrangementCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportPaymentArrangementCode:D10B" xmlns:clm65237TransportServiceCategoryCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceCategoryCode:D10B" xmlns:clm64065TransportServiceConditionCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceConditionCode:D10B" xmlns:clm64219TransportServicePriorityCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServicePriorityCode:D10B" xmlns:clm67273TransportServiceRequirementCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceRequirementCode:D10B" xmlns:clm6Recommendation24="urn:un:unece:uncefact:codelist:standard:UNECE:TransportStatusCode:4" xmlns:qdt="urn:un:unece:uncefact:data:Standard:QualifiedDataType:10" xmlns:ram="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:rsm="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3" xmlns:udt="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:ccts="urn:un:unece:uncefact:documentation:standard:CoreComponentsTechnicalSpecification:2" xmlns:ids5ISO316612A="urn:un:unece:uncefact:identifierlist:standard:5:ISO316612A:SecondEdition2006VI-10" xmlns:ids5ISO63912A="urn:un:unece:uncefact:identifierlist:standard:ISO:ISOAlpha2LanguageCode:20061027" xmlns:ids6Recommendation23="urn:un:unece:uncefact:identifierlist:standard:UNECE:FreightCostCode:4" xmlns:ids64277="urn:un:unece:uncefact:identifierlist:standard:UNECE:PaymentTermsDescriptionIdentifier:D10B" version="1.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->

   <axsl:param name="archiveDirParameter" />
   <axsl:param name="archiveNameParameter" />
   <axsl:param name="fileNameParameter" />
   <axsl:param name="fileDirParameter" />

<!--PHASES-->


<!--PROLOG-->

   <axsl:output xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" method="xml" omit-xml-declaration="no" standalone="yes" indent="yes"/>

<!--XSD TYPES-->


<!--KEYS AND FUCNTIONS-->


<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->

   <axsl:template match="*" mode="schematron-get-full-path">
      <axsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">
            <axsl:value-of select="name()"/>
            <axsl:variable name="p" select="1+    count(preceding-sibling::*[name()=name(current())])"/>
            <axsl:if test="$p&gt;1 or following-sibling::*[name()=name(current())]">[<axsl:value-of select="$p"/>]</axsl:if>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>*[local-name()='</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>']</axsl:text>
            <axsl:variable name="p" select="1+   count(preceding-sibling::*[local-name()=local-name(current())])"/>
            <axsl:if test="$p&gt;1 or following-sibling::*[local-name()=local-name(current())]">[<axsl:value-of select="$p"/>]</axsl:if>
         </axsl:otherwise>
      </axsl:choose>
   </axsl:template>
   <axsl:template match="@*" mode="schematron-get-full-path">
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">@<axsl:value-of select="name()"/>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>@*[local-name()='</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>' and namespace-uri()='</axsl:text>
            <axsl:value-of select="namespace-uri()"/>
            <axsl:text>']</axsl:text>
         </axsl:otherwise>
      </axsl:choose>
   </axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-2-->
<!--This mode can be used to generate prefixed XPath for humans-->

   <axsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template><!--MODE: SCHEMATRON-FULL-PATH-3-->
<!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->

   <axsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="parent::*">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template>

<!--MODE: GENERATE-ID-FROM-PATH -->

   <axsl:template match="/" mode="generate-id-from-path"/>
   <axsl:template match="text()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </axsl:template>
   <axsl:template match="comment()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </axsl:template>
   <axsl:template match="processing-instruction()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </axsl:template>
   <axsl:template match="@*" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.@', name())"/>
   </axsl:template>
   <axsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:text>.</axsl:text>
      <axsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </axsl:template>

<!--MODE: GENERATE-ID-2 -->

   <axsl:template match="/" mode="generate-id-2">U</axsl:template>
   <axsl:template match="*" mode="generate-id-2" priority="2">
      <axsl:text>U</axsl:text>
      <axsl:number level="multiple" count="*"/>
   </axsl:template>
   <axsl:template match="node()" mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple" count="*"/>
      <axsl:text>n</axsl:text>
      <axsl:number count="node()"/>
   </axsl:template>
   <axsl:template match="@*" mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple" count="*"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="string-length(local-name(.))"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="translate(name(),':','.')"/>
   </axsl:template><!--Strip characters-->
   <axsl:template match="text()" priority="-1"/>

<!--SCHEMA METADATA-->

   <axsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" title="BII2 CORE restrictions for Despatch Advice Transaction (T16) CrossIndustryDespatchAdvice_3p0-D11A" schemaVersion="iso">
         <axsl:comment>
            <axsl:value-of select="$archiveDirParameter"/>   
		 <axsl:value-of select="$archiveNameParameter"/>  
		 <axsl:value-of select="$fileNameParameter"/>  
		 <axsl:value-of select="$fileDirParameter"/>
         </axsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:5:ISO42173A:2011-08-31" prefix="clm5ISO42173A"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:6:0133:40106" prefix="clm60133"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:6:3055:D11A" prefix="clm63055"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:6:Recommendation20:7" prefix="clm6Recommendation20"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccessRightsType:D11A" prefix="clm210AccountingE704"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountBalanceReopeningType:D11A" prefix="clm210AccountingE602"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountClassification:D11A" prefix="clm210AccountingE902"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountNatureType:D11A" prefix="clm210AccountingE502"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountStatus:D11A" prefix="clm210AccountingE305"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountType:D11A" prefix="clm210AccountingE501"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAmountQualifierType:D11A" prefix="clm210AccountingE603"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAmountType:D11A" prefix="clm210AccountingE601"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingContact:D11A" prefix="clm210AccountingE023"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingDocumentType:D11A" prefix="clm210AccountingE006"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryCategory:D11A" prefix="clm210AccountingE202"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryLineCategory:D11A" prefix="clm210AccountingE203"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryLineSource:D11A" prefix="clm210AccountingE302"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryProcessing:D11A" prefix="clm210AccountingE201"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingJournal:D11A" prefix="clm210AccountingE012"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingJournalCategory:D11A" prefix="clm210AccountingE013"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingPeriodFunctionType:D11A" prefix="clm210AccountingE703"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingPerquisite:D11A" prefix="clm210AccountingE021"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingVoucherMedium:D11A" prefix="clm210AccountingE101"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AdditionalPostponement:D11A" prefix="clm210AccountingE904"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AddressFormatType:D11A" prefix="clm210AccountingE011"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AlternateCurrencyAmount:D11A" prefix="clm210AccountingE304"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AmortizationMethod:D11A" prefix="clm210AccountingE204"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AmountWeightType:D11A" prefix="clm210AccountingE702"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:CertificateType:D11A" prefix="clm210AccountingE004"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:FinancialAccountType:D11A" prefix="clm210AccountingE016"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:FinancialInstitutionRole:D11A" prefix="clm210AccountingE015"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:LifetimeEndCost:D11A" prefix="clm210LifetimeEndCostE206"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:OrganizationFunctionType:D11A" prefix="clm210OrganizationFunctionTypeE706"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:PartyType:D11A" prefix="clm210PartyTypeE705"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:RefundMethod:D11A" prefix="clm210RefundMethodE022"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:ScenarioType:D11A" prefix="clm210ScenarioTypeE018"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:SoftwareUserType:D11A" prefix="clm210SoftwareUserTypeE019"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:TaxExemptionReason:D11A" prefix="clm210AccountingE307"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:IANA:CharacterSetCode:2010-11-04" prefix="clmIANACharacterSetCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:IANA:MIMEMediaType:2011-09-23" prefix="clmIANAMIMEMediaType"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:ISO:ISO2AlphaLanguageCode:20061027" prefix="clm5ISO63912A"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ActionCode:D10B" prefix="clm61229LineStatusCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AddressType:D10B" prefix="clm63131"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AdjustmentReasonDescriptionCode:D10B" prefix="clm64465"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AdjustmentReasonDescriptionCodeFinancial:D10B" prefix="clm64465AdjustmentReasonCodeFinancial"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeCargoOperationalCategory:D10A" prefix="clm63055CargoOperationalCategory"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeGoodsTypeCode:D10A" prefix="clm63055GoodsTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeTransportEquipmentSizeTypeCode:D10A" prefix="clm63055TransportEquipmentSizeTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AllowanceChargeIdentificationCode:D10B" prefix="clm65189AllowanceChargeID"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AllowanceChargeReasonCode:D10B" prefix="clm64465AllowanceChargeReasonCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:AutomaticDataCaptureMethodCode:D10B" prefix="clm67233AutomaticDataCaptureMethodCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CargoOperationalCategoryCode:D10B" prefix="clm67085b"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CargoTypeClassificationCode:D10B" prefix="clm67085"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CargoTypeCode:1996Rev2Final" prefix="clm6Recommendation21AnnexI"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CommodityIdentificationCode:D10B" prefix="clm67357"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CommunicationMeansTypeCode:D10B" prefix="clm63155CommunicationChannelCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ContactFunctionCode:D10B" prefix="clm63139ContactTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ContractTypeCode:D10B" prefix="clm69651"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ContractorType:D10B" prefix="clm6ContractorType"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CostManagementCode:D10B" prefix="clm69653"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CostReportingCode:D10B" prefix="clm69655"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:CustomsDutyRegimeTypeCode:D10B" prefix="clm69213"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DangerousGoodsPackingCode:D10B" prefix="clm68339"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DangerousGoodsRegulationCode:D10B" prefix="clm68273"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DateTimePeriodFunctionCode:D10B" prefix="clm62005DateTimePeriodFunctionCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryPlanCommitmentLevelCode:D10B" prefix="clm64017CommitmentLevelCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryTermsCode:2000" prefix="clm64053"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryTermsFunctionCode:D10B" prefix="clm64055DeliveryTermsFunctionCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DimensionTypeCode:D10B" prefix="clm66145"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCode:D10B" prefix="clm61001"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeAccounting:D10B" prefix="clm61001Accounting"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeBilling:D10B" prefix="clm61001Billing"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeInvoice:D10B" prefix="clm61001Invoice"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeQuotation:D10B" prefix="clm61001DocumentTypeCodeQuotation"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeRemittance:D10B" prefix="clm61001DocumentTypeCodeRemittance"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeScheduling:D10B" prefix="clm61001DocumentTypeCodeScheduling"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentStatusCode:D10B" prefix="clm61373"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DutyTaxFeeTypeCode:D10B" prefix="clm65153"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:DutyorTaxorFeeCategoryCode:D10B" prefix="clm65305"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:EarnedValueCalculationMethod:D10B" prefix="clm69657"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:EquipmentSizeTypeDescriptionCode:D10B" prefix="clm68155"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:EquipmentSupplierCode:D10B" prefix="clm68077"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:EventTimeReferenceCode:D10B" prefix="clm62475"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:EventTimeReferenceCodePaymentTermsEvent:D10B" prefix="clm62475PaymentTermsEvent"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:FreightChargeQuantityUnitBasisCode:D10B" prefix="clm6TDED6131"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:FreightChargeTariffCode:D10B" prefix="clm65243"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:FundingTypeCode:D10B" prefix="clm69659"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:GoodsTypeCode:D10B" prefix="clm6TDED7357"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:GoodsTypeExtensionCode:D10B" prefix="clm6TDED7361"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:GovernmentActionCode:D10B" prefix="clm69417"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:HierarchicalStructureTypeCode:D10B" prefix="clm69661"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:LocationFunctionCode:D10B" prefix="clm63227"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MarkingInstructionCode:D10B" prefix="clm64233"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MeasuredAttributeCode:D10B" prefix="clm66313"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeAirflow:4" prefix="clm6Recommendation20Airflow"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeDuration:4" prefix="clm6Recommendation20Duration"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeLinear:4" prefix="clm6Recommendation20Linear"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeTemperature:4" prefix="clm6Recommendation20Temperature"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeVolume:4" prefix="clm6Recommendation20Volume"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeWeight:4" prefix="clm6Recommendation20Weight"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MessageFunctionCode:D10B" prefix="clm61225MessageFunctionTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:MessageFunctionCodeAcknowledgement:D10B" prefix="clm61225Acknowledgement"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ObligationGuaranteeCode:D10B" prefix="clm6TDED4377"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PackageTypeCode:2006" prefix="clm67065"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PackagingLevelCode:D10B" prefix="clm67075"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PackagingMarkingCode:D10B" prefix="clm67233PackagingMarkingCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PartyRoleCode:D10B" prefix="clm63035"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PartyRoleCodeChargePaying:D10B" prefix="clm63035ChargePaying"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentGuaranteeMeansCode:D10B" prefix="clm64431"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMeansChannelCode:D10B" prefix="clm64435"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMeansCode:D10B" prefix="clm64461"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMethodCode:D10B" prefix="clm64439"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentTermsTypeCode:D10B" prefix="clm64279"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PlanningLevel:D10B" prefix="clm6PlanningLevel"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PriceTypeCode:D10B" prefix="clm65375"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:PriorityDescriptionCode:D10B" prefix="clm64037PriorityDescriptionCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ProcessTypeCode:D10B" prefix="clm67187"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ProjectTypeCode:D10B" prefix="clm69665"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ReferenceTypeCode:D10B" prefix="clm61153ReferenceTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ReportingThresholdTriggerType:D10B" prefix="clm69667"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ResourceCostCategory:D10B" prefix="clm69669"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ResourcePlanMeasureType:D10B" prefix="clm69671"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ResponseTypeCode:D10B" prefix="clm64343ResponseTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ResponsibleAgencyCode:D10B" prefix="clm69415ResponsibleAgencyCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ResponsibleAgencyInvolvementCode:D10B" prefix="clm69411ResponsibleAgencyInvolvementCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTaskRelationshipType:D10B" prefix="clm69673"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTaskType:D10B" prefix="clm69675"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTypeCode:D10B" prefix="clm6ScheduleTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:SealConditionCode:D10B" prefix="clm64517"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:SealTypeCode:D10B" prefix="clm6SealTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:SealingPartyRoleCode:D10B" prefix="clm69303"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:SecurityClassificationType:D10B" prefix="clm69677"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:StatusCode:D10B" prefix="clm64405"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:StatusDescriptionCodeAccountingDebitCredit:D10B" prefix="clm64405AccountingDebitCredit"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:StatusDescriptionCodeWorkflow:D10B" prefix="clm64405StatusCodeWorkflow"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TemperatureTypeCode:D10B" prefix="clm66245"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentCategoryCode:D10B" prefix="clm68053"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentFullnessCode:D10B" prefix="clm68169"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentHaulageArrangementsCode:D10B" prefix="clm68341"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMeansDirectionCode:D10B" prefix="clm68101"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMeansTypeCode:2007" prefix="clm6Recommendation28"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportModeCode:2" prefix="clm6Recommendation19"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMovementStageCode:D10B" prefix="clm68051"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMovementTypeCode:D10B" prefix="clm68323TransportMovementTypeCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportPaymentArrangementCode:D10B" prefix="clm64237TransportPaymentArrangementCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceCategoryCode:D10B" prefix="clm65237TransportServiceCategoryCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceConditionCode:D10B" prefix="clm64065TransportServiceConditionCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServicePriorityCode:D10B" prefix="clm64219TransportServicePriorityCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceRequirementCode:D10B" prefix="clm67273TransportServiceRequirementCode"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:codelist:standard:UNECE:TransportStatusCode:4" prefix="clm6Recommendation24"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:Standard:QualifiedDataType:10" prefix="qdt"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" prefix="ram"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3" prefix="rsm"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" prefix="udt"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:documentation:standard:CoreComponentsTechnicalSpecification:2" prefix="ccts"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:identifierlist:standard:5:ISO316612A:SecondEdition2006VI-10" prefix="ids5ISO316612A"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:identifierlist:standard:ISO:ISOAlpha2LanguageCode:20061027" prefix="ids5ISO63912A"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:identifierlist:standard:UNECE:FreightCostCode:4" prefix="ids6Recommendation23"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:identifierlist:standard:UNECE:PaymentTermsDescriptionIdentifier:D10B" prefix="ids64277"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M160"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M161"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M162"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M163"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M164"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M165"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M166"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M167"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M168"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M169"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M170"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M171"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M172"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M173"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M174"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M175"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M176"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M177"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M178"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M179"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M180"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M181"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M182"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M183"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M184"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M185"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M186"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M187"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M188"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M189"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M190"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M191"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M192"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M193"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M194"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M195"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M196"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M197"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M198"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M199"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M200"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M201"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M202"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M203"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M204"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M205"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M206"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M207"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M208"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M209"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M210"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M211"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M212"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M213"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M214"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M215"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M216"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M217"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M218"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M219"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M220"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M221"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M222"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M223"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M224"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M225"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M226"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M227"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M228"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M229"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M230"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M231"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M232"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M233"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M234"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M235"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M236"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M237"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M238"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M239"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M240"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M241"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M242"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M243"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M244"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M245"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M246"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M247"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M248"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M249"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M250"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M251"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M252"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M253"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M254"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M255"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M256"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M257"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M258"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M259"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M260"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M261"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M262"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M263"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M264"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M265"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M266"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M267"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M268"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M269"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M270"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M271"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M272"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M273"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M274"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M275"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M276"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M277"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M278"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M279"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M280"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M281"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M282"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M283"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M284"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M285"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M286"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M287"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M288"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M289"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M290"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M291"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M292"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M293"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M294"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M295"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M296"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M297"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M298"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M299"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M300"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M301"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M302"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M303"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M304"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M305"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M306"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M307"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M308"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M309"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M310"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M311"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M312"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M313"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M314"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M315"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M316"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M317"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M318"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M319"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M320"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M321"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M322"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M323"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M324"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M325"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M326"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M327"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M328"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M329"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M330"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M331"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M332"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M333"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M334"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M335"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M336"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M337"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M338"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M339"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M340"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M341"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M342"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M343"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M344"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M345"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M346"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M347"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M348"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M349"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M350"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M351"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M352"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M353"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M354"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M355"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M356"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M357"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M358"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M359"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M360"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M361"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M362"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M363"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M364"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M365"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M366"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M367"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M368"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M369"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M370"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M371"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M372"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M373"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M374"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M375"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M376"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M377"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M378"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M379"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M380"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M381"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M382"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M383"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M384"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M385"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M386"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M387"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M388"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M389"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M390"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M391"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M392"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M393"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M394"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M395"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M396"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M397"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M398"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M399"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M400"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M401"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M402"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M403"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M404"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M405"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M406"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M407"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M408"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M409"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M410"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M411"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M412"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M413"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M414"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M415"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M416"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M417"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M418"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M419"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M420"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M421"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M422"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M423"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M424"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M425"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M426"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M427"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M428"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M429"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M430"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M431"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M432"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M433"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M434"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M435"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M436"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M437"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M438"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M439"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M440"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M441"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M442"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M443"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M444"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M445"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M446"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M447"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M448"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M449"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M450"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M451"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M452"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M453"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M454"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M455"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M456"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M457"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M458"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M459"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M460"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M461"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M462"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M463"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M464"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M465"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M466"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M467"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M468"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M469"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M470"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M471"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M472"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M473"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M474"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M475"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M476"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M477"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M478"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M479"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M480"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M481"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M482"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M483"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M484"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M485"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M486"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M487"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M488"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M489"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M490"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M491"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M492"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M493"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M494"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M495"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M496"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M497"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M498"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M499"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M500"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M501"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M502"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M503"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M504"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M505"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M506"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M507"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M508"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M509"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M510"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M511"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M512"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M513"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M514"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M515"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M516"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M517"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M518"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M519"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M520"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M521"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M522"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M523"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M524"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M525"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M526"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M527"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M528"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M529"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M530"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M531"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M532"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M533"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M534"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M535"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M536"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M537"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M538"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M539"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M540"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M541"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M542"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M543"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M544"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M545"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M546"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M547"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M548"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M549"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M550"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M551"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M552"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M553"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M554"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M555"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M556"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M557"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M558"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M559"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M560"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M561"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M562"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M563"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M564"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M565"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M566"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M567"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M568"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M569"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M570"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M571"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M572"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M573"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M574"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M575"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M576"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M577"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M578"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M579"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M580"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M581"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M582"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M583"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M584"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M585"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M586"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M587"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M588"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M589"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M590"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M591"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M592"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M593"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M594"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M595"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M596"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M597"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M598"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M599"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M600"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M601"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M602"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M603"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M604"/>
         <svrl:active-pattern>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M605"/>
      </svrl:schematron-output>
   </axsl:template>

<!--SCHEMATRON PATTERNS-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema">BII2 CORE restrictions for Despatch Advice Transaction (T16) CrossIndustryDespatchAdvice_3p0-D11A</svrl:text>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument" priority="1000" mode="M160">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:IncludedCINote)&lt;=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:IncludedCINote)&lt;=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:IncludedCINote' may occur at maximum 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M160"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M160"/>
   <axsl:template match="@*|node()" priority="-2" mode="M160">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M160"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:ControlRequirementIndicator" priority="1000" mode="M161">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:ControlRequirementIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ControlRequirementIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M161"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M161"/>
   <axsl:template match="@*|node()" priority="-2" mode="M161">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M161"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:CopyIndicator" priority="1000" mode="M162">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:CopyIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CopyIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M162"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M162"/>
   <axsl:template match="@*|node()" priority="-2" mode="M162">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M162"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:ID" priority="1000" mode="M163">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M163"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M163"/>
   <axsl:template match="@*|node()" priority="-2" mode="M163">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M163"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote" priority="1000" mode="M164">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:Content)&lt;=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:Content)&lt;=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:Content' may occur at maximum 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M164"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M164"/>
   <axsl:template match="@*|node()" priority="-2" mode="M164">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M164"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:Content" priority="1000" mode="M165">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:Content"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M165"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M165"/>
   <axsl:template match="@*|node()" priority="-2" mode="M165">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M165"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:ContentCode" priority="1000" mode="M166">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:ContentCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ContentCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M166"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M166"/>
   <axsl:template match="@*|node()" priority="-2" mode="M166">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M166"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:ID" priority="1000" mode="M167">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M167"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M167"/>
   <axsl:template match="@*|node()" priority="-2" mode="M167">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M167"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:Subject" priority="1000" mode="M168">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:Subject"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Subject' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M168"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M168"/>
   <axsl:template match="@*|node()" priority="-2" mode="M168">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M168"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:SubjectCode" priority="1000" mode="M169">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IncludedCINote/ram:SubjectCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubjectCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M169"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M169"/>
   <axsl:template match="@*|node()" priority="-2" mode="M169">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M169"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IssuerCITradeParty" priority="1000" mode="M170">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:IssuerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssuerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M170"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M170"/>
   <axsl:template match="@*|node()" priority="-2" mode="M170">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M170"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:Name" priority="1000" mode="M171">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M171"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M171"/>
   <axsl:template match="@*|node()" priority="-2" mode="M171">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M171"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:Purpose" priority="1000" mode="M172">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:Purpose"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Purpose' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M172"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M172"/>
   <axsl:template match="@*|node()" priority="-2" mode="M172">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M172"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:PurposeCode" priority="1000" mode="M173">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:PurposeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PurposeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M173"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M173"/>
   <axsl:template match="@*|node()" priority="-2" mode="M173">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M173"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:RequestedResponseTypeCode" priority="1000" mode="M174">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:RequestedResponseTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RequestedResponseTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M174"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M174"/>
   <axsl:template match="@*|node()" priority="-2" mode="M174">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M174"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:StatusCode" priority="1000" mode="M175">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:StatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M175"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M175"/>
   <axsl:template match="@*|node()" priority="-2" mode="M175">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M175"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:TypeCode" priority="1000" mode="M176">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:HeaderCIDDHExchangedDocument/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M176"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M176"/>
   <axsl:template match="@*|node()" priority="-2" mode="M176">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M176"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:AdditionalReferencedCIReferencedDocument" priority="1000" mode="M177">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:AdditionalReferencedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AdditionalReferencedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M177"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M177"/>
   <axsl:template match="@*|node()" priority="-2" mode="M177">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M177"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:ApplicableCITradeDeliveryTerms" priority="1000" mode="M178">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:ApplicableCITradeDeliveryTerms"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ApplicableCITradeDeliveryTerms' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M178"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M178"/>
   <axsl:template match="@*|node()" priority="-2" mode="M178">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M178"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty" priority="1000" mode="M179">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:ID)&lt;=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:ID)&lt;=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:ID' may occur at maximum 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M179"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M179"/>
   <axsl:template match="@*|node()" priority="-2" mode="M179">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M179"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:DefinedCITradeContact" priority="1000" mode="M180">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:DefinedCITradeContact"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DefinedCITradeContact' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M180"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M180"/>
   <axsl:template match="@*|node()" priority="-2" mode="M180">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M180"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:EndPointURICIUniversalCommunication" priority="1000" mode="M181">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:EndPointURICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EndPointURICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M181"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M181"/>
   <axsl:template match="@*|node()" priority="-2" mode="M181">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M181"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:GlobalID" priority="1000" mode="M182">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M182"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M182"/>
   <axsl:template match="@*|node()" priority="-2" mode="M182">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M182"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:ID" priority="1000" mode="M183">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M183"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M183"/>
   <axsl:template match="@*|node()" priority="-2" mode="M183">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M183"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile" priority="1000" mode="M184">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LogoAssociatedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M184"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M184"/>
   <axsl:template match="@*|node()" priority="-2" mode="M184">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M184"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:Name" priority="1000" mode="M185">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M185"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M185"/>
   <axsl:template match="@*|node()" priority="-2" mode="M185">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M185"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:PostalCITradeAddress" priority="1000" mode="M186">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:PostalCITradeAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostalCITradeAddress' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M186"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M186"/>
   <axsl:template match="@*|node()" priority="-2" mode="M186">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M186"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:RoleCode" priority="1000" mode="M187">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:RoleCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RoleCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M187"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M187"/>
   <axsl:template match="@*|node()" priority="-2" mode="M187">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M187"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:SpecifiedCILegalOrganization" priority="1000" mode="M188">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:SpecifiedCILegalOrganization"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCILegalOrganization' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M188"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M188"/>
   <axsl:template match="@*|node()" priority="-2" mode="M188">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M188"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:SpecifiedCITaxRegistration" priority="1000" mode="M189">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:SpecifiedCITaxRegistration"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCITaxRegistration' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M189"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M189"/>
   <axsl:template match="@*|node()" priority="-2" mode="M189">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M189"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:URICIUniversalCommunication" priority="1000" mode="M190">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerCITradeParty/ram:URICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M190"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M190"/>
   <axsl:template match="@*|node()" priority="-2" mode="M190">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M190"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument" priority="1000" mode="M191">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:IssuerAssignedID)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:IssuerAssignedID)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:IssuerAssignedID' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M191"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M191"/>
   <axsl:template match="@*|node()" priority="-2" mode="M191">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M191"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:AttachedSpecifiedBinaryFile" priority="1000" mode="M192">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:AttachedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AttachedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M192"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M192"/>
   <axsl:template match="@*|node()" priority="-2" mode="M192">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M192"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:CopyIndicator" priority="1000" mode="M193">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:CopyIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CopyIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M193"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M193"/>
   <axsl:template match="@*|node()" priority="-2" mode="M193">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M193"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:EffectiveCISpecifiedPeriod" priority="1000" mode="M194">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:EffectiveCISpecifiedPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EffectiveCISpecifiedPeriod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M194"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M194"/>
   <axsl:template match="@*|node()" priority="-2" mode="M194">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M194"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:GlobalID" priority="1000" mode="M195">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M195"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M195"/>
   <axsl:template match="@*|node()" priority="-2" mode="M195">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M195"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Information" priority="1000" mode="M196">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Information"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Information' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M196"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M196"/>
   <axsl:template match="@*|node()" priority="-2" mode="M196">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M196"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssueDateTime" priority="1000" mode="M197">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssueDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssueDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M197"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M197"/>
   <axsl:template match="@*|node()" priority="-2" mode="M197">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M197"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID" priority="1000" mode="M198">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M198"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M198"/>
   <axsl:template match="@*|node()" priority="-2" mode="M198">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M198"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerCITradeParty" priority="1000" mode="M199">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssuerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M199"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M199"/>
   <axsl:template match="@*|node()" priority="-2" mode="M199">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M199"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:LineID" priority="1000" mode="M200">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:LineID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LineID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M200"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M200"/>
   <axsl:template match="@*|node()" priority="-2" mode="M200">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M200"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Name" priority="1000" mode="M201">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M201"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M201"/>
   <axsl:template match="@*|node()" priority="-2" mode="M201">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M201"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:PreviousRevisionID" priority="1000" mode="M202">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:PreviousRevisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PreviousRevisionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M202"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M202"/>
   <axsl:template match="@*|node()" priority="-2" mode="M202">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M202"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:ReferenceTypeCode" priority="1000" mode="M203">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:ReferenceTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReferenceTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M203"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M203"/>
   <axsl:template match="@*|node()" priority="-2" mode="M203">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M203"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:RevisionID" priority="1000" mode="M204">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:RevisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RevisionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M204"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M204"/>
   <axsl:template match="@*|node()" priority="-2" mode="M204">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M204"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:SectionName" priority="1000" mode="M205">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:SectionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SectionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M205"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M205"/>
   <axsl:template match="@*|node()" priority="-2" mode="M205">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M205"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:StatusCode" priority="1000" mode="M206">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:StatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M206"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M206"/>
   <axsl:template match="@*|node()" priority="-2" mode="M206">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M206"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:URIID" priority="1000" mode="M207">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M207"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M207"/>
   <axsl:template match="@*|node()" priority="-2" mode="M207">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M207"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:ContractReferencedCIReferencedDocument" priority="1000" mode="M208">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:ContractReferencedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ContractReferencedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M208"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M208"/>
   <axsl:template match="@*|node()" priority="-2" mode="M208">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M208"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:DepartmentName" priority="1000" mode="M209">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:DepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DepartmentName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M209"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M209"/>
   <axsl:template match="@*|node()" priority="-2" mode="M209">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M209"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:DirectTelephoneCIUniversalCommunication" priority="1000" mode="M210">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:DirectTelephoneCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DirectTelephoneCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M210"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M210"/>
   <axsl:template match="@*|node()" priority="-2" mode="M210">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M210"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication" priority="1000" mode="M211">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:URIID)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:URIID)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:URIID' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M211"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M211"/>
   <axsl:template match="@*|node()" priority="-2" mode="M211">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M211"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M212">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M212"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M212"/>
   <axsl:template match="@*|node()" priority="-2" mode="M212">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M212"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M213">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CompleteNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M213"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M213"/>
   <axsl:template match="@*|node()" priority="-2" mode="M213">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M213"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:URIID" priority="1000" mode="M214">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M214"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M214"/>
   <axsl:template match="@*|node()" priority="-2" mode="M214">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M214"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication" priority="1000" mode="M215">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:CompleteNumber)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:CompleteNumber)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:CompleteNumber' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M215"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M215"/>
   <axsl:template match="@*|node()" priority="-2" mode="M215">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M215"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M216">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M216"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M216"/>
   <axsl:template match="@*|node()" priority="-2" mode="M216">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M216"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M217">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M217"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M217"/>
   <axsl:template match="@*|node()" priority="-2" mode="M217">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M217"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:URIID" priority="1000" mode="M218">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M218"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M218"/>
   <axsl:template match="@*|node()" priority="-2" mode="M218">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M218"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:ID" priority="1000" mode="M219">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M219"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M219"/>
   <axsl:template match="@*|node()" priority="-2" mode="M219">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M219"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:InstantMessagingCIUniversalCommunication" priority="1000" mode="M220">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:InstantMessagingCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InstantMessagingCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M220"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M220"/>
   <axsl:template match="@*|node()" priority="-2" mode="M220">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M220"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:JobTitle" priority="1000" mode="M221">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:JobTitle"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:JobTitle' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M221"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M221"/>
   <axsl:template match="@*|node()" priority="-2" mode="M221">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M221"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:MobileTelephoneCIUniversalCommunication" priority="1000" mode="M222">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:MobileTelephoneCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MobileTelephoneCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M222"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M222"/>
   <axsl:template match="@*|node()" priority="-2" mode="M222">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M222"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:PersonID" priority="1000" mode="M223">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:PersonID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PersonID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M223"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M223"/>
   <axsl:template match="@*|node()" priority="-2" mode="M223">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M223"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:PersonName" priority="1000" mode="M224">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:PersonName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M224"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M224"/>
   <axsl:template match="@*|node()" priority="-2" mode="M224">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M224"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:Responsibility" priority="1000" mode="M225">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:Responsibility"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Responsibility' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M225"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M225"/>
   <axsl:template match="@*|node()" priority="-2" mode="M225">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M225"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCIContactPerson" priority="1000" mode="M226">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCIContactPerson"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCIContactPerson' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M226"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M226"/>
   <axsl:template match="@*|node()" priority="-2" mode="M226">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M226"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCINote" priority="1000" mode="M227">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCINote"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCINote' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M227"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M227"/>
   <axsl:template match="@*|node()" priority="-2" mode="M227">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M227"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication" priority="1000" mode="M228">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:CompleteNumber)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:CompleteNumber)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:CompleteNumber' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M228"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M228"/>
   <axsl:template match="@*|node()" priority="-2" mode="M228">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M228"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M229">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M229"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M229"/>
   <axsl:template match="@*|node()" priority="-2" mode="M229">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M229"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M230">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M230"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M230"/>
   <axsl:template match="@*|node()" priority="-2" mode="M230">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M230"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:URIID" priority="1000" mode="M231">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M231"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M231"/>
   <axsl:template match="@*|node()" priority="-2" mode="M231">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M231"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelexCIUniversalCommunication" priority="1000" mode="M232">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TelexCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TelexCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M232"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M232"/>
   <axsl:template match="@*|node()" priority="-2" mode="M232">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M232"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TypeCode" priority="1000" mode="M233">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M233"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M233"/>
   <axsl:template match="@*|node()" priority="-2" mode="M233">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M233"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:VOIPCIUniversalCommunication" priority="1000" mode="M234">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:DefinedCITradeContact/ram:VOIPCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:VOIPCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M234"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M234"/>
   <axsl:template match="@*|node()" priority="-2" mode="M234">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M234"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:EndPointURICIUniversalCommunication" priority="1000" mode="M235">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:EndPointURICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EndPointURICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M235"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M235"/>
   <axsl:template match="@*|node()" priority="-2" mode="M235">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M235"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:GlobalID" priority="1000" mode="M236">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M236"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M236"/>
   <axsl:template match="@*|node()" priority="-2" mode="M236">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M236"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:ID" priority="1000" mode="M237">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M237"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M237"/>
   <axsl:template match="@*|node()" priority="-2" mode="M237">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M237"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile" priority="1000" mode="M238">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LogoAssociatedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M238"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M238"/>
   <axsl:template match="@*|node()" priority="-2" mode="M238">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M238"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:Name" priority="1000" mode="M239">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M239"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M239"/>
   <axsl:template match="@*|node()" priority="-2" mode="M239">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M239"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:PostalCITradeAddress" priority="1000" mode="M240">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:PostalCITradeAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostalCITradeAddress' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M240"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M240"/>
   <axsl:template match="@*|node()" priority="-2" mode="M240">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M240"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:RoleCode" priority="1000" mode="M241">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:RoleCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RoleCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M241"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M241"/>
   <axsl:template match="@*|node()" priority="-2" mode="M241">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M241"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:SpecifiedCILegalOrganization" priority="1000" mode="M242">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:SpecifiedCILegalOrganization"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCILegalOrganization' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M242"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M242"/>
   <axsl:template match="@*|node()" priority="-2" mode="M242">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M242"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:SpecifiedCITaxRegistration" priority="1000" mode="M243">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:SpecifiedCITaxRegistration"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCITaxRegistration' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M243"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M243"/>
   <axsl:template match="@*|node()" priority="-2" mode="M243">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M243"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:URICIUniversalCommunication" priority="1000" mode="M244">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeAgreement/ram:SellerCITradeParty/ram:URICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M244"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M244"/>
   <axsl:template match="@*|node()" priority="-2" mode="M244">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M244"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:Description" priority="1000" mode="M245">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M245"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M245"/>
   <axsl:template match="@*|node()" priority="-2" mode="M245">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M245"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:DescriptionBinaryObject" priority="1000" mode="M246">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:DescriptionBinaryObject"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DescriptionBinaryObject' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M246"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M246"/>
   <axsl:template match="@*|node()" priority="-2" mode="M246">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M246"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:EarliestOccurrenceDateTime" priority="1000" mode="M247">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:EarliestOccurrenceDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EarliestOccurrenceDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M247"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M247"/>
   <axsl:template match="@*|node()" priority="-2" mode="M247">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M247"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:ID" priority="1000" mode="M248">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M248"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M248"/>
   <axsl:template match="@*|node()" priority="-2" mode="M248">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M248"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:LatestOccurrenceDateTime" priority="1000" mode="M249">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:LatestOccurrenceDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LatestOccurrenceDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M249"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M249"/>
   <axsl:template match="@*|node()" priority="-2" mode="M249">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M249"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCILogisticsLocation" priority="1000" mode="M250">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCILogisticsLocation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:OccurrenceCILogisticsLocation' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M250"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M250"/>
   <axsl:template match="@*|node()" priority="-2" mode="M250">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M250"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:ContinuousIndicator" priority="1000" mode="M251">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:ContinuousIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ContinuousIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M251"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M251"/>
   <axsl:template match="@*|node()" priority="-2" mode="M251">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M251"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:Description" priority="1000" mode="M252">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M252"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M252"/>
   <axsl:template match="@*|node()" priority="-2" mode="M252">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M252"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:DurationMeasure" priority="1000" mode="M253">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:DurationMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DurationMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M253"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M253"/>
   <axsl:template match="@*|node()" priority="-2" mode="M253">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M253"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:EndDateTime" priority="1000" mode="M254">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:EndDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EndDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M254"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M254"/>
   <axsl:template match="@*|node()" priority="-2" mode="M254">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M254"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:ID" priority="1000" mode="M255">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M255"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M255"/>
   <axsl:template match="@*|node()" priority="-2" mode="M255">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M255"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:InclusiveIndicator" priority="1000" mode="M256">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:InclusiveIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InclusiveIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M256"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M256"/>
   <axsl:template match="@*|node()" priority="-2" mode="M256">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M256"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:Name" priority="1000" mode="M257">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M257"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M257"/>
   <axsl:template match="@*|node()" priority="-2" mode="M257">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M257"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:SeasonCode" priority="1000" mode="M258">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:SeasonCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SeasonCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M258"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M258"/>
   <axsl:template match="@*|node()" priority="-2" mode="M258">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M258"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:SequenceNumeric" priority="1000" mode="M259">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:SequenceNumeric"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SequenceNumeric' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M259"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M259"/>
   <axsl:template match="@*|node()" priority="-2" mode="M259">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M259"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:StartDateFlexibilityCode" priority="1000" mode="M260">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:StartDateFlexibilityCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StartDateFlexibilityCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M260"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M260"/>
   <axsl:template match="@*|node()" priority="-2" mode="M260">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M260"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:StartDateTime" priority="1000" mode="M261">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceCISpecifiedPeriod/ram:StartDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StartDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M261"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M261"/>
   <axsl:template match="@*|node()" priority="-2" mode="M261">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M261"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceDateTime" priority="1000" mode="M262">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:OccurrenceDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:OccurrenceDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M262"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M262"/>
   <axsl:template match="@*|node()" priority="-2" mode="M262">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M262"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:TypeCode" priority="1000" mode="M263">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M263"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M263"/>
   <axsl:template match="@*|node()" priority="-2" mode="M263">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M263"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:UnitQuantity" priority="1000" mode="M264">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent/ram:UnitQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:UnitQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M264"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M264"/>
   <axsl:template match="@*|node()" priority="-2" mode="M264">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M264"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualLoadingCISupplyChainEvent" priority="1000" mode="M265">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ActualLoadingCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ActualLoadingCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M265"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M265"/>
   <axsl:template match="@*|node()" priority="-2" mode="M265">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M265"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:AdditionalReferencedCIReferencedDocument" priority="1000" mode="M266">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:AdditionalReferencedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AdditionalReferencedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M266"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M266"/>
   <axsl:template match="@*|node()" priority="-2" mode="M266">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M266"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ConfirmedReleaseCISupplyChainEvent" priority="1000" mode="M267">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ConfirmedReleaseCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ConfirmedReleaseCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M267"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M267"/>
   <axsl:template match="@*|node()" priority="-2" mode="M267">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M267"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:FinalDeliveryIndicator" priority="1000" mode="M268">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:FinalDeliveryIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:FinalDeliveryIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M268"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M268"/>
   <axsl:template match="@*|node()" priority="-2" mode="M268">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M268"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:IncludedCISupplyChainPackaging" priority="1000" mode="M269">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:IncludedCISupplyChainPackaging"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IncludedCISupplyChainPackaging' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M269"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M269"/>
   <axsl:template match="@*|node()" priority="-2" mode="M269">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M269"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:InformationCINote" priority="1000" mode="M270">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:InformationCINote"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InformationCINote' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M270"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M270"/>
   <axsl:template match="@*|node()" priority="-2" mode="M270">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M270"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:PickUpAvailabilityDateTime" priority="1000" mode="M271">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:PickUpAvailabilityDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PickUpAvailabilityDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M271"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M271"/>
   <axsl:template match="@*|node()" priority="-2" mode="M271">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M271"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:PlannedDeliveryCISupplyChainEvent" priority="1000" mode="M272">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:PlannedDeliveryCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PlannedDeliveryCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M272"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M272"/>
   <axsl:template match="@*|node()" priority="-2" mode="M272">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M272"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:AssociatedInvoiceAmount" priority="1000" mode="M273">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:AssociatedInvoiceAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AssociatedInvoiceAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M273"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M273"/>
   <axsl:template match="@*|node()" priority="-2" mode="M273">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M273"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:DefinedCITradeContact" priority="1000" mode="M274">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:DefinedCITradeContact"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DefinedCITradeContact' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M274"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M274"/>
   <axsl:template match="@*|node()" priority="-2" mode="M274">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M274"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:EndPointURICIUniversalCommunication" priority="1000" mode="M275">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:EndPointURICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EndPointURICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M275"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M275"/>
   <axsl:template match="@*|node()" priority="-2" mode="M275">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M275"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:GlobalID" priority="1000" mode="M276">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M276"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M276"/>
   <axsl:template match="@*|node()" priority="-2" mode="M276">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M276"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:ID" priority="1000" mode="M277">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M277"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M277"/>
   <axsl:template match="@*|node()" priority="-2" mode="M277">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M277"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile" priority="1000" mode="M278">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LogoAssociatedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M278"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M278"/>
   <axsl:template match="@*|node()" priority="-2" mode="M278">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M278"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:Name" priority="1000" mode="M279">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M279"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M279"/>
   <axsl:template match="@*|node()" priority="-2" mode="M279">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M279"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:PostalCITradeAddress" priority="1000" mode="M280">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:PostalCITradeAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostalCITradeAddress' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M280"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M280"/>
   <axsl:template match="@*|node()" priority="-2" mode="M280">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M280"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:RoleCode" priority="1000" mode="M281">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:RoleCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RoleCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M281"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M281"/>
   <axsl:template match="@*|node()" priority="-2" mode="M281">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M281"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:SpecifiedCILegalOrganization" priority="1000" mode="M282">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:SpecifiedCILegalOrganization"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCILegalOrganization' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M282"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M282"/>
   <axsl:template match="@*|node()" priority="-2" mode="M282">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M282"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:SpecifiedCITaxRegistration" priority="1000" mode="M283">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:SpecifiedCITaxRegistration"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCITaxRegistration' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M283"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M283"/>
   <axsl:template match="@*|node()" priority="-2" mode="M283">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M283"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:URICIUniversalCommunication" priority="1000" mode="M284">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CarrierCITradeParty/ram:URICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M284"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M284"/>
   <axsl:template match="@*|node()" priority="-2" mode="M284">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M284"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:ConsigneeCITradeParty" priority="1000" mode="M285">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:ConsigneeCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ConsigneeCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M285"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M285"/>
   <axsl:template match="@*|node()" priority="-2" mode="M285">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M285"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:ConsignorCITradeParty" priority="1000" mode="M286">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:ConsignorCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ConsignorCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M286"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M286"/>
   <axsl:template match="@*|node()" priority="-2" mode="M286">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M286"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CustomsExportAgentCITradeParty" priority="1000" mode="M287">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CustomsExportAgentCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CustomsExportAgentCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M287"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M287"/>
   <axsl:template match="@*|node()" priority="-2" mode="M287">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M287"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CustomsImportAgentCITradeParty" priority="1000" mode="M288">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:CustomsImportAgentCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CustomsImportAgentCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M288"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M288"/>
   <axsl:template match="@*|node()" priority="-2" mode="M288">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M288"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:DeclaredValueForCustomsAmount" priority="1000" mode="M289">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:DeclaredValueForCustomsAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DeclaredValueForCustomsAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M289"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M289"/>
   <axsl:template match="@*|node()" priority="-2" mode="M289">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M289"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:DeliveryCITradeParty" priority="1000" mode="M290">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:DeliveryCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DeliveryCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M290"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M290"/>
   <axsl:template match="@*|node()" priority="-2" mode="M290">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M290"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:FreightForwarderCITradeParty" priority="1000" mode="M291">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:FreightForwarderCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:FreightForwarderCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M291"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M291"/>
   <axsl:template match="@*|node()" priority="-2" mode="M291">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M291"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:GrossVolumeMeasure" priority="1000" mode="M292">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:GrossVolumeMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GrossVolumeMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M292"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M292"/>
   <axsl:template match="@*|node()" priority="-2" mode="M292">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M292"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:GrossWeightMeasure" priority="1000" mode="M293">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:GrossWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GrossWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M293"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M293"/>
   <axsl:template match="@*|node()" priority="-2" mode="M293">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M293"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:GroupingCentreCITradeParty" priority="1000" mode="M294">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:GroupingCentreCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GroupingCentreCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M294"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M294"/>
   <axsl:template match="@*|node()" priority="-2" mode="M294">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M294"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:NetWeightMeasure" priority="1000" mode="M295">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:NetWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:NetWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M295"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M295"/>
   <axsl:template match="@*|node()" priority="-2" mode="M295">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M295"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:PackageQuantity" priority="1000" mode="M296">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:PackageQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PackageQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M296"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M296"/>
   <axsl:template match="@*|node()" priority="-2" mode="M296">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M296"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:Mode" priority="1000" mode="M297">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:Mode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Mode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M297"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M297"/>
   <axsl:template match="@*|node()" priority="-2" mode="M297">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M297"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:ModeCode" priority="1000" mode="M298">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:ModeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ModeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M298"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M298"/>
   <axsl:template match="@*|node()" priority="-2" mode="M298">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M298"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:StageCode" priority="1000" mode="M299">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:StageCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StageCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M299"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M299"/>
   <axsl:template match="@*|node()" priority="-2" mode="M299">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M299"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:ID" priority="1000" mode="M300">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M300"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M300"/>
   <axsl:template match="@*|node()" priority="-2" mode="M300">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M300"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:Name" priority="1000" mode="M301">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M301"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M301"/>
   <axsl:template match="@*|node()" priority="-2" mode="M301">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M301"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:OwnerCITradeParty" priority="1000" mode="M302">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:OwnerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:OwnerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M302"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M302"/>
   <axsl:template match="@*|node()" priority="-2" mode="M302">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M302"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:Type" priority="1000" mode="M303">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:Type"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M303"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M303"/>
   <axsl:template match="@*|node()" priority="-2" mode="M303">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M303"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:TypeCode" priority="1000" mode="M304">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:SpecifiedCILogisticsTransportMovement/ram:UsedCILogisticsTransportMeans/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M304"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M304"/>
   <axsl:template match="@*|node()" priority="-2" mode="M304">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M304"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:TotalChargeAmount" priority="1000" mode="M305">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:TotalChargeAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TotalChargeAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M305"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M305"/>
   <axsl:template match="@*|node()" priority="-2" mode="M305">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M305"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:TransportContractCIReferencedDocument" priority="1000" mode="M306">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:TransportContractCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TransportContractCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M306"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M306"/>
   <axsl:template match="@*|node()" priority="-2" mode="M306">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M306"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:UtilizedCILogisticsTransportEquipment" priority="1000" mode="M307">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment/ram:UtilizedCILogisticsTransportEquipment"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:UtilizedCILogisticsTransportEquipment' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M307"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M307"/>
   <axsl:template match="@*|node()" priority="-2" mode="M307">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M307"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RequestedDeliveryCISupplyChainEvent" priority="1000" mode="M308">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:RequestedDeliveryCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RequestedDeliveryCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M308"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M308"/>
   <axsl:template match="@*|node()" priority="-2" mode="M308">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M308"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:DepartmentName" priority="1000" mode="M309">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:DepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DepartmentName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M309"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M309"/>
   <axsl:template match="@*|node()" priority="-2" mode="M309">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M309"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:DirectTelephoneCIUniversalCommunication" priority="1000" mode="M310">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:DirectTelephoneCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DirectTelephoneCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M310"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M310"/>
   <axsl:template match="@*|node()" priority="-2" mode="M310">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M310"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication" priority="1000" mode="M311">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:URIID)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:URIID)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:URIID' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M311"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M311"/>
   <axsl:template match="@*|node()" priority="-2" mode="M311">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M311"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M312">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M312"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M312"/>
   <axsl:template match="@*|node()" priority="-2" mode="M312">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M312"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M313">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CompleteNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M313"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M313"/>
   <axsl:template match="@*|node()" priority="-2" mode="M313">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M313"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:URIID" priority="1000" mode="M314">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M314"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M314"/>
   <axsl:template match="@*|node()" priority="-2" mode="M314">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M314"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication" priority="1000" mode="M315">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:CompleteNumber)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:CompleteNumber)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:CompleteNumber' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M315"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M315"/>
   <axsl:template match="@*|node()" priority="-2" mode="M315">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M315"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M316">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M316"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M316"/>
   <axsl:template match="@*|node()" priority="-2" mode="M316">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M316"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M317">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M317"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M317"/>
   <axsl:template match="@*|node()" priority="-2" mode="M317">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M317"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:URIID" priority="1000" mode="M318">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M318"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M318"/>
   <axsl:template match="@*|node()" priority="-2" mode="M318">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M318"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:ID" priority="1000" mode="M319">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M319"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M319"/>
   <axsl:template match="@*|node()" priority="-2" mode="M319">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M319"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:InstantMessagingCIUniversalCommunication" priority="1000" mode="M320">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:InstantMessagingCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InstantMessagingCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M320"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M320"/>
   <axsl:template match="@*|node()" priority="-2" mode="M320">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M320"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:JobTitle" priority="1000" mode="M321">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:JobTitle"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:JobTitle' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M321"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M321"/>
   <axsl:template match="@*|node()" priority="-2" mode="M321">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M321"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:MobileTelephoneCIUniversalCommunication" priority="1000" mode="M322">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:MobileTelephoneCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MobileTelephoneCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M322"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M322"/>
   <axsl:template match="@*|node()" priority="-2" mode="M322">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M322"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:PersonID" priority="1000" mode="M323">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:PersonID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PersonID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M323"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M323"/>
   <axsl:template match="@*|node()" priority="-2" mode="M323">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M323"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:PersonName" priority="1000" mode="M324">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:PersonName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M324"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M324"/>
   <axsl:template match="@*|node()" priority="-2" mode="M324">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M324"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:Responsibility" priority="1000" mode="M325">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:Responsibility"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Responsibility' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M325"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M325"/>
   <axsl:template match="@*|node()" priority="-2" mode="M325">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M325"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCIContactPerson" priority="1000" mode="M326">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCIContactPerson"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCIContactPerson' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M326"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M326"/>
   <axsl:template match="@*|node()" priority="-2" mode="M326">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M326"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCINote" priority="1000" mode="M327">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCINote"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCINote' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M327"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M327"/>
   <axsl:template match="@*|node()" priority="-2" mode="M327">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M327"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication" priority="1000" mode="M328">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:CompleteNumber)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:CompleteNumber)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:CompleteNumber' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M328"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M328"/>
   <axsl:template match="@*|node()" priority="-2" mode="M328">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M328"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M329">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M329"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M329"/>
   <axsl:template match="@*|node()" priority="-2" mode="M329">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M329"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M330">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M330"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M330"/>
   <axsl:template match="@*|node()" priority="-2" mode="M330">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M330"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:URIID" priority="1000" mode="M331">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M331"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M331"/>
   <axsl:template match="@*|node()" priority="-2" mode="M331">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M331"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelexCIUniversalCommunication" priority="1000" mode="M332">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TelexCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TelexCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M332"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M332"/>
   <axsl:template match="@*|node()" priority="-2" mode="M332">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M332"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TypeCode" priority="1000" mode="M333">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M333"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M333"/>
   <axsl:template match="@*|node()" priority="-2" mode="M333">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M333"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:VOIPCIUniversalCommunication" priority="1000" mode="M334">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:DefinedCITradeContact/ram:VOIPCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:VOIPCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M334"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M334"/>
   <axsl:template match="@*|node()" priority="-2" mode="M334">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M334"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:EndPointURICIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M335">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:EndPointURICIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M335"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M335"/>
   <axsl:template match="@*|node()" priority="-2" mode="M335">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M335"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:EndPointURICIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M336">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:EndPointURICIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CompleteNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M336"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M336"/>
   <axsl:template match="@*|node()" priority="-2" mode="M336">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M336"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:EndPointURICIUniversalCommunication/ram:URIID" priority="1000" mode="M337">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:EndPointURICIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M337"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M337"/>
   <axsl:template match="@*|node()" priority="-2" mode="M337">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M337"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:GlobalID" priority="1000" mode="M338">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M338"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M338"/>
   <axsl:template match="@*|node()" priority="-2" mode="M338">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M338"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:ID" priority="1000" mode="M339">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M339"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M339"/>
   <axsl:template match="@*|node()" priority="-2" mode="M339">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M339"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile" priority="1000" mode="M340">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LogoAssociatedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M340"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M340"/>
   <axsl:template match="@*|node()" priority="-2" mode="M340">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M340"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:Name" priority="1000" mode="M341">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M341"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M341"/>
   <axsl:template match="@*|node()" priority="-2" mode="M341">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M341"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:PostalCITradeAddress" priority="1000" mode="M342">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:PostalCITradeAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostalCITradeAddress' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M342"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M342"/>
   <axsl:template match="@*|node()" priority="-2" mode="M342">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M342"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:RoleCode" priority="1000" mode="M343">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:RoleCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RoleCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M343"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M343"/>
   <axsl:template match="@*|node()" priority="-2" mode="M343">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M343"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:SpecifiedCILegalOrganization" priority="1000" mode="M344">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:SpecifiedCILegalOrganization"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCILegalOrganization' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M344"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M344"/>
   <axsl:template match="@*|node()" priority="-2" mode="M344">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M344"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:SpecifiedCITaxRegistration" priority="1000" mode="M345">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:SpecifiedCITaxRegistration"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCITaxRegistration' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M345"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M345"/>
   <axsl:template match="@*|node()" priority="-2" mode="M345">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M345"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:URICIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M346">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:URICIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M346"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M346"/>
   <axsl:template match="@*|node()" priority="-2" mode="M346">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M346"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:URICIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M347">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:URICIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M347"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M347"/>
   <axsl:template match="@*|node()" priority="-2" mode="M347">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M347"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:URICIUniversalCommunication/ram:URIID" priority="1000" mode="M348">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipFromCITradeParty/ram:URICIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M348"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M348"/>
   <axsl:template match="@*|node()" priority="-2" mode="M348">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M348"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty" priority="1000" mode="M349">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:ID)&lt;=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:ID)&lt;=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:ID' may occur at maximum 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M349"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M349"/>
   <axsl:template match="@*|node()" priority="-2" mode="M349">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M349"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:DepartmentName" priority="1000" mode="M350">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:DepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DepartmentName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M350"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M350"/>
   <axsl:template match="@*|node()" priority="-2" mode="M350">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M350"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:DirectTelephoneCIUniversalCommunication" priority="1000" mode="M351">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:DirectTelephoneCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DirectTelephoneCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M351"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M351"/>
   <axsl:template match="@*|node()" priority="-2" mode="M351">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M351"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication" priority="1000" mode="M352">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:URIID)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:URIID)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:URIID' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M352"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M352"/>
   <axsl:template match="@*|node()" priority="-2" mode="M352">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M352"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M353">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M353"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M353"/>
   <axsl:template match="@*|node()" priority="-2" mode="M353">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M353"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M354">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CompleteNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M354"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M354"/>
   <axsl:template match="@*|node()" priority="-2" mode="M354">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M354"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:URIID" priority="1000" mode="M355">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:EmailURICIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M355"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M355"/>
   <axsl:template match="@*|node()" priority="-2" mode="M355">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M355"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication" priority="1000" mode="M356">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:CompleteNumber)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:CompleteNumber)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:CompleteNumber' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M356"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M356"/>
   <axsl:template match="@*|node()" priority="-2" mode="M356">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M356"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M357">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M357"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M357"/>
   <axsl:template match="@*|node()" priority="-2" mode="M357">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M357"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M358">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M358"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M358"/>
   <axsl:template match="@*|node()" priority="-2" mode="M358">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M358"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:URIID" priority="1000" mode="M359">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:FaxCIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M359"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M359"/>
   <axsl:template match="@*|node()" priority="-2" mode="M359">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M359"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:ID" priority="1000" mode="M360">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M360"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M360"/>
   <axsl:template match="@*|node()" priority="-2" mode="M360">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M360"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:InstantMessagingCIUniversalCommunication" priority="1000" mode="M361">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:InstantMessagingCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InstantMessagingCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M361"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M361"/>
   <axsl:template match="@*|node()" priority="-2" mode="M361">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M361"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:JobTitle" priority="1000" mode="M362">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:JobTitle"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:JobTitle' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M362"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M362"/>
   <axsl:template match="@*|node()" priority="-2" mode="M362">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M362"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:MobileTelephoneCIUniversalCommunication" priority="1000" mode="M363">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:MobileTelephoneCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MobileTelephoneCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M363"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M363"/>
   <axsl:template match="@*|node()" priority="-2" mode="M363">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M363"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:PersonID" priority="1000" mode="M364">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:PersonID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PersonID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M364"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M364"/>
   <axsl:template match="@*|node()" priority="-2" mode="M364">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M364"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:PersonName" priority="1000" mode="M365">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:PersonName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M365"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M365"/>
   <axsl:template match="@*|node()" priority="-2" mode="M365">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M365"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:Responsibility" priority="1000" mode="M366">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:Responsibility"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Responsibility' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M366"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M366"/>
   <axsl:template match="@*|node()" priority="-2" mode="M366">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M366"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCIContactPerson" priority="1000" mode="M367">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCIContactPerson"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCIContactPerson' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M367"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M367"/>
   <axsl:template match="@*|node()" priority="-2" mode="M367">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M367"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCINote" priority="1000" mode="M368">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:SpecifiedCINote"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCINote' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M368"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M368"/>
   <axsl:template match="@*|node()" priority="-2" mode="M368">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M368"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication" priority="1000" mode="M369">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:CompleteNumber)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:CompleteNumber)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:CompleteNumber' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M369"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M369"/>
   <axsl:template match="@*|node()" priority="-2" mode="M369">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M369"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M370">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChannelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M370"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M370"/>
   <axsl:template match="@*|node()" priority="-2" mode="M370">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M370"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M371">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M371"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M371"/>
   <axsl:template match="@*|node()" priority="-2" mode="M371">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M371"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:URIID" priority="1000" mode="M372">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelephoneCIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M372"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M372"/>
   <axsl:template match="@*|node()" priority="-2" mode="M372">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M372"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelexCIUniversalCommunication" priority="1000" mode="M373">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TelexCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TelexCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M373"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M373"/>
   <axsl:template match="@*|node()" priority="-2" mode="M373">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M373"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TypeCode" priority="1000" mode="M374">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M374"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M374"/>
   <axsl:template match="@*|node()" priority="-2" mode="M374">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M374"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:VOIPCIUniversalCommunication" priority="1000" mode="M375">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:DefinedCITradeContact/ram:VOIPCIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:VOIPCIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M375"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M375"/>
   <axsl:template match="@*|node()" priority="-2" mode="M375">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M375"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:EndPointURICIUniversalCommunication/ram:ChannelCode" priority="1000" mode="M376">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:EndPointURICIUniversalCommunication/ram:ChannelCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M376"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M376"/>
   <axsl:template match="@*|node()" priority="-2" mode="M376">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M376"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:EndPointURICIUniversalCommunication/ram:CompleteNumber" priority="1000" mode="M377">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:EndPointURICIUniversalCommunication/ram:CompleteNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CompleteNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M377"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M377"/>
   <axsl:template match="@*|node()" priority="-2" mode="M377">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M377"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:EndPointURICIUniversalCommunication/ram:URIID" priority="1000" mode="M378">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:EndPointURICIUniversalCommunication/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M378"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M378"/>
   <axsl:template match="@*|node()" priority="-2" mode="M378">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M378"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:GlobalID" priority="1000" mode="M379">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M379"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M379"/>
   <axsl:template match="@*|node()" priority="-2" mode="M379">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M379"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:ID" priority="1000" mode="M380">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M380"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M380"/>
   <axsl:template match="@*|node()" priority="-2" mode="M380">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M380"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile" priority="1000" mode="M381">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LogoAssociatedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M381"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M381"/>
   <axsl:template match="@*|node()" priority="-2" mode="M381">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M381"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:Name" priority="1000" mode="M382">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M382"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M382"/>
   <axsl:template match="@*|node()" priority="-2" mode="M382">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M382"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress" priority="1000" mode="M383">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:CountrySubDivisionName)&lt;=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:CountrySubDivisionName)&lt;=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:CountrySubDivisionName' may occur at maximum 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M383"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M383"/>
   <axsl:template match="@*|node()" priority="-2" mode="M383">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M383"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:AdditionalStreetName" priority="1000" mode="M384">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:AdditionalStreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AdditionalStreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M384"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M384"/>
   <axsl:template match="@*|node()" priority="-2" mode="M384">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M384"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:AttentionOf" priority="1000" mode="M385">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:AttentionOf"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AttentionOf' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M385"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M385"/>
   <axsl:template match="@*|node()" priority="-2" mode="M385">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M385"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:BuildingName" priority="1000" mode="M386">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:BuildingName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BuildingName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M386"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M386"/>
   <axsl:template match="@*|node()" priority="-2" mode="M386">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M386"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:BuildingNumber" priority="1000" mode="M387">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:BuildingNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BuildingNumber' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M387"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M387"/>
   <axsl:template match="@*|node()" priority="-2" mode="M387">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M387"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CareOf" priority="1000" mode="M388">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CareOf"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CareOf' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M388"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M388"/>
   <axsl:template match="@*|node()" priority="-2" mode="M388">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M388"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CityName" priority="1000" mode="M389">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CityName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M389"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M389"/>
   <axsl:template match="@*|node()" priority="-2" mode="M389">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M389"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CitySubDivisionName" priority="1000" mode="M390">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CitySubDivisionName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M390"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M390"/>
   <axsl:template match="@*|node()" priority="-2" mode="M390">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M390"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountryID" priority="1000" mode="M391">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountryID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M391"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M391"/>
   <axsl:template match="@*|node()" priority="-2" mode="M391">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M391"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountryName" priority="1000" mode="M392">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountryName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CountryName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M392"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M392"/>
   <axsl:template match="@*|node()" priority="-2" mode="M392">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M392"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountrySubDivisionID" priority="1000" mode="M393">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountrySubDivisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CountrySubDivisionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M393"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M393"/>
   <axsl:template match="@*|node()" priority="-2" mode="M393">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M393"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountrySubDivisionName" priority="1000" mode="M394">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:CountrySubDivisionName"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M394"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M394"/>
   <axsl:template match="@*|node()" priority="-2" mode="M394">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M394"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:DepartmentName" priority="1000" mode="M395">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:DepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DepartmentName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M395"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M395"/>
   <axsl:template match="@*|node()" priority="-2" mode="M395">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M395"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:ID" priority="1000" mode="M396">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M396"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M396"/>
   <axsl:template match="@*|node()" priority="-2" mode="M396">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M396"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineFive" priority="1000" mode="M397">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineFive"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LineFive' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M397"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M397"/>
   <axsl:template match="@*|node()" priority="-2" mode="M397">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M397"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineFour" priority="1000" mode="M398">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineFour"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LineFour' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M398"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M398"/>
   <axsl:template match="@*|node()" priority="-2" mode="M398">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M398"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineOne" priority="1000" mode="M399">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineOne"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M399"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M399"/>
   <axsl:template match="@*|node()" priority="-2" mode="M399">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M399"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineThree" priority="1000" mode="M400">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineThree"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LineThree' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M400"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M400"/>
   <axsl:template match="@*|node()" priority="-2" mode="M400">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M400"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineTwo" priority="1000" mode="M401">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:LineTwo"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M401"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M401"/>
   <axsl:template match="@*|node()" priority="-2" mode="M401">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M401"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:PostOfficeBox" priority="1000" mode="M402">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:PostOfficeBox"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostOfficeBox' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M402"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M402"/>
   <axsl:template match="@*|node()" priority="-2" mode="M402">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M402"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:PostcodeCode" priority="1000" mode="M403">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:PostcodeCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M403"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M403"/>
   <axsl:template match="@*|node()" priority="-2" mode="M403">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M403"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:StreetName" priority="1000" mode="M404">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:PostalCITradeAddress/ram:StreetName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StreetName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M404"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M404"/>
   <axsl:template match="@*|node()" priority="-2" mode="M404">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M404"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:RoleCode" priority="1000" mode="M405">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:RoleCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RoleCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M405"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M405"/>
   <axsl:template match="@*|node()" priority="-2" mode="M405">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M405"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:SpecifiedCILegalOrganization" priority="1000" mode="M406">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:SpecifiedCILegalOrganization"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCILegalOrganization' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M406"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M406"/>
   <axsl:template match="@*|node()" priority="-2" mode="M406">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M406"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:SpecifiedCITaxRegistration" priority="1000" mode="M407">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:SpecifiedCITaxRegistration"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCITaxRegistration' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M407"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M407"/>
   <axsl:template match="@*|node()" priority="-2" mode="M407">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M407"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:URICIUniversalCommunication" priority="1000" mode="M408">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipToCITradeParty/ram:URICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M408"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M408"/>
   <axsl:template match="@*|node()" priority="-2" mode="M408">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M408"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:AttachedSpecifiedBinaryFile" priority="1000" mode="M409">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:AttachedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AttachedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M409"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M409"/>
   <axsl:template match="@*|node()" priority="-2" mode="M409">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M409"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:CopyIndicator" priority="1000" mode="M410">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:CopyIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CopyIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M410"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M410"/>
   <axsl:template match="@*|node()" priority="-2" mode="M410">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M410"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:EffectiveCISpecifiedPeriod" priority="1000" mode="M411">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:EffectiveCISpecifiedPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EffectiveCISpecifiedPeriod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M411"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M411"/>
   <axsl:template match="@*|node()" priority="-2" mode="M411">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M411"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:GlobalID" priority="1000" mode="M412">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M412"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M412"/>
   <axsl:template match="@*|node()" priority="-2" mode="M412">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M412"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:Information" priority="1000" mode="M413">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:Information"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Information' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M413"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M413"/>
   <axsl:template match="@*|node()" priority="-2" mode="M413">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M413"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:IssueDateTime" priority="1000" mode="M414">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:IssueDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssueDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M414"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M414"/>
   <axsl:template match="@*|node()" priority="-2" mode="M414">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M414"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:IssuerAssignedID" priority="1000" mode="M415">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:IssuerAssignedID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssuerAssignedID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M415"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M415"/>
   <axsl:template match="@*|node()" priority="-2" mode="M415">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M415"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:IssuerCITradeParty" priority="1000" mode="M416">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:IssuerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssuerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M416"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M416"/>
   <axsl:template match="@*|node()" priority="-2" mode="M416">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M416"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:LineID" priority="1000" mode="M417">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:LineID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LineID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M417"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M417"/>
   <axsl:template match="@*|node()" priority="-2" mode="M417">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M417"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:Name" priority="1000" mode="M418">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M418"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M418"/>
   <axsl:template match="@*|node()" priority="-2" mode="M418">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M418"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:PreviousRevisionID" priority="1000" mode="M419">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:PreviousRevisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PreviousRevisionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M419"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M419"/>
   <axsl:template match="@*|node()" priority="-2" mode="M419">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M419"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:ReferenceTypeCode" priority="1000" mode="M420">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:ReferenceTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReferenceTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M420"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M420"/>
   <axsl:template match="@*|node()" priority="-2" mode="M420">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M420"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:RevisionID" priority="1000" mode="M421">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:RevisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RevisionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M421"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M421"/>
   <axsl:template match="@*|node()" priority="-2" mode="M421">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M421"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:SectionName" priority="1000" mode="M422">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:SectionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SectionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M422"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M422"/>
   <axsl:template match="@*|node()" priority="-2" mode="M422">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M422"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:StatusCode" priority="1000" mode="M423">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:StatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M423"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M423"/>
   <axsl:template match="@*|node()" priority="-2" mode="M423">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M423"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:URIID" priority="1000" mode="M424">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:ShipmentScheduleReferencedCIReferencedDocument/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M424"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M424"/>
   <axsl:template match="@*|node()" priority="-2" mode="M424">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M424"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:DefinedCITradeContact" priority="1000" mode="M425">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:DefinedCITradeContact"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DefinedCITradeContact' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M425"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M425"/>
   <axsl:template match="@*|node()" priority="-2" mode="M425">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M425"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:EndPointURICIUniversalCommunication" priority="1000" mode="M426">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:EndPointURICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EndPointURICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M426"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M426"/>
   <axsl:template match="@*|node()" priority="-2" mode="M426">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M426"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:GlobalID" priority="1000" mode="M427">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M427"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M427"/>
   <axsl:template match="@*|node()" priority="-2" mode="M427">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M427"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:ID" priority="1000" mode="M428">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M428"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M428"/>
   <axsl:template match="@*|node()" priority="-2" mode="M428">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M428"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile" priority="1000" mode="M429">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:LogoAssociatedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LogoAssociatedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M429"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M429"/>
   <axsl:template match="@*|node()" priority="-2" mode="M429">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M429"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:Name" priority="1000" mode="M430">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M430"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M430"/>
   <axsl:template match="@*|node()" priority="-2" mode="M430">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M430"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:PostalCITradeAddress" priority="1000" mode="M431">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:PostalCITradeAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostalCITradeAddress' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M431"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M431"/>
   <axsl:template match="@*|node()" priority="-2" mode="M431">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M431"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:RoleCode" priority="1000" mode="M432">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:RoleCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RoleCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M432"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M432"/>
   <axsl:template match="@*|node()" priority="-2" mode="M432">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M432"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:SpecifiedCILegalOrganization" priority="1000" mode="M433">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:SpecifiedCILegalOrganization"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCILegalOrganization' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M433"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M433"/>
   <axsl:template match="@*|node()" priority="-2" mode="M433">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M433"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:SpecifiedCITaxRegistration" priority="1000" mode="M434">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:SpecifiedCITaxRegistration"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCITaxRegistration' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M434"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M434"/>
   <axsl:template match="@*|node()" priority="-2" mode="M434">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M434"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:URICIUniversalCommunication" priority="1000" mode="M435">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty/ram:URICIUniversalCommunication"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URICIUniversalCommunication' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M435"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M435"/>
   <axsl:template match="@*|node()" priority="-2" mode="M435">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M435"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeSettlement/ram:PurchaseSpecifiedCITradeAccountingAccount" priority="1000" mode="M436">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeSettlement/ram:PurchaseSpecifiedCITradeAccountingAccount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PurchaseSpecifiedCITradeAccountingAccount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M436"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M436"/>
   <axsl:template match="@*|node()" priority="-2" mode="M436">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M436"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeSettlement/ram:SalesSpecifiedCITradeAccountingAccount" priority="1000" mode="M437">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ApplicableCIDDHSupplyChainTradeSettlement/ram:SalesSpecifiedCITradeAccountingAccount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SalesSpecifiedCITradeAccountingAccount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M437"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M437"/>
   <axsl:template match="@*|node()" priority="-2" mode="M437">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M437"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:Content" priority="1000" mode="M438">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:Content"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Content' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M438"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M438"/>
   <axsl:template match="@*|node()" priority="-2" mode="M438">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M438"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:ContentCode" priority="1000" mode="M439">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:ContentCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ContentCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M439"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M439"/>
   <axsl:template match="@*|node()" priority="-2" mode="M439">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M439"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:ID" priority="1000" mode="M440">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M440"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M440"/>
   <axsl:template match="@*|node()" priority="-2" mode="M440">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M440"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:Subject" priority="1000" mode="M441">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:Subject"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Subject' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M441"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M441"/>
   <axsl:template match="@*|node()" priority="-2" mode="M441">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M441"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:SubjectCode" priority="1000" mode="M442">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:IncludedCINote/ram:SubjectCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubjectCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M442"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M442"/>
   <axsl:template match="@*|node()" priority="-2" mode="M442">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M442"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:LineID" priority="1000" mode="M443">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:LineID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M443"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M443"/>
   <axsl:template match="@*|node()" priority="-2" mode="M443">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M443"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:LineStatusCode" priority="1000" mode="M444">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:LineStatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LineStatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M444"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M444"/>
   <axsl:template match="@*|node()" priority="-2" mode="M444">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M444"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:LineStatusReasonCode" priority="1000" mode="M445">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:AssociatedCIDDLDocumentLineDocument/ram:LineStatusReasonCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LineStatusReasonCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M445"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M445"/>
   <axsl:template match="@*|node()" priority="-2" mode="M445">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M445"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:GlobalID" priority="1000" mode="M446">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M446"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M446"/>
   <axsl:template match="@*|node()" priority="-2" mode="M446">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M446"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:ID" priority="1000" mode="M447">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M447"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M447"/>
   <axsl:template match="@*|node()" priority="-2" mode="M447">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M447"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:ItemQuantity" priority="1000" mode="M448">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:ItemQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ItemQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M448"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M448"/>
   <axsl:template match="@*|node()" priority="-2" mode="M448">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M448"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:LevelCode" priority="1000" mode="M449">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:LevelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LevelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M449"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M449"/>
   <axsl:template match="@*|node()" priority="-2" mode="M449">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M449"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:ParentID" priority="1000" mode="M450">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:ParentID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ParentID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M450"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M450"/>
   <axsl:template match="@*|node()" priority="-2" mode="M450">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M450"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:SequenceNumeric" priority="1000" mode="M451">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:SequenceNumeric"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SequenceNumeric' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M451"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M451"/>
   <axsl:template match="@*|node()" priority="-2" mode="M451">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M451"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:SeriesEndID" priority="1000" mode="M452">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:SeriesEndID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SeriesEndID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M452"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M452"/>
   <axsl:template match="@*|node()" priority="-2" mode="M452">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M452"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:SeriesStartID" priority="1000" mode="M453">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:SeriesStartID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SeriesStartID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M453"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M453"/>
   <axsl:template match="@*|node()" priority="-2" mode="M453">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M453"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:TypeCode" priority="1000" mode="M454">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:PhysicalReferencedLogisticsPackage/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M454"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M454"/>
   <axsl:template match="@*|node()" priority="-2" mode="M454">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M454"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:AdditionalReferencedCIReferencedDocument" priority="1000" mode="M455">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:AdditionalReferencedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AdditionalReferencedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M455"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M455"/>
   <axsl:template match="@*|node()" priority="-2" mode="M455">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M455"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:AttachedSpecifiedBinaryFile" priority="1000" mode="M456">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:AttachedSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AttachedSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M456"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M456"/>
   <axsl:template match="@*|node()" priority="-2" mode="M456">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M456"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:CopyIndicator" priority="1000" mode="M457">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:CopyIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CopyIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M457"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M457"/>
   <axsl:template match="@*|node()" priority="-2" mode="M457">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M457"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:EffectiveCISpecifiedPeriod" priority="1000" mode="M458">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:EffectiveCISpecifiedPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EffectiveCISpecifiedPeriod' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M458"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M458"/>
   <axsl:template match="@*|node()" priority="-2" mode="M458">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M458"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:GlobalID" priority="1000" mode="M459">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M459"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M459"/>
   <axsl:template match="@*|node()" priority="-2" mode="M459">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M459"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Information" priority="1000" mode="M460">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Information"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Information' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M460"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M460"/>
   <axsl:template match="@*|node()" priority="-2" mode="M460">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M460"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssueDateTime" priority="1000" mode="M461">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssueDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssueDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M461"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M461"/>
   <axsl:template match="@*|node()" priority="-2" mode="M461">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M461"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID" priority="1000" mode="M462">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerAssignedID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M462"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M462"/>
   <axsl:template match="@*|node()" priority="-2" mode="M462">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M462"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerCITradeParty" priority="1000" mode="M463">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:IssuerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IssuerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M463"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M463"/>
   <axsl:template match="@*|node()" priority="-2" mode="M463">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M463"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:LineID" priority="1000" mode="M464">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:LineID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M464"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M464"/>
   <axsl:template match="@*|node()" priority="-2" mode="M464">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M464"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Name" priority="1000" mode="M465">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:Name"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Name' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M465"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M465"/>
   <axsl:template match="@*|node()" priority="-2" mode="M465">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M465"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:PreviousRevisionID" priority="1000" mode="M466">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:PreviousRevisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PreviousRevisionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M466"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M466"/>
   <axsl:template match="@*|node()" priority="-2" mode="M466">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M466"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:ReferenceTypeCode" priority="1000" mode="M467">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:ReferenceTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReferenceTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M467"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M467"/>
   <axsl:template match="@*|node()" priority="-2" mode="M467">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M467"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:RevisionID" priority="1000" mode="M468">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:RevisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RevisionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M468"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M468"/>
   <axsl:template match="@*|node()" priority="-2" mode="M468">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M468"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:SectionName" priority="1000" mode="M469">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:SectionName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SectionName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M469"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M469"/>
   <axsl:template match="@*|node()" priority="-2" mode="M469">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M469"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:StatusCode" priority="1000" mode="M470">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:StatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:StatusCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M470"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M470"/>
   <axsl:template match="@*|node()" priority="-2" mode="M470">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M470"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:URIID" priority="1000" mode="M471">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:BuyerOrderReferencedCIReferencedDocument/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M471"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M471"/>
   <axsl:template match="@*|node()" priority="-2" mode="M471">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M471"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:ContractReferencedCIReferencedDocument" priority="1000" mode="M472">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:ContractReferencedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ContractReferencedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M472"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M472"/>
   <axsl:template match="@*|node()" priority="-2" mode="M472">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M472"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:PromotionalDealReferencedCIReferencedDocument" priority="1000" mode="M473">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:PromotionalDealReferencedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PromotionalDealReferencedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M473"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M473"/>
   <axsl:template match="@*|node()" priority="-2" mode="M473">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M473"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:SellerOrderReferencedCIReferencedDocument" priority="1000" mode="M474">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeAgreement/ram:SellerOrderReferencedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SellerOrderReferencedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M474"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M474"/>
   <axsl:template match="@*|node()" priority="-2" mode="M474">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M474"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent" priority="1000" mode="M475">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ActualDespatchCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ActualDespatchCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M475"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M475"/>
   <axsl:template match="@*|node()" priority="-2" mode="M475">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M475"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ActualPickUpCISupplyChainEvent" priority="1000" mode="M476">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ActualPickUpCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ActualPickUpCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M476"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M476"/>
   <axsl:template match="@*|node()" priority="-2" mode="M476">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M476"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:BilledQuantity" priority="1000" mode="M477">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:BilledQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BilledQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M477"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M477"/>
   <axsl:template match="@*|node()" priority="-2" mode="M477">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M477"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ChargeFreeQuantity" priority="1000" mode="M478">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ChargeFreeQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChargeFreeQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M478"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M478"/>
   <axsl:template match="@*|node()" priority="-2" mode="M478">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M478"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:GrossWeightMeasure" priority="1000" mode="M479">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:GrossWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GrossWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M479"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M479"/>
   <axsl:template match="@*|node()" priority="-2" mode="M479">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M479"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:HandlingCIHandlingInstructions" priority="1000" mode="M480">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:HandlingCIHandlingInstructions"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:HandlingCIHandlingInstructions' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M480"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M480"/>
   <axsl:template match="@*|node()" priority="-2" mode="M480">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M480"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:IncludedCISupplyChainPackaging" priority="1000" mode="M481">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:IncludedCISupplyChainPackaging"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IncludedCISupplyChainPackaging' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M481"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M481"/>
   <axsl:template match="@*|node()" priority="-2" mode="M481">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M481"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:NetWeightMeasure" priority="1000" mode="M482">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:NetWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:NetWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M482"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M482"/>
   <axsl:template match="@*|node()" priority="-2" mode="M482">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M482"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:PackageQuantity" priority="1000" mode="M483">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:PackageQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PackageQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M483"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M483"/>
   <axsl:template match="@*|node()" priority="-2" mode="M483">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M483"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:PerPackageUnitQuantity" priority="1000" mode="M484">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:PerPackageUnitQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PerPackageUnitQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M484"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M484"/>
   <axsl:template match="@*|node()" priority="-2" mode="M484">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M484"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity" priority="1000" mode="M485">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProductUnitQuantity"/>

		<!--REPORT -->

      <axsl:if test="@unitCode">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@unitCode">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@unitCode' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M485"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M485"/>
   <axsl:template match="@*|node()" priority="-2" mode="M485">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M485"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProjectedCISupplyChainSupplyPlan" priority="1000" mode="M486">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ProjectedCISupplyChainSupplyPlan"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ProjectedCISupplyChainSupplyPlan' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M486"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M486"/>
   <axsl:template match="@*|node()" priority="-2" mode="M486">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M486"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment" priority="1000" mode="M487">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:RelatedCISupplyChainConsignment"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RelatedCISupplyChainConsignment' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M487"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M487"/>
   <axsl:template match="@*|node()" priority="-2" mode="M487">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M487"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:RequestedDeliveryCISupplyChainEvent" priority="1000" mode="M488">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:RequestedDeliveryCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RequestedDeliveryCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M488"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M488"/>
   <axsl:template match="@*|node()" priority="-2" mode="M488">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M488"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ShipFromCITradeParty" priority="1000" mode="M489">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ShipFromCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ShipFromCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M489"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M489"/>
   <axsl:template match="@*|node()" priority="-2" mode="M489">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M489"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ShipToCITradeParty" priority="1000" mode="M490">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:ShipToCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ShipToCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M490"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M490"/>
   <axsl:template match="@*|node()" priority="-2" mode="M490">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M490"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:SpecifiedCIDeliveryAdjustment" priority="1000" mode="M491">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:SpecifiedCIDeliveryAdjustment"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCIDeliveryAdjustment' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M491"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M491"/>
   <axsl:template match="@*|node()" priority="-2" mode="M491">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M491"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:TheoreticalWeightMeasure" priority="1000" mode="M492">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:TheoreticalWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TheoreticalWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M492"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M492"/>
   <axsl:template match="@*|node()" priority="-2" mode="M492">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M492"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty" priority="1000" mode="M493">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:UltimateShipToCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:UltimateShipToCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M493"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M493"/>
   <axsl:template match="@*|node()" priority="-2" mode="M493">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M493"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:UltimateShipToDeliveryDateTime" priority="1000" mode="M494">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeDelivery/ram:UltimateShipToDeliveryDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:UltimateShipToDeliveryDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M494"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M494"/>
   <axsl:template match="@*|node()" priority="-2" mode="M494">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M494"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeSettlement/ram:PayableSpecifiedCITradeAccountingAccount" priority="1000" mode="M495">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeSettlement/ram:PayableSpecifiedCITradeAccountingAccount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PayableSpecifiedCITradeAccountingAccount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M495"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M495"/>
   <axsl:template match="@*|node()" priority="-2" mode="M495">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M495"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeSettlement/ram:PurchaseSpecifiedCITradeAccountingAccount" priority="1000" mode="M496">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCIDDLSupplyChainTradeSettlement/ram:PurchaseSpecifiedCITradeAccountingAccount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PurchaseSpecifiedCITradeAccountingAccount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M496"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M496"/>
   <axsl:template match="@*|node()" priority="-2" mode="M496">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M496"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:AdditionalReferenceCIReferencedDocument" priority="1000" mode="M497">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:AdditionalReferenceCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AdditionalReferenceCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M497"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M497"/>
   <axsl:template match="@*|node()" priority="-2" mode="M497">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M497"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIMaterialGoodsCharacteristic" priority="1000" mode="M498">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIMaterialGoodsCharacteristic"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ApplicableCIMaterialGoodsCharacteristic' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M498"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M498"/>
   <axsl:template match="@*|node()" priority="-2" mode="M498">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M498"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic" priority="1000" mode="M499">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ApplicableCIProductCharacteristic"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ApplicableCIProductCharacteristic' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M499"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M499"/>
   <axsl:template match="@*|node()" priority="-2" mode="M499">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M499"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:AreaDensityMeasure" priority="1000" mode="M500">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:AreaDensityMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AreaDensityMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M500"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M500"/>
   <axsl:template match="@*|node()" priority="-2" mode="M500">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M500"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:BrandName" priority="1000" mode="M501">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:BrandName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BrandName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M501"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M501"/>
   <axsl:template match="@*|node()" priority="-2" mode="M501">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M501"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:BrandOwnerCITradeParty" priority="1000" mode="M502">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:BrandOwnerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BrandOwnerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M502"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M502"/>
   <axsl:template match="@*|node()" priority="-2" mode="M502">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M502"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:BuyerAssignedID" priority="1000" mode="M503">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:BuyerAssignedID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BuyerAssignedID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M503"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M503"/>
   <axsl:template match="@*|node()" priority="-2" mode="M503">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M503"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:CertificationEvidenceReferenceCIReferencedDocument" priority="1000" mode="M504">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:CertificationEvidenceReferenceCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CertificationEvidenceReferenceCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M504"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M504"/>
   <axsl:template match="@*|node()" priority="-2" mode="M504">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M504"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ColourCode" priority="1000" mode="M505">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ColourCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ColourCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M505"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M505"/>
   <axsl:template match="@*|node()" priority="-2" mode="M505">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M505"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ColourDescription" priority="1000" mode="M506">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ColourDescription"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ColourDescription' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M506"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M506"/>
   <axsl:template match="@*|node()" priority="-2" mode="M506">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M506"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:Description" priority="1000" mode="M507">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M507"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M507"/>
   <axsl:template match="@*|node()" priority="-2" mode="M507">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M507"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:DesignatedCIProductClassification" priority="1000" mode="M508">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:DesignatedCIProductClassification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DesignatedCIProductClassification' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M508"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M508"/>
   <axsl:template match="@*|node()" priority="-2" mode="M508">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M508"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:Designation" priority="1000" mode="M509">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:Designation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Designation' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M509"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M509"/>
   <axsl:template match="@*|node()" priority="-2" mode="M509">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M509"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:DrainedNetWeightMeasure" priority="1000" mode="M510">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:DrainedNetWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DrainedNetWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M510"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M510"/>
   <axsl:template match="@*|node()" priority="-2" mode="M510">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M510"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:EndItemName" priority="1000" mode="M511">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:EndItemName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EndItemName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M511"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M511"/>
   <axsl:template match="@*|node()" priority="-2" mode="M511">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M511"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:EndItemTypeCode" priority="1000" mode="M512">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:EndItemTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EndItemTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M512"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M512"/>
   <axsl:template match="@*|node()" priority="-2" mode="M512">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M512"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:GlobalID" priority="1000" mode="M513">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M513"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M513"/>
   <axsl:template match="@*|node()" priority="-2" mode="M513">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M513"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:GrossWeightMeasure" priority="1000" mode="M514">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:GrossWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GrossWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M514"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M514"/>
   <axsl:template match="@*|node()" priority="-2" mode="M514">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M514"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ID" priority="1000" mode="M515">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M515"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M515"/>
   <axsl:template match="@*|node()" priority="-2" mode="M515">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M515"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ApplicableCIMaterialGoodsCharacteristic" priority="1000" mode="M516">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ApplicableCIMaterialGoodsCharacteristic"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ApplicableCIMaterialGoodsCharacteristic' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M516"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M516"/>
   <axsl:template match="@*|node()" priority="-2" mode="M516">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M516"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:BatchID" priority="1000" mode="M517">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:BatchID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M517"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M517"/>
   <axsl:template match="@*|node()" priority="-2" mode="M517">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M517"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:GlobalSerialID" priority="1000" mode="M518">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:GlobalSerialID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalSerialID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M518"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M518"/>
   <axsl:template match="@*|node()" priority="-2" mode="M518">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M518"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:KanbanID" priority="1000" mode="M519">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:KanbanID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:KanbanID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M519"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M519"/>
   <axsl:template match="@*|node()" priority="-2" mode="M519">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M519"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:PackagingCISupplyChainEvent" priority="1000" mode="M520">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:PackagingCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PackagingCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M520"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M520"/>
   <axsl:template match="@*|node()" priority="-2" mode="M520">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M520"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableProductCharacteristicCondition" priority="1000" mode="M521">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableProductCharacteristicCondition"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ApplicableProductCharacteristicCondition' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M521"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M521"/>
   <axsl:template match="@*|node()" priority="-2" mode="M521">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M521"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:AgencyID" priority="1000" mode="M522">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:AgencyID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AgencyID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M522"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M522"/>
   <axsl:template match="@*|node()" priority="-2" mode="M522">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M522"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:ElementVersionID" priority="1000" mode="M523">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:ElementVersionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ElementVersionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M523"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M523"/>
   <axsl:template match="@*|node()" priority="-2" mode="M523">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M523"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:ID" priority="1000" mode="M524">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M524"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M524"/>
   <axsl:template match="@*|node()" priority="-2" mode="M524">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M524"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:PartID" priority="1000" mode="M525">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:PartID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PartID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M525"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M525"/>
   <axsl:template match="@*|node()" priority="-2" mode="M525">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M525"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:URIID" priority="1000" mode="M526">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:URIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:URIID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M526"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M526"/>
   <axsl:template match="@*|node()" priority="-2" mode="M526">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M526"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:VersionID" priority="1000" mode="M527">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ApplicableReferencedStandard/ram:VersionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:VersionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M527"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M527"/>
   <axsl:template match="@*|node()" priority="-2" mode="M527">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M527"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ContentTypeCode" priority="1000" mode="M528">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ContentTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ContentTypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M528"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M528"/>
   <axsl:template match="@*|node()" priority="-2" mode="M528">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M528"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:Description" priority="1000" mode="M529">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:Description"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Description' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M529"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M529"/>
   <axsl:template match="@*|node()" priority="-2" mode="M529">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M529"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ID" priority="1000" mode="M530">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M530"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M530"/>
   <axsl:template match="@*|node()" priority="-2" mode="M530">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M530"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:MeasurementMethodCode" priority="1000" mode="M531">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:MeasurementMethodCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MeasurementMethodCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M531"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M531"/>
   <axsl:template match="@*|node()" priority="-2" mode="M531">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M531"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:TypeCode" priority="1000" mode="M532">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M532"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M532"/>
   <axsl:template match="@*|node()" priority="-2" mode="M532">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M532"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueCode" priority="1000" mode="M533">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listSchemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listSchemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listSchemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M533"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M533"/>
   <axsl:template match="@*|node()" priority="-2" mode="M533">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M533"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueDateTime" priority="1000" mode="M534">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ValueDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M534"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M534"/>
   <axsl:template match="@*|node()" priority="-2" mode="M534">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M534"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueIndicator" priority="1000" mode="M535">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ValueIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M535"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M535"/>
   <axsl:template match="@*|node()" priority="-2" mode="M535">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M535"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueMeasure" priority="1000" mode="M536">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ValueMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M536"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M536"/>
   <axsl:template match="@*|node()" priority="-2" mode="M536">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M536"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueSpecifiedBinaryFile" priority="1000" mode="M537">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductCIProductCharacteristic/ram:ValueSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ValueSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M537"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M537"/>
   <axsl:template match="@*|node()" priority="-2" mode="M537">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M537"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductionCISupplyChainEvent" priority="1000" mode="M538">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:ProductionCISupplyChainEvent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ProductionCISupplyChainEvent' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M538"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M538"/>
   <axsl:template match="@*|node()" priority="-2" mode="M538">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M538"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:RegistrationID" priority="1000" mode="M539">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:RegistrationID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RegistrationID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M539"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M539"/>
   <axsl:template match="@*|node()" priority="-2" mode="M539">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M539"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:SellByDateTime" priority="1000" mode="M540">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:SellByDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SellByDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M540"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M540"/>
   <axsl:template match="@*|node()" priority="-2" mode="M540">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M540"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:SerialID" priority="1000" mode="M541">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:SerialID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M541"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M541"/>
   <axsl:template match="@*|node()" priority="-2" mode="M541">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M541"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:SupplierAssignedSerialID" priority="1000" mode="M542">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:IndividualCITradeProductInstance/ram:SupplierAssignedSerialID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SupplierAssignedSerialID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M542"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M542"/>
   <axsl:template match="@*|node()" priority="-2" mode="M542">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M542"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:InformationCINote" priority="1000" mode="M543">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:InformationCINote"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InformationCINote' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M543"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M543"/>
   <axsl:template match="@*|node()" priority="-2" mode="M543">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M543"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:InspectionReferenceCIReferencedDocument" priority="1000" mode="M544">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:InspectionReferenceCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InspectionReferenceCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M544"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M544"/>
   <axsl:template match="@*|node()" priority="-2" mode="M544">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M544"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:LatestProductDataChangeDateTime" priority="1000" mode="M545">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:LatestProductDataChangeDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LatestProductDataChangeDateTime' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M545"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M545"/>
   <axsl:template match="@*|node()" priority="-2" mode="M545">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M545"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:LegalRightsOwnerCITradeParty" priority="1000" mode="M546">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:LegalRightsOwnerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LegalRightsOwnerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M546"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M546"/>
   <axsl:template match="@*|node()" priority="-2" mode="M546">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M546"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:LinearCISpatialDimension" priority="1000" mode="M547">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:LinearCISpatialDimension"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LinearCISpatialDimension' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M547"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M547"/>
   <axsl:template match="@*|node()" priority="-2" mode="M547">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M547"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:MSDSReferenceCIReferencedDocument" priority="1000" mode="M548">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:MSDSReferenceCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MSDSReferenceCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M548"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M548"/>
   <axsl:template match="@*|node()" priority="-2" mode="M548">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M548"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ManufacturerAssignedID" priority="1000" mode="M549">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ManufacturerAssignedID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ManufacturerAssignedID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M549"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M549"/>
   <axsl:template match="@*|node()" priority="-2" mode="M549">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M549"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ManufacturerCITradeParty" priority="1000" mode="M550">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ManufacturerCITradeParty"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ManufacturerCITradeParty' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M550"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M550"/>
   <axsl:template match="@*|node()" priority="-2" mode="M550">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M550"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:MaximumLinearCISpatialDimension" priority="1000" mode="M551">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:MaximumLinearCISpatialDimension"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MaximumLinearCISpatialDimension' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M551"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M551"/>
   <axsl:template match="@*|node()" priority="-2" mode="M551">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M551"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:MinimumLinearCISpatialDimension" priority="1000" mode="M552">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:MinimumLinearCISpatialDimension"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MinimumLinearCISpatialDimension' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M552"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M552"/>
   <axsl:template match="@*|node()" priority="-2" mode="M552">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M552"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:Name" priority="1000" mode="M553">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:Name"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M553"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M553"/>
   <axsl:template match="@*|node()" priority="-2" mode="M553">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M553"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:NetWeightMeasure" priority="1000" mode="M554">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:NetWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:NetWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M554"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M554"/>
   <axsl:template match="@*|node()" priority="-2" mode="M554">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M554"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:OriginCITradeCountry" priority="1000" mode="M555">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:OriginCITradeCountry"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:OriginCITradeCountry' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M555"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M555"/>
   <axsl:template match="@*|node()" priority="-2" mode="M555">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M555"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:PresentationSpecifiedBinaryFile" priority="1000" mode="M556">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:PresentationSpecifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PresentationSpecifiedBinaryFile' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M556"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M556"/>
   <axsl:template match="@*|node()" priority="-2" mode="M556">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M556"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ProductGroupID" priority="1000" mode="M557">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:ProductGroupID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ProductGroupID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M557"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M557"/>
   <axsl:template match="@*|node()" priority="-2" mode="M557">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M557"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:SellerAssignedID" priority="1000" mode="M558">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:SellerAssignedID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M558"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M558"/>
   <axsl:template match="@*|node()" priority="-2" mode="M558">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M558"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:SubBrandName" priority="1000" mode="M559">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:SubBrandName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubBrandName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M559"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M559"/>
   <axsl:template match="@*|node()" priority="-2" mode="M559">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M559"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:TradeName" priority="1000" mode="M560">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:TradeName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TradeName' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M560"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M560"/>
   <axsl:template match="@*|node()" priority="-2" mode="M560">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M560"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:TypeCode" priority="1000" mode="M561">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M561"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M561"/>
   <axsl:template match="@*|node()" priority="-2" mode="M561">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M561"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:UseDescription" priority="1000" mode="M562">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:UseDescription"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:UseDescription' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M562"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M562"/>
   <axsl:template match="@*|node()" priority="-2" mode="M562">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M562"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:VariableMeasureIndicator" priority="1000" mode="M563">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:IncludedCIDDLSupplyChainTradeLineItem/ram:SpecifiedCITradeProduct/ram:VariableMeasureIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:VariableMeasureIndicator' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M563"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M563"/>
   <axsl:template match="@*|node()" priority="-2" mode="M563">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M563"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ShipmentID" priority="1000" mode="M564">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:ShipmentID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ShipmentID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M564"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M564"/>
   <axsl:template match="@*|node()" priority="-2" mode="M564">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M564"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:Description" priority="1000" mode="M565">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:Description"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M565"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M565"/>
   <axsl:template match="@*|node()" priority="-2" mode="M565">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M565"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:DespatchNoteAssociatedCIReferencedDocument" priority="1000" mode="M566">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:DespatchNoteAssociatedCIReferencedDocument"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DespatchNoteAssociatedCIReferencedDocument' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M566"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M566"/>
   <axsl:template match="@*|node()" priority="-2" mode="M566">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M566"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:GlobalID" priority="1000" mode="M567">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:GlobalID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GlobalID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M567"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M567"/>
   <axsl:template match="@*|node()" priority="-2" mode="M567">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M567"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:GrossVolumeMeasure" priority="1000" mode="M568">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:GrossVolumeMeasure"/>

		<!--REPORT -->

      <axsl:if test="@unitCode">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@unitCode">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@unitCode' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M568"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M568"/>
   <axsl:template match="@*|node()" priority="-2" mode="M568">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M568"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:GrossWeightMeasure" priority="1000" mode="M569">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:GrossWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test="@unitCode">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@unitCode">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@unitCode' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M569"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M569"/>
   <axsl:template match="@*|node()" priority="-2" mode="M569">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M569"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:ID" priority="1000" mode="M570">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M570"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M570"/>
   <axsl:template match="@*|node()" priority="-2" mode="M570">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M570"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:IncludedCIDDLSupplyChainTradeLineItem" priority="1000" mode="M571">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:IncludedCIDDLSupplyChainTradeLineItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IncludedCIDDLSupplyChainTradeLineItem' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M571"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M571"/>
   <axsl:template match="@*|node()" priority="-2" mode="M571">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M571"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:Information" priority="1000" mode="M572">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:Information"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Information' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M572"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M572"/>
   <axsl:template match="@*|node()" priority="-2" mode="M572">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M572"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:ItemQuantity" priority="1000" mode="M573">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:ItemQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ItemQuantity' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M573"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M573"/>
   <axsl:template match="@*|node()" priority="-2" mode="M573">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M573"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:LevelCode" priority="1000" mode="M574">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:LevelCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LevelCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M574"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M574"/>
   <axsl:template match="@*|node()" priority="-2" mode="M574">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M574"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:LinearCISpatialDimension" priority="1000" mode="M575">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:LinearCISpatialDimension"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LinearCISpatialDimension' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M575"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M575"/>
   <axsl:template match="@*|node()" priority="-2" mode="M575">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M575"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:NetWeightMeasure" priority="1000" mode="M576">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:NetWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:NetWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M576"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M576"/>
   <axsl:template match="@*|node()" priority="-2" mode="M576">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M576"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:NominalGrossVolumeMeasure" priority="1000" mode="M577">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:NominalGrossVolumeMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:NominalGrossVolumeMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M577"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M577"/>
   <axsl:template match="@*|node()" priority="-2" mode="M577">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M577"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:NominalGrossWeightMeasure" priority="1000" mode="M578">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:NominalGrossWeightMeasure"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:NominalGrossWeightMeasure' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M578"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M578"/>
   <axsl:template match="@*|node()" priority="-2" mode="M578">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M578"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:ParentID" priority="1000" mode="M579">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:ParentID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M579"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M579"/>
   <axsl:template match="@*|node()" priority="-2" mode="M579">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M579"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:BarcodeLogisticsLabel" priority="1000" mode="M580">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:BarcodeLogisticsLabel"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BarcodeLogisticsLabel' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M580"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M580"/>
   <axsl:template match="@*|node()" priority="-2" mode="M580">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M580"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:Marking" priority="1000" mode="M581">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:Marking"/>

		<!--REPORT -->

      <axsl:if test="@languageID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@languageID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@languageID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M581"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M581"/>
   <axsl:template match="@*|node()" priority="-2" mode="M581">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M581"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:MarkingInstructionCode" priority="1000" mode="M582">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:MarkingInstructionCode"/>

		<!--REPORT -->

      <axsl:if test="@listID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@listVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@listVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@listVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@name">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@name">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@name' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M582"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M582"/>
   <axsl:template match="@*|node()" priority="-2" mode="M582">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M582"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:RFIDLogisticsLabel" priority="1000" mode="M583">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:RFIDLogisticsLabel"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RFIDLogisticsLabel' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M583"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M583"/>
   <axsl:template match="@*|node()" priority="-2" mode="M583">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M583"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:VINLogisticsLabel" priority="1000" mode="M584">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:PhysicalLogisticsShippingMarks/ram:VINLogisticsLabel"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:VINLogisticsLabel' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M584"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M584"/>
   <axsl:template match="@*|node()" priority="-2" mode="M584">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M584"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:SequenceNumeric" priority="1000" mode="M585">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:SequenceNumeric"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SequenceNumeric' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M585"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M585"/>
   <axsl:template match="@*|node()" priority="-2" mode="M585">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M585"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:SeriesEndID" priority="1000" mode="M586">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:SeriesEndID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SeriesEndID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M586"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M586"/>
   <axsl:template match="@*|node()" priority="-2" mode="M586">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M586"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:SeriesStartID" priority="1000" mode="M587">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:SeriesStartID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SeriesStartID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M587"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M587"/>
   <axsl:template match="@*|node()" priority="-2" mode="M587">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M587"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:Type" priority="1000" mode="M588">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:Type"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Type' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M588"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M588"/>
   <axsl:template match="@*|node()" priority="-2" mode="M588">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M588"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:TypeCode" priority="1000" mode="M589">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:TypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TypeCode' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M589"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M589"/>
   <axsl:template match="@*|node()" priority="-2" mode="M589">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M589"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:UsedCISupplyChainPackaging" priority="1000" mode="M590">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIDDHSupplyChainTradeTransaction/ram:SpecifiedCIDDLLogisticsPackage/ram:UsedCISupplyChainPackaging"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:UsedCISupplyChainPackaging' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M590"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M590"/>
   <axsl:template match="@*|node()" priority="-2" mode="M590">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M590"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext" priority="1000" mode="M591">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:BusinessProcessSpecifiedCIDocumentContextParameter)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:BusinessProcessSpecifiedCIDocumentContextParameter)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:BusinessProcessSpecifiedCIDocumentContextParameter' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:GuidelineSpecifiedCIDocumentContextParameter)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:GuidelineSpecifiedCIDocumentContextParameter)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:GuidelineSpecifiedCIDocumentContextParameter' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M591"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M591"/>
   <axsl:template match="@*|node()" priority="-2" mode="M591">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M591"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:ApplicationSpecifiedCIDocumentContextParameter" priority="1000" mode="M592">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:ApplicationSpecifiedCIDocumentContextParameter"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ApplicationSpecifiedCIDocumentContextParameter' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M592"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M592"/>
   <axsl:template match="@*|node()" priority="-2" mode="M592">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M592"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BIMSpecifiedCIDocumentContextParameter" priority="1000" mode="M593">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BIMSpecifiedCIDocumentContextParameter"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BIMSpecifiedCIDocumentContextParameter' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M593"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M593"/>
   <axsl:template match="@*|node()" priority="-2" mode="M593">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M593"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter" priority="1000" mode="M594">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:ID)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:ID)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:ID' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M594"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M594"/>
   <axsl:template match="@*|node()" priority="-2" mode="M594">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M594"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID" priority="1000" mode="M595">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M595"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M595"/>
   <axsl:template match="@*|node()" priority="-2" mode="M595">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M595"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:SpecifiedCIDocumentVersion" priority="1000" mode="M596">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:SpecifiedCIDocumentVersion"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCIDocumentVersion' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M596"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M596"/>
   <axsl:template match="@*|node()" priority="-2" mode="M596">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M596"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:Value" priority="1000" mode="M597">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:BusinessProcessSpecifiedCIDocumentContextParameter/ram:Value"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Value' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M597"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M597"/>
   <axsl:template match="@*|node()" priority="-2" mode="M597">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M597"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter" priority="1000" mode="M598">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count(ram:ID)=1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="count(ram:ID)=1">
               <axsl:attribute name="flag">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-get-full-path"/>
               </axsl:attribute>
               <svrl:text>
	Element 'ram:ID' must occur exactly 1 times.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M598"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M598"/>
   <axsl:template match="@*|node()" priority="-2" mode="M598">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M598"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID" priority="1000" mode="M599">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:ID"/>

		<!--REPORT -->

      <axsl:if test="@schemeID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeAgencyName">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeAgencyName">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeAgencyName' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeVersionID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeVersionID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeVersionID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeDataURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeDataURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeDataURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT -->

      <axsl:if test="@schemeURI">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@schemeURI">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@schemeURI' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M599"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M599"/>
   <axsl:template match="@*|node()" priority="-2" mode="M599">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M599"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:SpecifiedCIDocumentVersion" priority="1000" mode="M600">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:SpecifiedCIDocumentVersion"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedCIDocumentVersion' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M600"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M600"/>
   <axsl:template match="@*|node()" priority="-2" mode="M600">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M600"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:Value" priority="1000" mode="M601">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:GuidelineSpecifiedCIDocumentContextParameter/ram:Value"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Value' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M601"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M601"/>
   <axsl:template match="@*|node()" priority="-2" mode="M601">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M601"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:MessageStandardSpecifiedCIDocumentContextParameter" priority="1000" mode="M602">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:MessageStandardSpecifiedCIDocumentContextParameter"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:MessageStandardSpecifiedCIDocumentContextParameter' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M602"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M602"/>
   <axsl:template match="@*|node()" priority="-2" mode="M602">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M602"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:ScenarioSpecifiedCIDocumentContextParameter" priority="1000" mode="M603">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:ScenarioSpecifiedCIDocumentContextParameter"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ScenarioSpecifiedCIDocumentContextParameter' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M603"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M603"/>
   <axsl:template match="@*|node()" priority="-2" mode="M603">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M603"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:SpecifiedTransactionID" priority="1000" mode="M604">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:SpecifiedTransactionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SpecifiedTransactionID' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M604"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M604"/>
   <axsl:template match="@*|node()" priority="-2" mode="M604">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M604"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:SubsetSpecifiedCIDocumentContextParameter" priority="1000" mode="M605">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:CrossIndustryDespatchAdvice/rsm:SpecifiedCIExchangedDocumentContext/ram:SubsetSpecifiedCIDocumentContextParameter"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubsetSpecifiedCIDocumentContextParameter' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M605"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M605"/>
   <axsl:template match="@*|node()" priority="-2" mode="M605">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M605"/>
   </axsl:template>
</axsl:stylesheet>