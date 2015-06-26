<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	CEFACT syntax binding to the T20   
        	Author: Oriol Bausà

     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3" queryBinding="xslt2">
  <title>BIIRULES  T20 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:CrossIndustryCatalogue:3"/>
  <phase id="BIIRULEST20_phase">
    <active pattern="CEFACT-T20"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT20"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T20.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="CEFACT/BIIRULES-CEFACT-T20.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT20-CEFACT.sch"/>
</schema>
