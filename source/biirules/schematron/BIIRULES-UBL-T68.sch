<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T68   
        	Author: Oriol Bausà

     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2" queryBinding="xslt2">
  <title>BIIRULES  T68 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2"/>
  <phase id="BIIRULEST68_phase">
    <active pattern="UBL-T68"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T68.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/BIIRULES-UBL-T68.sch"/>
</schema>
