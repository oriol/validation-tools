#!/bin/sh

#  Invinet XML Tools  
#  Created by:  Oriol Bausˆ (2010) Invinet Sistemes
#  Copyright (C) - Invinet Sistemes 2003 - http://www.invinet.org

# generate genericodes and cva for every Transaction in BIIRULES
e2gc-cva.rb businessrules/bii2rules-CodeLists-v04.ods BIIRULES gc cva


echo "======================================"
echo "Create schematron for codelists in T01"
create_code_rules.sh  BIIRULESCodesT01-UBL
create_code_rules.sh  BIIRULESCodesT01-CEFACT


echo "Create schematron from ods  adding codelist T01 rules"
e2sch.rb businessrules/bii2rules-T01-BusinessRules-v10.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T01
create_xslt_from_sch.sh  BIIRULES-CEFACT-T01

echo "======================================"
echo "Create schematron from ods T02 rules"
e2sch.rb businessrules/bii2rules-T02-BusinessRules-v05.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T02
create_xslt_from_sch.sh  BIIRULES-CEFACT-T02


echo "======================================"
echo "Create schematron from ods T04 rules"
e2sch.rb businessrules/bii2rules-T04-BusinessRules-v02.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T04
create_xslt_from_sch.sh  BIIRULES-CEFACT-T04

echo "======================================"
echo "Create schematron from ods T05 rules"
e2sch.rb businessrules/bii2rules-T05-BusinessRules-v02.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T05
create_xslt_from_sch.sh  BIIRULES-CEFACT-T05

echo "======================================"
echo "Create schematron for codelists in T10"
create_code_rules.sh BIIRULESCodesT10-UBL
create_code_rules.sh BIIRULESCodesT10-CEFACT


echo "Create schematron from ods adding codelist T10 rules"
e2sch.rb businessrules/bii2rules-T10-BusinessRules-v13.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T10
create_xslt_from_sch.sh  BIIRULES-CEFACT-T10

echo "======================================"
echo "Create schematron for codelists in T14"
create_code_rules.sh BIIRULESCodesT14-UBL
create_code_rules.sh BIIRULESCodesT14-CEFACT


echo "Create schematron from ods adding codelist T14 rules"
e2sch.rb businessrules/bii2rules-T14-BusinessRules-v10.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T14
create_xslt_from_sch.sh  BIIRULES-CEFACT-T14

echo "======================================"
echo "Create schematron from ods T16 rules"
e2sch.rb businessrules/bii2rules-T16-BusinessRules-v05.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T16
create_xslt_from_sch.sh  BIIRULES-CEFACT-T16


echo "======================================"
echo "Create schematron for codelists in T17"
create_code_rules.sh  BIIRULESCodesT17-UBL

echo "======================================"
echo "Create schematron from ods T17 rules"
e2sch.rb businessrules/bii2rules-T17-BusinessRules-v04.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T17

echo "======================================"
echo "Create schematron from ods T18 rules"
e2sch.rb businessrules/bii2rules-T18-BusinessRules-v02.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T18
create_xslt_from_sch.sh  BIIRULES-CEFACT-T18

echo "======================================"
echo "Create schematron for codelists in T19"
create_code_rules.sh  BIIRULESCodesT19-UBL
create_code_rules.sh  BIIRULESCodesT19-CEFACT


echo "Create schematron from ods  adding codelist T19 rules"
e2sch.rb businessrules/bii2rules-T19-BusinessRules-v05.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T19
create_xslt_from_sch.sh  BIIRULES-CEFACT-T19

echo "======================================"
echo "Create schematron for codelists in T20"
create_code_rules.sh  BIIRULESCodesT20-UBL
create_code_rules.sh  BIIRULESCodesT20-CEFACT


echo "Create schematron from ods  adding codelist T20 rules"
e2sch.rb businessrules/bii2rules-T20-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T20
create_xslt_from_sch.sh  BIIRULES-CEFACT-T20

echo "======================================"
echo "Create schematron for codelists in T21"
create_code_rules.sh  BIIRULESCodesT21-UBL
create_code_rules.sh  BIIRULESCodesT21-CEFACT


echo "Create schematron from ods  adding codelist T21 rules"
e2sch.rb businessrules/bii2rules-T21-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T21
create_xslt_from_sch.sh  BIIRULES-CEFACT-T21

