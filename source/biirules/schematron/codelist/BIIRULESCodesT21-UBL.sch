<?xml version="1.0" encoding="ISO-8859-1"?><pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="CodesT21">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:CatalogueLine//cbc:ActionCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' Add Delete Update ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T21-R001]-The line action code for a catalogue line MUST be add, update or delete if present</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern>