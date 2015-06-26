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
e2sch.rb businessrules/bii2rules-T01-BusinessRules-v08.ods schematron BIIRULES

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
e2sch.rb businessrules/bii2rules-T10-BusinessRules-v11.ods schematron BIIRULES

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  BIIRULES-UBL-T10
create_xslt_from_sch.sh  BIIRULES-CEFACT-T10

echo "======================================"
echo "Create schematron for codelists in T14"
create_code_rules.sh BIIRULESCodesT14-UBL
create_code_rules.sh BIIRULESCodesT14-CEFACT


echo "Create schematron from ods adding codelist T14 rules"
e2sch.rb businessrules/bii2rules-T14-BusinessRules-v08.ods schematron BIIRULES

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