echo "======================================"
echo "Create schematron from ods T22 rules"
e2sch.rb businessrules/bii2rules-T22-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T22
create_xslt_from_sch.sh  BIIRULES-CEFACT-T22

echo "======================================"
echo "Create schematron from ods T23 rules"
e2sch.rb businessrules/bii2rules-T23-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T23

echo "======================================"
echo "Create schematron for codelists in T26"
create_code_rules.sh  BIIRULESCodesT26-UBL


echo "======================================"
echo "Create schematron from ods T26 rules"
e2sch.rb businessrules/bii2rules-T26-BusinessRules-v02.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T26

echo "======================================"
echo "Create schematron for codelists in T40"
create_code_rules.sh  BIIRULESCodesT40-UBL
create_code_rules.sh  BIIRULESCodesT40-CEFACT

echo "Create schematron from ods  adding codelist T40 rules"
e2sch.rb businessrules/bii2rules-T40-BusinessRules-v06.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T40
create_xslt_from_sch.sh  BIIRULES-CEFACT-T40

echo "======================================"
echo "Create schematron for codelists in T41"
create_code_rules.sh  BIIRULESCodesT41-UBL
create_code_rules.sh  BIIRULESCodesT41-CEFACT

o "======================================"
echo "Create schematron from ods  adding codelist T41 rules"
e2sch.rb businessrules/bii2rules-T41-BusinessRules-v04.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T41
create_xslt_from_sch.sh  BIIRULES-CEFACT-T41

echo "======================================"
echo "Create schematron from ods  adding codelist T42 rules"
e2sch.rb businessrules/bii2rules-T42-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T42


echo "======================================"
echo "Create schematron for codelists in T44"
create_code_rules.sh  BIIRULESCodesT44-UBL
create_code_rules.sh  BIIRULESCodesT44-CEFACT

echo "Create schematron from ods  adding codelist T44 rules"
e2sch.rb businessrules/bii2rules-T44-BusinessRules-v03.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T44
create_xslt_from_sch.sh  BIIRULES-CEFACT-T44

echo "======================================"
echo "Create schematron from ods  adding codelist T45 rules"
e2sch.rb businessrules/bii2rules-T45-BusinessRules-v02.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T45

echo "======================================"
echo "Create schematron for codelists in T54"
create_code_rules.sh  BIIRULESCodesT54-UBL
create_code_rules.sh  BIIRULESCodesT54-CEFACT

echo "Create schematron from ods  adding codelist T54 rules"
e2sch.rb businessrules/bii2rules-T54-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T54
create_xslt_from_sch.sh  BIIRULES-CEFACT-T54


echo "======================================"
echo "Create schematron from ods  adding codelist T55 rules"
e2sch.rb businessrules/bii2rules-T55-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T55

echo "======================================"
echo "Create schematron from ods  adding codelist T58 rules"
e2sch.rb businessrules/bii2rules-T58-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T58

echo "======================================"
echo "Create schematron from ods  adding codelist T59 rules"
e2sch.rb businessrules/bii2rules-T59-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T59

echo "======================================"
echo "Create schematron from ods  adding codelist T65 rules"
e2sch.rb businessrules/bii2rules-T65-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T65

echo "======================================"
echo "Create schematron from ods  adding codelist T68 rules"
e2sch.rb businessrules/bii2rules-T68-BusinessRules-v02.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T68


echo "======================================"
echo "Create schematron from ods  adding codelist T69 rules"
e2sch.rb businessrules/bii2rules-T69-BusinessRules-v03.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T69


echo "======================================"
echo "Create schematron for codelists in T71"
create_code_rules.sh  BIIRULESCodesT71-UBL

echo "======================================"
echo "Create schematron from ods  adding codelist T71 rules"
e2sch.rb businessrules/bii2rules-T71-BusinessRules-v03.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T71

echo "======================================"
echo "Create schematron from ods  adding codelist T72 rules"
e2sch.rb businessrules/bii2rules-T72-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T72

echo "======================================"
echo "Create schematron from ods  adding codelist T73 rules"
e2sch.rb businessrules/bii2rules-T73-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T73

echo "======================================"
echo "Create schematron from ods  adding codelist T76 rules"
e2sch.rb businessrules/bii2rules-T76-BusinessRules-v01.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T76
