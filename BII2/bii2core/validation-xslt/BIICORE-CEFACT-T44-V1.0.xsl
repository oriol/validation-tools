<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:schold="http://www.ascc.net/xml/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:clm5ISO42173A="urn:un:unece:uncefact:codelist:standard:5:ISO42173A:2011-08-31" xmlns:clm60133="urn:un:unece:uncefact:codelist:standard:6:0133:40106" xmlns:clm63055="urn:un:unece:uncefact:codelist:standard:6:3055:D11A" xmlns:clm6Recommendation20="urn:un:unece:uncefact:codelist:standard:6:Recommendation20:7" xmlns:clm210AccountingE704="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccessRightsType:D11A" xmlns:clm210AccountingE602="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountBalanceReopeningType:D11A" xmlns:clm210AccountingE902="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountClassification:D11A" xmlns:clm210AccountingE502="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountNatureType:D11A" xmlns:clm210AccountingE305="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountStatus:D11A" xmlns:clm210AccountingE501="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAccountType:D11A" xmlns:clm210AccountingE603="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAmountQualifierType:D11A" xmlns:clm210AccountingE601="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingAmountType:D11A" xmlns:clm210AccountingE023="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingContact:D11A" xmlns:clm210AccountingE006="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingDocumentType:D11A" xmlns:clm210AccountingE202="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryCategory:D11A" xmlns:clm210AccountingE203="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryLineCategory:D11A" xmlns:clm210AccountingE302="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryLineSource:D11A" xmlns:clm210AccountingE201="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingEntryProcessing:D11A" xmlns:clm210AccountingE012="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingJournal:D11A" xmlns:clm210AccountingE013="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingJournalCategory:D11A" xmlns:clm210AccountingE703="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingPeriodFunctionType:D11A" xmlns:clm210AccountingE021="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingPerquisite:D11A" xmlns:clm210AccountingE101="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AccountingVoucherMedium:D11A" xmlns:clm210AccountingE904="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AdditionalPostponement:D11A" xmlns:clm210AccountingE011="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AddressFormatType:D11A" xmlns:clm210AccountingE304="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AlternateCurrencyAmount:D11A" xmlns:clm210AccountingE204="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AmortizationMethod:D11A" xmlns:clm210AccountingE702="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:AmountWeightType:D11A" xmlns:clm210AccountingE004="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:CertificateType:D11A" xmlns:clm210AccountingE016="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:FinancialAccountType:D11A" xmlns:clm210AccountingE015="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:FinancialInstitutionRole:D11A" xmlns:clm210LifetimeEndCostE206="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:LifetimeEndCost:D11A" xmlns:clm210OrganizationFunctionTypeE706="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:OrganizationFunctionType:D11A" xmlns:clm210PartyTypeE705="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:PartyType:D11A" xmlns:clm210RefundMethodE022="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:RefundMethod:D11A" xmlns:clm210ScenarioTypeE018="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:ScenarioType:D11A" xmlns:clm210SoftwareUserTypeE019="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:SoftwareUserType:D11A" xmlns:clm210AccountingE307="urn:un:unece:uncefact:codelist:standard:EDIFICASEU:TaxExemptionReason:D11A" xmlns:clmIANACharacterSetCode="urn:un:unece:uncefact:codelist:standard:IANA:CharacterSetCode:2010-11-04" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:standard:IANA:MIMEMediaType:2011-09-23" xmlns:clm5ISO63912A="urn:un:unece:uncefact:codelist:standard:ISO:ISO2AlphaLanguageCode:20061027" xmlns:clm61229LineStatusCode="urn:un:unece:uncefact:codelist:standard:UNECE:ActionCode:D10B" xmlns:clm63131="urn:un:unece:uncefact:codelist:standard:UNECE:AddressType:D10B" xmlns:clm64465="urn:un:unece:uncefact:codelist:standard:UNECE:AdjustmentReasonDescriptionCode:D10B" xmlns:clm64465AdjustmentReasonCodeFinancial="urn:un:unece:uncefact:codelist:standard:UNECE:AdjustmentReasonDescriptionCodeFinancial:D10B" xmlns:clm63055CargoOperationalCategory="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeCargoOperationalCategory:D10A" xmlns:clm63055GoodsTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeGoodsTypeCode:D10A" xmlns:clm63055TransportEquipmentSizeTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:AgencyIdentificationCodeTransportEquipmentSizeTypeCode:D10A" xmlns:clm65189AllowanceChargeID="urn:un:unece:uncefact:codelist:standard:UNECE:AllowanceChargeIdentificationCode:D10B" xmlns:clm64465AllowanceChargeReasonCode="urn:un:unece:uncefact:codelist:standard:UNECE:AllowanceChargeReasonCode:D10B" xmlns:clm67233AutomaticDataCaptureMethodCode="urn:un:unece:uncefact:codelist:standard:UNECE:AutomaticDataCaptureMethodCode:D10B" xmlns:clm67085b="urn:un:unece:uncefact:codelist:standard:UNECE:CargoOperationalCategoryCode:D10B" xmlns:clm67085="urn:un:unece:uncefact:codelist:standard:UNECE:CargoTypeClassificationCode:D10B" xmlns:clm6Recommendation21AnnexI="urn:un:unece:uncefact:codelist:standard:UNECE:CargoTypeCode:1996Rev2Final" xmlns:clm67357="urn:un:unece:uncefact:codelist:standard:UNECE:CommodityIdentificationCode:D10B" xmlns:clm63155CommunicationChannelCode="urn:un:unece:uncefact:codelist:standard:UNECE:CommunicationMeansTypeCode:D10B" xmlns:clm63139ContactTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ContactFunctionCode:D10B" xmlns:clm69651="urn:un:unece:uncefact:codelist:standard:UNECE:ContractTypeCode:D10B" xmlns:clm6ContractorType="urn:un:unece:uncefact:codelist:standard:UNECE:ContractorType:D10B" xmlns:clm69653="urn:un:unece:uncefact:codelist:standard:UNECE:CostManagementCode:D10B" xmlns:clm69655="urn:un:unece:uncefact:codelist:standard:UNECE:CostReportingCode:D10B" xmlns:clm69213="urn:un:unece:uncefact:codelist:standard:UNECE:CustomsDutyRegimeTypeCode:D10B" xmlns:clm68339="urn:un:unece:uncefact:codelist:standard:UNECE:DangerousGoodsPackingCode:D10B" xmlns:clm68273="urn:un:unece:uncefact:codelist:standard:UNECE:DangerousGoodsRegulationCode:D10B" xmlns:clm62005DateTimePeriodFunctionCode="urn:un:unece:uncefact:codelist:standard:UNECE:DateTimePeriodFunctionCode:D10B" xmlns:clm64017CommitmentLevelCode="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryPlanCommitmentLevelCode:D10B" xmlns:clm64053="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryTermsCode:2000" xmlns:clm64055DeliveryTermsFunctionCode="urn:un:unece:uncefact:codelist:standard:UNECE:DeliveryTermsFunctionCode:D10B" xmlns:clm66145="urn:un:unece:uncefact:codelist:standard:UNECE:DimensionTypeCode:D10B" xmlns:clm61001="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCode:D10B" xmlns:clm61001Accounting="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeAccounting:D10B" xmlns:clm61001Billing="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeBilling:D10B" xmlns:clm61001Invoice="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeInvoice:D10B" xmlns:clm61001DocumentTypeCodeQuotation="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeQuotation:D10B" xmlns:clm61001DocumentTypeCodeRemittance="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeRemittance:D10B" xmlns:clm61001DocumentTypeCodeScheduling="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentNameCodeScheduling:D10B" xmlns:clm61373="urn:un:unece:uncefact:codelist:standard:UNECE:DocumentStatusCode:D10B" xmlns:clm65153="urn:un:unece:uncefact:codelist:standard:UNECE:DutyTaxFeeTypeCode:D10B" xmlns:clm65305="urn:un:unece:uncefact:codelist:standard:UNECE:DutyorTaxorFeeCategoryCode:D10B" xmlns:clm69657="urn:un:unece:uncefact:codelist:standard:UNECE:EarnedValueCalculationMethod:D10B" xmlns:clm68155="urn:un:unece:uncefact:codelist:standard:UNECE:EquipmentSizeTypeDescriptionCode:D10B" xmlns:clm68077="urn:un:unece:uncefact:codelist:standard:UNECE:EquipmentSupplierCode:D10B" xmlns:clm62475="urn:un:unece:uncefact:codelist:standard:UNECE:EventTimeReferenceCode:D10B" xmlns:clm62475PaymentTermsEvent="urn:un:unece:uncefact:codelist:standard:UNECE:EventTimeReferenceCodePaymentTermsEvent:D10B" xmlns:clm6TDED6131="urn:un:unece:uncefact:codelist:standard:UNECE:FreightChargeQuantityUnitBasisCode:D10B" xmlns:clm65243="urn:un:unece:uncefact:codelist:standard:UNECE:FreightChargeTariffCode:D10B" xmlns:clm69659="urn:un:unece:uncefact:codelist:standard:UNECE:FundingTypeCode:D10B" xmlns:clm6TDED7357="urn:un:unece:uncefact:codelist:standard:UNECE:GoodsTypeCode:D10B" xmlns:clm6TDED7361="urn:un:unece:uncefact:codelist:standard:UNECE:GoodsTypeExtensionCode:D10B" xmlns:clm69417="urn:un:unece:uncefact:codelist:standard:UNECE:GovernmentActionCode:D10B" xmlns:clm69661="urn:un:unece:uncefact:codelist:standard:UNECE:HierarchicalStructureTypeCode:D10B" xmlns:clm63227="urn:un:unece:uncefact:codelist:standard:UNECE:LocationFunctionCode:D10B" xmlns:clm64233="urn:un:unece:uncefact:codelist:standard:UNECE:MarkingInstructionCode:D10B" xmlns:clm66313="urn:un:unece:uncefact:codelist:standard:UNECE:MeasuredAttributeCode:D10B" xmlns:clm6Recommendation20Airflow="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeAirflow:4" xmlns:clm6Recommendation20Duration="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeDuration:4" xmlns:clm6Recommendation20Linear="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeLinear:4" xmlns:clm6Recommendation20Temperature="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeTemperature:4" xmlns:clm6Recommendation20Volume="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeVolume:4" xmlns:clm6Recommendation20Weight="urn:un:unece:uncefact:codelist:standard:UNECE:MeasurementUnitCommonCodeWeight:4" xmlns:clm61225MessageFunctionTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:MessageFunctionCode:D10B" xmlns:clm61225Acknowledgement="urn:un:unece:uncefact:codelist:standard:UNECE:MessageFunctionCodeAcknowledgement:D10B" xmlns:clm6TDED4377="urn:un:unece:uncefact:codelist:standard:UNECE:ObligationGuaranteeCode:D10B" xmlns:clm67065="urn:un:unece:uncefact:codelist:standard:UNECE:PackageTypeCode:2006" xmlns:clm67075="urn:un:unece:uncefact:codelist:standard:UNECE:PackagingLevelCode:D10B" xmlns:clm67233PackagingMarkingCode="urn:un:unece:uncefact:codelist:standard:UNECE:PackagingMarkingCode:D10B" xmlns:clm63035="urn:un:unece:uncefact:codelist:standard:UNECE:PartyRoleCode:D10B" xmlns:clm63035ChargePaying="urn:un:unece:uncefact:codelist:standard:UNECE:PartyRoleCodeChargePaying:D10B" xmlns:clm64431="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentGuaranteeMeansCode:D10B" xmlns:clm64435="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMeansChannelCode:D10B" xmlns:clm64461="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMeansCode:D10B" xmlns:clm64439="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentMethodCode:D10B" xmlns:clm64279="urn:un:unece:uncefact:codelist:standard:UNECE:PaymentTermsTypeCode:D10B" xmlns:clm6PlanningLevel="urn:un:unece:uncefact:codelist:standard:UNECE:PlanningLevel:D10B" xmlns:clm65375="urn:un:unece:uncefact:codelist:standard:UNECE:PriceTypeCode:D10B" xmlns:clm64037PriorityDescriptionCode="urn:un:unece:uncefact:codelist:standard:UNECE:PriorityDescriptionCode:D10B" xmlns:clm67187="urn:un:unece:uncefact:codelist:standard:UNECE:ProcessTypeCode:D10B" xmlns:clm69665="urn:un:unece:uncefact:codelist:standard:UNECE:ProjectTypeCode:D10B" xmlns:clm61153ReferenceTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ReferenceTypeCode:D10B" xmlns:clm69667="urn:un:unece:uncefact:codelist:standard:UNECE:ReportingThresholdTriggerType:D10B" xmlns:clm69669="urn:un:unece:uncefact:codelist:standard:UNECE:ResourceCostCategory:D10B" xmlns:clm69671="urn:un:unece:uncefact:codelist:standard:UNECE:ResourcePlanMeasureType:D10B" xmlns:clm64343ResponseTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ResponseTypeCode:D10B" xmlns:clm69415ResponsibleAgencyCode="urn:un:unece:uncefact:codelist:standard:UNECE:ResponsibleAgencyCode:D10B" xmlns:clm69411ResponsibleAgencyInvolvementCode="urn:un:unece:uncefact:codelist:standard:UNECE:ResponsibleAgencyInvolvementCode:D10B" xmlns:clm69673="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTaskRelationshipType:D10B" xmlns:clm69675="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTaskType:D10B" xmlns:clm6ScheduleTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:ScheduleTypeCode:D10B" xmlns:clm64517="urn:un:unece:uncefact:codelist:standard:UNECE:SealConditionCode:D10B" xmlns:clm6SealTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:SealTypeCode:D10B" xmlns:clm69303="urn:un:unece:uncefact:codelist:standard:UNECE:SealingPartyRoleCode:D10B" xmlns:clm69677="urn:un:unece:uncefact:codelist:standard:UNECE:SecurityClassificationType:D10B" xmlns:clm64405="urn:un:unece:uncefact:codelist:standard:UNECE:StatusCode:D10B" xmlns:clm64405AccountingDebitCredit="urn:un:unece:uncefact:codelist:standard:UNECE:StatusDescriptionCodeAccountingDebitCredit:D10B" xmlns:clm64405StatusCodeWorkflow="urn:un:unece:uncefact:codelist:standard:UNECE:StatusDescriptionCodeWorkflow:D10B" xmlns:clm66245="urn:un:unece:uncefact:codelist:standard:UNECE:TemperatureTypeCode:D10B" xmlns:clm68053="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentCategoryCode:D10B" xmlns:clm68169="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentFullnessCode:D10B" xmlns:clm68341="urn:un:unece:uncefact:codelist:standard:UNECE:TransportEquipmentHaulageArrangementsCode:D10B" xmlns:clm68101="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMeansDirectionCode:D10B" xmlns:clm6Recommendation28="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMeansTypeCode:2007" xmlns:clm6Recommendation19="urn:un:unece:uncefact:codelist:standard:UNECE:TransportModeCode:2" xmlns:clm68051="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMovementStageCode:D10B" xmlns:clm68323TransportMovementTypeCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportMovementTypeCode:D10B" xmlns:clm64237TransportPaymentArrangementCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportPaymentArrangementCode:D10B" xmlns:clm65237TransportServiceCategoryCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceCategoryCode:D10B" xmlns:clm64065TransportServiceConditionCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceConditionCode:D10B" xmlns:clm64219TransportServicePriorityCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServicePriorityCode:D10B" xmlns:clm67273TransportServiceRequirementCode="urn:un:unece:uncefact:codelist:standard:UNECE:TransportServiceRequirementCode:D10B" xmlns:clm6Recommendation24="urn:un:unece:uncefact:codelist:standard:UNECE:TransportStatusCode:4" xmlns:qdt="urn:un:unece:uncefact:data:Standard:QualifiedDataType:10" xmlns:ram="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:rsm="urn:un:unece:uncefact:data:standard:Tender:8" xmlns:udt="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:ccts="urn:un:unece:uncefact:documentation:standard:CoreComponentsTechnicalSpecification:2" xmlns:ids5ISO316612A="urn:un:unece:uncefact:identifierlist:standard:5:ISO316612A:SecondEdition2006VI-10" xmlns:ids5ISO63912A="urn:un:unece:uncefact:identifierlist:standard:ISO:ISOAlpha2LanguageCode:20061027" xmlns:ids6Recommendation23="urn:un:unece:uncefact:identifierlist:standard:UNECE:FreightCostCode:4" xmlns:ids64277="urn:un:unece:uncefact:identifierlist:standard:UNECE:PaymentTermsDescriptionIdentifier:D10B" version="1.0"><!--Implementers: please note that overriding process-prolog or process-root is 
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
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" title="BII2 CORE restrictions for Tender Transaction (T44)  InvitationToTender_8p0-D11A" schemaVersion="iso">
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
         <svrl:ns-prefix-in-attribute-values uri="urn:un:unece:uncefact:data:standard:Tender:8" prefix="rsm"/>
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
      </svrl:schematron-output>
   </axsl:template>

