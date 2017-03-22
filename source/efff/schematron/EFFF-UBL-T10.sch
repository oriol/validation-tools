<?xml version="1.0" encoding="UTF-8"?>
<!-- 

            UBL syntax binding to the T10  
            Created by Validex Schematron Generator. (2015) Midran Ltd.
            Timestamp: 2017-01-13 11:51:36 +0100
     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2">
  <title>EFFF  T10 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="cn" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
  <phase id="EFFFT10_phase">
    <active pattern="UBL-T10"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/EFFF-T10.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/EFFF-UBL-T10.sch"/>
</schema>
