#!/bin/sh

#  Invinet XML Tools  
#  Created by:  Oriol Bausˆ (2013) Invinet Sistemes
#  Copyright (C) - Invinet Sistemes 2003 - http://www.invinet.org

# generate genericodes and cva for every Transaction in eFFF 
# e2gc-cva.rb businessrules/eFFF-CodeLists-v01.ods EFFF gc cva

echo "========================="
echo "Create schematron for T10"
#create_code_rules.sh EFFFCodesT10-UBL
e2sch.rb businessrules/eFFF-T10-BusinessRules-v01.ods schematron EFFF 
create_xslt2.0_from_sch.sh  EFFF-UBL-T10


