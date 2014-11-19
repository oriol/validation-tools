<?xml version="1.0" encoding="ISO-8859-1"?><pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="CodesT26">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cac:PaymentMeans//cbc:PaymentMeansCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 60 61 62 63 64 65 66 67 70 74 75 76 77 78 91 92 93 94 95 96 97 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[CL-T26-R001]-Payment means in an statement MUST be coded using CEFACT code list 4461</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern>