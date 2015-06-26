<!-- Schematron binding rules generated automatically. -->
<!-- Data binding to CEFACT syntax for T45 -->
<!-- (2009). Invinet Sistemes -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="T45" id="CEFACT-T45">
  <param name="BII2-T45-R001" value="false"/>
  <param name="BII2-T45-R002" value="false"/>
  <param name="BII2-T45-R003" value="(ram:ReceiptDocument/ram:ReceiptDateTime)"/>
  <param name="BII2-T45-R004" value="(ram:ReceiptDocument/ram:Name)"/>
  <param name="BII2-T45-R005" value="(ram:ReceiptDocument/ram:ID)"/>
  <param name="BII2-T45-R006" value="(ram:ProcuringOrganization)"/>
  <param name="BII2-T45-R007" value="(ram:TendererOrganization)"/>
  <param name="BII2-T45-R008" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T45-R009" value="(ram:Name) or (ram:ID)"/>
  <param name="BII2-T45-R010" value="false"/>
  <param name="BII2-T45-R011" value="false"/>
  <param name="BII2-T45-R012" value="false"/>
  <param name="Contracting_authority" value="//ram:ProcuringOrganization"/>
  <param name="Tenderer" value="//ram:TendererOrganization"/>
  <param name="tender_reception_notification" value="/rsm:ReceptionOfTender"/>
  <param name="Document_Reference" value="//ram:ReceiptDocument"/>
</pattern>
