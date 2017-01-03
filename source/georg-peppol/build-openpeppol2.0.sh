#!/bin/sh

#  Invinet XML Tools  
#  Created by:  Oriol Bausˆ (2013) Invinet Sistemes
#  Copyright (C) - Invinet Sistemes 2003 - http://www.invinet.org

# generate genericodes and cva for every Transaction in OPENPEPPOL
#e2gc-cva.rb businessrules/OpenPEPPOL-CodeLists-v03.ods OPENPEPPOL gc cva
e2gc-cva.rb businessrules/OpenPEPPOL-CodeLists-v110.ods OPENPEPPOL gc cva

echo "========================="
echo "Create schematron for T110"
create_code_rules.sh OPENPEPPOLCodesT110-UBL
e2sch.rb businessrules/OpenPEPPOL-T110-BusinessRules-v01.ods schematron OPENPEPPOL
create_xslt2.0_from_sch.sh  OPENPEPPOL-UBL-T110


#echo "========================="
#echo "Create schematron for T77"
#create_code_rules.sh OPENPEPPOLCodesT77-UBL
#e2sch.rb businessrules/OpenPEPPOL-T77-BusinessRules-v03.ods schematron OPENPEPPOL
#create_xslt2.0_from_sch.sh  OPENPEPPOL-UBL-T77


