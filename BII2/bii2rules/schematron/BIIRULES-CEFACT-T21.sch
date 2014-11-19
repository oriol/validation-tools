<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	CEFACT syntax binding to the T21   
        	Author: Oriol Bausà

     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T21 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST21_phase">
    <active pattern="CEFACT-T21"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT21"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T21.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="CEFACT/BIIRULES-CEFACT-T21.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT21-CEFACT.sch"/>
</schema>
