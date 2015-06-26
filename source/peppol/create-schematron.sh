#!/bin/sh

#  Invinet XML Tools  
#  Created by:  Oriol Bausˆ (2013) Invinet Sistemes
#  Copyright (C) - Invinet Sistemes 2003 - http://www.invinet.org

# generate genericodes and cva for every Transaction in BIIRULES
#e2gc-cva.rb businessrules/OpenPEPPOL-CodeLists-v01.ods OPENPEPPOL gc cva


echo "======================================"
echo "Create schematron for codelists in "  $1
create_code_rules.sh OPENPEPPOLCodes$1-UBL

echo "Create schematron from ods adding codelist "$1" rules"
e2sch.rb businessrules/OpenPEPPOL-$1-BusinessRules-v01.ods schematron OPENPEPPOL

echo "Assemblying to xslt validation sheet"
create_xslt_from_sch.sh  OPENPEPPOL-UBL-$1

