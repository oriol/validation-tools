<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	CEFACT syntax binding to the T16   
        	Author: Oriol Bausà

     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3" queryBinding="xslt2">
  <title>BIIRULES  T16 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryDespatchAdvice:3"/>
  <phase id="BIIRULEST16_phase">
    <active pattern="CEFACT-T16"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T16.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="CEFACT/BIIRULES-CEFACT-T16.sch"/>
</schema>
