<?xml version="1.0" encoding="UTF-8"?><!-- 

        	UBL syntax binding to the T01   
        	Author: Oriol Bausà

     --><schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Order-2" queryBinding="xslt2">
  <title>OPENPEPPOL  T01 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Order-2"/>
  <phase id="OPENPEPPOLT01_phase">
    <active pattern="UBL-T01"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT01"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <?DSDL_INCLUDE_START abstract/OPENPEPPOL-T01.sch?><pattern abstract="true" id="T01">
  <rule context="$Country_identification">
    <assert test="$EUGEN-T01-R015" flag="fatal" id="EUGEN-T01-R015">[EUGEN-T01-R015]-A country identification code MUST have a list identifier attribute “ISO3166-1:Alpha2”</assert>
  </rule>
  <rule context="$Document_Currency">
    <assert test="$EUGEN-T01-R014" flag="fatal" id="EUGEN-T01-R014">[EUGEN-T01-R014]-A document currency code MUST have a list identifier attribute “ISO4217”</assert>
  </rule>
  <rule context="$Endpoint">
    <assert test="$EUGEN-T01-R011" flag="fatal" id="EUGEN-T01-R011">[EUGEN-T01-R011]-An endpoint identifier MUST have a scheme identifier attribute</assert>
  </rule>
  <rule context="$Order_Type">
    <assert test="$EUGEN-T01-R013" flag="fatal" id="EUGEN-T01-R013">[EUGEN-T01-R013]-An order type code MUST have a list identifier attribute “UNCL1001”</assert>
  </rule>
  <rule context="$Party_Identifier">
    <assert test="$EUGEN-T01-R012" flag="fatal" id="EUGEN-T01-R012">[EUGEN-T01-R012]-A party identifier MUST have a scheme identifier attribute</assert>
  </rule>
  <rule context="$Tax_Category_Identifier">
    <assert test="$EUGEN-T01-R017" flag="fatal" id="EUGEN-T01-R017">[EUGEN-T01-R017]-A tax category identifier MUST have a scheme identifier attribute “UNCL5305”</assert>
  </rule>
  <rule context="$Unit_Code">
    <assert test="$EUGEN-T01-R016" flag="fatal" id="EUGEN-T01-R016">[EUGEN-T01-R016]-A unit code attribute MUST have a unit code list identifier attribute “UNECERec20”</assert>
  </rule>
</pattern><?DSDL_INCLUDE_END abstract/OPENPEPPOL-T01.sch?>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <?DSDL_INCLUDE_START UBL/OPENPEPPOL-UBL-T01.sch?><pattern is-a="T01" id="UBL-T01">
  <param name="EUGEN-T01-R011" value="@schemeID"/>
  <param name="EUGEN-T01-R012" value="@schemeID"/>
  <param name="EUGEN-T01-R013" value="@listID='UNCL1001' or @listID='UNCLD1001' "/>
  <param name="EUGEN-T01-R014" value="@listID='ISO4217'"/>
  <param name="EUGEN-T01-R015" value="@listID = 'ISO3166-1:Alpha2'"/>
  <param name="EUGEN-T01-R016" value="not(attribute::unitCode) or (attribute::unitCode and attribute::unitCodeListID = 'UNECERec20')"/>
  <param name="EUGEN-T01-R017" value="@schemeID  = 'UNCL5305'"/>
  <param name="Order_Line" value="//cac:OrderLine"/>
  <param name="Order_Type" value="//cbc:OrderTypeCode"/>
  <param name="Order" value="/ubl:Order"/>
  <param name="Allowance_Charges" value="//cac:AllowanceCharge"/>
  <param name="Expected_totals" value="//cac:AnticipatedMonetaryTotal"/>
  <param name="Item_property" value="//cac:AdditionalItemProperty"/>
  <param name="Seller" value="//cac:SellerSupplierParty"/>
  <param name="Buyer" value="//cac:BuyerCustomerParty"/>
  <param name="Delivery_Address" value="//cac:DeliveryLocation"/>
  <param name="Item" value="//cac:Item"/>
  <param name="Endpoint" value="//cbc:EndpointID"/>
  <param name="Party_Identifier" value="//cac:PartyIdentification/cbc:ID"/>
  <param name="Document_Currency" value="//cbc:DocumentCurrencyCode"/>
  <param name="Country_identification" value="//cac:Country/cbc:IdentificationCode"/>
  <param name="Unit_Code" value="//*[contains(name(),'Quantity')]"/>
  <param name="Tax_Category_Identifier" value="//cac:ClassifiedTaxCategory/cbc:ID"/>
</pattern><?DSDL_INCLUDE_END UBL/OPENPEPPOL-UBL-T01.sch?>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <?DSDL_INCLUDE_START codelist/OPENPEPPOLCodesT01-UBL.sch?><pattern id="CodesT01">
<!--
  This implementation supports genericode code lists with no instance
  meta data.
-->
<!--
    Start of synthesis of rules from code list context associations.
Version 0.3
-->

<rule context="cbc:OrderTypeCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 481 482 483 484 485 486 487 488 489 490 491 493 494 495 496 497 498 499 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 550 575 580 610 621 622 623 624 630 631 632 633 635 640 650 655 700 701 702 703 704 705 706 707 708 709 710 711 712 713 714 715 716 720 722 723 724 730 740 741 743 744 745 746 750 760 761 763 764 765 766 770 775 780 781 782 783 784 785 786 787 788 789 790 791 792 793 794 795 796 797 798 799 810 811 812 820 821 822 823 824 825 830 833 840 841 850 851 852 853 855 856 860 861 862 863 864 865 870 890 895 896 901 910 911 913 914 915 916 917 925 926 927 929 930 931 932 933 934 935 936 937 938 940 941 950 951 952 953 954 955 960 961 962 963 964 965 966 970 971 972 974 975 976 977 978 979 990 991 995 996 998 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal">[OP-T01-R001]-OrderTypeCode in an order MUST be from UN/ECE 1001 code list PEPPOL Subset</assert>
</rule>

<rule context="cbc:DocumentCurrencyCode" flag="fatal">
  <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BOV BRL BSD BTN BWP BYR BZD CAD CDF CHE CHF CHW CLF CLP CNY COP COU CRC CUP CVE CZK DJF DKK DOP DZD EEK EGP ERN ETB EUR FJD FKP GBP GEL GHS GIP GMD GNF GTQ GWP GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW K