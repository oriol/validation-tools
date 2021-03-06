<?xml version="1.0" encoding="ISO-8859-1"?><pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="CodesT17">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:TaxCategory/cbc:ID" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AE E S Z AA H ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T17-R005]-Reminder tax categories MUST be coded using UN/ECE 5305 code list</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern>