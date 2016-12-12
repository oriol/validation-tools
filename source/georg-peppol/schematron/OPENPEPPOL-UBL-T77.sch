<?xml version="1.0" encoding="UTF-8"?>
<!-- 

            UBL syntax binding to the T77  
            Created by Validex Schematron Generator. (2015) Midran Ltd.
            Timestamp: 2016-12-12 23:50:52 +0100
     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2" queryBinding="xslt2">
  <title>OPENPEPPOL  T77 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2"/>
  <phase id="OPENPEPPOLT77_phase">
    <active pattern="UBL-T77"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/OPENPEPPOL-T77.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/OPENPEPPOL-UBL-T77.sch"/>
</schema>