<!--SCHEMATRON PATTERNS-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema">BII2 CORE restrictions for Tender Transaction (T44)  InvitationToTender_8p0-D11A</svrl:text>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:BidPrice/ram:ChargeAmount" priority="1000" mode="M160">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:BidPrice/ram:ChargeAmount"/>

		<!--REPORT -->

      <axsl:if test="@currencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@currencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@currencyID' marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M160"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M160"/>
   <axsl:template match="@*|node()" priority="-2" mode="M160">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M160"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:AlternateDesignatedTenderingContact" priority="1000" mode="M161">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:AlternateDesignatedTenderingContact"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AlternateDesignatedTenderingContact' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:BureauID" priority="1000" mode="M162">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:BureauID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BureauID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:DivisionID" priority="1000" mode="M163">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:DivisionID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DivisionID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:ID" priority="1000" mode="M164">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M164"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M164"/>
   <axsl:template match="@*|node()" priority="-2" mode="M164">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M164"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:InternationalName" priority="1000" mode="M165">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:InternationalName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InternationalName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:Name" priority="1000" mode="M166">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:Name"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M166"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M166"/>
   <axsl:template match="@*|node()" priority="-2" mode="M166">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M166"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:CountryName" priority="1000" mode="M167">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:CountryName"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M167"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M167"/>
   <axsl:template match="@*|node()" priority="-2" mode="M167">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M167"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:LineOne" priority="1000" mode="M168">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:LineOne"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M168"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M168"/>
   <axsl:template match="@*|node()" priority="-2" mode="M168">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M168"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:LineTwo" priority="1000" mode="M169">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:LineTwo"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M169"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M169"/>
   <axsl:template match="@*|node()" priority="-2" mode="M169">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M169"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:PostcodeCode" priority="1000" mode="M170">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PostalTenderingAddress/ram:PostcodeCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M170"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M170"/>
   <axsl:template match="@*|node()" priority="-2" mode="M170">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M170"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:BureauDepartmentName" priority="1000" mode="M171">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:BureauDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BureauDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:DepartmentName" priority="1000" mode="M172">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:DepartmentName"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M172"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M172"/>
   <axsl:template match="@*|node()" priority="-2" mode="M172">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M172"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:DivisionDepartmentName" priority="1000" mode="M173">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:DivisionDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DivisionDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:FaxTenderingCommunication/ram:ChannelCode" priority="1000" mode="M174">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:FaxTenderingCommunication/ram:ChannelCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M174"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M174"/>
   <axsl:template match="@*|node()" priority="-2" mode="M174">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M174"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:FaxTenderingCommunication/ram:EmailURIID" priority="1000" mode="M175">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:FaxTenderingCommunication/ram:EmailURIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EmailURIID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:FaxTenderingCommunication/ram:LocalNumber" priority="1000" mode="M176">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:FaxTenderingCommunication/ram:LocalNumber"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M176"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M176"/>
   <axsl:template match="@*|node()" priority="-2" mode="M176">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M176"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:GovernmentDepartmentName" priority="1000" mode="M177">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:GovernmentDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GovernmentDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:ID" priority="1000" mode="M178">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M178"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M178"/>
   <axsl:template match="@*|node()" priority="-2" mode="M178">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M178"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:JobTitle" priority="1000" mode="M179">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:JobTitle"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M179"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M179"/>
   <axsl:template match="@*|node()" priority="-2" mode="M179">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M179"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:OfficeCounterDepartmentName" priority="1000" mode="M180">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:OfficeCounterDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:OfficeCounterDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:PersonName" priority="1000" mode="M181">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:PersonName"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M181"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M181"/>
   <axsl:template match="@*|node()" priority="-2" mode="M181">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M181"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:PostalTenderingAddress" priority="1000" mode="M182">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:PostalTenderingAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostalTenderingAddress' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:Responsibility" priority="1000" mode="M183">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:Responsibility"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M183"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M183"/>
   <axsl:template match="@*|node()" priority="-2" mode="M183">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M183"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:TelephoneTenderingCommunication/ram:ChannelCode" priority="1000" mode="M184">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:TelephoneTenderingCommunication/ram:ChannelCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M184"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M184"/>
   <axsl:template match="@*|node()" priority="-2" mode="M184">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M184"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:TelephoneTenderingCommunication/ram:EmailURIID" priority="1000" mode="M185">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:TelephoneTenderingCommunication/ram:EmailURIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EmailURIID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:TelephoneTenderingCommunication/ram:LocalNumber" priority="1000" mode="M186">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:TelephoneTenderingCommunication/ram:LocalNumber"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M186"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M186"/>
   <axsl:template match="@*|node()" priority="-2" mode="M186">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M186"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:URITenderingCommunication/ram:ChannelCode" priority="1000" mode="M187">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:URITenderingCommunication/ram:ChannelCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M187"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M187"/>
   <axsl:template match="@*|node()" priority="-2" mode="M187">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M187"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:URITenderingCommunication/ram:EmailURIID" priority="1000" mode="M188">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:URITenderingCommunication/ram:EmailURIID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M188"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M188"/>
   <axsl:template match="@*|node()" priority="-2" mode="M188">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M188"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:URITenderingCommunication/ram:LocalNumber" priority="1000" mode="M189">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringOrganization/ram:PrimaryTenderingContact/ram:URITenderingCommunication/ram:LocalNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LocalNumber' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:ConstraintIndicator" priority="1000" mode="M190">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:ConstraintIndicator"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ConstraintIndicator' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:Description" priority="1000" mode="M191">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:Description"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M191"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M191"/>
   <axsl:template match="@*|node()" priority="-2" mode="M191">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M191"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:ID" priority="1000" mode="M192">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M192"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M192"/>
   <axsl:template match="@*|node()" priority="-2" mode="M192">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M192"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:Name" priority="1000" mode="M193">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:Name"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M193"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M193"/>
   <axsl:template match="@*|node()" priority="-2" mode="M193">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M193"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:NetBudgetAmount" priority="1000" mode="M194">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:NetBudgetAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:NetBudgetAmount' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:PhysicalProjectActualizationLocation" priority="1000" mode="M195">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:PhysicalProjectActualizationLocation"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PhysicalProjectActualizationLocation' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:SubWorksTypeCode" priority="1000" mode="M196">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:SubWorksTypeCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubWorksTypeCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:TotalBudgetAmount" priority="1000" mode="M197">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:TotalBudgetAmount"/>

		<!--REPORT -->

      <axsl:if test="@currencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@currencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@currencyID' marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:TypeCode" priority="1000" mode="M198">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:TypeCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M198"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M198"/>
   <axsl:template match="@*|node()" priority="-2" mode="M198">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M198"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:ProcuringProject/ram:WorksTypeCode" priority="1000" mode="M199">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:ProcuringProject/ram:WorksTypeCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M199"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M199"/>
   <axsl:template match="@*|node()" priority="-2" mode="M199">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M199"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:Comment" priority="1000" mode="M200">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:Comment"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Comment' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:CreationProductionSoftware" priority="1000" mode="M201">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:CreationProductionSoftware"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CreationProductionSoftware' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:DefaultCurrencyCode" priority="1000" mode="M202">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:DefaultCurrencyCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M202"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M202"/>
   <axsl:template match="@*|node()" priority="-2" mode="M202">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M202"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:DefaultLanguageCode" priority="1000" mode="M203">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:DefaultLanguageCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M203"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M203"/>
   <axsl:template match="@*|node()" priority="-2" mode="M203">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M203"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:Description" priority="1000" mode="M204">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:Description"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M204"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M204"/>
   <axsl:template match="@*|node()" priority="-2" mode="M204">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M204"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ExchangePhaseStatusCode" priority="1000" mode="M205">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ExchangePhaseStatusCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ExchangePhaseStatusCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ID" priority="1000" mode="M206">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M206"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M206"/>
   <axsl:template match="@*|node()" priority="-2" mode="M206">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M206"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemBasicWorkItem" priority="1000" mode="M207">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemBasicWorkItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ItemBasicWorkItem' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ActualWorkItemComplexDescription" priority="1000" mode="M208">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ActualWorkItemComplexDescription"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ActualWorkItemComplexDescription' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:AlternativeClassificationCode" priority="1000" mode="M209">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:AlternativeClassificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:AlternativeClassificationCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ChangedRecordedStatus" priority="1000" mode="M210">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ChangedRecordedStatus"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ChangedRecordedStatus' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:Comment" priority="1000" mode="M211">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:Comment"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Comment' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M211"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M211"/>
   <axsl:template match="@*|node()" priority="-2" mode="M211">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M211"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ContractualLanguageCode" priority="1000" mode="M212">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ContractualLanguageCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ContractualLanguageCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:Description" priority="1000" mode="M213">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:Description"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M213"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M213"/>
   <axsl:template match="@*|node()" priority="-2" mode="M213">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M213"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ID" priority="1000" mode="M214">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ID"/>

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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:Index" priority="1000" mode="M215">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:Index"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Index' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M215"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M215"/>
   <axsl:template match="@*|node()" priority="-2" mode="M215">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M215"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:IndexValue" priority="1000" mode="M216">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:IndexValue"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:IndexValue' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ItemBasicWorkItem" priority="1000" mode="M217">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ItemBasicWorkItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ItemBasicWorkItem' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ItemGroupedWorkItem" priority="1000" mode="M218">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ItemGroupedWorkItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ItemGroupedWorkItem' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:PriceListItemID" priority="1000" mode="M219">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:PriceListItemID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PriceListItemID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:PrimaryClassificationCode" priority="1000" mode="M220">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:PrimaryClassificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PrimaryClassificationCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ReferenceFileBinaryObject" priority="1000" mode="M221">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ReferenceFileBinaryObject"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReferenceFileBinaryObject' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ReferencedIdentifiedBinaryFile" priority="1000" mode="M222">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:ReferencedIdentifiedBinaryFile"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReferencedIdentifiedBinaryFile' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:RequestedActionCode" priority="1000" mode="M223">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:RequestedActionCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:RequestedActionCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:SubordinateBasicWorkItem" priority="1000" mode="M224">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:SubordinateBasicWorkItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubordinateBasicWorkItem' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:SubordinateGroupedWorkItem" priority="1000" mode="M225">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:SubordinateGroupedWorkItem"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubordinateGroupedWorkItem' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:ChargeAmount" priority="1000" mode="M226">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:ChargeAmount"/>

		<!--REPORT -->

      <axsl:if test="@currencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@currencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@currencyID' marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:ActualAmount" priority="1000" mode="M227">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:ActualAmount"/>

		<!--REPORT -->

      <axsl:if test="@currencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@currencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@currencyID' marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:BasisAmount" priority="1000" mode="M228">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:BasisAmount"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BasisAmount' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M228"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M228"/>
   <axsl:template match="@*|node()" priority="-2" mode="M228">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M228"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:CalculationPercent" priority="1000" mode="M229">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:CalculationPercent"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CalculationPercent' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:CategoryAppliedTax" priority="1000" mode="M230">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:CategoryAppliedTax"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:CategoryAppliedTax' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:Description" priority="1000" mode="M231">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:Description"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M231"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M231"/>
   <axsl:template match="@*|node()" priority="-2" mode="M231">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M231"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:ReasonCode" priority="1000" mode="M232">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:RelatedAppliedAllowanceCharge/ram:ReasonCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReasonCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:TypeCode" priority="1000" mode="M233">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalCalculatedPrice/ram:TypeCode"/>

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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalQuantity" priority="1000" mode="M234">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TotalQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TotalQuantity' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TypeCode" priority="1000" mode="M235">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ItemGroupedWorkItem/ram:TypeCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M235"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M235"/>
   <axsl:template match="@*|node()" priority="-2" mode="M235">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M235"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:MeasurementMethodID" priority="1000" mode="M236">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:MeasurementMethodID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M236"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M236"/>
   <axsl:template match="@*|node()" priority="-2" mode="M236">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M236"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:Name" priority="1000" mode="M237">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:Name"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M237"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M237"/>
   <axsl:template match="@*|node()" priority="-2" mode="M237">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M237"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ReferenceFileBinaryObject" priority="1000" mode="M238">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:ReferenceFileBinaryObject"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReferenceFileBinaryObject' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderBillOfQuantities/ram:TotalCalculatedPrice" priority="1000" mode="M239">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderBillOfQuantities/ram:TotalCalculatedPrice"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:TotalCalculatedPrice' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderDocument/ram:BillOfQuantitiesAttachmentBinaryObject" priority="1000" mode="M240">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderDocument/ram:BillOfQuantitiesAttachmentBinaryObject"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BillOfQuantitiesAttachmentBinaryObject' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderDocument/ram:ID" priority="1000" mode="M241">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderDocument/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M241"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M241"/>
   <axsl:template match="@*|node()" priority="-2" mode="M241">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M241"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderDocument/ram:Name" priority="1000" mode="M242">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderDocument/ram:Name"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M242"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M242"/>
   <axsl:template match="@*|node()" priority="-2" mode="M242">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M242"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderDocument/ram:SubmissionDateTime" priority="1000" mode="M243">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderDocument/ram:SubmissionDateTime"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubmissionDateTime' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:BusinessTypeCode" priority="1000" mode="M244">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:BusinessTypeCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M244"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M244"/>
   <axsl:template match="@*|node()" priority="-2" mode="M244">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M244"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:BureauDepartmentName" priority="1000" mode="M245">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:BureauDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:BureauDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:DepartmentName" priority="1000" mode="M246">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:DepartmentName"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M246"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M246"/>
   <axsl:template match="@*|node()" priority="-2" mode="M246">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M246"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:DivisionDepartmentName" priority="1000" mode="M247">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:DivisionDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:DivisionDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:FaxTenderingCommunication/ram:ChannelCode" priority="1000" mode="M248">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:FaxTenderingCommunication/ram:ChannelCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M248"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M248"/>
   <axsl:template match="@*|node()" priority="-2" mode="M248">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M248"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:FaxTenderingCommunication/ram:EmailURIID" priority="1000" mode="M249">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:FaxTenderingCommunication/ram:EmailURIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EmailURIID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:FaxTenderingCommunication/ram:LocalNumber" priority="1000" mode="M250">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:FaxTenderingCommunication/ram:LocalNumber"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M250"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M250"/>
   <axsl:template match="@*|node()" priority="-2" mode="M250">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M250"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:GovernmentDepartmentName" priority="1000" mode="M251">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:GovernmentDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:GovernmentDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:ID" priority="1000" mode="M252">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M252"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M252"/>
   <axsl:template match="@*|node()" priority="-2" mode="M252">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M252"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:JobTitle" priority="1000" mode="M253">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:JobTitle"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M253"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M253"/>
   <axsl:template match="@*|node()" priority="-2" mode="M253">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M253"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:OfficeCounterDepartmentName" priority="1000" mode="M254">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:OfficeCounterDepartmentName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:OfficeCounterDepartmentName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:PersonName" priority="1000" mode="M255">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:PersonName"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M255"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M255"/>
   <axsl:template match="@*|node()" priority="-2" mode="M255">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M255"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:PostalTenderingAddress" priority="1000" mode="M256">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:PostalTenderingAddress"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:PostalTenderingAddress' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:Responsibility" priority="1000" mode="M257">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:Responsibility"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M257"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M257"/>
   <axsl:template match="@*|node()" priority="-2" mode="M257">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M257"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:TelephoneTenderingCommunication/ram:ChannelCode" priority="1000" mode="M258">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:TelephoneTenderingCommunication/ram:ChannelCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M258"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M258"/>
   <axsl:template match="@*|node()" priority="-2" mode="M258">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M258"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:TelephoneTenderingCommunication/ram:EmailURIID" priority="1000" mode="M259">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:TelephoneTenderingCommunication/ram:EmailURIID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:EmailURIID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:TelephoneTenderingCommunication/ram:LocalNumber" priority="1000" mode="M260">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:TelephoneTenderingCommunication/ram:LocalNumber"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M260"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M260"/>
   <axsl:template match="@*|node()" priority="-2" mode="M260">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M260"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:URITenderingCommunication/ram:ChannelCode" priority="1000" mode="M261">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:URITenderingCommunication/ram:ChannelCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M261"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M261"/>
   <axsl:template match="@*|node()" priority="-2" mode="M261">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M261"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:URITenderingCommunication/ram:EmailURIID" priority="1000" mode="M262">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:URITenderingCommunication/ram:EmailURIID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M262"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M262"/>
   <axsl:template match="@*|node()" priority="-2" mode="M262">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M262"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:URITenderingCommunication/ram:LocalNumber" priority="1000" mode="M263">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:DesignatedTenderingContact/ram:URITenderingCommunication/ram:LocalNumber"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:LocalNumber' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:ID" priority="1000" mode="M264">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M264"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M264"/>
   <axsl:template match="@*|node()" priority="-2" mode="M264">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M264"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:InternationalName" priority="1000" mode="M265">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:InternationalName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:InternationalName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:Name" priority="1000" mode="M266">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:Name"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M266"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M266"/>
   <axsl:template match="@*|node()" priority="-2" mode="M266">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M266"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:CountryName" priority="1000" mode="M267">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:CountryName"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M267"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M267"/>
   <axsl:template match="@*|node()" priority="-2" mode="M267">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M267"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:LineOne" priority="1000" mode="M268">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:LineOne"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M268"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M268"/>
   <axsl:template match="@*|node()" priority="-2" mode="M268">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M268"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:LineTwo" priority="1000" mode="M269">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:LineTwo"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M269"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M269"/>
   <axsl:template match="@*|node()" priority="-2" mode="M269">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M269"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:PostcodeCode" priority="1000" mode="M270">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:PostalTenderingAddress/ram:PostcodeCode"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M270"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M270"/>
   <axsl:template match="@*|node()" priority="-2" mode="M270">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M270"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TendererOrganization/ram:SubordinateDelegateeOrganization" priority="1000" mode="M271">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TendererOrganization/ram:SubordinateDelegateeOrganization"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SubordinateDelegateeOrganization' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:ApplicableTenderingPeriod" priority="1000" mode="M272">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:ApplicableTenderingPeriod"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ApplicableTenderingPeriod' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:ClassificationCode" priority="1000" mode="M273">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:ClassificationCode"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ClassificationCode' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:Description" priority="1000" mode="M274">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:Description"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M274"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M274"/>
   <axsl:template match="@*|node()" priority="-2" mode="M274">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M274"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:ID" priority="1000" mode="M275">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:ID"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M275"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M275"/>
   <axsl:template match="@*|node()" priority="-2" mode="M275">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M275"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:Name" priority="1000" mode="M276">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:Name"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M276"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M276"/>
   <axsl:template match="@*|node()" priority="-2" mode="M276">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M276"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:OriginCountryName" priority="1000" mode="M277">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:OriginCountryName"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:OriginCountryName' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:ProcurementAmount" priority="1000" mode="M278">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:ProcurementAmount"/>

		<!--REPORT -->

      <axsl:if test="@currencyID">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test="@currencyID">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Attribute '@currencyID' marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:ProcurementQuantity" priority="1000" mode="M279">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:ProcurementQuantity"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ProcurementQuantity' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:ReferenceBinaryObject" priority="1000" mode="M280">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:ReferenceBinaryObject"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:ReferenceBinaryObject' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:SecondaryID" priority="1000" mode="M281">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:SecondaryID"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SecondaryID' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:Specification" priority="1000" mode="M282">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:Specification"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:Specification' is marked as not used in the given context.</svrl:text>
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

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:SpecificationReference" priority="1000" mode="M283">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:SpecificationReference"/>

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
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M283"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M283"/>
   <axsl:template match="@*|node()" priority="-2" mode="M283">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M283"/>
   </axsl:template>

<!--PATTERN -->


	<!--RULE -->

   <axsl:template match="/rsm:Tender/rsm:TenderingDeliverable/ram:SupplementaryTenderingDeliverable" priority="1000" mode="M284">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" context="/rsm:Tender/rsm:TenderingDeliverable/ram:SupplementaryTenderingDeliverable"/>

		<!--REPORT -->

      <axsl:if test=".">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" test=".">
            <axsl:attribute name="flag">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-get-full-path"/>
            </axsl:attribute>
            <svrl:text>
	Element 'ram:SupplementaryTenderingDeliverable' is marked as not used in the given context.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M284"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M284"/>
   <axsl:template match="@*|node()" priority="-2" mode="M284">
      <axsl:apply-templates select="*|comment()|processing-instruction()" mode="M284"/>
   </axsl:template>
</axsl:stylesheet>