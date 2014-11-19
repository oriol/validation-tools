<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T68 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T68" id="UBL-T68">
  <param name="BII2-T68-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T68-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T68-R004" value="(cbc:ID)"/>
  <param name="BII2-T68-R005" value="(cac:DocumentReference/cbc:ID)"/>
  <param name="BII2-T68-R009" value="(cac:CommodityClassification/cbc:ItemClassificationCode[@listID='CPV'])"/>
  <param name="BII2-T68-R010" value="(cac:CommodityClassification)"/>
  <param name="BII2-T68-R011" value="(cac:CatalogueLine)"/>
  <param name="BII2-T68-R012" value="(cbc:Value)"/>
  <param name="Pre-Award_Catalogue" value="/ubl:Catalogue"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Item" value="//cac:Item"/>
</pattern>
