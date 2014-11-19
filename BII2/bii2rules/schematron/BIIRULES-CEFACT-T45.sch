<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	CEFACT syntax binding to the T45   
        	Author: Oriol Bausà

     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10" xmlns:cac="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10" xmlns:CEFACT="urn:un:unece:uncefact:data:standard:ReceptionOfTender:8" queryBinding="xslt2">
  <title>BIIRULES  T45 bound to CEFACT</title>
  <ns prefix="udt" uri="urn:un:unece:uncefact:data:standard:UnqualifiedDataType:10"/>
  <ns prefix="ram" uri="urn:un:unece:uncefact:data:Standard:ReusableAggregateBusinessInformationEntity:10"/>
  <ns prefix="rsm" uri="urn:un:unece:uncefact:data:standard:ReceptionOfTender:8"/>
  <phase id="BIIRULEST45_phase">
    <active pattern="CEFACT-T45"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T45.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="CEFACT/BIIRULES-CEFACT-T45.sch"/>
</schema>
