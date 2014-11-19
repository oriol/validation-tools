<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to UBL syntax for T69 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T69" id="UBL-T69">
  <param name="BII2-T69-R001" value="(cbc:CustomizationID)"/>
  <param name="BII2-T69-R002" value="(cbc:ProfileID)"/>
  <param name="BII2-T69-R003" value="(cbc:ID)"/>
  <param name="BII2-T69-R004" value="(cac:DocumentReference/cbc:ID)"/>
  <param name="BII2-T69-R005" value="(cbc:Name)"/>
  <param name="BII2-T69-R006" value="(cac:StandardItemIdentification/cbc:ID/@schemeID)"/>
  <param name="BII2-T69-R007" value="(cac:CommodityClassification/cbc:ItemClassificationCode[@listID='CPV'])"/>
  <param name="BII2-T69-R008" value="(cac:CommodityClassification)"/>
  <param name="BII2-T69-R009" value="(cac:CatalogueLine)"/>
  <param name="BII2-T69-R010" value="(cbc:Value)"/>
  <param name="Pre-Award_Catalogue_Template" value="/ubl:Catalogue"/>
  <param name="Item_Property" value="//cac:AdditionalItemProperty"/>
  <param name="Item" value="//cac:Item"/>
</pattern>
