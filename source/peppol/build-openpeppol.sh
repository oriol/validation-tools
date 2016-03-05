#!/bin/sh

#  Invinet XML Tools  
#  Created by:  Oriol Bausˆ (2013) Invinet Sistemes
#  Copyright (C) - Invinet Sistemes 2003 - http://www.invinet.org

# generate genericodes and cva for every Transaction in OPENPEPPOL
e2gc-cva.rb businessrules/OpenPEPPOL-CodeLists-v01.ods OPENPEPPOL gc cva

echo "========================="
echo "Create schematron for T10"
create_code_rules.sh OPENPEPPOLCodesT10-UBL
e2sch.rb businessrules/OpenPEPPOL-T10-BusinessRules-v03.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T10


echo "========================="
echo "Create schematron for T14"
create_code_rules.sh OPENPEPPOLCodesT14-UBL
e2sch.rb businessrules/OpenPEPPOL-T14-BusinessRules-v03.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T14

echo "========================="
echo "Create schematron for T14"
create_code_rules.sh OPENPEPPOLCodesT16-UBL
e2sch.rb businessrules/OpenPEPPOL-T16-BusinessRules-v03.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T16

echo "========================="
echo "Create schematron for T19"
create_code_rules.sh OPENPEPPOLCodesT19-UBL
e2sch.rb businessrules/OpenPEPPOL-T19-BusinessRules-v01.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T19

echo "========================="
echo "Create schematron for T58"
create_code_rules.sh OPENPEPPOLCodesT58-UBL
e2sch.rb businessrules/OpenPEPPOL-T58-BusinessRules-v01.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T58

echo "========================="
echo "Create schematron for T01"
create_code_rules.sh OPENPEPPOLCodesT01-UBL
e2sch.rb businessrules/OpenPEPPOL-T01-BusinessRules-v01.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T01

echo "========================="
echo "Create schematron for T71"
create_code_rules.sh OPENPEPPOLCodesT71-UBL
e2sch.rb businessrules/OpenPEPPOL-T71-BusinessRules-v01.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T71

echo "========================="
echo "Create schematron for T76"
create_code_rules.sh OPENPEPPOLCodesT76-UBL
e2sch.rb businessrules/OpenPEPPOL-T76-BusinessRules-v01.ods schematron OPENPEPPOL
create_xslt_from_sch.sh  OPENPEPPOL-UBL-T76

