<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!-- Schematron generated from Trifolia on 12/14/2014 -->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:svs="urn:ihe:iti:svs:2008" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" schemaVersion="ISO19757-3">
	<sch:title>Consolidated Clinical Document Architecture (C-CDA) Release 2.0 Cancer Registry</sch:title>
	<sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc"/>
	<sch:ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
	<sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
	<sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc"/>
	<sch:ns prefix="cda" uri="urn:hl7-org:v3"/>
	<sch:phase id="errors">
		<sch:active pattern="p-DOCUMENT-TEMPLATE"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-CLOSEDTEMPLATE"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-errors"/>
	</sch:phase>
	<sch:phase id="warnings">
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-warnings"/>
	</sch:phase>
	<sch:pattern id="p-DOCUMENT-TEMPLATE">
		<sch:rule id="r-errors-DOC-abstract" abstract="true">
			<sch:assert id="a-IG-1126-DOC" test="cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']">The document must contain at least 1 of the document level templates for this schematron to be applicable.</sch:assert>
		</sch:rule>
		<sch:rule id="r-errors-DOC" context="cda:ClinicalDocument">
			<sch:extends rule="r-errors-DOC-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors-abstract" abstract="true">
			<sch:assert id="a-81-7157" test="count(cda:given[@xsi:type='ST']) &gt; 0">SHALL contain at least one [1..*] given (CONF:81-7157).</sch:assert>
			<sch:assert id="a-81-7159" test="count(cda:family[@xsi:type='ST'])=1">SHALL contain exactly one [1..1] family (CONF:81-7159).</sch:assert>
			<sch:assert id="a-81-7278-c" test=".">*SHALL NOT* have mixed content except for white space (CONF:81-7278).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors" context="cda:name[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.1']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract" abstract="true">
			<sch:assert id="a-81-7291-c" test="count(cda:streetAddressLine[@xsi:type='ST']) &gt; 0 and count(cda:streetAddressLine[@xsi:type='ST']) &lt; 5">SHALL contain at least one and not more than 4 streetAddressLine (CONF:81-7291).</sch:assert>
			<sch:assert id="a-81-7292" test="count(cda:city[@xsi:type='ST'])=1">SHALL contain exactly one [1..1] city (CONF:81-7292).</sch:assert>
			<sch:assert id="a-81-7296-c" test="not(tested)">*SHALL NOT* have mixed content except for white space (CONF:81-7296).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors" context="cda:addr[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.2']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors-abstract" abstract="true">
			<sch:assert id="a-81-7758" test="@classCode='SDLOC'">SHALL contain exactly one [1..1] @classCode="SDLOC" (CodeSystem: RoleCode 2.16.840.1.113883.5.111 STATIC) (CONF:81-7758).</sch:assert>
			<sch:assert id="a-81-7763" test="not(cda:playingEntity) or cda:playingEntity[@classCode='PLC']">The playingEntity, if present, SHALL contain exactly one [1..1] @classCode="PLC" (CodeSystem: EntityClass 2.16.840.1.113883.5.41 STATIC) (CONF:81-7763).</sch:assert>
			<sch:assert id="a-81-16850" test="count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.20275']/voc:code/@value or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation 2.16.840.1.113883.1.11.20275 STATIC (CONF:81-16850).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors-abstract"/>
			<sch:assert id="a-81-7635" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32'])=1">SHALL contain exactly one [1..1] templateId (CONF:81-7635) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.32" (CONF:81-10524).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors-abstract" abstract="true">
			<sch:assert id="a-81-7713" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:81-7713).</sch:assert>
			<sch:assert id="a-81-14757" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:81-14757).</sch:assert>
			<sch:assert id="a-81-14758" test="cda:code[@code='51848-0']">This code SHALL contain exactly one [1..1] @code="51848-0" Assessments (CONF:81-14758).</sch:assert>
			<sch:assert id="a-81-16774" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:81-16774).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors-abstract"/>
			<sch:assert id="a-81-7711" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8'])=1">SHALL contain exactly one [1..1] templateId (CONF:81-7711) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.8" (CONF:81-10382).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract" abstract="true">
			<sch:assert id="a-81-9368" test="count(cda:name)=1">SHALL contain exactly one [1..1] name (CONF:81-9368).</sch:assert>
			<sch:assert id="a-81-9371-c" test="cda:given|cda:family or (count(*)=0 and string-length(.)!=0)">The content of name *SHALL* be either a conformant Patient Name (PTN.US.FIELDED), or a string (CONF:81-9371).</sch:assert>
			<sch:assert id="a-81-9372-c" test="cda:given|cda:family or (count(*)=0 and string-length(.)!=0)">The string *SHALL NOT* contain name parts (CONF:81-9372).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors" context="cda:name[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.1.1']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract" abstract="true">
			<sch:assert id="a-81-10127-c" test="string-length(@value)&gt;=8">*SHALL* be precise to the day (CONF:81-10127).</sch:assert>
			<sch:assert id="a-81-10128-c" test="string-length(@value)&gt;=12">*SHOULD* be precise to the minute (CONF:81-10128).</sch:assert>
			<sch:assert id="a-81-10129-c" test="string-length(@value)&gt;=14">*MAY* be precise to the second (CONF:81-10129).</sch:assert>
			<sch:assert id="a-81-10130-c" test="string-length(@value)&lt;10 or ( string-length(@value)&gt;=10 and (contains(@value,'+') or contains(@value,'-')))">If more precise than day, *SHOULD* include time-zone offset (CONF:81-10130).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors" context="cda:effectiveTime[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.4']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-14819" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-14819).</sch:assert>
			<sch:assert id="a-1098-14820" test="cda:code[@code='29762-2']">This code SHALL contain exactly one [1..1] @code="29762-2" Social History (CONF:1098-14820).</sch:assert>
			<sch:assert id="a-1098-7938" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7938).</sch:assert>
			<sch:assert id="a-1098-7939" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7939).</sch:assert>
			<sch:assert id="a-1098-30814" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-30814).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7936" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7936) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.17" (CONF:1098-10449). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32494).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8548" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8548).</sch:assert>
			<sch:assert id="a-1098-8549" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8549).</sch:assert>
			<sch:assert id="a-1098-8550" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.38'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8550) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.38" (CONF:1098-10526). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32495).</sch:assert>
			<sch:assert id="a-1098-8551" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8551).</sch:assert>
			<sch:assert id="a-1098-8558" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (2.16.840.1.113883.6.1) DYNAMIC (CONF:1098-8558).</sch:assert>
			<sch:assert id="a-1098-19224-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or starts-with(cda:code/cda:originalText/cda:reference/@value, '#')">This reference/@value *SHALL* begin with a '#' and *SHALL* point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19224).</sch:assert>
			<sch:assert id="a-1098-8553" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8553).</sch:assert>
			<sch:assert id="a-1098-19117" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19117).</sch:assert>
			<sch:assert id="a-1098-8555-c" test="not(tested)">If Observation/value is a physical quantity (xsi:type="PQ"), the unit of measure *SHALL* be selected from ValueSet UnitsOfMeasureCaseSensitive (2.16.840.1.113883.1.11.12839) *DYNAMIC* (CONF:1098-8555).</sch:assert>
			<sch:assert id="a-1098-31868" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-31868).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.38' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7496" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-7496).</sch:assert>
			<sch:assert id="a-1098-7497" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.18']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:1098-7497).</sch:assert>
			<sch:assert id="a-1098-7499" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7499) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.16" (CONF:1098-10504). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32498).</sch:assert>
			<sch:assert id="a-1098-7500" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7500).</sch:assert>
			<sch:assert id="a-1098-7507" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7507).</sch:assert>
			<sch:assert id="a-1098-7508-c" test="count(cda:effectiveTime[@xsi:type='IVL_TS']) = 1">The substance administration effectiveTime field can repeat, in order to represent varying levels of complex dosing. effectiveTime can be used to represent the duration of administration (e.g., "10 days"), the frequency of administration (e.g., "every 8 hours"), and more. Here, we require that there SHALL be an effectiveTime documentation of the duration (or single-administration timestamp), and that there SHOULD be an effectiveTime documentation of the frequency. Other timing nuances, supported by the base CDA R2 standard, may also be included.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7508) such that it
Note: his effectiveTime represents either the medication duration (i.e., the time the medication was started and stopped) or the single-administration timestamp.</sch:assert>
			<sch:assert id="a-1098-9106-c" test="not(tested-here)">SHALL contain exactly one [1..1] @operator="A" (CONF:1098-9106).</sch:assert>
			<sch:assert id="a-1098-28499-c" test="not(tested-here)">*SHALL* contain exactly one [[]1..1[]] @xsi:type="PIVL_TS" or "EIVL_TS" (CONF:1098-28499).</sch:assert>
			<sch:assert id="a-1098-7516" test="count(cda:doseQuantity)=1">SHALL contain exactly one [1..1] doseQuantity (CONF:1098-7516).</sch:assert>
			<sch:assert id="a-1098-7525" test="not(cda:rateQuantity) or cda:rateQuantity[@unit]">The rateQuantity, if present, SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7525).</sch:assert>
			<sch:assert id="a-1098-7520" test="count(cda:consumable)=1">SHALL contain exactly one [1..1] consumable (CONF:1098-7520).</sch:assert>
			<sch:assert id="a-1098-16085" test="cda:consumable[count(cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']])=1]">This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-16085).</sch:assert>
			<sch:assert id="a-1098-31882" test="not(cda:precondition) or cda:precondition[@typeCode='PRCN']">The precondition, if present, SHALL contain exactly one [1..1] @typeCode="PRCN" (CONF:1098-31882).</sch:assert>
			<sch:assert id="a-1098-31883" test="not(cda:precondition) or cda:precondition[count(cda:criterion[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.25' and @extension = '2014-06-09']])=1]">The precondition, if present, SHALL contain exactly one [1..1] Precondition for Substance Administration (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09) (CONF:1098-31883).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-errors-abstract" abstract="true">
			<sch:assert id="a-1098-32890-branch-28494-c" test="( cda:low or @value) and not( cda:low and @value)">This effectiveTime *SHALL* contain either a low or a @value but not both (CONF:1098-32890).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]/cda:effectiveTime[@xsi:type='IVL_TS']">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15385" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15385).</sch:assert>
			<sch:assert id="a-1098-15386" test="cda:code[@code='10160-0']">This code SHALL contain exactly one [1..1] @code="10160-0" History of medication use (CONF:1098-15386).</sch:assert>
			<sch:assert id="a-1098-7793-c" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7793).</sch:assert>
			<sch:assert id="a-1098-7794" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7794).</sch:assert>
			<sch:assert id="a-1098-30824" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-30824).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7791" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7791) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1" (CONF:1098-10432). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32500).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15387" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15387).</sch:assert>
			<sch:assert id="a-1098-15388" test="cda:code[@code='10160-0']">This code SHALL contain exactly one [1..1] @code="10160-0" History of medication use (CONF:1098-15388).</sch:assert>
			<sch:assert id="a-1098-7570" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7570).</sch:assert>
			<sch:assert id="a-1098-7571" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7571).</sch:assert>
			<sch:assert id="a-1098-7572-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7572) such that it SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-10077).</sch:assert>
			<sch:assert id="a-1098-30825" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-30825).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7568" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7568) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1.1" (CONF:1098-10433). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32499).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-14749" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-14749).</sch:assert>
			<sch:assert id="a-1098-14750" test="cda:code[@code='18776-5']">This code SHALL contain exactly one [1..1] @code="18776-5" Plan of Treatment (CONF:1098-14750).</sch:assert>
			<sch:assert id="a-1098-16986" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-16986).</sch:assert>
			<sch:assert id="a-1098-7725" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7725).</sch:assert>
			<sch:assert id="a-1098-30813" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-30813).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7723" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7723) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.10" (CONF:1098-10435). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32501).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-16791" test="count(cda:realmCode[@code='US'])=1">Heading: realmCode
SHALL contain exactly one [1..1] realmCode="US" (CONF:1098-16791).</sch:assert>
			<sch:assert id="a-1098-5361" test="count(cda:typeId)=1">SHALL contain exactly one [1..1] typeId (CONF:1098-5361).</sch:assert>
			<sch:assert id="a-1098-5250" test="cda:typeId[@root='2.16.840.1.113883.1.3']">This typeId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.1.3" (CONF:1098-5250).</sch:assert>
			<sch:assert id="a-1098-5251" test="cda:typeId[@extension='POCD_HD000040']">This typeId SHALL contain exactly one [1..1] @extension="POCD_HD000040" (CONF:1098-5251).</sch:assert>
			<sch:assert id="a-1098-5363" test="count(cda:id)=1">SHALL contain exactly one [1..1] id (CONF:1098-5363).</sch:assert>
			<sch:assert id="a-1098-5253" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-5253).</sch:assert>
			<sch:assert id="a-1098-9992-c" test=".">This code *SHALL* specify the particular kind of document (e.g., History and Physical, Discharge Summary, Progress Note) (CONF:1098-9992).</sch:assert>
			<sch:assert id="a-1098-5254" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-5254).
Note: The title can either be a locally defined name or the displayName corresponding to clinicalDocument/code</sch:assert>
			<sch:assert id="a-1098-5256-c" test="not(tested_here_yet)">SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5256).</sch:assert>
			<sch:assert id="a-1098-5259" test="count(cda:confidentialityCode)=1">SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:1098-5259).</sch:assert>
			<sch:assert id="a-1098-5372" test="count(cda:languageCode)=1">SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:1098-5372).</sch:assert>
			<sch:assert id="a-1098-5266" test="count(cda:recordTarget) &gt; 0">Heading: recordTarget
The recordTarget records the administrative and demographic data of the patient whose health information is described by the clinical document; each recordTarget must contain at least one patientRole element
SHALL contain at least one [1..*] recordTarget (CONF:1098-5266).</sch:assert>
			<sch:assert id="a-1098-5267" test="cda:recordTarget[count(cda:patientRole)=1]">Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:1098-5267).</sch:assert>
			<sch:assert id="a-1098-5268" test="cda:recordTarget/cda:patientRole[count(cda:id) &gt; 0]">This patientRole SHALL contain at least one [1..*] id (CONF:1098-5268).</sch:assert>
			<sch:assert id="a-1098-5271-c" test="not(tested_right_now)">This patientRole SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5271).</sch:assert>
			<sch:assert id="a-1098-5280" test="cda:recordTarget/cda:patientRole[count(cda:telecom) &gt; 0]">This patientRole SHALL contain at least one [1..*] telecom (CONF:1098-5280).</sch:assert>
			<sch:assert id="a-1098-5283" test="cda:recordTarget/cda:patientRole[count(cda:patient)=1]">This patientRole SHALL contain exactly one [1..1] patient (CONF:1098-5283).</sch:assert>
			<sch:assert id="a-1098-5284-c" test="not(tested_here_yet)">This patient SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5284).</sch:assert>
			<sch:assert id="a-1098-6394" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:administrativeGenderCode)=1]">This patient SHALL contain exactly one [1..1] administrativeGenderCode, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) 2.16.840.1.113883.1.11.1 DYNAMIC (CONF:1098-6394).</sch:assert>
			<sch:assert id="a-1098-5298" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:birthTime)=1]">This patient SHALL contain exactly one [1..1] birthTime (CONF:1098-5298).</sch:assert>
			<sch:assert id="a-1098-5299-c" test="string-length(cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value) &gt;= 4">*SHALL* be precise to year (CONF:1098-5299).</sch:assert>
			<sch:assert id="a-1098-5322" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:raceCode)=1]">This patient SHALL contain exactly one [1..1] raceCode, which SHALL be selected from ValueSet Race Category Excluding Nulls 2.16.840.1.113883.3.2074.1.1.3 DYNAMIC (CONF:1098-5322).</sch:assert>
			<sch:assert id="a-1098-5323" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:ethnicGroupCode)=1]">This patient SHALL contain exactly one [1..1] ethnicGroupCode, which SHALL be selected from ValueSet EthnicityGroup 2.16.840.1.114222.4.11.837 DYNAMIC (CONF:1098-5323).</sch:assert>
			<sch:assert id="a-1098-5385" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:guardian) or cda:recordTarget/cda:patientRole/cda:patient/cda:guardian[count(cda:guardianPerson)=1]">The guardian, if present, SHALL contain exactly one [1..1] guardianPerson (CONF:1098-5385).</sch:assert>
			<sch:assert id="a-1098-5386-c" test="not(tested_here_yet)">This guardianPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5386).</sch:assert>
			<sch:assert id="a-1098-5396" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace) or cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace[count(cda:place)=1]">The birthplace, if present, SHALL contain exactly one [1..1] place (CONF:1098-5396).</sch:assert>
			<sch:assert id="a-1098-5397" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place) or cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place[count(cda:addr)=1]">This place SHALL contain exactly one [1..1] addr (CONF:1098-5397).</sch:assert>
			<sch:assert id="a-1098-5406" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:languageCommunication) &gt; 0]">This patient SHALL contain at least one [1..*] languageCommunication (CONF:1098-5406).</sch:assert>
			<sch:assert id="a-1098-5407" test="cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication[count(cda:languageCode)=1]">Such languageCommunications SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet PatientLanguage 2.16.840.1.113883.11.20.9.64 DYNAMIC (CONF:1098-5407).</sch:assert>
			<sch:assert id="a-1098-5417" test="not(cda:recordTarget/cda:patientRole/cda:providerOrganization) or cda:recordTarget/cda:patientRole/cda:providerOrganization[count(cda:id) &gt; 0]">The providerOrganization, if present, SHALL contain at least one [1..*] id (CONF:1098-5417).</sch:assert>
			<sch:assert id="a-1098-5419" test="not(cda:recordTarget/cda:patientRole/cda:providerOrganization) or cda:recordTarget/cda:patientRole/cda:providerOrganization[count(cda:name) &gt; 0]">The providerOrganization, if present, SHALL contain at least one [1..*] name (CONF:1098-5419).</sch:assert>
			<sch:assert id="a-1098-5420" test="not(cda:recordTarget/cda:patientRole/cda:providerOrganization) or cda:recordTarget/cda:patientRole/cda:providerOrganization[count(cda:telecom) &gt; 0]">The providerOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:1098-5420).</sch:assert>
			<sch:assert id="a-1098-5422-c" test="not(tested_here_yet)">The providerOrganization, if present, SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5422).</sch:assert>
			<sch:assert id="a-1098-5444" test="count(cda:author) &gt; 0">Heading: author
The author element represents the creator of the clinical document.  The author may be a device or a person. 
SHALL contain at least one [1..*] author (CONF:1098-5444).</sch:assert>
			<sch:assert id="a-1098-5445-c" test="not(tested_here_yet)">Such authors SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5445).</sch:assert>
			<sch:assert id="a-1098-5448" test="cda:author[count(cda:assignedAuthor)=1]">Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:1098-5448).</sch:assert>
			<sch:assert id="a-1098-5449" test="cda:author/cda:assignedAuthor[count(cda:id) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] id (CONF:1098-5449).</sch:assert>
			<sch:assert id="a-1098-16788" test="not(cda:author/cda:assignedAuthor/cda:code) or cda:author/cda:assignedAuthor/cda:code[@code]">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-16788).</sch:assert>
			<sch:assert id="a-1098-5452-c" test="not(tested_here_yet)">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5452).</sch:assert>
			<sch:assert id="a-1098-5428" test="cda:author/cda:assignedAuthor[count(cda:telecom) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] telecom (CONF:1098-5428).</sch:assert>
			<sch:assert id="a-1098-16789-c" test="not(tested_here_yet)">The assignedPerson, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-16789).</sch:assert>
			<sch:assert id="a-1098-16784" test="not(cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice) or cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:manufacturerModelName)=1]">The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] manufacturerModelName (CONF:1098-16784).</sch:assert>
			<sch:assert id="a-1098-16785" test="not(cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice) or cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:softwareName)=1]">The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] softwareName (CONF:1098-16785).</sch:assert>
			<sch:assert id="a-1098-16790-c" test="count(cda:author/cda:assignedAuthor/cda:assignedPerson)=1 or count(cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice)=1">There *SHALL* be exactly one assignedAuthor/assignedPerson or exactly one assignedAuthor/assignedAuthoringDevice (CONF:1098-16790).</sch:assert>
			<sch:assert id="a-1098-5442" test="not(cda:dataEnterer) or cda:dataEnterer[count(cda:assignedEntity)=1]">The dataEnterer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-5442).</sch:assert>
			<sch:assert id="a-1098-5443" test="not(cda:dataEnterer/cda:assignedEntity) or cda:dataEnterer/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-5443).</sch:assert>
			<sch:assert id="a-1098-5460-c" test="not(tested_here_yet)">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5460).</sch:assert>
			<sch:assert id="a-1098-5466" test="not(cda:dataEnterer/cda:assignedEntity) or cda:dataEnterer/cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-5466).</sch:assert>
			<sch:assert id="a-1098-5469" test="not(cda:dataEnterer/cda:assignedEntity) or cda:dataEnterer/cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-5469).</sch:assert>
			<sch:assert id="a-1098-5470-c" test="not(tested_here_yet)">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5470).</sch:assert>
			<sch:assert id="a-1098-5519" test="count(cda:custodian)=1">Heading: custodian
The custodian element represents the organization that is in charge of maintaining and is entrusted with the care of the document.
There is only one custodian per CDA document. Allowing that a CDA document may not represent the original form of the authenticated document, the custodian represents the steward of the original source document. The custodian may be the document originator, a health information exchange, or other responsible party.
SHALL contain exactly one [1..1] custodian (CONF:1098-5519).</sch:assert>
			<sch:assert id="a-1098-5520" test="cda:custodian[count(cda:assignedCustodian)=1]">This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:1098-5520).</sch:assert>
			<sch:assert id="a-1098-5521" test="cda:custodian/cda:assignedCustodian[count(cda:representedCustodianOrganization)=1]">This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:1098-5521).</sch:assert>
			<sch:assert id="a-1098-5522" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:id) &gt; 0]">This representedCustodianOrganization SHALL contain at least one [1..*] id (CONF:1098-5522).</sch:assert>
			<sch:assert id="a-1098-5524" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:name)=1]">This representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:1098-5524).</sch:assert>
			<sch:assert id="a-1098-5525" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:telecom)=1]">This representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:1098-5525).</sch:assert>
			<sch:assert id="a-1098-5559-c" test="not(tested_here_yet)">This representedCustodianOrganization SHALL contain exactly one [1..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5559).</sch:assert>
			<sch:assert id="a-1098-5566" test="not(cda:informationRecipient) or cda:informationRecipient[count(cda:intendedRecipient)=1]">The informationRecipient, if present, SHALL contain exactly one [1..1] intendedRecipient (CONF:1098-5566).</sch:assert>
			<sch:assert id="a-1098-5568-c" test="not(tested_here_yet)">The informationRecipient, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5568).</sch:assert>
			<sch:assert id="a-1098-5578" test="not(cda:informationRecipient/cda:intendedRecipient/cda:receivedOrganization) or cda:informationRecipient/cda:intendedRecipient/cda:receivedOrganization[count(cda:name)=1]">The receivedOrganization, if present, SHALL contain exactly one [1..1] name (CONF:1098-5578).</sch:assert>
			<sch:assert id="a-1098-5580-c" test="not(tested_here_yet)">The legalAuthenticator, if present, SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5580).</sch:assert>
			<sch:assert id="a-1098-5583" test="not(cda:legalAuthenticator) or cda:legalAuthenticator[count(cda:signatureCode)=1]">The legalAuthenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:1098-5583).</sch:assert>
			<sch:assert id="a-1098-5584" test="not(cda:legalAuthenticator/cda:signatureCode) or cda:legalAuthenticator/cda:signatureCode[@code='S']">This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature 2.16.840.1.113883.5.89 STATIC) (CONF:1098-5584).</sch:assert>
			<sch:assert id="a-1098-5585" test="not(cda:legalAuthenticator) or cda:legalAuthenticator[count(cda:assignedEntity)=1]">The legalAuthenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-5585).</sch:assert>
			<sch:assert id="a-1098-5586" test="not(cda:legalAuthenticator/cda:assignedEntity) or cda:legalAuthenticator/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-5586).</sch:assert>
			<sch:assert id="a-1098-5589-c" test="not(tested_here_yet)">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5589).</sch:assert>
			<sch:assert id="a-1098-5595" test="not(cda:legalAuthenticator/cda:assignedEntity) or cda:legalAuthenticator/cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-5595).</sch:assert>
			<sch:assert id="a-1098-5597" test="not(cda:legalAuthenticator/cda:assignedEntity) or cda:legalAuthenticator/cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-5597).</sch:assert>
			<sch:assert id="a-1098-5598-c" test="not(tested_here_yet)">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5598).</sch:assert>
			<sch:assert id="a-1098-10006-c" test="not(cda:participant) or cda:participant/cda:associatedEntity[cda:associatedPerson | cda:scopingOrganization]">*SHALL* contain associatedEntity/associatedPerson *AND/OR* associatedEntity/scopingOrganization (CONF:1098-10006).</sch:assert>
			<sch:assert id="a-1098-10007-c" test=".">When participant/@typeCode is *IND*, associatedEntity/@classCode *SHOULD* be selected from ValueSet 2.16.840.1.113883.11.20.9.33 INDRoleclassCodes *STATIC 2011-09-30* (CONF:1098-10007).</sch:assert>
			<sch:assert id="a-1098-9953" test="not(cda:inFulfillmentOf) or cda:inFulfillmentOf[count(cda:order)=1]">The inFulfillmentOf, if present, SHALL contain exactly one [1..1] order (CONF:1098-9953).</sch:assert>
			<sch:assert id="a-1098-9954" test="not(cda:inFulfillmentOf/cda:order) or cda:inFulfillmentOf/cda:order[count(cda:id) &gt; 0]">This order SHALL contain at least one [1..*] id (CONF:1098-9954).</sch:assert>
			<sch:assert id="a-1098-14836" test="not(cda:documentationOf) or cda:documentationOf[count(cda:serviceEvent)=1]">A serviceEvent represents the main act being documented, such as a colonoscopy or a cardiac stress study. In a provision of healthcare serviceEvent, the care providers, PCP, or other longitudinal providers, are recorded within the serviceEvent. If the document is about a single encounter, the providers associated can be recorded in the componentOf/encompassingEncounter template.
The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1098-14836).</sch:assert>
			<sch:assert id="a-1098-14837" test="not(cda:documentationOf/cda:serviceEvent) or cda:documentationOf/cda:serviceEvent[count(cda:effectiveTime)=1]">This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:1098-14837).</sch:assert>
			<sch:assert id="a-1098-14838" test="not(cda:documentationOf/cda:serviceEvent/cda:effectiveTime) or cda:documentationOf/cda:serviceEvent/cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-14838).</sch:assert>
			<sch:assert id="a-1098-14840" test="not(cda:documentationOf/cda:serviceEvent/cda:performer) or cda:documentationOf/cda:serviceEvent/cda:performer[@typeCode and @typeCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.19601']/voc:code/@value]">The performer, if present, SHALL contain exactly one [1..1] @typeCode, which SHALL be selected from ValueSet x_ServiceEventPerformer 2.16.840.1.113883.1.11.19601 STATIC 2014-09-01 (CONF:1098-14840).</sch:assert>
			<sch:assert id="a-1098-14841" test="not(cda:documentationOf/cda:serviceEvent/cda:performer) or cda:documentationOf/cda:serviceEvent/cda:performer[count(cda:assignedEntity)=1]">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-14841).</sch:assert>
			<sch:assert id="a-1098-14846" test="not(cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity) or cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-14846).</sch:assert>
			<sch:assert id="a-1098-9956" test="not(cda:componentOf) or cda:componentOf[count(cda:encompassingEncounter)=1]">The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:1098-9956).</sch:assert>
			<sch:assert id="a-1098-9959" test="not(cda:componentOf/cda:encompassingEncounter) or cda:componentOf/cda:encompassingEncounter[count(cda:id) &gt; 0]">This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1098-9959).</sch:assert>
			<sch:assert id="a-1098-9958" test="not(cda:componentOf/cda:encompassingEncounter) or cda:componentOf/cda:encompassingEncounter[count(cda:effectiveTime)=1]">This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9958).</sch:assert>
			<sch:assert id="a-1098-31347-c" test="not(cda:recordTarget/cda:patientRole/cda:patient/sdtc:raceCode) or cda:recordTarget/cda:patientRole/cda:patient/cda:raceCode">If sdtc:raceCode is present, then the patient *SHALL* contain [[]1..1[]] raceCode (CONF:1098-31347).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-5252" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-5252) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.1" (CONF:1098-10036). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32503).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8289" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8289).</sch:assert>
			<sch:assert id="a-1098-8290" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8290).</sch:assert>
			<sch:assert id="a-1098-8291" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.12'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8291) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.12" (CONF:1098-10519). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32505).</sch:assert>
			<sch:assert id="a-1098-8292" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8292).</sch:assert>
			<sch:assert id="a-1098-8293" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-8293).</sch:assert>
			<sch:assert id="a-1098-19189-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or starts-with(cda:code/cda:originalText/cda:reference/@value, '#')">This reference/@value *SHALL* begin with a '#' and *SHALL* point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19189).</sch:assert>
			<sch:assert id="a-1098-8298" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8298).</sch:assert>
			<sch:assert id="a-1098-8299" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-8299).</sch:assert>
			<sch:assert id="a-1098-8302" test="not(cda:performer) or cda:performer[count(cda:assignedEntity)=1]">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8302).</sch:assert>
			<sch:assert id="a-1098-8303" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:id)=1]">This assignedEntity SHALL contain exactly one [1..1] id (CONF:1098-8303).</sch:assert>
			<sch:assert id="a-1098-8304" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHALL contain exactly one [1..1] addr (CONF:1098-8304).</sch:assert>
			<sch:assert id="a-1098-8305" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-8305).</sch:assert>
			<sch:assert id="a-1098-8310" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:telecom) &gt; 0]">The representedOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:1098-8310).</sch:assert>
			<sch:assert id="a-1098-8309" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:addr) &gt; 0]">The representedOrganization, if present, SHALL contain at least one [1..*] addr (CONF:1098-8309).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.12' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7652" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-7652).</sch:assert>
			<sch:assert id="a-1098-7653" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7653).</sch:assert>
			<sch:assert id="a-1098-7654" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7654) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.14" (CONF:1098-10521). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32506).</sch:assert>
			<sch:assert id="a-1098-7655" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7655).</sch:assert>
			<sch:assert id="a-1098-7656" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-7656).</sch:assert>
			<sch:assert id="a-1098-19206-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or starts-with(cda:code/cda:originalText/cda:reference/@value, '#')">This reference/@value *SHALL* begin with a '#' and *SHALL* point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19206).</sch:assert>
			<sch:assert id="a-1098-7661" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7661).</sch:assert>
			<sch:assert id="a-1098-7890-c" test=".">MethodCode *SHALL NOT* conflict with the method inherent in Procedure / code (CONF:1098-7890).</sch:assert>
			<sch:assert id="a-1098-16082" test="not(cda:targetSiteCode) or cda:targetSiteCode[@code]">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-16082).</sch:assert>
			<sch:assert id="a-1098-7704" test="not(cda:specimen) or cda:specimen[count(cda:specimenRole)=1]">The specimen, if present, SHALL contain exactly one [1..1] specimenRole (CONF:1098-7704).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7737-branch-29746" test="not(cda:assignedEntity/cda:representedOrganization) or cda:assignedEntity/cda:representedOrganization[count(cda:telecom)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1098-7737).</sch:assert>
			<sch:assert id="a-1098-7736-branch-29746" test="not(cda:assignedEntity/cda:representedOrganization) or cda:assignedEntity/cda:representedOrganization[count(cda:addr)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1098-7736).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:performer[cda:assignedEntity[cda:id][cda:addr][cda:telecom]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8282" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8282).</sch:assert>
			<sch:assert id="a-1098-8237" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8237).</sch:assert>
			<sch:assert id="a-1098-8238" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.13'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8238) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.13" (CONF:1098-10520). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32507).</sch:assert>
			<sch:assert id="a-1098-8239" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8239).</sch:assert>
			<sch:assert id="a-1098-19197" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19197).</sch:assert>
			<sch:assert id="a-1098-19201-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or starts-with(cda:code/cda:originalText/cda:reference/@value, '#')">This reference/@value *SHALL* begin with a '#' and *SHALL* point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19201).</sch:assert>
			<sch:assert id="a-1098-8245" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8245).</sch:assert>
			<sch:assert id="a-1098-16846" test="count(cda:value)=1">SHALL contain exactly one [1..1] value (CONF:1098-16846).</sch:assert>
			<sch:assert id="a-1098-8249-c" test=".">MethodCode *SHALL NOT* conflict with the method inherent in Observation / code (CONF:1098-8249).</sch:assert>
			<sch:assert id="a-1098-8252" test="not(cda:performer) or cda:performer[count(cda:assignedEntity)=1]">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8252).</sch:assert>
			<sch:assert id="a-1098-8253" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-8253).</sch:assert>
			<sch:assert id="a-1098-8254" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:addr) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] addr (CONF:1098-8254).</sch:assert>
			<sch:assert id="a-1098-8255" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-8255).</sch:assert>
			<sch:assert id="a-1098-8260" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:telecom)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1098-8260).</sch:assert>
			<sch:assert id="a-1098-8259" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:addr)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1098-8259).</sch:assert>
			<sch:assert id="a-1098-32365" test="cda:statusCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.22']/voc:code/@value]">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureAct statusCode 2.16.840.1.113883.11.20.9.22 STATIC 2014-04-23 (CONF:1098-32365).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.13' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-9041" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-9041).</sch:assert>
			<sch:assert id="a-1098-9042" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9042).</sch:assert>
			<sch:assert id="a-1098-14926" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-14926) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.4" (CONF:1098-14927). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32508).</sch:assert>
			<sch:assert id="a-1098-9043" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-9043).</sch:assert>
			<sch:assert id="a-1098-9045" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-9045).</sch:assert>
			<sch:assert id="a-1098-9049" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9049).</sch:assert>
			<sch:assert id="a-1098-19112" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19112).</sch:assert>
			<sch:assert id="a-1098-9050" test="count(cda:effectiveTime)=1">If the problem is known to be resolved, but the date of resolution is not known, then the high element SHALL be present, and the nullFlavor attribute SHALL be set to 'UNK'. Therefore, the existence of an high element within a problem does indicate that the problem has been resolved.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9050).</sch:assert>
			<sch:assert id="a-1098-15603" test="cda:effectiveTime[count(cda:low)=1]">The effectiveTime/low (a.k.a. "onset date") asserts when the condition became biologically active.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-15603).</sch:assert>
			<sch:assert id="a-1098-9058-c" test="count(cda:value[@xsi:type='CD' or @xsi:type='CE' or @xsi:type='CV' or @xsi:type='CS' or @xsi:type='CO' or @xsi:type='PQR' or @xsi:type='event' or @xsi:type='SXCM_CD' or @xsi:type='HXIT_CE' or @xsi:type='BXIT_CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-9058).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-9024" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-9024).</sch:assert>
			<sch:assert id="a-1098-9025" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9025).</sch:assert>
			<sch:assert id="a-1098-9026" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-9026).</sch:assert>
			<sch:assert id="a-1098-9027" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-9027).</sch:assert>
			<sch:assert id="a-1098-19184" test="cda:code[@code='CONC']">This code SHALL contain exactly one [1..1] @code="CONC" Concern (CONF:1098-19184).</sch:assert>
			<sch:assert id="a-1098-9029" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9029).</sch:assert>
			<sch:assert id="a-1098-9030" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9030).</sch:assert>
			<sch:assert id="a-1098-9032" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-9032).
Note: The effectiveTime/low asserts when the concern became active. This equates to the time the concern was authored in the patient's chart. </sch:assert>
			<sch:assert id="a-1098-9034" test="count(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1098-9034) such that it SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:1098-9035). SHALL contain exactly one [1..1] Problem Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2014-06-09) (CONF:1098-15980).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-16772" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16772) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.3" (CONF:1098-16773). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32509).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15407" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15407).</sch:assert>
			<sch:assert id="a-1098-15408" test="cda:code[@code='11450-4']">This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CONF:1098-15408).</sch:assert>
			<sch:assert id="a-1098-7879" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7879).</sch:assert>
			<sch:assert id="a-1098-7880" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7880).</sch:assert>
			<sch:assert id="a-1098-31141" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-31141).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7877" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7877) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5" (CONF:1098-10440). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32511).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15409" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15409).</sch:assert>
			<sch:assert id="a-1098-15410" test="cda:code[@code='11450-4']">This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CONF:1098-15410).</sch:assert>
			<sch:assert id="a-1098-9181" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9181).</sch:assert>
			<sch:assert id="a-1098-9182" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-9182).</sch:assert>
			<sch:assert id="a-1098-9183-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-9183) such that it SHALL contain exactly one [1..1] Problem Concern Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2014-06-09) (CONF:1098-15506).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-9179" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-9179) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5.1" (CONF:1098-10441). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32510).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15383" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15383).</sch:assert>
			<sch:assert id="a-1098-15384" test="cda:code[@code='29549-3']">This code SHALL contain exactly one [1..1] @code="29549-3" Medications Administered (CONF:1098-15384).</sch:assert>
			<sch:assert id="a-1098-8154" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8154).</sch:assert>
			<sch:assert id="a-1098-8155" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-8155).</sch:assert>
			<sch:assert id="a-1098-15499" test="not(cda:entry) or cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']])=1]">The entry, if present, SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-15499).</sch:assert>
			<sch:assert id="a-1098-30829" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-30829).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8152" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8152) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.38" (CONF:1098-10405). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32525).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15423" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15423).</sch:assert>
			<sch:assert id="a-1098-15424" test="cda:code[@code='47519-4']">This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CONF:1098-15424).</sch:assert>
			<sch:assert id="a-1098-17184" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-17184).</sch:assert>
			<sch:assert id="a-1098-6273" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-6273).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-6270" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-6270) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7" (CONF:1098-6271). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32532).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15425" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15425).</sch:assert>
			<sch:assert id="a-1098-15426" test="cda:code[@code='47519-4']">This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CONF:1098-15426).</sch:assert>
			<sch:assert id="a-1098-7893" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7893).</sch:assert>
			<sch:assert id="a-1098-7894" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7894).</sch:assert>
			<sch:assert id="a-1098-7895-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14'][@extension='2014-06-09']])=1]) &gt; 0) or (count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.13'][@extension='2014-06-09']])=1]) &gt; 0) or (count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.12'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present there *SHALL* be at least one entry conformant to Procedure Activity Act (V2) (templateId 2.16.840.1.113883.10.20.22.4.12:2014-06-09) *OR* Procedure Activity Observation (V2) (templateId: 2.16.840.1.113883.10.20.22.4.13:2014-06-09) *OR* Procedure Activity Procedure (V2) (templateId: 2.16.840.1.113883.10.20.22.4.14:2014-06-09) 
SHALL contain at least one [1..*] entry (CONF:1098-7895) such that it MAY contain zero or one [0..1] Procedure Activity Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09) (CONF:1098-15512). MAY contain zero or one [0..1] Procedure Activity Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.12:2014-06-09) (CONF:1098-32877). MAY contain zero or one [0..1] Procedure Activity Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.13:2014-06-09) (CONF:1098-32878).</sch:assert>
			<sch:assert id="a-1098-31138" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-31138).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7891" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7891) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7.1" (CONF:1098-10447). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32533).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8564" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8564).</sch:assert>
			<sch:assert id="a-1098-8565" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.23']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:1098-8565).</sch:assert>
			<sch:assert id="a-1098-30437" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30437) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.40" (CONF:1098-30438). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32553).</sch:assert>
			<sch:assert id="a-1098-8567" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8567).</sch:assert>
			<sch:assert id="a-1098-30439" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-30439).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8568" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8568).</sch:assert>
			<sch:assert id="a-1098-8569" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.23']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:1098-8569).</sch:assert>
			<sch:assert id="a-1098-30444" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30444) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.41" (CONF:1098-30445). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32554).</sch:assert>
			<sch:assert id="a-1098-8571" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8571).</sch:assert>
			<sch:assert id="a-1098-30446" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-30446).</sch:assert>
			<sch:assert id="a-1098-31976" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-31976).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8572" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8572).</sch:assert>
			<sch:assert id="a-1098-8573" test="@moodCode and @moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.24']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) 2.16.840.1.113883.11.20.9.24 STATIC 2011-09-30 (CONF:1098-8573).</sch:assert>
			<sch:assert id="a-1098-30465" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30465) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.42" (CONF:1098-30466). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32557).</sch:assert>
			<sch:assert id="a-1098-8575" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8575).</sch:assert>
			<sch:assert id="a-1098-30468" test="count(cda:effectiveTime)=1">The effectiveTime in a planned medication activity represents the time that the medication activity should occur.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-30468).</sch:assert>
			<sch:assert id="a-1098-32082" test="count(cda:consumable)=1">SHALL contain exactly one [1..1] consumable (CONF:1098-32082).</sch:assert>
			<sch:assert id="a-1098-32083" test="cda:consumable[count(cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']])=1]">This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-32083).</sch:assert>
			<sch:assert id="a-1098-32085" test="not(cda:precondition) or cda:precondition[@typeCode='PRCN']">The precondition, if present, SHALL contain exactly one [1..1] @typeCode="PRCN" Precondition (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1098-32085).</sch:assert>
			<sch:assert id="a-1098-32086" test="not(cda:precondition) or cda:precondition[count(cda:criterion[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.25' and @extension = '2014-06-09']])=1]">The precondition, if present, SHALL contain exactly one [1..1] Precondition for Substance Administration (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.25:2014-06-09) (CONF:1098-32086).</sch:assert>
			<sch:assert id="a-1098-32087" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-32087).</sch:assert>
			<sch:assert id="a-1098-32088" test="cda:statusCode[@code='active']">This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: ActStatus 2.16.840.1.113883.5.14) (CONF:1098-32088).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-9057" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-9057).</sch:assert>
			<sch:assert id="a-1098-9072" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9072).</sch:assert>
			<sch:assert id="a-1098-19143" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19143).</sch:assert>
			<sch:assert id="a-1098-19144" test="cda:code[@code='11323-3']">This code SHALL contain exactly one [1..1] @code="11323-3" Health status (CONF:1098-19144).</sch:assert>
			<sch:assert id="a-1098-9074" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9074).</sch:assert>
			<sch:assert id="a-1098-19103" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19103).</sch:assert>
			<sch:assert id="a-1098-9075" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet HealthStatus 2.16.840.1.113883.1.11.20.12 DYNAMIC (CONF:1098-9075).</sch:assert>
			<sch:assert id="a-1098-32161" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-32161).</sch:assert>
			<sch:assert id="a-1098-32486" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32486).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-16756" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16756) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.5" (CONF:1098-16757). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32558).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7480" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-7480).</sch:assert>
			<sch:assert id="a-1098-7481" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7481).</sch:assert>
			<sch:assert id="a-1098-7482" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7482) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.19" (CONF:1098-10502). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32570).</sch:assert>
			<sch:assert id="a-1098-7483" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7483).
Note: If the id element is used to reference a problem recorded else where in the document then this id must equal another entry/id in the same document instance. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. Its purpose is to obviate the need to repeat the complete XML representation of the referred to entry when relating one entry to another.</sch:assert>
			<sch:assert id="a-1098-7487" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7487).</sch:assert>
			<sch:assert id="a-1098-19105" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19105).</sch:assert>
			<sch:assert id="a-1098-31229" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which MAY be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-31229).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-14806" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-14806).</sch:assert>
			<sch:assert id="a-1098-14807" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14807).</sch:assert>
			<sch:assert id="a-1098-19170" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19170).</sch:assert>
			<sch:assert id="a-1098-14809" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-14809).</sch:assert>
			<sch:assert id="a-1098-19116" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19116).</sch:assert>
			<sch:assert id="a-1098-14810" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1098-14810).</sch:assert>
			<sch:assert id="a-1098-14817" test="cda:value[@xsi:type='CD'][@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.38']/voc:code/@value]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Current Smoking Status 2.16.840.1.113883.11.20.9.38 STATIC 2014-09-01 (CONF:1098-14817).</sch:assert>
			<sch:assert id="a-1098-31039" test="cda:code[@code='72166-2']">This code SHALL contain exactly one [1..1] @code="72166-2" Tobacco smoking status NHIS (CONF:1098-31039).</sch:assert>
			<sch:assert id="a-1098-31928" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-31928).
Note: This template represents a “snapshot in time” observation, simply reflecting what the patient’s current smoking status is at the time of the observation. As a result, the effectiveTime is constrained to just a time stamp, and will approximately correspond with the author/time.</sch:assert>
			<sch:assert id="a-1098-32401" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32401).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-14815" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-14815) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.78" (CONF:1098-14816). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32573).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7297" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-7297).</sch:assert>
			<sch:assert id="a-1098-7298" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7298).</sch:assert>
			<sch:assert id="a-1098-7300" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7300).</sch:assert>
			<sch:assert id="a-1098-7301" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result 2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:1098-7301).</sch:assert>
			<sch:assert id="a-1098-7303" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7303).</sch:assert>
			<sch:assert id="a-1098-19119" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19119).</sch:assert>
			<sch:assert id="a-1098-7304" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7304).</sch:assert>
			<sch:assert id="a-1098-7305" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1098-7305).</sch:assert>
			<sch:assert id="a-1098-31579" test="cda:value[@xsi:type='PQ'][@unit]">This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-31579).</sch:assert>
			<sch:assert id="a-1098-32886" test="not(cda:interpretationCode) or cda:interpretationCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.78']/voc:code/@value]">The interpretationCode, if present, SHALL contain exactly one [1..1] @code (ValueSet: Observation Interpretation (HL7) 2.16.840.1.113883.1.11.78 STATIC 2014-09-01) (CONF:1098-32886).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7299" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7299) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.27" (CONF:1098-10527). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32574).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7130" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-7130).</sch:assert>
			<sch:assert id="a-1098-7131" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7131).</sch:assert>
			<sch:assert id="a-1098-7137" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7137).</sch:assert>
			<sch:assert id="a-1098-7133" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (2.16.840.1.113883.6.1) (CONF:1098-7133).</sch:assert>
			<sch:assert id="a-1098-7134" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7134).</sch:assert>
			<sch:assert id="a-1098-14849" test="cda:statusCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.39']/voc:code/@value]">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:1098-14849).</sch:assert>
			<sch:assert id="a-1098-7140" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7140).
Note: Represents the biologically relevant time of the measurement (e.g., the time a blood pressure reading is obtained, the time the blood sample was obtained for a chemistry test).</sch:assert>
			<sch:assert id="a-1098-7151" test="not(cda:referenceRange) or cda:referenceRange[count(cda:observationRange)=1]">The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:1098-7151).</sch:assert>
			<sch:assert id="a-1098-7152-c" test="not(cda:referenceRange/cda:observationRange/cda:code)">This observationRange SHALL NOT contain [0..0] code (CONF:1098-7152).</sch:assert>
			<sch:assert id="a-1098-31484-c" test="not(tested)">If Observation/value is a physical quantity (*xsi:type*=*"PQ"*), the unit of measure *SHALL* be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 *DYNAMIC* (CONF:1098-31484).</sch:assert>
			<sch:assert id="a-1098-32175" test="not(cda:referenceRange/cda:observationRange) or cda:referenceRange/cda:observationRange[count(cda:value)=1]">This observationRange SHALL contain exactly one [1..1] value (CONF:1098-32175).</sch:assert>
			<sch:assert id="a-1098-32476" test="not(cda:interpretationCode) or cda:interpretationCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.78']/voc:code/@value]">The interpretationCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Observation Interpretation (HL7) 2.16.840.1.113883.1.11.78 STATIC 2014-09-01 (CONF:1098-32476).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7136" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7136) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.2" (CONF:1098-9138). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32575).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7408" test="@classCode='MANU'">SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass 2.16.840.1.113883.5.110 STATIC) (CONF:1098-7408).</sch:assert>
			<sch:assert id="a-1098-7411" test="count(cda:manufacturedMaterial)=1">SHALL contain exactly one [1..1] manufacturedMaterial (CONF:1098-7411).
Note: A medication should be recorded as a pre-coordinated ingredient + strength + dose form (e.g., “metoprolol 25mg tablet”, “amoxicillin 400mg/5mL suspension”) where possible. This includes RxNorm codes whose Term Type is SCD (semantic clinical drug), SBD (semantic brand drug), GPCK (generic pack), BPCK (brand pack).</sch:assert>
			<sch:assert id="a-1098-7412" test="cda:manufacturedMaterial[count(cda:code)=1]">This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug 2.16.840.1.113762.1.4.1010.4 DYNAMIC (CONF:1098-7412).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors" context="cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7409" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7409) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.23" (CONF:1098-10506). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32579).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7357" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-7357).</sch:assert>
			<sch:assert id="a-1098-7358" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7358).</sch:assert>
			<sch:assert id="a-1098-19162" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19162).</sch:assert>
			<sch:assert id="a-1098-19163" test="cda:code[@code='33999-4' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="33999-4" Status (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:1098-19163).</sch:assert>
			<sch:assert id="a-1098-7364" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7364).</sch:assert>
			<sch:assert id="a-1098-19113" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19113).</sch:assert>
			<sch:assert id="a-1098-7365" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem Status 2.16.840.1.113883.3.88.12.80.68 DYNAMIC (CONF:1098-7365).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7359" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7359) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.6" (CONF:1098-10518). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32581).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15242" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15242).</sch:assert>
			<sch:assert id="a-1098-15243" test="cda:code[@code='8716-3']">This code SHALL contain exactly one [1..1] @code="8716-3" Vital Signs (CONF:1098-15243).</sch:assert>
			<sch:assert id="a-1098-9966" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9966).</sch:assert>
			<sch:assert id="a-1098-7270" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7270).</sch:assert>
			<sch:assert id="a-1098-30902" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-30902).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7268" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7268) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4" (CONF:1098-10451). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32584).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15962" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15962).</sch:assert>
			<sch:assert id="a-1098-15963" test="cda:code[@code='8716-3']">This code SHALL contain exactly one [1..1] @code="8716-3" Vital Signs (CONF:1098-15963).</sch:assert>
			<sch:assert id="a-1098-9967" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9967).</sch:assert>
			<sch:assert id="a-1098-7275" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7275).</sch:assert>
			<sch:assert id="a-1098-7276-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7276) such that it SHALL contain exactly one [1..1] Vital Signs Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.26:2014-06-09) (CONF:1098-15964).</sch:assert>
			<sch:assert id="a-1098-30903" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-30903).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7273" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7273) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4.1" (CONF:1098-10452). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32585).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7121" test="@classCode">SHALL contain exactly one [1..1] @classCode (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-7121).</sch:assert>
			<sch:assert id="a-1098-7122" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7122).</sch:assert>
			<sch:assert id="a-1098-7127" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-7127).</sch:assert>
			<sch:assert id="a-1098-7128" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-7128).</sch:assert>
			<sch:assert id="a-1098-7123" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7123).</sch:assert>
			<sch:assert id="a-1098-14848" test="cda:statusCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.39']/voc:code/@value]">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:1098-14848).</sch:assert>
			<sch:assert id="a-1098-7124" test="count(cda:component[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] component (CONF:1098-7124) such that it SHALL contain exactly one [1..1] Result Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2014-06-09) (CONF:1098-14850).</sch:assert>
			<sch:assert id="a-1098-32488" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:low)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1098-32488).</sch:assert>
			<sch:assert id="a-1098-32489" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:high)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] high (CONF:1098-32489).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7126" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7126) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.1" (CONF:1098-9134). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32588).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-16558" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-16558).</sch:assert>
			<sch:assert id="a-1098-16559" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-16559).</sch:assert>
			<sch:assert id="a-1098-19174" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-19174).</sch:assert>
			<sch:assert id="a-1098-19175" test="cda:code[@code='11367-0']">This code SHALL contain exactly one [1..1] @code="11367-0" History of tobacco use (CONF:1098-19175).</sch:assert>
			<sch:assert id="a-1098-16561" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-16561).</sch:assert>
			<sch:assert id="a-1098-19118" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19118).</sch:assert>
			<sch:assert id="a-1098-16564" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-16564).
Note: The effectiveTime represents the biologically relevant time of the observation. Thus, an observation of “former smoker” will have an effectiveTime defining the time during which the patient has been a former smoker; an observation of “current smoker” will have an effectiveTime defining the time during which the patient has been a current smoker.</sch:assert>
			<sch:assert id="a-1098-16565" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-16565).</sch:assert>
			<sch:assert id="a-1098-16562" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1098-16562).</sch:assert>
			<sch:assert id="a-1098-16563" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Tobacco Use 2.16.840.1.113883.11.20.9.41 DYNAMIC (CONF:1098-16563).</sch:assert>
			<sch:assert id="a-1098-32172" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-32172).</sch:assert>
			<sch:assert id="a-1098-32400" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32400).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-16566" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16566) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.85" (CONF:1098-16567). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32589).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15431" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15431).</sch:assert>
			<sch:assert id="a-1098-15432" test="cda:code[@code='30954-2']">This code SHALL contain exactly one [1..1] @code="30954-2" Relevant diagnostic tests and/or laboratory data (CONF:1098-15432).</sch:assert>
			<sch:assert id="a-1098-8891" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8891).</sch:assert>
			<sch:assert id="a-1098-7118" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7118).</sch:assert>
			<sch:assert id="a-1098-31041" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-31041).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7116" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7116) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3" (CONF:1098-9136). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32591).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15433" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15433).</sch:assert>
			<sch:assert id="a-1098-15434" test="cda:code[@code='30954-2']">This code SHALL contain exactly one [1..1] @code="30954-2" Relevant diagnostic tests and/or laboratory data (CONF:1098-15434).</sch:assert>
			<sch:assert id="a-1098-8892" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8892).</sch:assert>
			<sch:assert id="a-1098-7111" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7111).</sch:assert>
			<sch:assert id="a-1098-7112-c" test="((count(@nullFlavor)=1) or (count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1'][@extension='2014-06-09']])=1]) &gt; 0)) and  (not((count(@nullFlavor)=1) and  (count(cda:entry) &gt; 0)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7112) such that it SHALL contain exactly one [1..1] Result Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2014-06-09) (CONF:1098-15516).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7108" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7108) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3.1" (CONF:1098-9137). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32592).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8898" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8898).</sch:assert>
			<sch:assert id="a-1098-8899" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8899).</sch:assert>
			<sch:assert id="a-1098-8901" test="count(cda:id) &gt; 0">This id is a unique identifier for the policy or program providing the coverage
SHALL contain at least one [1..*] id (CONF:1098-8901).</sch:assert>
			<sch:assert id="a-1098-8903" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Source of Payment Typology (PHDSC) 2.16.840.1.114222.4.11.3591 DYNAMIC (CONF:1098-8903).</sch:assert>
			<sch:assert id="a-1098-8902" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8902).</sch:assert>
			<sch:assert id="a-1098-19109" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19109).</sch:assert>
			<sch:assert id="a-1098-8906" test="count(cda:performer[@typeCode='PRF'][count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87'])=1][count(cda:assignedEntity[count(cda:id) &gt; 0])=1])=1">This performer represents the Payer.
SHALL contain exactly one [1..1] performer (CONF:1098-8906) such that it SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:1098-8907). SHALL contain exactly one [1..1] templateId (CONF:1098-16808). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.87" Payer Performer (CONF:1098-16809). SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8908). This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-8909).</sch:assert>
			<sch:assert id="a-1098-15992-c" test="not(cda:performer/cda:assignedEntity[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:code) or cda:performer/cda:assignedEntity[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:code[@code]">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet HL7FinanciallyResponsiblePartyType 2.16.840.1.113883.1.11.10416 DYNAMIC (CONF:1098-15992).</sch:assert>
			<sch:assert id="a-1098-8916" test="count(cda:participant[@typeCode='COV'][count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89'])=1][count(cda:participantRole[count(cda:id) &gt; 0][count(cda:code)=1])=1])=1">SHALL contain exactly one [1..1] participant (CONF:1098-8916) such that it SHALL contain exactly one [1..1] @typeCode="COV" Coverage target (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:1098-8917). SHALL contain exactly one [1..1] templateId (CONF:1098-16812). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.89" Covered Party Participant (CONF:1098-16814). SHALL contain exactly one [1..1] participantRole (CONF:1098-8921). This participantRole SHALL contain at least one [1..*] id (CONF:1098-8922). This participantRole SHALL contain exactly one [1..1] code (CONF:1098-8923).</sch:assert>
			<sch:assert id="a-1098-10484-c" test="cda:participant[@typeCode='COV']/cda:participantRole/cda:addr[cda:streetAddressLine and cda:city and (cda:country!='US' or ((not(cda:country) or cda:country!='US') and cda:state and cda:postalCode))]">The content of addr *SHALL* be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1098-10484).</sch:assert>
			<sch:assert id="a-1098-10483-c" test="not(cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]/cda:participantRole/cda:addr) or cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]/cda:participantRole/cda:addr[cda:streetAddressLine and cda:city and ((not(cda:country) or cda:country!='US') or (cda:country='US' and cda:state and cda:postalCode))]">The content of addr *SHALL* be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1098-10483).</sch:assert>
			<sch:assert id="a-1098-8939" test="count(cda:entryRelationship[@typeCode='REFR']) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1098-8939) such that it SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8940).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8900" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8900) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.61" (CONF:1098-10516). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32595).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8930-branch-33705" test="not(cda:participantRole/cda:playingEntity) or cda:participantRole/cda:playingEntity[count(cda:name) &gt; 0]">If the covered party’s name is recorded differently in the health plan and in the registration/pharmacy benefit summary (due to marriage or for other reasons), use the name as it is recorded in the health plan.
The playingEntity, if present, SHALL contain at least one [1..*] name (CONF:1098-8930).</sch:assert>
			<sch:assert id="a-1098-31344-branch-33705" test="not(cda:participantRole/cda:playingEntity) or cda:participantRole/cda:playingEntity[count(sdtc:birthTime)=1]">If the covered party’s date of birth is recorded differently in the health plan and in the registration/pharmacy benefit summary, use the date of birth as it is recorded in the health plan.
The playingEntity, if present, SHALL contain exactly one [1..1] sdtc:birthTime (CONF:1098-31344).</sch:assert>
			<sch:assert id="a-1098-31345-branch-33705-c" test="not(tested)">The prefix sdtc: *SHALL* be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the birthTime element (CONF:1098-31345).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']][cda:participantRole[cda:id][cda:code]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8872" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8872).</sch:assert>
			<sch:assert id="a-1098-8873" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8873).</sch:assert>
			<sch:assert id="a-1098-8874" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8874).</sch:assert>
			<sch:assert id="a-1098-8876" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-8876).</sch:assert>
			<sch:assert id="a-1098-19160" test="cda:code[@code='48768-6']">This code SHALL contain exactly one [1..1] @code="48768-6" Payment sources (CONF:1098-19160).</sch:assert>
			<sch:assert id="a-1098-8875" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8875).</sch:assert>
			<sch:assert id="a-1098-19094" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19094).</sch:assert>
			<sch:assert id="a-1098-8878" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1098-8878) such that it SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8879). SHALL contain exactly one [1..1] Policy Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.61:2014-06-09) (CONF:1098-15528).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8897" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8897) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.60" (CONF:1098-10492). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32596).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15395" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15395).</sch:assert>
			<sch:assert id="a-1098-15396" test="cda:code[@code='48768-6']">This code SHALL contain exactly one [1..1] @code="48768-6" Payers (CONF:1098-15396).</sch:assert>
			<sch:assert id="a-1098-7926" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7926).</sch:assert>
			<sch:assert id="a-1098-7927" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7927).</sch:assert>
			<sch:assert id="a-1098-32149" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-32149).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7924" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7924) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.18" (CONF:1098-10434). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32597).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors-abstract" abstract="true">
			<sch:assert id="a-1098-31471" test="count(cda:time)=1">SHALL contain exactly one [1..1] time (CONF:1098-31471).</sch:assert>
			<sch:assert id="a-1098-31472" test="count(cda:assignedAuthor)=1">SHALL contain exactly one [1..1] assignedAuthor (CONF:1098-31472).</sch:assert>
			<sch:assert id="a-1098-31473" test="cda:assignedAuthor[count(cda:id) &gt; 0]">This assignedAuthor SHALL contain at least one [1..*] id (CONF:1098-31473).
Note: This id may be set equal to (a pointer to) an id on a participant elsewhere in the document (header or entries) or a new author participant can be described here. If the id is pointing to a participant already described elsewhere in the document, assignedAuthor/id is sufficient to identify this participant and none of the remaining details of assignedAuthor are required to be set. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. This id must be a pointer to another author participant.</sch:assert>
			<sch:assert id="a-1098-31477" test="not(cda:assignedAuthor/cda:representedOrganization) or cda:assignedAuthor/cda:representedOrganization[@classCode='ORG']">The representedOrganization, if present, SHALL contain exactly one [1..1] @classCode="ORG" (CONF:1098-31477).</sch:assert>
			<sch:assert id="a-1098-32017" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-32017) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.119" (CONF:1098-32018).</sch:assert>
			<sch:assert id="a-1098-32628-c" test="not(tested)">If the ID isn't referencing an author described elsewhere in the document, then the author components required in US Realm Header are required here as well (CONF:1098-32628).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8590" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8590).</sch:assert>
			<sch:assert id="a-1098-8586" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8586).</sch:assert>
			<sch:assert id="a-1098-8587" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8587).</sch:assert>
			<sch:assert id="a-1098-32427" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-32427).</sch:assert>
			<sch:assert id="a-1098-19098" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19098).</sch:assert>
			<sch:assert id="a-1098-8591" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-8591).</sch:assert>
			<sch:assert id="a-1098-8592" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-8592).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8599" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8599) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.46" (CONF:1098-10496). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32605).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8602" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8602).</sch:assert>
			<sch:assert id="a-1098-8604" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8604) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.45" (CONF:1098-10497). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32606).</sch:assert>
			<sch:assert id="a-1098-8609" test="count(cda:subject)=1">SHALL contain exactly one [1..1] subject (CONF:1098-8609).</sch:assert>
			<sch:assert id="a-1098-15244" test="cda:subject[count(cda:relatedSubject)=1]">This subject SHALL contain exactly one [1..1] relatedSubject (CONF:1098-15244).</sch:assert>
			<sch:assert id="a-1098-15246" test="cda:subject/cda:relatedSubject[count(cda:code)=1]">This relatedSubject SHALL contain exactly one [1..1] code (CONF:1098-15246).</sch:assert>
			<sch:assert id="a-1098-15974" test="not(cda:subject/cda:relatedSubject/cda:subject) or cda:subject/cda:relatedSubject/cda:subject[count(cda:administrativeGenderCode)=1]">The subject, if present, SHALL contain exactly one [1..1] administrativeGenderCode (CONF:1098-15974).</sch:assert>
			<sch:assert id="a-1098-8600" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" Cluster (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1098-8600).</sch:assert>
			<sch:assert id="a-1098-8601" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8601).</sch:assert>
			<sch:assert id="a-1098-19099" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1098-19099).</sch:assert>
			<sch:assert id="a-1098-15245" test="cda:subject/cda:relatedSubject[@classCode='PRS']">This relatedSubject SHALL contain exactly one [1..1] @classCode="PRS" Person (CodeSystem: EntityClass 2.16.840.1.113883.5.41 STATIC) (CONF:1098-15245).</sch:assert>
			<sch:assert id="a-1098-15247" test="cda:subject/cda:relatedSubject/cda:code[@code]">This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set 2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:1098-15247).</sch:assert>
			<sch:assert id="a-1098-15975" test="not(cda:subject/cda:relatedSubject/cda:subject/cda:administrativeGenderCode) or cda:subject/cda:relatedSubject/cda:subject/cda:administrativeGenderCode[@code]">This administrativeGenderCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) 2.16.840.1.113883.1.11.1 DYNAMIC (CONF:1098-15975).</sch:assert>
			<sch:assert id="a-1098-32485" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1098-32485).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-32428" test="count(cda:component) &gt; 0">SHALL contain at least one [1..*] component (CONF:1098-32428).</sch:assert>
			<sch:assert id="a-1098-32429" test="cda:component[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']])=1]">Such components SHALL contain exactly one [1..1] Family History Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.46:2014-06-09) (CONF:1098-32429).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15469" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-15469).</sch:assert>
			<sch:assert id="a-1098-7934" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7934).</sch:assert>
			<sch:assert id="a-1098-7935" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7935).</sch:assert>
			<sch:assert id="a-1098-15470" test="cda:code[@code='10157-6']">This code SHALL contain exactly one [1..1] @code="10157-6" Family History (CONF:1098-15470).</sch:assert>
			<sch:assert id="a-1098-32481" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-32481).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7932" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7932) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.15" (CONF:1098-10388). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32607).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
			<sch:assert id="a-1126-202-c" test="count(cda:city)=1">SHALL contain exactly one [1..1] city (ValueSet: City 2.16.840.1.114222.4.11.973 DYNAMIC) (CONF:1126-202).
Note: City is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the city MAY be present but MAY be bound to different vocabularies. The value for city element SHALL be the "display name", selected from "city" Value Set.</sch:assert>
			<sch:assert id="a-1126-206" test="count(cda:useablePeriod[@xsi:type='IVL_TS']) &gt; 0">SHALL contain at least one [1..*] useablePeriod (CONF:1126-206).
Note: usablePeriod indicates patient’s address history. For example, if patient had multiple prior addresses, then occupancy start (low) and end (high) date need to be provided for each address.
</sch:assert>
			<sch:assert id="a-1126-207" test="cda:useablePeriod[@xsi:type='IVL_TS'][count(cda:low[@xsi:type='IVL_TS'])=1]">Such useablePeriods SHALL contain exactly one [1..1] low (CONF:1126-207).
Note: to indicate the time when the patient began living at the address.</sch:assert>
			<sch:assert id="a-1126-208" test="cda:useablePeriod[@xsi:type='IVL_TS'][count(cda:high[@xsi:type='IVL_TS']) &lt; 2]">Such useablePeriods SHALL contain zero or one [0..1] high (CONF:1126-208).
Note: to indicate the time when the patient stopped living at the address.</sch:assert>
			<sch:assert id="a-1126-33226-c" test="count(cda:country)=1">SHALL contain exactly one [1..1] country, which SHALL be selected from ValueSet Country 2.16.840.1.113883.3.88.12.80.63 (CONF:1126-33226).</sch:assert>
			<sch:assert id="a-1126-33227-c" test="count(cda:postalCode)=1">SHALL contain exactly one [1..1] postalCode, which SHOULD be selected from ValueSet PostalCode 2.16.840.1.113883.3.88.12.80.2 (CONF:1126-33227).
Note: The expected format for the Postal Code is either NNNNN or NNNNN-NNNN</sch:assert>
			<sch:assert id="a-1126-33228-c" test="count(cda:state)=1">SHALL contain exactly one [1..1] state, which SHOULD be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 (CONF:1126-33228).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors" context="cda:addr[cda:templateId[@root='2.16.840.1.113883.10.13.17' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-210" test="count(cda:componentOf)=1">SHALL contain exactly one [1..1] componentOf (CONF:1126-210).</sch:assert>
			<sch:assert id="a-1126-211" test="cda:componentOf[count(cda:encompassingEncounter)=1]">This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:1126-211).</sch:assert>
			<sch:assert id="a-1126-212" test="cda:componentOf/cda:encompassingEncounter[count(cda:encounterParticipant[@typeCode='REF'])=1]">This encompassingEncounter SHALL contain exactly one [1..1] encounterParticipant (CONF:1126-212) such that it
Note: This element records the provider that referred the patient to the reporting facility. This element SHALL be provided in the header of the CDA document in the event the patient was referred to this ambulatory healthcare provider.  SHALL contain exactly one [1..1] @typeCode="REF" (CONF:1126-217).</sch:assert>
			<sch:assert id="a-1126-220" test="count(cda:recordTarget) &gt; 0">SHALL contain at least one [1..*] recordTarget (CONF:1126-220).</sch:assert>
			<sch:assert id="a-1126-221" test="cda:recordTarget[count(cda:patientRole)=1]">Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:1126-221).</sch:assert>
			<sch:assert id="a-1126-222" test="cda:recordTarget/cda:patientRole[count(cda:patient)=1]">This patientRole SHALL contain exactly one [1..1] patient (CONF:1126-222).</sch:assert>
			<sch:assert id="a-1126-223" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:birthplace)=1]">This patient SHALL contain exactly one [1..1] birthplace (CONF:1126-223).</sch:assert>
			<sch:assert id="a-1126-225" test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace[count(cda:place)=1]">This birthplace SHALL contain exactly one [1..1] place (CONF:1126-225).</sch:assert>
			<sch:assert id="a-1126-226" test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place[count(cda:addr)=1]">This place SHALL contain exactly one [1..1] addr (CONF:1126-226).</sch:assert>
			<sch:assert id="a-1126-227" test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr[count(cda:country)=1]">This addr SHALL contain exactly one [1..1] country (CONF:1126-227).</sch:assert>
			<sch:assert id="a-1126-228" test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr[count(cda:state)=1]">This addr SHALL contain exactly one [1..1] state (CONF:1126-228).</sch:assert>
			<sch:assert id="a-1126-230" test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr[not(@nullFlavor)]">This addr SHALL NOT contain [0..0] @nullFlavor (CONF:1126-230).</sch:assert>
			<sch:assert id="a-1126-233" test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place[not(@nullFlavor)]">This place SHALL NOT contain [0..0] @nullFlavor (CONF:1126-233).</sch:assert>
			<sch:assert id="a-1126-32647" test="count(cda:component)=1">SHALL contain exactly one [1..1] component (CONF:1126-32647).</sch:assert>
			<sch:assert id="a-1126-32648" test="cda:component[count(cda:structuredBody)=1]">This component SHALL contain exactly one [1..1] structuredBody (CONF:1126-32648).</sch:assert>
			<sch:assert id="a-1126-32649" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2014-08-08']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-32649) such that it SHALL contain exactly one [1..1] Cancer Diagnosis Section (entries required) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.2:2014-08-08) (CONF:1126-32650).</sch:assert>
			<sch:assert id="a-1126-32656" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-32656).</sch:assert>
			<sch:assert id="a-1126-32657" test="cda:code[@code='72134-0' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="72134-0" Cancer event report (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-32657).</sch:assert>
			<sch:assert id="a-1126-0" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1126-0).</sch:assert>
			<sch:assert id="a-1126-32658" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-32658) such that it SHALL contain exactly one [1..1] Problem Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.21:2014-08-08) (CONF:1126-32659).</sch:assert>
			<sch:assert id="a-1126-32660" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-32660) such that it SHALL contain exactly one [1..1] Plan of Treatment Section (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.9:2014-08-08) (CONF:1126-32661).</sch:assert>
			<sch:assert id="a-1126-32668" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-32668) such that it SHALL contain exactly one [1..1] Payers Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.18:2014-06-09) (CONF:1126-32669).</sch:assert>
			<sch:assert id="a-1126-32670" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-32670) such that it SHALL contain exactly one [1..1] Medications Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.13:2014-08-08) (CONF:1126-32671).</sch:assert>
			<sch:assert id="a-1126-32674" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-32674) such that it SHALL contain exactly one [1..1] Medications Administered Section (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.12:2014-08-08) (CONF:1126-32675).</sch:assert>
			<sch:assert id="a-1126-32720" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-32720) such that it SHALL contain exactly one [1..1] Family History Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2014-06-09) (CONF:1126-32721).</sch:assert>
			<sch:assert id="a-1126-33025" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-33025).</sch:assert>
			<sch:assert id="a-1126-33026" test="cda:effectiveTime[not(@nullFlavor)]">This effectiveTime SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33026).</sch:assert>
			<sch:assert id="a-1126-33027" test="count(cda:id)=1">SHALL contain exactly one [1..1] id (CONF:1126-33027).</sch:assert>
			<sch:assert id="a-1126-33034-c" test="not(tested_here_yet)">This patient SHALL contain at least one [1..*] US Realm Patient Name (PTN.US.FIELDED) - Cancer IG Specific Constraints  (identifier: urn:hl7ii:2.16.840.1.113883.10.13.18:2014-08-08) (CONF:1126-33034) such that it</sch:assert>
			<sch:assert id="a-1126-33037" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:administrativeGenderCode)=1]">This patient SHALL contain exactly one [1..1] administrativeGenderCode (CONF:1126-33037).</sch:assert>
			<sch:assert id="a-1126-33038" test="cda:recordTarget/cda:patientRole/cda:patient/cda:administrativeGenderCode[not(@nullFlavor)]">This administrativeGenderCode SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33038).</sch:assert>
			<sch:assert id="a-1126-33039" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:birthTime)=1]">This patient SHALL contain exactly one [1..1] birthTime (CONF:1126-33039).</sch:assert>
			<sch:assert id="a-1126-33040" test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime[not(@nullFlavor)]">This birthTime SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33040).</sch:assert>
			<sch:assert id="a-1126-33041-c" test="string-length(cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value)=8">*SHALL* be precise to day (CONF:1126-33041).</sch:assert>
			<sch:assert id="a-1126-33042" test="cda:code[not(@nullFlavor)]">This code SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33042).</sch:assert>
			<sch:assert id="a-1126-33045" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-33045) such that it SHALL contain exactly one [1..1] Procedures Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.10:2014-08-08) (CONF:1126-33046).</sch:assert>
			<sch:assert id="a-1126-33047" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-33047) such that it SHALL contain exactly one [1..1] Results Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3.1:2014-06-09) (CONF:1126-33048).</sch:assert>
			<sch:assert id="a-1126-33049" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2014-08-08']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-33049) such that it SHALL contain exactly one [1..1] Social History Section (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.11:2014-08-08) (CONF:1126-33050).</sch:assert>
			<sch:assert id="a-1126-33051" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-33051) such that it SHALL contain exactly one [1..1] Vital Signs Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4.1:2014-06-09) (CONF:1126-33052).</sch:assert>
			<sch:assert id="a-1126-33054" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.1'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33054) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.1" (CONF:1126-33055). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33946).</sch:assert>
			<sch:assert id="a-1126-33229" test="count(cda:author[count(cda:assignedAuthor[count(cda:assignedPerson)=1])=1])=1">SHALL contain exactly one [1..1] author (CONF:1126-33229) such that it SHALL contain exactly one [1..1] assignedAuthor (CONF:1126-33230). This assignedAuthor SHALL contain exactly one [1..1] assignedPerson (CONF:1126-33233).
Note: Author information needs to be provided in 2 separate instances of author participation for both person and device playing the role of author</sch:assert>
			<sch:assert id="a-1126-33234" test="count(cda:custodian)=1">SHALL contain exactly one [1..1] custodian (CONF:1126-33234).</sch:assert>
			<sch:assert id="a-1126-33235" test="cda:custodian[count(cda:assignedCustodian)=1]">This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:1126-33235).</sch:assert>
			<sch:assert id="a-1126-33236" test="cda:custodian/cda:assignedCustodian[count(cda:representedCustodianOrganization)=1]">This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:1126-33236).</sch:assert>
			<sch:assert id="a-1126-33237-c" test="not(tested_here_yet)">This representedCustodianOrganization SHALL contain exactly one [1..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33237).</sch:assert>
			<sch:assert id="a-1126-33243-c" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:maritalStatusCode)=1]">This patient SHALL contain exactly one [1..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status 2.16.840.1.113883.1.11.12212 (CONF:1126-33243).</sch:assert>
			<sch:assert id="a-1126-33542" test="cda:recordTarget/cda:patientRole[count(cda:id[@root='2.16.840.1.113883.4.1'])=1]">This patientRole SHALL contain exactly one [1..1] id (CONF:1126-33542) such that it
Note: This field SHALL be used for Social Security Number (SSN). SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.1" (CONF:1126-33543).
Note: This root OID is assigning authority for Social Security Number (SSN).</sch:assert>
			<sch:assert id="a-1126-33544" test="cda:recordTarget/cda:patientRole[count(cda:id) &gt; 0]">This patientRole SHALL contain at least one [1..*] id (CONF:1126-33544).
Note: This field SHALL be used for Medical Record Number (MRN).</sch:assert>
			<sch:assert id="a-1126-33545-c" test="not(tested)">This id *SHALL* be a globally unique identifier for the document (CONF:1126-33545).</sch:assert>
			<sch:assert id="a-1126-33577" test="count(cda:setId)=1">SHALL contain exactly one [1..1] setId (CONF:1126-33577).</sch:assert>
			<sch:assert id="a-1126-33578" test="count(cda:versionNumber)=1">SHALL contain exactly one [1..1] versionNumber (CONF:1126-33578).</sch:assert>
			<sch:assert id="a-1126-33605-c" test="cda:recordTarget/cda:patientRole/cda:patient[count(sdtc:raceCode)&gt;=1]">This patient SHALL contain at least one [1..*] sdtc:raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 (CONF:1126-33605).</sch:assert>
			<sch:assert id="a-1126-33686" test="count(cda:author[count(cda:assignedAuthor[count(cda:assignedAuthoringDevice)=1])=1])=1">SHALL contain exactly one [1..1] author (CONF:1126-33686) such that it SHALL contain exactly one [1..1] assignedAuthor (CONF:1126-33687). This assignedAuthor SHALL contain exactly one [1..1] assignedAuthoringDevice (CONF:1126-33690).
Note: Author information needs to be provided in 2 separate instances of author participation for both person and device playing the role of author</sch:assert>
			<sch:assert id="a-1126-33701" test="cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']])=1])=1]">This structuredBody SHALL contain exactly one [1..1] component (CONF:1126-33701) such that it SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1126-33702).</sch:assert>
			<sch:assert id="a-1126-33881" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:name) or cda:recordTarget/cda:patientRole/cda:patient/cda:name[count(cda:family)=1]">The name, if present, SHALL contain exactly one [1..1] family (CONF:1126-33881).</sch:assert>
			<sch:assert id="a-1126-33882" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:name/cda:family) or cda:recordTarget/cda:patientRole/cda:patient/cda:name/cda:family[@qualifier='BR']">This family SHALL contain exactly one [1..1] @qualifier="BR" birth (CodeSystem: EntityNamePartQualifier 2.16.840.1.113883.5.43) (CONF:1126-33882).</sch:assert>
			<sch:assert id="a-1126-33894" test="cda:componentOf/cda:encompassingEncounter[count(cda:location)=1]">This encompassingEncounter SHALL contain exactly one [1..1] location (CONF:1126-33894).</sch:assert>
			<sch:assert id="a-1126-33895" test="cda:componentOf/cda:encompassingEncounter/cda:location[count(cda:healthCareFacility)=1]">This location SHALL contain exactly one [1..1] healthCareFacility (CONF:1126-33895) such that it</sch:assert>
			<sch:assert id="a-1126-33906" test="not(cda:documentationOf) or cda:documentationOf[count(cda:serviceEvent)=1]">The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1126-33906).</sch:assert>
			<sch:assert id="a-1126-33978-c" test="(cda:component/cda:structuredBody[count(cda:component[count(cda:section[cda:templateId])=0])=0]) and not(cda:component/cda:structuredBody/cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' or @root='2.16.840.1.113883.10.20.22.2.8' or @root='2.16.840.1.113883.10.20.22.2.15' or @root='2.16.840.1.113883.10.13.12' or @root='2.16.840.1.113883.10.20.22.2.38' or @root='2.16.840.1.113883.10.13.13' or @root='2.16.840.1.113883.10.20.22.2.1.1' or @root='2.16.840.1.113883.10.20.22.2.1' or @root='2.16.840.1.113883.10.20.22.2.18' or @root='2.16.840.1.113883.10.13.9' or @root='2.16.840.1.113883.10.20.22.2.10' or @root='2.16.840.1.113883.10.13.21' or @root='2.16.840.1.113883.10.20.22.2.5' or @root='2.16.840.1.113883.10.20.22.2.5.1' or @root='2.16.840.1.113883.10.13.10' or @root='2.16.840.1.113883.10.20.22.2.7' or @root='2.16.840.1.113883.10.20.22.2.7.1' or @root='2.16.840.1.113883.10.20.22.2.3.1' or @root='2.16.840.1.113883.10.13.11' or @root='2.16.840.1.113883.10.20.22.2.17' or @root='2.16.840.1.113883.10.20.22.2.4.1']])=0])">This structuredBody SHALL NOT contain [0..0] any other component sections than those identified above (CONF:1126-33978).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-32655-c" test="not(tested_here_yet)">This patientRole SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.17:2014-08-08) (CONF:1126-32655).
Note: SHALL provide ALL addresses for that patient over time. In other words, ALL historical and current addresses where patient has or is residing SHALL be provided.  Note: The intent of this requirement is for the EHR system to have the capability to capture addresses over time when reported. Physicians are not expected to obtain an address history during the patient visit/encounter.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-46212-branch-46212-errors-abstract" abstract="true">
			<sch:assert id="a-1126-214-branch-46212" test="count(cda:assignedEntity)=1">SHALL contain exactly one [1..1] assignedEntity (CONF:1126-214).</sch:assert>
			<sch:assert id="a-1126-215-branch-46212" test="cda:assignedEntity[count(cda:assignedPerson) &lt; 2]">This assignedEntity SHALL contain zero or one [0..1] assignedPerson (CONF:1126-215).</sch:assert>
			<sch:assert id="a-1126-216-branch-46212-c" test="not(tested_here_yet)">The assignedPerson, if present, SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-216).</sch:assert>
			<sch:assert id="a-1126-218-branch-46212" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-218) such that it</sch:assert>
			<sch:assert id="a-1126-33921-branch-46212" test="cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHALL contain exactly one [1..1] representedOrganization (CONF:1126-33921).</sch:assert>
			<sch:assert id="a-1126-33922-branch-46212" test="cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">This representedOrganization SHALL contain at least one [1..*] id (CONF:1126-33922) such that it</sch:assert>
			<sch:assert id="a-1126-33925-branch-46212" test="cda:assignedEntity/cda:representedOrganization[count(cda:name) &gt; 0]">This representedOrganization SHALL contain at least one [1..*] name (CONF:1126-33925).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-46212-branch-46212-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:componentOf[cda:encompassingEncounter][cda:encounterParticipant[@typeCode='REF']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-46212-branch-46212-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-47484-branch-47484-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33043-branch-47484" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33043).</sch:assert>
			<sch:assert id="a-1126-33044-branch-47484" test="cda:section[not(@nullFlavor)]">This section SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33044).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-47484-branch-47484-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:component[cda:structuredBody][cda:component[cda:section]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-47484-branch-47484-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-48940-branch-48940-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33035-branch-48940" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33035).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-48940-branch-48940-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:recordTarget[cda:patientRole][cda:patient][cda:name]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-48940-branch-48940-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-49439-branch-49439-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33231-branch-49439-c" test="not(tested_here_yet)">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.17:2014-08-08) (CONF:1126-33231).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-49439-branch-49439-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:author[cda:assignedAuthor[cda:assignedPerson]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-49439-branch-49439-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-57044-branch-57044-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33688-branch-57044-c" test="not(tested_here_yet)">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33688).</sch:assert>
			<sch:assert id="a-1126-33726-branch-57044" test="cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:softwareName)=1]">This assignedAuthoringDevice SHALL contain exactly one [1..1] softwareName (CONF:1126-33726).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-57044-branch-57044-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-57044-branch-57044-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60649-branch-60649-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33899-branch-60649" test="@root='2.16.840.1.113883.4.6'">SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33899).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60649-branch-60649-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:componentOf[cda:encompassingEncounter][cda:location][cda:healthCareFacility][cda:id]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60649-branch-60649-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60650-branch-60650-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33904-branch-60650-c" test="not(tested_here_yet)">SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33904).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60650-branch-60650-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:componentOf[cda:encompassingEncounter][cda:location][cda:healthCareFacility][cda:serviceProviderOrganization]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60650-branch-60650-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61005-branch-61005-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33909-branch-61005" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33909) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61005-branch-61005-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:documentationOf[cda:serviceEvent][cda:performer[cda:assignedEntity]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61005-branch-61005-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors-abstract"/>
			<sch:assert id="a-1126-243" test="count(cda:given[@nullFlavor]) &gt; 0">SHALL contain at least one [1..*] given (CONF:1126-243) such that it
Note: This (the first) occurrence of given is used for the first name. SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33033).</sch:assert>
			<sch:assert id="a-1126-244" test="count(cda:family)=1">SHALL contain exactly one [1..1] family (CONF:1126-244).</sch:assert>
			<sch:assert id="a-1126-33032" test="cda:family[not(@nullFlavor)]">This family SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33032).</sch:assert>
			<sch:assert id="a-1126-33240" test="count(cda:given[@nullFlavor]) &gt; 0">SHALL contain at least one [1..*] given (CONF:1126-33240) such that it
Note: This (the second) occurrence of given is used for the middle name or middle initial. MAY contain zero or one [0..1] @nullFlavor (CONF:1126-33241).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors" context="cda:name[cda:templateId[@root='2.16.840.1.113883.10.13.18' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-253" test="count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-253) such that it SHALL contain exactly one [1..1] Cancer Diagnosis Concern Act (identifier: urn:hl7ii:2.16.840.1.113883.10.13.3:2014-08-08) (CONF:1126-257).</sch:assert>
			<sch:assert id="a-1126-255" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-255).</sch:assert>
			<sch:assert id="a-1126-259" test="cda:code[@code='72135-7']">This code SHALL contain exactly one [1..1] @code="72135-7" Cancer diagnosis (CONF:1126-259).</sch:assert>
			<sch:assert id="a-1126-261" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1126-261).</sch:assert>
			<sch:assert id="a-1126-262" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1126-262).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.2'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.2" (CONF:1126-258). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33947).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-46267-branch-46267-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33244-branch-46267" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33244).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-46267-branch-46267-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2014-08-08']]/cda:entry[cda:act]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-46267-branch-46267-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32420" test="count(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-32420) such that it SHALL contain exactly one [1..1] Cancer Diagnosis Observation (identifier: urn:hl7ii:2.16.840.1.113883.10.13.4:2014-08-08) (CONF:1126-32426). SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:1126-32436).</sch:assert>
			<sch:assert id="a-1126-32422" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-32422).</sch:assert>
			<sch:assert id="a-1126-32423" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-32423).</sch:assert>
			<sch:assert id="a-1126-32424" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-32424).</sch:assert>
			<sch:assert id="a-1126-32427" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1126-32427).</sch:assert>
			<sch:assert id="a-1126-32428" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-32428).</sch:assert>
			<sch:assert id="a-1126-32430" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-32430).</sch:assert>
			<sch:assert id="a-1126-32431" test="cda:code[@code='CONC']">This code SHALL contain exactly one [1..1] @code="CONC" Concern (CONF:1126-32431).</sch:assert>
			<sch:assert id="a-1126-32434" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1126-32434).
Note: The effectiveTime/low asserts when the concern became active. This equates to the time the concern was authored in the patient's chart. </sch:assert>
			<sch:assert id="a-1126-32435" test="cda:effectiveTime[count(cda:high) &lt; 2]">This effectiveTime SHALL contain zero or one [0..1] high (CONF:1126-32435).
Note: The effectiveTime/high asserts when the concern was completed (e.g. when the clinician deemed there is no longer any need to track the underlying condition). This element SHALL be present when statusCode="completed" and SHALL not be present otherwise.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-32421" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.3'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-32421) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.3" (CONF:1126-32429). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33955).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32440-c" test="(count(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation)=1])=2) and (cda:entryRelationship[@typeCode='SUBJ']/cda:observation/cda:templateId[@root='2.16.840.1.113883.10.13.5' or @root='2.16.840.1.113883.10.13.31'])">SHALL contain exactly one [1..1] entryRelationship (CONF:1126-32440) such that it SHALL contain exactly one [1..1] observation (CONF:1126-32451). SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:1126-32465). SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:1126-32466).</sch:assert>
			<sch:assert id="a-1126-32444" test="not(cda:text/cda:reference) or cda:text/cda:reference[@value]">The reference, if present, SHALL contain exactly one [1..1] @value (CONF:1126-32444).</sch:assert>
			<sch:assert id="a-1126-32445" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-32445).</sch:assert>
			<sch:assert id="a-1126-32446" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-32446).
Note: Records the date of initial diagnosis by a recognized medical practitioner for the cancer being reported.</sch:assert>
			<sch:assert id="a-1126-32447" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-32447).
Note: The value records the histologic type (or cell type) of a malignant tumor (e.g., carcinoma, melanoma, sarcoma, lymphoma, leukemia). Histologic tumor type SHOULD be encoded and selected from one of the following coding systems: ICD-O-3, ICD-9-CM Appendix A, ICD-10-CM, SNOMED CT. If the code for histologic tumor type cannot be found in one of the aforementioned coding systems then the string value of the histologic tumor type must be provided.In summary: - If tumor histologic type is coded, then the value for the code SHALL be provided in @code field. In this case, the values for @displayName and @codeSystem associated with @code value SHALL be provided.- If tumor histologic type is NOT coded, then the value for the code SHALL be provided in &lt;originalText&gt; field. In this case @code attribute (as well as @displayName and @codeSystem) with be empty.</sch:assert>
			<sch:assert id="a-1126-32452" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1126-32452).</sch:assert>
			<sch:assert id="a-1126-32453" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-32453).</sch:assert>
			<sch:assert id="a-1126-32456" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-32456).</sch:assert>
			<sch:assert id="a-1126-32457" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-32457).</sch:assert>
			<sch:assert id="a-1126-32458-c" test="count(cda:text/cda:reference[@value])=0 or starts-with(cda:text/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-32458).</sch:assert>
			<sch:assert id="a-1126-32459" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1126-32459).</sch:assert>
			<sch:assert id="a-1126-32460" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1126-32460).
Note: The effectiveTime/low (a.k.a. "onset date") indicates Cancer Diagnosis Date.</sch:assert>
			<sch:assert id="a-1126-32463" test="cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@codeSystem='2.16.840.1.113883.3.520.3.14'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.14'][count(cda:originalText[count(cda:reference[@value])=1])=1])=1])=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1126-32463) such that it
Note: This qualifier provides Behavior information, indicating whether the tumor has a  benign, uncertain, in situ, malignant or metastatic behavior. SHALL contain exactly one [1..1] name (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-32474). This name SHALL contain exactly one [1..1] @code="31206-6" Behavior ICD-O-3 Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-34010). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1126-34011). SHALL contain exactly one [1..1] value (CONF:1126-32475).
Note: - If coded, the code value describing the behavior of the tumor/cancerSHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the behavior of the tumor/cancer SHALL be provided within &lt;originalText&gt; element.  This value SHOULD contain zero or one [0..1] originalText (CONF:1126-32477). The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-32478).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1). The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-32479). This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.14" (CodeSystem: NAACCR Behavior Code 2.16.840.1.113883.3.520.3.14 STATIC) (CONF:1126-32632). This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.14" (CodeSystem: NAACCR Behavior Code 2.16.840.1.113883.3.520.3.14 STATIC) (CONF:1126-33703).</sch:assert>
			<sch:assert id="a-1126-32464" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code (CONF:1126-32464).
Note: This @code attribute is used to document histologic type of tumor. If the code isn’t available, the value of “8000” (with @displayName="Neoplasm")should be used when using code systems ICD-O-3, ICD-9-CM, ICD-10-CM and "108369006" (with @displayName="Neoplasm (morphologic abnormality)") when using SNOMED CT code system.</sch:assert>
			<sch:assert id="a-1126-32473-c" test="not(Tested)">

The @code for histologic type of tumor SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) Morphologic Abnormality of Neoplasms Value Set (ValueSet: 2.16.840.1.114222.4.11.7256) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (CodeSystem: 2.16.840.1.114222.4.11.6038) or
(d) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) (CONF:1126-32473).</sch:assert>
			<sch:assert id="a-1126-32490" test="cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1126-32490) such that it
Note: This qualifier provides Diagnostic Confirmation information, indicating the best method used to confirm the presence of the cancer being reported, such that SHALL contain exactly one [1..1] name="21861-0" Dx confirmed by Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-32481). This name SHALL contain exactly one [1..1] @code="21861-0" Dx confirmed by Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-34014). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1126-34015).</sch:assert>
			<sch:assert id="a-1126-32487" test="count(cda:targetSiteCode)=1">SHALL contain exactly one [1..1] targetSiteCode (CONF:1126-32487).
Note: targetSiteCode indicates the anatomic location where the primary tumor originated (referred to as primary site).</sch:assert>
			<sch:assert id="a-1126-32488" test="cda:targetSiteCode[@code]">This targetSiteCode SHALL contain exactly one [1..1] @code (CONF:1126-32488).</sch:assert>
			<sch:assert id="a-1126-32489-c" test="not(Tested)">The value for @code attribute SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) Value Set: "Body Site" (ValueSet: 2.16.840.1.113883.3.88.12.3221.8.9) - SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1126-32489).</sch:assert>
			<sch:assert id="a-1126-32537" test="cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHALL contain exactly one [1..1] originalText (CONF:1126-32537).
Note: This &lt;originalText&gt; element is used to document string value of histologic type of tumor in both cases: when histologic type of tumor is coded or is not coded.For example:(1) If histologic tumor type is coded, then the code value SHALL be provided in @code attribute (along with @displayName and @codeSystem values associated with the @code value). In addition, string value (typically the string that the user uses in his own information system) should be provided in &lt;originalText&gt; field. Note that if the user uses the same string value for histologic tumor type in his own system as the string value (=displayName) from the coding system, then the string values for &lt;originalText&gt; and @displayName will be equivalent in Cancer Report.(2) If histologic tumor type is NOT coded, then the string value SHALL be provided in &lt;originalText&gt;.</sch:assert>
			<sch:assert id="a-1126-32538" test="cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">This originalText SHALL contain exactly one [1..1] reference (CONF:1126-32538).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1126-32539" test="cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">This reference SHALL contain exactly one [1..1] @value (CONF:1126-32539).</sch:assert>
			<sch:assert id="a-1126-32613-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-32613).</sch:assert>
			<sch:assert id="a-1126-32618" test="cda:value[@xsi:type='CD'][@displayName]">This value SHALL contain exactly one [1..1] @displayName (CONF:1126-32618).</sch:assert>
			<sch:assert id="a-1126-32619-c" test="not(Tested)">The @codeDisplayName associated with the code for histologic type of tumor SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) Morphologic Abnormality of Neoplasms Value Set (ValueSet: 2.16.840.1.114222.4.11.7256) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (CodeSystem: 2.16.840.1.114222.4.11.6038) or
(d) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) (CONF:1126-32619).</sch:assert>
			<sch:assert id="a-1126-32634" test="cda:value[@xsi:type='CD'][@codeSystem]">This value SHALL contain exactly one [1..1] @codeSystem (CONF:1126-32634).</sch:assert>
			<sch:assert id="a-1126-32635-c" test="cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.6.43.1'] or cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.114222.4.11.6038'] or cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.6.90'] or cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.114222.4.11.7256']">The @codeSystem associated with the code for histologic type of tumor SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (CodeSystem: 2.16.840.1.114222.4.11.6038) or
(d) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) (CONF:1126-32635).</sch:assert>
			<sch:assert id="a-1126-32639-c" test="not(Tested)">The value for @displayName associated with @code SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) Value Set: "Body Site" (ValueSet: 2.16.840.1.113883.3.88.12.3221.8.9) - SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1126-32639).</sch:assert>
			<sch:assert id="a-1126-33008" test="cda:targetSiteCode[count(cda:qualifier)=1]">This targetSiteCode SHALL contain exactly one [1..1] qualifier (CONF:1126-33008).</sch:assert>
			<sch:assert id="a-1126-33009" test="cda:targetSiteCode/cda:qualifier[count(cda:name)=1]">This qualifier SHALL contain exactly one [1..1] name (CONF:1126-33009).</sch:assert>
			<sch:assert id="a-1126-33010" test="cda:targetSiteCode/cda:qualifier[count(cda:value)=1]">This qualifier SHALL contain exactly one [1..1] value (CONF:1126-33010).
Note: This qualifier provides Laterality, the side of a paired organ, or the side of the body on which the reportable tumor originated.</sch:assert>
			<sch:assert id="a-1126-33011" test="cda:targetSiteCode/cda:qualifier/cda:name[@code='20228-3']">This name SHALL contain exactly one [1..1] @code="20228-3" Anatomic part Laterality (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33011).</sch:assert>
			<sch:assert id="a-1126-33012-c" test="count(cda:targetSiteCode/cda:qualifier/cda:value[@code])=1">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Laterality 2.16.840.1.113883.3.520.4.22 (CONF:1126-33012).</sch:assert>
			<sch:assert id="a-1126-33013" test="cda:targetSiteCode/cda:qualifier/cda:name[@codeSystem='2.16.840.1.113883.6.1']">This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33013).</sch:assert>
			<sch:assert id="a-1126-33014" test="cda:targetSiteCode/cda:qualifier/cda:name[@codeSystemName='LOINC']">This name SHALL contain exactly one [1..1] @codeSystemName="LOINC" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33014).</sch:assert>
			<sch:assert id="a-1126-33015" test="cda:targetSiteCode/cda:qualifier/cda:value[@codeSystem='2.16.840.1.113883.6.96']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:1126-33015).</sch:assert>
			<sch:assert id="a-1126-33177-c" test="(count(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation)=1])=2) and (cda:entryRelationship[@typeCode='SUBJ']/cda:observation/cda:templateId[@root='2.16.840.1.113883.10.13.7' or @root='2.16.840.1.113883.10.13.32'])">SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33177) such that it SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33178). SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:1126-33179). SHALL contain exactly one [1..1] observation (CONF:1126-33180).</sch:assert>
			<sch:assert id="a-1126-33182" test="cda:targetSiteCode[@codeSystem]">This targetSiteCode SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33182).</sch:assert>
			<sch:assert id="a-1126-33185-c" test="count(cda:targetSiteCode/cda:qualifier/cda:value[@displayName])=1">This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Laterality 2.16.840.1.113883.3.520.4.22 (CONF:1126-33185).</sch:assert>
			<sch:assert id="a-1126-33192" test="count(cda:entryRelationship[@typeCode='REFR'][count(cda:observation[count(cda:id)=1])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33192) such that it SHALL contain exactly one [1..1] observation (CONF:1126-33193). This observation SHALL contain exactly one [1..1] id (CONF:1126-33195).
Note: This "id" is used to link cancer diagnosis observation to the problem observation "id". SHALL contain exactly one [1..1] @typeCode="REFR" Reference (CONF:1126-33194).</sch:assert>
			<sch:assert id="a-1126-33245" test="cda:effectiveTime[not(@nullFlavor)]">This effectiveTime SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33245).</sch:assert>
			<sch:assert id="a-1126-33246" test="cda:effectiveTime/cda:low[not(@nullFlavor)]">This low SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33246).</sch:assert>
			<sch:assert id="a-1126-33247" test="cda:targetSiteCode[not(@nullFlavor)]">This targetSiteCode SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33247).</sch:assert>
			<sch:assert id="a-1126-33309" test="cda:code[@code='29308-4' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="29308-4" Diagnosis (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33309).</sch:assert>
			<sch:assert id="a-1126-33310" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:1126-33310).</sch:assert>
			<sch:assert id="a-1126-33606" test="cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1126-33606) such that it
Note: This qualifier is used to indicate the Grade (or degree of differentiation) of tumor. SHALL contain exactly one [1..1] name (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33607). This name SHALL contain exactly one [1..1] @code="21858-6" Grade Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-34012). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1126-34013).</sch:assert>
			<sch:assert id="a-1126-33620-c" test="count(cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.103'] or cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.90'] or cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.96'] or cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.43.1'])">The value for @codeSystem attribute SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1126-33620).</sch:assert>
			<sch:assert id="a-1126-33707-c" test="not(Tested)">If the @code is selected from the Value Set "Body Site", then the value for @valueSet SHALL be "2.16.840.1.113883.3.88.12.3221.8.9" (CONF:1126-33707).</sch:assert>
			<sch:assert id="a-1126-33708" test="cda:targetSiteCode/cda:qualifier/cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.22']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.22" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:1126-33708).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-32441" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.4'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-32441) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.4" (CONF:1126-32455). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33956).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46539-branch-46539-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32451-branch-46539-c" test="not(Tested)">SHALL contain exactly one [1..1] observation (CONF:1126-32451).</sch:assert>
			<sch:assert id="a-1126-33186-branch-46539" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33186).</sch:assert>
			<sch:assert id="a-1126-33190-branch-46539" test="cda:observation[not(@nullFlavor)]">This observation SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33190).</sch:assert>
			<sch:assert id="a-1126-33879-branch-46539-c" test="not(Tested)">*SHALL* have an entry conformant to TNM Clinical Stage Observation (templateId: urn:hl7ii:2.16.840.1.113883.10.13.5:2014-08-08) *OR* No Known TNM Clinical Stage Observation (templateId: urn:hl7ii:2.16.840.1.113883.10.13.31:2014-08-08) (CONF:1126-33879).
Note: Use the TNM Clinical Stage Observation template to record TNM stage when the stage values are known, including situations when, after staging workup, the stage group and/or TNM component(s) are found to be unknown (e.g., Stage Group= 9, and/or TX, and/or NX).  Use the No Known TNM Clinical Stage Observation template when the cancer has not yet been staged, the TNM stage is not available, or when no TNM Staging system exists for the cancer.  </sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46539-branch-46539-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][@typeCode='SUBJ'][@inversionInd='true']">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46539-branch-46539-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46562-branch-46562-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32614-branch-46562-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-32614).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46562-branch-46562-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:value[@xsi:type='CD'][cda:qualifier[cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[cda:originalText[cda:reference[@value]]][@codeSystem='2.16.840.1.113883.3.520.3.14'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.14']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46562-branch-46562-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46655-branch-46655-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32482-branch-46655" test="count(cda:value)=1">SHALL contain exactly one [1..1] value (CONF:1126-32482).
Note: - If coded, the code value describing the best method of diagnosis of the tumor/cancer SHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the best method of diagnosis of the tumor/cancer SHALL be provided within &lt;originalText&gt; element. </sch:assert>
			<sch:assert id="a-1126-33181-branch-46655-c" test="not(.)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33181).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46655-branch-46655-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:value[@xsi:type='CD'][cda:qualifier[cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46655-branch-46655-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-49083-branch-49083-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33187-branch-49083" test="not(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33187).</sch:assert>
			<sch:assert id="a-1126-33191-branch-49083" test="cda:observation[not(@nullFlavor)]">This observation SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33191).</sch:assert>
			<sch:assert id="a-1126-33883-branch-49083-c" test="not(Tested)">*SHALL* have an entry conformant to TNM Pathologic Stage Observation (templateId: urn:hl7ii:2.16.840.1.113883.10.13.7:2014-08-08) *OR* No Known TNM Pathologic Stage Observation (templateId: urn:hl7ii:2.16.840.1.113883.10.13.32:2014-08-08) (CONF:1126-33883).
Note: Use the TNM Pathologic Stage Observation template to record TNM stage when the stage values are known, including situations when, after staging workup, the stage group and/or TNM component(s) are found to be unknown (e.g., Stage Group= 9, and/or TX, and/or NX).  Use the No Known TNM Pathologic Stage Observation template when the cancer has not yet been staged, the TNM stage is not available, or when no TNM Staging system exists for the cancer.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-49083-branch-49083-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:entryRelationship[@typeCode='SUBJ'][@inversionInd='true'][cda:observation]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-49083-branch-49083-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-50008-branch-50008-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33608-branch-50008" test="count(cda:value)=1">SHALL contain exactly one [1..1] value (CONF:1126-33608).
Note: - If coded, the code value describing the grade of the tumor/cancer SHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the grade of the tumor/cancer SHALL be provided within &lt;originalText&gt; element. </sch:assert>
			<sch:assert id="a-1126-33615-branch-50008-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33615).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-50008-branch-50008-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:value[@xsi:type='CD'][cda:qualifier[cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-50008-branch-50008-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32498" test="count(cda:statusCode[@code='completed'])=1">SHALL contain exactly one [1..1] statusCode="completed" (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1126-32498).</sch:assert>
			<sch:assert id="a-1126-32499" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-32499).</sch:assert>
			<sch:assert id="a-1126-32505" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1126-32505).</sch:assert>
			<sch:assert id="a-1126-32506" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-32506).</sch:assert>
			<sch:assert id="a-1126-32509" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-32509).</sch:assert>
			<sch:assert id="a-1126-32510" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-32510).</sch:assert>
			<sch:assert id="a-1126-32512" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1126-32512).</sch:assert>
			<sch:assert id="a-1126-32513" test="cda:effectiveTime[count(cda:low)=1]">The effectiveTime/low documents when detailed site-specific information on the progression of disease for the cancer/tumor was recorded.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1126-32513).</sch:assert>
			<sch:assert id="a-1126-33399" test="count(cda:entryRelationship)=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33399).
Note: This entryRelationship provides information on the TNM Clinical Stage.</sch:assert>
			<sch:assert id="a-1126-33400" test="cda:entryRelationship[count(cda:observation)=1]">This entryRelationship SHALL contain exactly one [1..1] observation (CONF:1126-33400).</sch:assert>
			<sch:assert id="a-1126-33401" test="cda:entryRelationship/cda:observation[count(cda:code)=1]">This observation SHALL contain exactly one [1..1] code (CONF:1126-33401).</sch:assert>
			<sch:assert id="a-1126-33402" test="cda:entryRelationship/cda:observation/cda:code[@code='21908-9' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21908-9" Stage group.clinical (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33402).</sch:assert>
			<sch:assert id="a-1126-33403" test="cda:entryRelationship/cda:observation/cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33403).</sch:assert>
			<sch:assert id="a-1126-33404" test="cda:entryRelationship/cda:observation[count(cda:statusCode)=1]">This observation SHALL contain exactly one [1..1] statusCode (CONF:1126-33404).</sch:assert>
			<sch:assert id="a-1126-33405" test="cda:entryRelationship/cda:observation/cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14) (CONF:1126-33405).</sch:assert>
			<sch:assert id="a-1126-33406" test="cda:entryRelationship/cda:observation[count(cda:value[@xsi:type='CD'])=1]">This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33406).</sch:assert>
			<sch:assert id="a-1126-33407" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Stage Group 2.16.840.1.113883.3.520.4.9 DYNAMIC (CONF:1126-33407).</sch:assert>
			<sch:assert id="a-1126-33412-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33412).</sch:assert>
			<sch:assert id="a-1126-33413" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][count(cda:qualifier)=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1126-33413).</sch:assert>
			<sch:assert id="a-1126-33414" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier[count(cda:name)=1]">This qualifier SHALL contain exactly one [1..1] name (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33414).</sch:assert>
			<sch:assert id="a-1126-33415" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier[count(cda:value)=1]">This qualifier SHALL contain exactly one [1..1] value (CONF:1126-33415).</sch:assert>
			<sch:assert id="a-1126-33418" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Stage Descriptor 2.16.840.1.113883.3.520.4.10 DYNAMIC (CONF:1126-33418).</sch:assert>
			<sch:assert id="a-1126-33421-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33421).</sch:assert>
			<sch:assert id="a-1126-33431" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:code[@code='21905-5'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.6'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33431) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Tumor (T). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33434). SHALL contain exactly one [1..1] observation (CONF:1126-33435). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33436). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33437). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33438). This code SHALL contain exactly one [1..1] @code="21905-5" Primary tumor.clinical [Class] Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33663). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33664). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33439). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Tumor 2.16.840.1.113883.3.520.4.6 (CONF:1126-33440). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33564). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33711).</sch:assert>
			<sch:assert id="a-1126-33432" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:code[@code='21906-3'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.7'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33432) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Node (N). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33445). SHALL contain exactly one [1..1] observation (CONF:1126-33446). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33447). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33448). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33449). This code SHALL contain exactly one [1..1] @code="21906-3" Regional lymph nodes.clinical [Class] Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33665). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33666). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33450). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Node 2.16.840.1.113883.3.520.4.7 (CONF:1126-33451). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33566). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.7" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33712).</sch:assert>
			<sch:assert id="a-1126-33433" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:code[@code='21907-1'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.8'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33433) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Metastasis (M). SHALL contain exactly one [1..1] observation (CONF:1126-33456). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33458). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33459). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33460). This code SHALL contain exactly one [1..1] @code="21907-1" Distant metastases.clinical [Class] Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33667). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33668). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33462). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Metastasis 2.16.840.1.113883.3.520.4.8 (CONF:1126-33463). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33568). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.8" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33713). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33457).</sch:assert>
			<sch:assert id="a-1126-33470" test="cda:entryRelationship[@typeCode='COMP']">This entryRelationship SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33470).</sch:assert>
			<sch:assert id="a-1126-33474" test="cda:entryRelationship/cda:observation[@classCode='OBS']">This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33474).</sch:assert>
			<sch:assert id="a-1126-33475" test="cda:entryRelationship/cda:observation[@moodCode='EVN']">This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33475).</sch:assert>
			<sch:assert id="a-1126-33559" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33559).</sch:assert>
			<sch:assert id="a-1126-33561" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33561).</sch:assert>
			<sch:assert id="a-1126-33659" test="cda:code[@code='75620-5' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75620-5" TNM clinical staging before treatment panel Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33659).</sch:assert>
			<sch:assert id="a-1126-33660" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33660).</sch:assert>
			<sch:assert id="a-1126-33709" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.9']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.9" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33709).</sch:assert>
			<sch:assert id="a-1126-33710" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.10']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.10" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33710).</sch:assert>
			<sch:assert id="a-1126-33781" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:code[@code='21910-5'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@code][@codeSystem='2.16.840.1.113883.3.520.3.4'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.4'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33781) such that it
Note: Identifies the role of the person who recorded the staging elements. SHALL contain exactly one [1..1] observation (CONF:1126-33782). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33783). This code SHALL contain exactly one [1..1] @code="21910-5" Stager.clinical Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33788). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33789). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33786). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33787). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33985). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet NAACCR TNM Clinical Staged By 2.16.840.1.113883.3.520.4.4 DYNAMIC (CONF:1126-33989). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.3.520.3.4" NAACCR TNM Clinical Staged By (CONF:1126-33990). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.4" NAACCR TNM Clinical Staged By (CONF:1126-33991). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33785).</sch:assert>
			<sch:assert id="a-1126-34006" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@code='21909-7']">This name SHALL contain exactly one [1..1] @code="21909-7" Descriptor.clinical Cancer Narrative (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-34006).</sch:assert>
			<sch:assert id="a-1126-34007" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@codeSystem='2.16.840.1.113883.6.1']">This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1126-34007).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-32494" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.5'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-32494) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.5" (CONF:1126-32508). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33976).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49686-branch-49686-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33444-branch-49686-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33444).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49686-branch-49686-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21905-5'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.6']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49686-branch-49686-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49687-branch-49687-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33455-branch-49687-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33455).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49687-branch-49687-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21906-3'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.7']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49687-branch-49687-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49688-branch-49688-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33467-branch-49688-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33467).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49688-branch-49688-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21907-1'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.8']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49688-branch-49688-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-59172-branch-59172-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33992-branch-59172-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33992).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-59172-branch-59172-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[cda:code[@code='21910-5'][@codeSystem='2.16.840.1.113883.6.1']][@classCode='OBS'][@moodCode='EVN'][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.3.520.3.4'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.4']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-59172-branch-59172-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33250" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.21'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33250) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.21" (CONF:1126-33251). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33951).</sch:assert>
			<sch:assert id="a-1126-33252" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-33252).</sch:assert>
			<sch:assert id="a-1126-33253" test="cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Problem Concern Act (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.22:2014-08-08) (CONF:1126-33253).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-CLOSEDTEMPLATE">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL-abstract" abstract="true">
			<sch:assert id="a-1126-4278-CL" test="count(.//cda:templateId[not(@root = '2.16.840.1.113883.10.13.21' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.13.22' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.13.23' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09')])=0">'urn:hl7ii:2.16.840.1.113883.10.13.21:2014-08-08' is a closed template, only defined templates are allowed.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32678" test="count(cda:entry[count(cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32678) such that it SHALL contain exactly one [1..1] Planned Encounter (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.20:2014-08-08) (CONF:1126-32679).</sch:assert>
			<sch:assert id="a-1126-33020" test="count(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-33020) such that it SHALL contain exactly one [1..1] Planned Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.42:2014-06-09) (CONF:1126-33021).</sch:assert>
			<sch:assert id="a-1126-33022" test="count(cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-33022) such that it SHALL contain exactly one [1..1] Planned Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09) (CONF:1126-33023).</sch:assert>
			<sch:assert id="a-1126-33056" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.9'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33056) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.9" (CONF:1126-33057). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33950).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32699" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32699) such that it SHALL contain exactly one [1..1] Employment History Observation Organizer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.16:2014-08-08) (CONF:1126-32700).</sch:assert>
			<sch:assert id="a-1126-33060" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.11'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33060) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.11" (CONF:1126-33061). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33954).</sch:assert>
			<sch:assert id="a-1126-33884" test="not(Not_Tested_Now)">SHALL NOT contain [0..0] entry (CONF:1126-33884) such that it SHALL NOT contain [0..0] Social History Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.38:2014-06-09) (CONF:1126-33889).</sch:assert>
			<sch:assert id="a-1126-33885" test="not(Not_Tested_Now)">SHALL NOT contain [0..0] entry (CONF:1126-33885) such that it SHALL NOT contain [0..0] Characteristics of Home Environment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.109) (CONF:1126-33890).</sch:assert>
			<sch:assert id="a-1126-33886" test="not(Not_Tested_Now)">SHALL NOT contain [0..0] entry (CONF:1126-33886) such that it SHALL NOT contain [0..0] Cultural and Religious Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.111) (CONF:1126-33891).</sch:assert>
			<sch:assert id="a-1126-33887" test="not(Not_Tested_Now)">SHALL NOT contain [0..0] entry (CONF:1126-33887) such that it SHALL NOT contain [0..0] Caregiver Characteristics (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.72) (CONF:1126-33892).</sch:assert>
			<sch:assert id="a-1126-33888" test="not(Not_Tested_Now)">SHALL NOT contain [0..0] entry (CONF:1126-33888) such that it SHALL NOT contain [0..0] Pregnancy Observation (identifier: urn:oid:2.16.840.1.113883.10.20.15.3.8) (CONF:1126-33893).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32666" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32666).</sch:assert>
			<sch:assert id="a-1126-32667" test="cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Medication Activity (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.14:2014-08-08) (CONF:1126-32667).</sch:assert>
			<sch:assert id="a-1126-33064" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.13'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33064) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.13" (CONF:1126-33065). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33949).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32662" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32662).</sch:assert>
			<sch:assert id="a-1126-32663" test="cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Medication Activity (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.14:2014-08-08) (CONF:1126-32663).</sch:assert>
			<sch:assert id="a-1126-33062" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.12'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33062) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.12" (CONF:1126-33063). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33948).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32676" test="count(cda:entry) &gt; 0">SHALL contain at least one [1..*] entry (CONF:1126-32676).</sch:assert>
			<sch:assert id="a-1126-32677" test="cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']])=1]">Such entries SHALL contain exactly one [1..1] Procedure Activity Procedure (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.15:2014-08-08) (CONF:1126-32677).</sch:assert>
			<sch:assert id="a-1126-33058" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.10'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33058) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.10" (CONF:1126-33059). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33952).</sch:assert>
			<sch:assert id="a-1126-33579" test="count(cda:component)=1">SHALL contain exactly one [1..1] component (CONF:1126-33579).</sch:assert>
			<sch:assert id="a-1126-33580" test="cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']])=1]">This component SHALL contain exactly one [1..1] Radiation Oncology Section (identifier: urn:hl7ii:2.16.840.1.113883.10.13.24:2014-08-08) (CONF:1126-33580).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32641" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-32641).</sch:assert>
			<sch:assert id="a-1126-32642" test="cda:templateId[@root='2.16.840.1.113883.10.13.24']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.24" (CONF:1126-32642).</sch:assert>
			<sch:assert id="a-1126-32643" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-32643).</sch:assert>
			<sch:assert id="a-1126-32644" test="cda:code[@code='34832-6' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="34832-6" Radiation Oncology Note (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-32644).</sch:assert>
			<sch:assert id="a-1126-32645" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1126-32645).</sch:assert>
			<sch:assert id="a-1126-32646" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1126-32646).</sch:assert>
			<sch:assert id="a-1126-33395" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entry (CONF:1126-33395) such that it SHALL contain exactly one [1..1] Radiation Regional Treatment Modality Organizer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.29:2014-08-08) (CONF:1126-33653).</sch:assert>
			<sch:assert id="a-1126-33652" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entry (CONF:1126-33652) such that it SHALL contain exactly one [1..1] Radiation Boost Modality Organizer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.30:2014-08-08) (CONF:1126-33654).</sch:assert>
			<sch:assert id="a-1126-33953" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33953).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32664" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-32664) such that it
Note: The reason for administering medication SHALL be provided for all cancer-related medications. The reason for administering medication MAY be provided for all NON-cancer-related medications. If the reason is not known, then appropriate nullFlavor SHALL be used. SHALL contain exactly one [1..1] @typeCode="RSON" (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-32665). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33211).</sch:assert>
			<sch:assert id="a-1126-33066" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.14'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33066) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.14" (CONF:1126-33067). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33959).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32672" test="count(cda:participant[@typeCode='LOC'][count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]) &gt; 0">SHALL contain at least one [1..*] participant (CONF:1126-32672) such that it SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90) (CONF:1126-32673). SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33024).</sch:assert>
			<sch:assert id="a-1126-33068" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.15'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33068) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.15" (CONF:1126-33069). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33965).</sch:assert>
			<sch:assert id="a-1126-33212" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33212) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002 STATIC) (CONF:1126-33213). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33214).</sch:assert>
			<sch:assert id="a-1126-33248" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-33248).</sch:assert>
			<sch:assert id="a-1126-33249" test="cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1126-33249).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33929-branch-61244" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:id[@root='2.16.840.1.113883.4.6']) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33929) such that it SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33932).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32701" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" (CONF:1126-32701).</sch:assert>
			<sch:assert id="a-1126-32702" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1126-32702).</sch:assert>
			<sch:assert id="a-1126-32704" test="count(cda:component[count(cda:observation[count(cda:code[@code='21844-6'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1])=1">SHALL contain exactly one [1..1] component (CONF:1126-32704) such that it SHALL contain exactly one [1..1] observation (CONF:1126-32707). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-32710). This code SHALL contain exactly one [1..1] @code="21844-6" Usual Industry Hx (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33681). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33682).</sch:assert>
			<sch:assert id="a-1126-32712" test="count(cda:component[count(cda:observation[count(cda:code[@code='21843-8'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1])=1">SHALL contain exactly one [1..1] component (CONF:1126-32712) such that it SHALL contain exactly one [1..1] observation (CONF:1126-32715). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-32718). This code SHALL contain exactly one [1..1] @code="21843-8" Usual occupation Hx (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33683). This code MAY contain zero or one [0..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33684).</sch:assert>
			<sch:assert id="a-1126-33070" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33070).</sch:assert>
			<sch:assert id="a-1126-33071" test="cda:templateId[@root='2.16.840.1.113883.10.13.16']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.16" (CONF:1126-33071).</sch:assert>
			<sch:assert id="a-1126-33957" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33957).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47680-branch-47680-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32705-branch-47680" test="@typeCode='COMP'">SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:1126-32705).</sch:assert>
			<sch:assert id="a-1126-32706-branch-47680" test="@contextConductionInd='true'">SHALL contain exactly one [1..1] @contextConductionInd="true" (CONF:1126-32706).</sch:assert>
			<sch:assert id="a-1126-32708-branch-47680" test="cda:observation[@classCode='OBS']">This observation SHALL contain exactly one [1..1] @classCode="OBS" (CONF:1126-32708).</sch:assert>
			<sch:assert id="a-1126-32709-branch-47680" test="cda:observation[@moodCode='EVN']">This observation SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1126-32709).</sch:assert>
			<sch:assert id="a-1126-32711-branch-47680" test="cda:observation[count(cda:value[@xsi:type='CD'])=1]">This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-32711).</sch:assert>
			<sch:assert id="a-1126-33196-branch-47680" test="cda:observation[count(cda:effectiveTime)=1]">This observation SHALL contain exactly one [1..1] effectiveTime (CONF:1126-33196).
Note: If current industry information is provided, the effectiveTime/low SHALL be specified and effectiveTime/high SHALL NOT be specified. If historical industry information is provided, both effectiveTime/low and effectiveTime/high SHALL be specified. </sch:assert>
			<sch:assert id="a-1126-33675-branch-47680-c" test="cda:observation/cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet PHVS_Industry_CDC_Census2010 2.16.840.1.114222.4.11.7187 STATIC (CONF:1126-33675).</sch:assert>
			<sch:assert id="a-1126-33677-branch-47680-c" test="cda:observation/cda:value[@xsi:type='CD'][@displayName]">This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet PHVS_Industry_CDC_Census2010 2.16.840.1.114222.4.11.7187 STATIC (CONF:1126-33677).</sch:assert>
			<sch:assert id="a-1126-33699-branch-47680-c" test="not(Tested)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33699).</sch:assert>
			<sch:assert id="a-1126-33719-branch-47680" test="cda:observation/cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.114222.4.11.7187']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.114222.4.11.7187" (CodeSystem: Industry CDC Census 2010 2.16.840.1.114222.4.5.315) (CONF:1126-33719).</sch:assert>
			<sch:assert id="a-1126-34004-branch-47680" test="cda:observation/cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.114222.4.5.315']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.114222.4.5.315" Industry CDC Census 2010 (CodeSystem: Industry CDC Census 2010 2.16.840.1.114222.4.5.315) (CONF:1126-34004).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47680-branch-47680-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2014-08-08']]/cda:component[cda:observation[cda:code[@code='21844-6'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47680-branch-47680-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47688-branch-47688-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32713-branch-47688" test="@typeCode='COMP'">SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:1126-32713).</sch:assert>
			<sch:assert id="a-1126-32714-branch-47688" test="@contextConductionInd='true'">SHALL contain exactly one [1..1] @contextConductionInd="true" (CONF:1126-32714).</sch:assert>
			<sch:assert id="a-1126-32716-branch-47688" test="cda:observation[@classCode='OBS']">This observation SHALL contain exactly one [1..1] @classCode="OBS" (CONF:1126-32716).</sch:assert>
			<sch:assert id="a-1126-32717-branch-47688" test="cda:observation[@moodCode='EVN']">This observation SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1126-32717).</sch:assert>
			<sch:assert id="a-1126-32719-branch-47688" test="cda:observation[count(cda:value[@xsi:type='CD'])=1]">This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-32719).</sch:assert>
			<sch:assert id="a-1126-33199-branch-47688" test="cda:observation[count(cda:effectiveTime)=1]">This observation SHALL contain exactly one [1..1] effectiveTime (CONF:1126-33199).
Note: If current occupation information is provided, the effectiveTime/low SHALL be specified and effectiveTime/high SHALL NOT be specified.  If historical occupation information is provided, both effectiveTime/low and effectiveTime/high SHALL be specified. </sch:assert>
			<sch:assert id="a-1126-33678-branch-47688-c" test="cda:observation/cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet PHVS_Occupation_CDC_Census2010 2.16.840.1.114222.4.11.7186 STATIC (CONF:1126-33678).</sch:assert>
			<sch:assert id="a-1126-33679-branch-47688" test="cda:observation/cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.114222.4.5.314']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.114222.4.5.314" Occupation CDC Census 2010 (CodeSystem: Occupation CDC Census 2010 2.16.840.1.114222.4.5.314) (CONF:1126-33679).</sch:assert>
			<sch:assert id="a-1126-33680-branch-47688-c" test="cda:observation/cda:value[@xsi:type='CD'][@displayName]">This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet PHVS_Occupation_CDC_Census2010 2.16.840.1.114222.4.11.7186 STATIC (CONF:1126-33680).</sch:assert>
			<sch:assert id="a-1126-33700-branch-47688-c" test="not(Tested)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33700).</sch:assert>
			<sch:assert id="a-1126-33720-branch-47688" test="cda:observation/cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.114222.4.11.7186']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.114222.4.11.7186" (CodeSystem: Occupation CDC Census 2010 2.16.840.1.114222.4.5.314) (CONF:1126-33720).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47688-branch-47688-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2014-08-08']]/cda:component[cda:observation[cda:code[@code='21843-8'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47688-branch-47688-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33121" test="count(cda:statusCode[@code='completed'])=1">SHALL contain exactly one [1..1] statusCode="completed" (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1126-33121).</sch:assert>
			<sch:assert id="a-1126-33122" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-33122).</sch:assert>
			<sch:assert id="a-1126-33123" test="cda:effectiveTime[count(cda:low)=1]">The effectiveTime/low documents when detailed site-specific information on the progression of disease for the cancer/tumor was recorded.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1126-33123).</sch:assert>
			<sch:assert id="a-1126-33151" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1126-33151).</sch:assert>
			<sch:assert id="a-1126-33167" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1126-33167).</sch:assert>
			<sch:assert id="a-1126-33168" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33168).</sch:assert>
			<sch:assert id="a-1126-33169" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-33169).</sch:assert>
			<sch:assert id="a-1126-33170" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33170).</sch:assert>
			<sch:assert id="a-1126-33468" test="count(cda:entryRelationship)=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33468).
Note: This entryRelationship provides information on the TNM Clinical Stage.</sch:assert>
			<sch:assert id="a-1126-33469" test="cda:entryRelationship[count(cda:observation)=1]">This entryRelationship SHALL contain exactly one [1..1] observation (CONF:1126-33469).</sch:assert>
			<sch:assert id="a-1126-33471" test="cda:entryRelationship[@typeCode='COMP']">This entryRelationship SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33471).</sch:assert>
			<sch:assert id="a-1126-33472" test="cda:entryRelationship/cda:observation[@classCode='OBS']">This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33472).</sch:assert>
			<sch:assert id="a-1126-33473" test="cda:entryRelationship/cda:observation[@moodCode='EVN']">This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33473).</sch:assert>
			<sch:assert id="a-1126-33476" test="cda:entryRelationship/cda:observation[count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1]">This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33476).</sch:assert>
			<sch:assert id="a-1126-33477" test="cda:entryRelationship/cda:observation/cda:code[@code='21902-2']">This code SHALL contain exactly one [1..1] @code="21902-2" Stage group.pathology Cancer (CONF:1126-33477).</sch:assert>
			<sch:assert id="a-1126-33478" test="cda:entryRelationship/cda:observation/cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:1126-33478).</sch:assert>
			<sch:assert id="a-1126-33479" test="cda:entryRelationship/cda:observation[count(cda:statusCode)=1]">This observation SHALL contain exactly one [1..1] statusCode (CONF:1126-33479).</sch:assert>
			<sch:assert id="a-1126-33480" test="cda:entryRelationship/cda:observation/cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14) (CONF:1126-33480).</sch:assert>
			<sch:assert id="a-1126-33481" test="cda:entryRelationship/cda:observation[count(cda:value[@xsi:type='CD'])=1]">This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33481).</sch:assert>
			<sch:assert id="a-1126-33482" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Stage Group 2.16.840.1.113883.3.520.4.20 DYNAMIC (CONF:1126-33482).</sch:assert>
			<sch:assert id="a-1126-33487-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33487).</sch:assert>
			<sch:assert id="a-1126-33488" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][count(cda:qualifier)=1]">This value SHALL contain exactly one [1..1] qualifier (CONF:1126-33488).</sch:assert>
			<sch:assert id="a-1126-33489" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier[count(cda:name)=1]">This qualifier SHALL contain exactly one [1..1] name (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33489).</sch:assert>
			<sch:assert id="a-1126-33490" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier[count(cda:value)=1]">This qualifier SHALL contain exactly one [1..1] value (CONF:1126-33490).</sch:assert>
			<sch:assert id="a-1126-33494-c" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@code]">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Stage Descriptor 2.16.840.1.113883.3.520.4.21 (CONF:1126-33494).</sch:assert>
			<sch:assert id="a-1126-33496-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33496).</sch:assert>
			<sch:assert id="a-1126-33506" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:value[@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.17'])=1][count(cda:code[@code='21899-0'][@codeSystem='2.16.840.1.113883.6.1'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33506) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Tumor (T). SHALL contain exactly one [1..1] observation (CONF:1126-33507). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33509). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33510). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33511). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Tumor 2.16.840.1.113883.3.520.4.17 (CONF:1126-33516). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33570). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.17" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33716). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33515). This code SHALL contain exactly one [1..1] @code="21899-0" Primary tumor.pathology Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33669). This code MAY contain zero or one [0..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33670). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33508).</sch:assert>
			<sch:assert id="a-1126-33518" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:code[@code='21900-6'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.18'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33518) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Node (N). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33519). SHALL contain exactly one [1..1] observation (CONF:1126-33520). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33521). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33522). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33523). This code SHALL contain exactly one [1..1] @code="21900-6" Regional lymph nodes.pathology [Class] Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33671). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33672). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33524). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Node 2.16.840.1.113883.3.520.4.18 (CONF:1126-33528). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33572). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.18" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33717).</sch:assert>
			<sch:assert id="a-1126-33530" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:code[@code='21901-4'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.19'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33530) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Metastasis (M). SHALL contain exactly one [1..1] observation (CONF:1126-33531). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33533). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33534). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33535). This code MAY contain zero or one [0..1] @code="21901-4" Distant metastases.pathology [Class] Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33673). This code MAY contain zero or one [0..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33674). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33536). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Metastasis 2.16.840.1.113883.3.520.4.19 (CONF:1126-33540). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33574). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.19" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33718). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33532).</sch:assert>
			<sch:assert id="a-1126-33558" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33558).</sch:assert>
			<sch:assert id="a-1126-33560" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@codeSystem='2.16.840.1.113883.15.6']">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33560).</sch:assert>
			<sch:assert id="a-1126-33657" test="cda:code[@code='75621-3' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75621-3" TNM pathologic staging after surgery panel Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33657).</sch:assert>
			<sch:assert id="a-1126-33658" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33658).</sch:assert>
			<sch:assert id="a-1126-33714" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.20']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.20" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33714).</sch:assert>
			<sch:assert id="a-1126-33715" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.21']">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.21" (CodeSystem: TNM 7. Edition 2.16.840.1.113883.15.6) (CONF:1126-33715).</sch:assert>
			<sch:assert id="a-1126-33793" test="cda:entryRelationship/cda:observation[count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[@classCode='OBS'][@moodCode='EVN'][count(cda:code[@code='21904-8'][@codeSystem='2.16.840.1.113883.6.1'])=1][count(cda:value[@code][@codeSystem='2.16.840.1.113883.3.520.3.17'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.27'])=1])=1])=1]">This observation SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33793) such that it
Note: Identifies the role of the person who recorded the staging elements. SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33794). SHALL contain exactly one [1..1] observation (CONF:1126-33795). This observation SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33796). This code SHALL contain exactly one [1..1] @code="21904-8" Stager.pathology Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33801). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33802). This observation SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33799). This observation SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33800). This observation SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33993). This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet NAACCR TNM Pathologic Staged By 2.16.840.1.113883.3.520.4.27 DYNAMIC (CONF:1126-33997). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.3.520.3.17" NAACCR TNM Pathologic Staged By (CONF:1126-33998). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.27" NAACCR TNM Pathologic Staged By (CONF:1126-33999).</sch:assert>
			<sch:assert id="a-1126-34008" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@code='21903-0']">This name SHALL contain exactly one [1..1] @code="21903-0" Descriptor.pathology Cancer Narrative (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-34008).</sch:assert>
			<sch:assert id="a-1126-34009" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:name[@codeSystem='2.16.840.1.113883.6.1']">This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1126-34009).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-33117" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.7'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33117) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.7" (CONF:1126-33149). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33977).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49761-branch-49761-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33517-branch-49761-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33517).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49761-branch-49761-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.17']][cda:code[@code='21899-0'][@codeSystem='2.16.840.1.113883.6.1']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49761-branch-49761-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49773-branch-49773-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33529-branch-49773-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33529).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49773-branch-49773-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21900-6'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.18']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49773-branch-49773-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49785-branch-49785-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33541-branch-49785-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33541).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49785-branch-49785-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21901-4'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.19']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49785-branch-49785-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-59184-branch-59184-errors-abstract" abstract="true">
			<sch:assert id="a-1126-34000-branch-59184-c" test="count(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:qualifier/cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-34000).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-59184-branch-59184-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[cda:code[@code='21904-8'][@codeSystem='2.16.840.1.113883.6.1']][@classCode='OBS'][@moodCode='EVN'][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.3.520.3.17'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.27']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-59184-branch-59184-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33204" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1126-33204).</sch:assert>
			<sch:assert id="a-1126-33205" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33205).</sch:assert>
			<sch:assert id="a-1126-33215" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-33215).
Note: The "id" is intended to reference a problem recorded in the Problem Observation, Medication Activity, Procedure Activity, Radiation Boost Modality Procedure, and Radiation Regional Treatment Modality Procedure, by matching the Observation's id element. When a related problem has not been recorded, then use a null flavor such as "NA"  on this id element to indicate there is not a related problem documented (@nullFlavor="NA").</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-33202" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.19'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33202) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.19" (CONF:1126-33206). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33958).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33216" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.20'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33216) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.20" (CONF:1126-33217). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33962).</sch:assert>
			<sch:assert id="a-1126-33218" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:1126-33218).</sch:assert>
			<sch:assert id="a-1126-33219" test="@moodCode">SHALL contain exactly one [1..1] @moodCode (CONF:1126-33219).</sch:assert>
			<sch:assert id="a-1126-33220" test="count(cda:performer[@typeCode='PRF'][count(cda:assignedEntity)=1])=1">SHALL contain exactly one [1..1] performer (CONF:1126-33220) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33937). SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90) (CONF:1126-33980).</sch:assert>
			<sch:assert id="a-1126-33222" test="count(cda:participant[@typeCode='LOC'][count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]) &gt; 0">SHALL contain at least one [1..*] participant (CONF:1126-33222) such that it SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90) (CONF:1126-33982). SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33983).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33938-branch-49430" test="cda:assignedEntity[count(cda:id[@root='2.16.840.1.113883.4.6']) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33938) such that it SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33941).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.22'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.22" (CONF:1126-33256). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33963).</sch:assert>
			<sch:assert id="a-1126-33255" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33255).</sch:assert>
			<sch:assert id="a-1126-33257" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33257).</sch:assert>
			<sch:assert id="a-1126-33258" test="count(cda:entryRelationship[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33258) such that it SHALL contain exactly one [1..1] Problem Observation (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.23:2014-08-08) (CONF:1126-33260).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-49474-branch-49474-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33259-branch-49474" test="@typeCode='SUBJ'">SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33259).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-49474-branch-49474-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-49474-branch-49474-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33261" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33261).</sch:assert>
			<sch:assert id="a-1126-33262" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33262).</sch:assert>
			<sch:assert id="a-1126-33263" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.23'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33263) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.23" (CONF:1126-33264). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33964).</sch:assert>
			<sch:assert id="a-1126-33265" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33265).</sch:assert>
			<sch:assert id="a-1126-33267" test="cda:value[@xsi:type='CD'][@code]">This value SHALL contain exactly one [1..1] @code (CONF:1126-33267).</sch:assert>
			<sch:assert id="a-1126-33268-c" test="not(Tested)">@code in a problem observation *SHALL* be selected from: 
(a) *Problem Value Set* (Value Set OID: 2.16.840.1.113883.3.88.12.3221.7.4) or
(b) *ICD-10-CM* (CodeSystem: 2.16.840.1.113883.6.90) or
(c) *ICD-9-CM* (CodeSystem: 2.16.840.1.113883.6.103)
* (CONF:1126-33268).
Note: Problem Value Set a subset of SNOMED CT CodeSystem: 2.16.840.1.113883.6.96).</sch:assert>
			<sch:assert id="a-1126-33269" test="cda:value[@xsi:type='CD'][@codeSystem]">This value SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33269).</sch:assert>
			<sch:assert id="a-1126-33270" test="cda:value[@xsi:type='CD'][@displayName]">This value SHALL contain exactly one [1..1] @displayName (CONF:1126-33270).</sch:assert>
			<sch:assert id="a-1126-33271-c" test="not(Tested)">@displayName associated with the code for problem *SHALL* be selected from: 
(a) *Problem Value Set* (Value Set OID: 2.16.840.1.113883.3.88.12.3221.7.4) or
(b) *ICD-10-CM* (CodeSystem: 2.16.840.1.113883.6.90) or
(c) *ICD-9-CM* (CodeSystem: 2.16.840.1.113883.6.103)
* (CONF:1126-33271).</sch:assert>
			<sch:assert id="a-1126-33601-c" test="cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.90'] or cda:code[@codeSystem='2.16.840.1.113883.6.103']">@codeSystem associated with the code for problem *SHALL* be selected from: 
(a) *SNOMED-CT* (Code System: 2.16.840.1.113883.6.96) or
(b) *ICD-10-CM* (CodeSystem: 2.16.840.1.113883.6.90) or
(c) *ICD-9-CM* (CodeSystem: 2.16.840.1.113883.6.103)
* (CONF:1126-33601).
Note: Problem Value Set a subset of SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33317" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33317).</sch:assert>
			<sch:assert id="a-1126-33318" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33318).</sch:assert>
			<sch:assert id="a-1126-33319" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1126-33319).</sch:assert>
			<sch:assert id="a-1126-33321" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33321).</sch:assert>
			<sch:assert id="a-1126-33322" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33322).</sch:assert>
			<sch:assert id="a-1126-33323" test="cda:templateId[@root='2.16.840.1.113883.10.13.27']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.27" (CONF:1126-33323).</sch:assert>
			<sch:assert id="a-1126-33324" test="cda:code[@code='21958-4' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21958-4" Regional radiation treatment Dose (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33324).</sch:assert>
			<sch:assert id="a-1126-33325" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33325).</sch:assert>
			<sch:assert id="a-1126-33326" test="cda:value[@xsi:type='PQ'][@value]">This value SHALL contain exactly one [1..1] @value (CONF:1126-33326).</sch:assert>
			<sch:assert id="a-1126-33327" test="cda:value[@xsi:type='PQ'][not(@unit='cGy') or @unit='cGy']">This value SHALL contain zero or one [0..1] @unit="cGy" centiGray (CodeSystem: UCUM 2.16.840.1.113883.6.8) (CONF:1126-33327).</sch:assert>
			<sch:assert id="a-1126-33584" test="not(cda:statusCode) or cda:statusCode[@code='completed']">The statusCode, if present, SHALL contain exactly one [1..1] @code="completed" Completed (CONF:1126-33584).</sch:assert>
			<sch:assert id="a-1126-33971" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33971).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33328" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33328).</sch:assert>
			<sch:assert id="a-1126-33329" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33329).
Note: Procedure code that identifies the radiation treatment—boost modality used to deliver the most clinically significant dose to the primary volume of interest during the first course of treatment.</sch:assert>
			<sch:assert id="a-1126-33335" test="not(cda:performer) or cda:performer[count(cda:assignedEntity)=1]">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33335).</sch:assert>
			<sch:assert id="a-1126-33339" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" procedure (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33339).</sch:assert>
			<sch:assert id="a-1126-33340" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33340).</sch:assert>
			<sch:assert id="a-1126-33341" test="cda:templateId[@root='2.16.840.1.113883.10.13.26']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.26" (CONF:1126-33341).</sch:assert>
			<sch:assert id="a-1126-33342" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-33342).</sch:assert>
			<sch:assert id="a-1126-33343-c" test="count(cda:code/cda:originalText/cda:reference[@value])=0 or starts-with(cda:code/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33343).</sch:assert>
			<sch:assert id="a-1126-33345" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-33345).</sch:assert>
			<sch:assert id="a-1126-33347" test="not(cda:targetSiteCode) or cda:targetSiteCode[@code]">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1126-33347).</sch:assert>
			<sch:assert id="a-1126-33348" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33348).</sch:assert>
			<sch:assert id="a-1126-33349" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHALL contain exactly one [1..1] addr (CONF:1126-33349).</sch:assert>
			<sch:assert id="a-1126-33350" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:telecom)=1]">This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:1126-33350).</sch:assert>
			<sch:assert id="a-1126-33351" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHALL contain at least one [1..*] id (CONF:1126-33351).</sch:assert>
			<sch:assert id="a-1126-33353" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:telecom)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1126-33353).</sch:assert>
			<sch:assert id="a-1126-33354" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:addr)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1126-33354).</sch:assert>
			<sch:assert id="a-1126-33355" test="not(cda:participant) or cda:participant[@typeCode='LOC']">The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" location (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90) (CONF:1126-33355).</sch:assert>
			<sch:assert id="a-1126-33356" test="not(cda:participant) or cda:participant[count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]">The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33356).</sch:assert>
			<sch:assert id="a-1126-33392" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33392) such that it SHALL contain exactly one [1..1] @typeCode="RSON" has reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33393). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33394).</sch:assert>
			<sch:assert id="a-1126-33587-c" test="count(cda:code[@code])=1">This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping 2.16.840.1.113883.3.520.4.23 (CONF:1126-33587).</sch:assert>
			<sch:assert id="a-1126-33588" test="cda:code[@codeSystem]">This code SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33588).</sch:assert>
			<sch:assert id="a-1126-33590-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4']">This codeSystem in a Radiation Regional Treatment Modality SHOULD be selected from HCPCS (CodeSystem: 2.16.840.1.113883.6.14) and MAY be selected from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1126-33590).</sch:assert>
			<sch:assert id="a-1126-33591" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1126-33591).</sch:assert>
			<sch:assert id="a-1126-33592" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:low)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1126-33592).</sch:assert>
			<sch:assert id="a-1126-33593" test="not(cda:targetSiteCode) or cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.96']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:1126-33593).</sch:assert>
			<sch:assert id="a-1126-33661-c" test="count(cda:code[@displayName])=1">This code SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping 2.16.840.1.113883.3.520.4.23 (CONF:1126-33661).</sch:assert>
			<sch:assert id="a-1126-33721" test="not(cda:targetSiteCode) or cda:targetSiteCode[@sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.88.12.3221.8.9" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:1126-33721).</sch:assert>
			<sch:assert id="a-1126-33724" test="cda:code[@sdtc:valueSet='2.16.840.1.113883.3.520.4.23']">This code SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.23" (CONF:1126-33724).</sch:assert>
			<sch:assert id="a-1126-33970" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33970).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33361" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33361).</sch:assert>
			<sch:assert id="a-1126-33362" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33362).
Note: Procedure code that identifies the dominant modality of radiation therapy used to deliver the clinically most significant regional dose to the primary volume of interest during the first course of treatment.</sch:assert>
			<sch:assert id="a-1126-33368" test="not(cda:performer) or cda:performer[count(cda:assignedEntity)=1]">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33368).</sch:assert>
			<sch:assert id="a-1126-33371" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1]) &gt; 0">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33371) such that it SHALL contain exactly one [1..1] @typeCode="RSON" has reason (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33390). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33391).</sch:assert>
			<sch:assert id="a-1126-33372" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33372).</sch:assert>
			<sch:assert id="a-1126-33373" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33373).</sch:assert>
			<sch:assert id="a-1126-33374" test="cda:templateId[@root='2.16.840.1.113883.10.13.25']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.25" (CONF:1126-33374).</sch:assert>
			<sch:assert id="a-1126-33375" test="count(cda:id) &gt; 0">SHALL contain at least one [1..*] id (CONF:1126-33375).</sch:assert>
			<sch:assert id="a-1126-33376-c" test="count(cda:value/cda:originalText/cda:reference[@value])=0 or starts-with(cda:value/cda:originalText/cda:reference/@value, '#')">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33376).</sch:assert>
			<sch:assert id="a-1126-33378" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-33378).</sch:assert>
			<sch:assert id="a-1126-33380" test="not(cda:targetSiteCode) or cda:targetSiteCode[@code]">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1126-33380).</sch:assert>
			<sch:assert id="a-1126-33381" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33381).</sch:assert>
			<sch:assert id="a-1126-33382" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:addr)=1]">This assignedEntity SHALL contain exactly one [1..1] addr (CONF:1126-33382).</sch:assert>
			<sch:assert id="a-1126-33383" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:telecom)=1]">This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:1126-33383).</sch:assert>
			<sch:assert id="a-1126-33384" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHALL contain at least one [1..*] id (CONF:1126-33384).</sch:assert>
			<sch:assert id="a-1126-33386" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:telecom)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1126-33386).</sch:assert>
			<sch:assert id="a-1126-33387" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:addr)=1]">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1126-33387).</sch:assert>
			<sch:assert id="a-1126-33388" test="not(cda:participant) or cda:participant[@typeCode='LOC']">The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" location (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90) (CONF:1126-33388).</sch:assert>
			<sch:assert id="a-1126-33389" test="not(cda:participant) or cda:participant[count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1]">The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33389).</sch:assert>
			<sch:assert id="a-1126-33594-c" test="count(cda:code[@code])=1">This code SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping 2.16.840.1.113883.3.520.4.23 (CONF:1126-33594).</sch:assert>
			<sch:assert id="a-1126-33595" test="cda:code[@codeSystem]">This code SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33595).</sch:assert>
			<sch:assert id="a-1126-33597-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4']">This codeSystem in a Radiation Regional Treatment Modality *SHOULD* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) *MAY* be selected from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1126-33597).</sch:assert>
			<sch:assert id="a-1126-33598" test="cda:statusCode[@code='completed']">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14 STATIC) (CONF:1126-33598).</sch:assert>
			<sch:assert id="a-1126-33599" test="not(cda:effectiveTime) or cda:effectiveTime[count(cda:low)=1]">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1126-33599).</sch:assert>
			<sch:assert id="a-1126-33600" test="not(cda:targetSiteCode) or cda:targetSiteCode[@codeSystem='2.16.840.1.113883.6.96']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:1126-33600).</sch:assert>
			<sch:assert id="a-1126-33662-c" test="count(cda:code[@displayName])=1">This code SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping 2.16.840.1.113883.3.520.4.23 (CONF:1126-33662).</sch:assert>
			<sch:assert id="a-1126-33722" test="not(cda:targetSiteCode) or cda:targetSiteCode[@sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9']">The targetSiteCode, if present, SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.88.12.3221.8.9" (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96) (CONF:1126-33722).</sch:assert>
			<sch:assert id="a-1126-33723" test="cda:code[@sdtc:valueSet='2.16.840.1.113883.3.520.4.23']">This code SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.23" (CONF:1126-33723).</sch:assert>
			<sch:assert id="a-1126-33975" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33975).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33621" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33621).</sch:assert>
			<sch:assert id="a-1126-33622" test="cda:templateId[@root='2.16.840.1.113883.10.13.28']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.28" (CONF:1126-33622).</sch:assert>
			<sch:assert id="a-1126-33626" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33626).</sch:assert>
			<sch:assert id="a-1126-33628" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1126-33628).</sch:assert>
			<sch:assert id="a-1126-33629" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33629).</sch:assert>
			<sch:assert id="a-1126-33630" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33630).</sch:assert>
			<sch:assert id="a-1126-33632" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" LOINC (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33632).</sch:assert>
			<sch:assert id="a-1126-33633" test="not(cda:statusCode) or cda:statusCode[@code='completed']">The statusCode, if present, SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus 2.16.840.1.113883.5.14) (CONF:1126-33633).</sch:assert>
			<sch:assert id="a-1126-33634" test="cda:value[@xsi:type='PQ'][@value]">This value SHALL contain exactly one [1..1] @value (CONF:1126-33634).</sch:assert>
			<sch:assert id="a-1126-33635" test="cda:value[@xsi:type='PQ'][@unit='cGy']">This value SHALL contain exactly one [1..1] @unit="cGy" centiGray (CodeSystem: UCUM 2.16.840.1.113883.6.8) (CONF:1126-33635).</sch:assert>
			<sch:assert id="a-1126-33966" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33966).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33636" test="count(cda:component) &gt; 0">SHALL contain at least one [1..*] component (CONF:1126-33636).</sch:assert>
			<sch:assert id="a-1126-33637" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" cluster (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33637).</sch:assert>
			<sch:assert id="a-1126-33638" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33638).</sch:assert>
			<sch:assert id="a-1126-33639" test="cda:component[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']])=1]">Such components SHALL contain exactly one [1..1] Radiation Regional Treatment Modality Procedure (identifier: urn:hl7ii:2.16.840.1.113883.10.13.25:2014-08-08) (CONF:1126-33639).</sch:assert>
			<sch:assert id="a-1126-33648" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33648).</sch:assert>
			<sch:assert id="a-1126-33649" test="cda:code[@code='21964-2' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="21964-2" Modality Radiation treatment (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33649).</sch:assert>
			<sch:assert id="a-1126-33650" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1 " LOINC (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33650).</sch:assert>
			<sch:assert id="a-1126-33651" test="cda:component[@typeCode='COMP']">Such components SHALL contain exactly one [1..1] @typeCode="COMP" component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33651).</sch:assert>
			<sch:assert id="a-1126-33972" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33972).</sch:assert>
			<sch:assert id="a-1126-33973" test="cda:templateId[@root='2.16.840.1.113883.10.13.29']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.29" (CONF:1126-33973).</sch:assert>
			<sch:assert id="a-1126-33974" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33974).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33640" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33640).</sch:assert>
			<sch:assert id="a-1126-33641" test="count(cda:component) &gt; 0">SHALL contain at least one [1..*] component (CONF:1126-33641).</sch:assert>
			<sch:assert id="a-1126-33642" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" cluster (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) (CONF:1126-33642).</sch:assert>
			<sch:assert id="a-1126-33643" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" event (CodeSystem: ActMood 2.16.840.1.113883.5.1001) (CONF:1126-33643).</sch:assert>
			<sch:assert id="a-1126-33644" test="cda:code[@code='42128-9' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="42128-9" Boost radiation treatment modality Radiation treatment (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33644).</sch:assert>
			<sch:assert id="a-1126-33645" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1 " LOINC (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33645).</sch:assert>
			<sch:assert id="a-1126-33646" test="cda:component[@typeCode='COMP']">Such components SHALL contain exactly one [1..1] @typeCode="COMP" component (CodeSystem: HL7ActRelationshipType 2.16.840.1.113883.5.1002) (CONF:1126-33646).</sch:assert>
			<sch:assert id="a-1126-33647" test="cda:component[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']])=1]">Such components SHALL contain exactly one [1..1] Radiation Boost Modality Procedure (identifier: urn:hl7ii:2.16.840.1.113883.10.13.26:2014-08-08) (CONF:1126-33647).</sch:assert>
			<sch:assert id="a-1126-33967" test="count(cda:templateId)=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33967).</sch:assert>
			<sch:assert id="a-1126-33968" test="cda:templateId[@root='2.16.840.1.113883.10.13.30']">This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.30" (CONF:1126-33968).</sch:assert>
			<sch:assert id="a-1126-33969" test="cda:templateId[@extension='2014-08-08']">This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33969).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33731" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33731).</sch:assert>
			<sch:assert id="a-1126-33772" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1126-33772).</sch:assert>
			<sch:assert id="a-1126-33773" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33773).</sch:assert>
			<sch:assert id="a-1126-33775" test="cda:code[@code='75620-5' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75620-5" TNM clinical staging before treatment panel Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33775).</sch:assert>
			<sch:assert id="a-1126-33776" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33776).</sch:assert>
			<sch:assert id="a-1126-33780" test="@negationInd='true'">SHALL contain exactly one [1..1] @negationInd="true" (CONF:1126-33780).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.31' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-33727" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.31'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33727) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.31" (CONF:1126-33769). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33960).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33809" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33809).</sch:assert>
			<sch:assert id="a-1126-33852" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:1126-33852).</sch:assert>
			<sch:assert id="a-1126-33853" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33853).</sch:assert>
			<sch:assert id="a-1126-33855" test="cda:code[@code='75621-3' and @codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @code="75621-3" TNM pathologic staging after surgery panel Cancer (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33855).</sch:assert>
			<sch:assert id="a-1126-33856" test="cda:code[@codeSystem='2.16.840.1.113883.6.1']">This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1126-33856).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.32' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-33805" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.32'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33805) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.32" (CONF:1126-33849). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33961).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings" context="cda:name[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.1']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract" abstract="true">
			<sch:assert id="a-81-7290" test="@use">SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse 2.16.840.1.113883.1.11.10637 STATIC 2005-05-01 (CONF:81-7290).</sch:assert>
			<sch:assert id="a-81-7293" test="count(cda:state[@xsi:type='ST'])=1">SHOULD contain zero or one [0..1] state (ValueSet: StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC) (CONF:81-7293).</sch:assert>
			<sch:assert id="a-81-7294" test="count(cda:postalCode)=1">SHOULD contain zero or one [0..1] postalCode, which SHOULD be selected from ValueSet PostalCode 2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:81-7294).</sch:assert>
			<sch:assert id="a-81-7295" test="count(cda:country)=1">SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country 2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:81-7295).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings" context="cda:addr[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.2']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings-abstract" abstract="true">
			<sch:assert id="a-81-7760" test="count(cda:addr) &gt; 0">SHOULD contain zero or more [0..*] addr (CONF:81-7760).</sch:assert>
			<sch:assert id="a-81-7761" test="count(cda:telecom) &gt; 0">SHOULD contain zero or more [0..*] telecom (CONF:81-7761).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings" context="cda:name[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.1.1']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings" context="cda:effectiveTime[cda:templateId[@root='2.16.840.1.113883.10.20.22.5.4']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-14823" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-14823) such that it SHALL contain exactly one [1..1] Smoking Status - Meaningful Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.78:2014-06-09) (CONF:1098-14824).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19221" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19221).</sch:assert>
			<sch:assert id="a-1098-19222" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-19222).</sch:assert>
			<sch:assert id="a-1098-19223" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-19223).</sch:assert>
			<sch:assert id="a-1098-8559" test="count(cda:value)=1">SHOULD contain zero or one [0..1] value (CONF:1098-8559).</sch:assert>
			<sch:assert id="a-1098-31869" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31869).</sch:assert>
			<sch:assert id="a-1098-8558-v" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (2.16.840.1.113883.6.1) DYNAMIC (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.38' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.38-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7513-c" test="count(cda:effectiveTime) = 2 and cda:effectiveTime[@operator='A'][@xsi:type='PIVL_TS' or @xsi:type='EIVL_TS']">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7513) such that it
Note: This effectiveTime represents the medication frequency (e.g., administration times per day). SHALL contain exactly one [1..1] @operator="A" (CONF:1098-9106).</sch:assert>
			<sch:assert id="a-1098-7514" test="count(cda:routeCode)=1">SHOULD contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet Medication Route FDA 2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:1098-7514).</sch:assert>
			<sch:assert id="a-1098-7526" test="cda:doseQuantity[@unit]">This doseQuantity SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7526).</sch:assert>
			<sch:assert id="a-1098-30800-c" test="count(cda:doseQuantity)=1 or count(cda:rateQuantity)=1">Medication Activity *SHOULD* include doseQuantity *OR* rateQuantity (CONF:1098-30800).</sch:assert>
			<sch:assert id="a-1098-31150" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31150).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-32775-branch-28494" test="@value">SHOULD contain zero or one [0..1] @value (CONF:1098-32775).
Note: indicates a single-administration timestamp</sch:assert>
			<sch:assert id="a-1098-32776-branch-28494" test="count(cda:low)=1">SHOULD contain zero or one [0..1] low (CONF:1098-32776).
Note: indicates when medication started</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]/cda:effectiveTime[@xsi:type='IVL_TS']">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-28494-branch-28494-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7795" test="count(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7795) such that it SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-10076).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-5375" test="cda:recordTarget/cda:patientRole/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-5375).</sch:assert>
			<sch:assert id="a-1098-5300-c" test="string-length(cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime/@value) &gt;= 8">*SHOULD* be precise to day (CONF:1098-5300).</sch:assert>
			<sch:assert id="a-1098-5303" test="cda:recordTarget/cda:patientRole/cda:patient[count(cda:maritalStatusCode)=1]">This patient SHOULD contain zero or one [0..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status 2.16.840.1.113883.1.11.12212 DYNAMIC (CONF:1098-5303).</sch:assert>
			<sch:assert id="a-1098-5326" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:guardian) or cda:recordTarget/cda:patientRole/cda:patient/cda:guardian[count(cda:code)=1]">The guardian, if present, SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet Personal And Legal Relationship Role Type 2.16.840.1.113883.11.20.12.1 DYNAMIC (CONF:1098-5326).</sch:assert>
			<sch:assert id="a-1098-5359-c" test="not(tested_here_yet)">The guardian, if present, SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5359).</sch:assert>
			<sch:assert id="a-1098-5382" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:guardian) or cda:recordTarget/cda:patientRole/cda:patient/cda:guardian[count(cda:telecom) &gt; 0]">The guardian, if present, SHOULD contain zero or more [0..*] telecom (CONF:1098-5382).</sch:assert>
			<sch:assert id="a-1098-7993" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:telecom) or cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:telecom[@use]">The telecom, if present, SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7993).</sch:assert>
			<sch:assert id="a-1098-5404" test="not(cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr) or cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr[count(cda:country)=1]">This addr SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country 2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:1098-5404).</sch:assert>
			<sch:assert id="a-1098-5402-c" test="count(cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr[cda:country='US' or cda:country='USA'][count(cda:state)!=1])=0">If country is US, this addr *SHOULD* contain zero to one [[]0..1[]] state, which *SHALL* be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 *DYNAMIC* (CONF:1098-5402).</sch:assert>
			<sch:assert id="a-1098-9965" test="cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication[count(cda:proficiencyLevelCode)=1]">Such languageCommunications SHOULD contain zero or one [0..1] proficiencyLevelCode, which SHALL be selected from ValueSet LanguageAbilityProficiency 2.16.840.1.113883.1.11.12199 DYNAMIC (CONF:1098-9965).</sch:assert>
			<sch:assert id="a-1098-5414" test="cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication[count(cda:preferenceInd)=1]">Such languageCommunications SHOULD contain zero or one [0..1] preferenceInd (CONF:1098-5414).</sch:assert>
			<sch:assert id="a-1098-16820" test="not(cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:id) or cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16820).</sch:assert>
			<sch:assert id="a-1098-7994" test="not(cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:telecom) or cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7994).</sch:assert>
			<sch:assert id="a-1098-16787" test="cda:author/cda:assignedAuthor[count(cda:code)=1]">Only if this assignedAuthor is an assignedPerson should the assignedAuthor contain a code.
This assignedAuthor SHOULD contain zero or one [0..1] code (CONF:1098-16787).</sch:assert>
			<sch:assert id="a-1098-7995" test="cda:author/cda:assignedAuthor/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7995).</sch:assert>
			<sch:assert id="a-1098-5430-c" test="not(tested-here)">This assignedAuthor SHOULD contain zero or one [0..1] assignedPerson (CONF:1098-5430).</sch:assert>
			<sch:assert id="a-1098-16783-c" test="not(tested-here)">This assignedAuthor SHOULD contain zero or one [0..1] assignedAuthoringDevice (CONF:1098-16783).</sch:assert>
			<sch:assert id="a-1098-16821" test="not(cda:dataEnterer/cda:assignedEntity/cda:id) or cda:dataEnterer/cda:assignedEntity/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16821).</sch:assert>
			<sch:assert id="a-1098-7996" test="not(cda:dataEnterer/cda:assignedEntity/cda:telecom) or cda:dataEnterer/cda:assignedEntity/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7996).</sch:assert>
			<sch:assert id="a-1098-9946-c" test="not(testable)">If assignedEntity/id is a provider then this id, *SHOULD* include zero or one [[]0..1[]] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-9946).</sch:assert>
			<sch:assert id="a-1098-16822" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16822).</sch:assert>
			<sch:assert id="a-1098-7998" test="cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:telecom[@use]">This telecom SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7998).</sch:assert>
			<sch:assert id="a-1098-5579" test="count(cda:legalAuthenticator)=1">Heading: legalAuthenticator
The legalAuthenticator identifies the single person legally responsible for the document and must be present if the document has been legally authenticated. A clinical document that does not contain this element has not been legally authenticated.
The act of legal authentication requires a certain privilege be granted to the legal authenticator depending upon local policy. Based on local practice, clinical documents may be released before legal authentication.  
All clinical documents have the potential for legal authentication, given the appropriate credentials.
Local policies MAY choose to delegate the function of legal authentication to a device or system that generates the clinical document. In these cases, the legal authenticator is a person accepting responsibility for the document, not the generating device or system.
Note that the legal authenticator, if present, must be a person.
SHOULD contain zero or one [0..1] legalAuthenticator (CONF:1098-5579).</sch:assert>
			<sch:assert id="a-1098-7999" test="not(cda:legalAuthenticator/cda:assignedEntity/cda:telecom) or cda:legalAuthenticator/cda:assignedEntity/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7999).</sch:assert>
			<sch:assert id="a-1098-14839" test="not(cda:documentationOf/cda:serviceEvent) or cda:documentationOf/cda:serviceEvent[count(cda:performer) &gt; 0]">Heading: performer (The performer participant represents clinicians who actually and principally carry out the serviceEvent. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patient’s key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors.)
This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:1098-14839).</sch:assert>
			<sch:assert id="a-1098-14847" test="not(cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:id) or cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-14847).</sch:assert>
			<sch:assert id="a-1098-14842" test="not(cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity) or cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity[count(cda:code)=1]">This assignedEntity SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-14842).</sch:assert>
			<sch:assert id="a-1098-32882-c" test="not(cda:author/cda:assignedAuthor/cda:assignedPerson) or cda:author/cda:assignedAuthor[count(cda:id[@root='2.16.840.1.113883.4.6'])=1]">If this assignedAuthor is an assignedPerson
This assignedAuthor SHOULD contain zero or one [0..1] id (CONF:1098-32882) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-32884).</sch:assert>
			<sch:assert id="a-1098-32889" test="not(cda:documentationOf/cda:serviceEvent/cda:performer/cda:functionCode) or cda:documentationOf/cda:serviceEvent/cda:performer/cda:functionCode[@code and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.10267']/voc:code/@value]">The functionCode, if present, SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet ParticipationFunction 2.16.840.1.113883.1.11.10267 STATIC 2014-09-01 (CONF:1098-32889).</sch:assert>
			<sch:assert id="a-1098-5259-v" test="count(cda:confidentialityCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.16926']/voc:code/@value])=1">SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:1098-X).</sch:assert>
			<sch:assert id="a-1098-16788-v" test="not(cda:author/cda:assignedAuthor/cda:code) or cda:author/cda:assignedAuthor/cda:code[@code]">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-29416-branch-29416-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-16824-branch-29416" test="not(cda:assignedEntity/cda:id) or cda:assignedEntity/cda:id[@root='2.16.840.1.113883.4.6']">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier  (CONF:1098-16824).</sch:assert>
			<sch:assert id="a-1098-8000-branch-29416" test="not(cda:assignedEntity/cda:telecom) or cda:assignedEntity/cda:telecom[@use]">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) 2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-8000).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-29416-branch-29416-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-29416-branch-29416-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-59066-branch-59066-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-32885-branch-59066" test="@extension">SHOULD contain zero or one [0..1] @extension (CONF:1098-32885).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-59066-branch-59066-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author[cda:assignedAuthor][cda:id[@root='2.16.840.1.113883.4.6']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-59066-branch-59066-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19186" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19186).</sch:assert>
			<sch:assert id="a-1098-19190-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4'] or cda:code[@codeSystem='2.16.840.1.113883.6.13']">This @code *SHOULD* be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and *MAY* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19190).</sch:assert>
			<sch:assert id="a-1098-8301" test="count(cda:performer) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1098-8301).</sch:assert>
			<sch:assert id="a-1098-8306" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-8306).</sch:assert>
			<sch:assert id="a-1098-8307" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-8307).</sch:assert>
			<sch:assert id="a-1098-32477" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain at least one [1..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32477).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.12' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.12-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19203" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19203).</sch:assert>
			<sch:assert id="a-1098-19204" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-19204).</sch:assert>
			<sch:assert id="a-1098-19205" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-19205).</sch:assert>
			<sch:assert id="a-1098-19207-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.104'] or cda:code[@codeSystem='2.16.840.1.113883.6.4'] or cda:code[@codeSystem='2.16.840.1.113883.6.13']">This @code *SHOULD* be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and *MAY* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19207).</sch:assert>
			<sch:assert id="a-1098-7662" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7662).</sch:assert>
			<sch:assert id="a-1098-7683" test="count(cda:targetSiteCode) &gt; 0">In the case of an implanted medical device, targetSiteCode is used to record the location of the device, in or on the patient's body.
SHOULD contain zero or more [0..*] targetSiteCode (CONF:1098-7683).</sch:assert>
			<sch:assert id="a-1098-7716" test="not(cda:specimen/cda:specimenRole) or cda:specimen/cda:specimenRole[count(cda:id) &gt; 0]">This specimenRole SHOULD contain zero or more [0..*] id (CONF:1098-7716).</sch:assert>
			<sch:assert id="a-1098-7718" test="count(cda:performer[count(cda:assignedEntity[count(cda:id) &gt; 0][count(cda:addr) &gt; 0][count(cda:telecom) &gt; 0])=1]) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1098-7718) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1098-7720). This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-7722). This assignedEntity SHALL contain at least one [1..*] addr (CONF:1098-7731). This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-7732).</sch:assert>
			<sch:assert id="a-1098-32479" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain at least one [1..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32479).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7733-branch-29746" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-7733).</sch:assert>
			<sch:assert id="a-1098-7734-branch-29746" test="not(cda:assignedEntity/cda:representedOrganization) or cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-7734).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:performer[cda:assignedEntity[cda:id][cda:addr][cda:telecom]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-29746-branch-29746-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19198" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19198).</sch:assert>
			<sch:assert id="a-1098-19199" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-19199).</sch:assert>
			<sch:assert id="a-1098-19200" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-19200).</sch:assert>
			<sch:assert id="a-1098-19202-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4'] or cda:code[@codeSystem='2.16.840.1.113883.6.13']">This @code *SHOULD* be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and *MAY* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19202).</sch:assert>
			<sch:assert id="a-1098-8246" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-8246).</sch:assert>
			<sch:assert id="a-1098-8250" test="count(cda:targetSiteCode) &gt; 0">SHOULD contain zero or more [0..*] targetSiteCode, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-8250).</sch:assert>
			<sch:assert id="a-1098-8251" test="count(cda:performer) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1098-8251).</sch:assert>
			<sch:assert id="a-1098-8256" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-8256).</sch:assert>
			<sch:assert id="a-1098-8257" test="not(cda:performer/cda:assignedEntity/cda:representedOrganization) or cda:performer/cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-8257).</sch:assert>
			<sch:assert id="a-1098-32478" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain at least one [1..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32478).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.13' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.13-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31147" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31147).</sch:assert>
			<sch:assert id="a-1098-9045-v" test="count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.88.12.3221.7.2']/voc:code/@value or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31146" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31146).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings">
		<!--Pattern is used in an implied relationship.-->
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7881" test="count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7881) such that it SHALL contain exactly one [1..1] Problem Concern Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2014-06-09) (CONF:1098-15505).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-30440" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30440).</sch:assert>
			<sch:assert id="a-1098-31032" test="count(cda:code)=1">Records the type of encounter ordered or recommended.
SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Encounter Planned 2.16.840.1.113883.11.20.9.52 DYNAMIC (CONF:1098-31032).</sch:assert>
			<sch:assert id="a-1098-32045" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">The author in a planned encounter represents the clinician who is requesting or planning the encounter.
SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32045).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-30447" test="count(cda:effectiveTime)=1">The effectiveTime in a planned procedure represents the time that the procedure should occur.
SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30447).</sch:assert>
			<sch:assert id="a-1098-31977-c" test="count(cda:code[@codeSystem])=0 or cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12'] or cda:code[@codeSystem='2.16.840.1.113883.6.4']">The procedure/code in a planned procedure *SHOULD* be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) *OR* SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and *MAY* be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) *OR* ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1098-31977).</sch:assert>
			<sch:assert id="a-1098-31979" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])=1">The author in a planned procedure represents the clinician who is requesting or planning the procedure.
SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31979).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-32046" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])=1">The author in a planned medication activity represents the clinician who is requesting or planning the medication activity.
SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32046).</sch:assert>
			<sch:assert id="a-1098-32133" test="not(cda:doseQuantity) or cda:doseQuantity[@unit]">The doseQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32133).</sch:assert>
			<sch:assert id="a-1098-32134" test="not(cda:rateQuantity) or cda:rateQuantity[@unit]">The rateQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32134).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7488" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7488).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31148" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31148).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7310" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-7310).</sch:assert>
			<sch:assert id="a-1098-7301-v" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result 2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7143" test="count(cda:value[@codeSystem='2.16.840.1.113883.6.96' or @nullFlavor])=1">SHOULD contain zero or one [0..1] value, which SHOULD be selected from CodeSystem SNOMED CT (2.16.840.1.113883.6.96) (CONF:1098-7143).</sch:assert>
			<sch:assert id="a-1098-7147" test="count(cda:interpretationCode) &gt; 0">SHOULD contain zero or more [0..*] interpretationCode (CONF:1098-7147).</sch:assert>
			<sch:assert id="a-1098-7149" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-7149).</sch:assert>
			<sch:assert id="a-1098-7150" test="count(cda:referenceRange) &gt; 0">SHOULD contain zero or more [0..*] referenceRange (CONF:1098-7150).</sch:assert>
			<sch:assert id="a-1098-32610-c" test="(cda:value[@xsi:type='CD'][@codeSystem=' 2.16.840.1.113883.6.96']) or not(cda:value[@xsi:type='CD'])">If Observation/value is a CD (*xsi:type*=*"CD"*) the value SHOULD be SNOMED-CT (CONF:1098-32610).</sch:assert>
			<sch:assert id="a-1098-7133-v" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (2.16.840.1.113883.6.1) (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings" context="cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7271" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7271) such that it SHALL contain exactly one [1..1] Vital Signs Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.26:2014-06-09) (CONF:1098-15517).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19218-c" test="cda:code[@codeSystem='2.16.840.1.113883.6.1'] or cda:code[@codeSystem='2.16.840.1.113883.6.96'] or cda:code[@codeSystem='2.16.840.1.113883.6.12']">*SHOULD* be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) *OR* SNOMED CT (codeSystem 2.16.840.1.113883.6.96), and *MAY* be selected from CPT-4 (codeSystem 2.16.840.1.113883.6.12) (CONF:1098-19218).</sch:assert>
			<sch:assert id="a-1098-31149" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31149).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31152" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]) &gt; 0">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31152).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7119" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7119) such that it SHALL contain exactly one [1..1] Result Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2014-06-09) (CONF:1098-15515).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8914-c" test="cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity[count(cda:code) &lt; 2]">This assignedEntity SHOULD contain zero or one [0..1] code (CONF:1098-8914).</sch:assert>
			<sch:assert id="a-1098-8912-c" test="cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity[count(cda:representedOrganization) &lt; 2]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-8912).</sch:assert>
			<sch:assert id="a-1098-8913-c" test="not(cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:representedOrganization) or cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:representedOrganization[count(cda:name) &lt; 2]">The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:1098-8913).</sch:assert>
			<sch:assert id="a-1098-8961" test="count(cda:performer[count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88'])=1][count(cda:assignedEntity[count(cda:code[@code='GUAR'][@codeSystem='2.16.840.1.113883.5.110'])=1])=1])=1">This performer represents the Guarantor.
SHOULD contain zero or one [0..1] performer="PRF" Performer (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:1098-8961) such that it SHALL contain exactly one [1..1] templateId (CONF:1098-16810). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.88" Guarantor Performer (CONF:1098-16811). SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8962). This assignedEntity SHALL contain exactly one [1..1] code (CONF:1098-8968). This code SHALL contain exactly one [1..1] @code="GUAR" Guarantor (CONF:1098-16096). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.110" (CONF:1098-32165).</sch:assert>
			<sch:assert id="a-1098-8963-c" test="count(cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']][count(cda:time) &lt; 2][count(cda:assignedEntity)=1]) &lt; 2">SHOULD contain zero or one [0..1] time (CONF:1098-8963).</sch:assert>
			<sch:assert id="a-1098-8964-c" test="(not(cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity) or cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity[count(cda:addr) &lt; 2]) and (not (cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:addr) or cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:addr[cda:streetAddressLine and cda:city and ((not(cda:country) or cda:country!='US') or (cda:country='US' and cda:state and cda:postalCode))])">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-8964).</sch:assert>
			<sch:assert id="a-1098-8965-c" test="not(cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity)">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1098-8965).</sch:assert>
			<sch:assert id="a-1098-8967-c" test="cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:assignedPerson/cda:name or cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:representedOrganization/cda:name">*SHOULD* include assignedEntity/assignedPerson/name AND/OR assignedEntity/representedOrganization/name (CONF:1098-8967).</sch:assert>
			<sch:assert id="a-1098-16078-c" test="cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole/cda:code[not(@code) or @code]">This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Coverage Role Type 2.16.840.1.113883.1.11.18877 DYNAMIC (CONF:1098-16078).</sch:assert>
			<sch:assert id="a-1098-8956-c" test="cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole[count(cda:addr) &lt; 2]">This participantRole SHOULD contain zero or one [0..1] addr (CONF:1098-8956).</sch:assert>
			<sch:assert id="a-1098-8932-c" test="cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole[count(cda:playingEntity) &lt; 2]">This participantRole SHOULD contain zero or one [0..1] playingEntity (CONF:1098-8932).</sch:assert>
			<sch:assert id="a-1098-8934" test="count(cda:participant[@typeCode='HLD'][count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90'])=1][count(cda:participantRole[count(cda:id) &gt; 0])=1])=1">When the Subscriber is the patient, the participant element describing the subscriber *SHALL NOT* be present. This information will be recorded instead in the data elements used to record member information.
SHOULD contain zero or one [0..1] participant (CONF:1098-8934) such that it SHALL contain exactly one [1..1] @typeCode="HLD" Holder (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90 STATIC) (CONF:1098-8935). SHALL contain exactly one [1..1] templateId (CONF:1098-16813). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.90" Policy Holder Participant (CONF:1098-16815). SHALL contain exactly one [1..1] participantRole (CONF:1098-8936). This participantRole SHALL contain at least one [1..*] id (CONF:1098-8937).</sch:assert>
			<sch:assert id="a-1098-8903-v" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Source of Payment Typology (PHDSC) 2.16.840.1.114222.4.11.3591 DYNAMIC (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8918-branch-33705" test="count(cda:time)=1">SHOULD contain zero or one [0..1] time (CONF:1098-8918).</sch:assert>
			<sch:assert id="a-1098-8919-branch-33705" test="not(cda:time) or cda:time[count(cda:low)=1]">The time, if present, SHOULD contain zero or one [0..1] low (CONF:1098-8919).</sch:assert>
			<sch:assert id="a-1098-8920-branch-33705" test="not(cda:time) or cda:time[count(cda:high)=1]">The time, if present, SHOULD contain zero or one [0..1] high (CONF:1098-8920).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']][cda:participantRole[cda:id][cda:code]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33705-branch-33705-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33722-branch-33722-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8925-branch-33722" test="not(cda:participantRole) or cda:participantRole[count(cda:addr)=1]">This participantRole SHOULD contain zero or one [0..1] addr (CONF:1098-8925).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33722-branch-33722-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']][cda:participantRole[cda:id]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-33722-branch-33722-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7959" test="count(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']])=1]) &gt; 0">SHOULD contain zero or more [0..*] entry (CONF:1098-7959) such that it SHALL contain exactly one [1..1] Coverage Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.60:2014-06-09) (CONF:1098-15501).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31671" test="cda:assignedAuthor[count(cda:code)=1]">This assignedAuthor SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-31671).</sch:assert>
			<sch:assert id="a-1098-32315-c" test="not(tested)">If the content is patient authored the code *SHOULD* be selected from Personal And Legal Relationship Role Type (2.16.840.1.113883.11.20.12.1) (CONF:1098-32315).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8593" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-8593).</sch:assert>
			<sch:assert id="a-1098-32427-v" test="count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.88.12.3221.7.2']/voc:code/@value or @nullFlavor])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-15248" test="cda:subject/cda:relatedSubject[count(cda:subject)=1]">This relatedSubject SHOULD contain zero or one [0..1] subject (CONF:1098-15248).</sch:assert>
			<sch:assert id="a-1098-15249-c" test="count(cda:subject/cda:relatedSubject/cda:subject/sdtc:id)=1">The subject *SHOULD* contain zero or more [[]0..[*]] sdtc:id. The prefix sdtc: *SHALL* be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the id element (CONF:1098-15249).</sch:assert>
			<sch:assert id="a-1098-15976" test="not(cda:subject/cda:relatedSubject/cda:subject) or cda:subject/cda:relatedSubject/cda:subject[count(cda:birthTime)=1]">The subject, if present, SHOULD contain zero or one [0..1] birthTime (CONF:1098-15976).</sch:assert>
			<sch:assert id="a-1098-15247-v" test="cda:subject/cda:relatedSubject/cda:code[@code]">This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set 2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:1098-X).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings" context="cda:addr[cda:templateId[@root='2.16.840.1.113883.10.13.17' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings-abstract"/>
			<sch:assert id="a-1126-33183-c" test="cda:recordTarget/cda:patientRole/cda:patient[count(sdtc:deceasedInd)=1]">This patient *SHOULD* contain zero or one [[]0..1] *sdtc:deceasedInd*. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedInd element (CONF:1126-33183).</sch:assert>
			<sch:assert id="a-1126-33184-c" test="cda:recordTarget/cda:patientRole/cda:patient[count(sdtc:deceasedTime)=1]">This patient *SHOULD* contain zero or one [[]0..1] *sdtc:deceasedTime*. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedTime element (CONF:1126-33184).</sch:assert>
			<sch:assert id="a-1126-33880-c" test="not(tested_here_yet)">This patient SHOULD contain zero or one [0..1] name (CONF:1126-33880).</sch:assert>
			<sch:assert id="a-1126-33905" test="count(cda:documentationOf) &gt; 0">SHOULD contain zero or more [0..*] documentationOf (CONF:1126-33905).</sch:assert>
			<sch:assert id="a-1126-33907" test="not(cda:documentationOf/cda:serviceEvent) or cda:documentationOf/cda:serviceEvent[count(cda:performer[count(cda:assignedEntity)=1]) &gt; 0]">This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:1126-33907) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33908).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-46212-branch-46212-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33917-branch-46212" test="cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33917).</sch:assert>
			<sch:assert id="a-1126-33918-branch-46212" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33918).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1126-33919-branch-46212-c" test="not(tested_here_yet)">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33919).</sch:assert>
			<sch:assert id="a-1126-33924-branch-46212" test="cda:assignedEntity/cda:representedOrganization[count(cda:id) &gt; 0]">This representedOrganization SHOULD contain zero or more [0..*] id (CONF:1126-33924).
Note: This id is to be used to provide the Cancer Registry approved local identifier.This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1126-33926-branch-46212-c" test="not(tested_here_yet)">This representedOrganization SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33926).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-46212-branch-46212-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:componentOf[cda:encompassingEncounter][cda:encounterParticipant[@typeCode='REF']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-46212-branch-46212-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-57044-branch-57044-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33725-branch-57044" test="cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:manufacturerModelName)=1]">This assignedAuthoringDevice SHOULD contain zero or one [0..1] manufacturerModelName (CONF:1126-33725).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-57044-branch-57044-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-57044-branch-57044-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60650-branch-60650-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33898-branch-60650" test="count(cda:telecom) &gt; 0">SHOULD contain zero or more [0..*] telecom (CONF:1126-33898).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60650-branch-60650-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:componentOf[cda:encompassingEncounter][cda:location][cda:healthCareFacility][cda:serviceProviderOrganization]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60650-branch-60650-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60648-branch-60648-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33901-branch-60648" test="count(cda:id) &gt; 0">SHOULD contain zero or more [0..*] id (CONF:1126-33901).
Note: This id is to be used to provide the Cancer Registry approved local identifier for the healthcare facility</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60648-branch-60648-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:componentOf[cda:encompassingEncounter][cda:location][cda:healthCareFacility]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-60648-branch-60648-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61005-branch-61005-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33910-branch-61005" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33910).</sch:assert>
			<sch:assert id="a-1126-33911-branch-61005" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33911).</sch:assert>
			<sch:assert id="a-1126-33913-branch-61005" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33913).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1126-33914-branch-61005-c" test="not(tested_here_yet)">This assignedEntity SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33914).</sch:assert>
			<sch:assert id="a-1126-33916-branch-61005-c" test="not(tested_here_yet)">The assignedPerson, if present, SHOULD contain zero or one [0..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33916).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61005-branch-61005-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:documentationOf[cda:serviceEvent][cda:performer[cda:assignedEntity]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61005-branch-61005-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61007-branch-61007-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33912-branch-61007" test="@root='2.16.840.1.113883.4.6'">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33912).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61007-branch-61007-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:documentationOf[cda:serviceEvent][cda:performer][cda:assignedEntity][cda:id]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61007-branch-61007-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61098-branch-61098-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-34001-branch-61098" test="@root='2.16.840.1.113883.4.6'">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier  (CONF:1126-34001).</sch:assert>
			<sch:assert id="a-1126-34002-branch-61098" test="@extension">SHOULD contain zero or one [0..1] @extension (CONF:1126-34002).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61098-branch-61098-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2014-08-08']]/cda:componentOf[cda:encompassingEncounter][cda:encounterParticipant[@typeCode='REF']][cda:assignedEntity][cda:representedOrganization][cda:id]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2014-08-08-61098-branch-61098-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract"/>
			<sch:assert id="a-1126-33242" test="count(cda:suffix)=1">SHOULD contain exactly one [1..1] suffix (CONF:1126-33242).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings" context="cda:name[cda:templateId[@root='2.16.840.1.113883.10.13.18' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-32442" test="count(cda:text)=1">SHOULD contain zero or one [0..1] text (CONF:1126-32442).</sch:assert>
			<sch:assert id="a-1126-32443" test="not(cda:text) or cda:text[count(cda:reference)=1]">The text, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-32443).</sch:assert>
			<sch:assert id="a-1126-32483-c" test="not(Tested)">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Diagnostic Confirmation 2.16.840.1.113883.3.520.4.3 DYNAMIC (CONF:1126-32483).</sch:assert>
			<sch:assert id="a-1126-32638" test="cda:targetSiteCode[@displayName]">This targetSiteCode SHOULD contain zero or one [0..1] @displayName (CONF:1126-32638).</sch:assert>
			<sch:assert id="a-1126-33017" test="cda:targetSiteCode/cda:qualifier/cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33017).</sch:assert>
			<sch:assert id="a-1126-33018" test="not(cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText) or cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33018).</sch:assert>
			<sch:assert id="a-1126-33019" test="not(cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText/cda:reference) or cda:targetSiteCode/cda:qualifier/cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33019).</sch:assert>
			<sch:assert id="a-1126-33706" test="cda:targetSiteCode[@sdtc:valueSet]">This targetSiteCode SHOULD contain zero or one [0..1] @sdtc:valueSet (CONF:1126-33706).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46562-branch-46562-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-32476-branch-46562-c" test="not(Tested)">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Behavior Code 2.16.840.1.113883.3.520.4.14 DYNAMIC (CONF:1126-32476).</sch:assert>
			<sch:assert id="a-1126-32615-branch-46562-c" test="not(Tested)">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Behavior Code 2.16.840.1.113883.3.520.4.14 DYNAMIC (CONF:1126-32615).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46562-branch-46562-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:value[@xsi:type='CD'][cda:qualifier[cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[cda:originalText[cda:reference[@value]]][@codeSystem='2.16.840.1.113883.3.520.3.14'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.14']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46562-branch-46562-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46655-branch-46655-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-32484-branch-46655" test="cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-32484).</sch:assert>
			<sch:assert id="a-1126-32485-branch-46655" test="not(cda:value/cda:originalText) or cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-32485).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1126-32486-branch-46655" test="not(cda:value/cda:originalText/cda:reference) or cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-32486).</sch:assert>
			<sch:assert id="a-1126-32620-branch-46655-c" test="not(Tested)">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Diagnostic Confirmation 2.16.840.1.113883.3.520.4.3 DYNAMIC (CONF:1126-32620).</sch:assert>
			<sch:assert id="a-1126-32633-branch-46655" test="cda:value[@codeSystem='2.16.840.1.113883.3.520.3.3']">This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.3 " (CodeSystem: NAACCR Diagnostic Confirmation 2.16.840.1.113883.3.520.3.3 STATIC) (CONF:1126-32633).</sch:assert>
			<sch:assert id="a-1126-33705-branch-46655" test="cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.3']">This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.3" (CodeSystem: NAACCR Diagnostic Confirmation 2.16.840.1.113883.3.520.3.3 STATIC) (CONF:1126-33705).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46655-branch-46655-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:value[@xsi:type='CD'][cda:qualifier[cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-46655-branch-46655-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-50008-branch-50008-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33609-branch-50008" test="cda:value[@codeSystem='2.16.840.1.113883.3.520.3.15']">This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.15" (CodeSystem: NAACCR Grade 2.16.840.1.113883.3.520.3.15 STATIC) (CONF:1126-33609).</sch:assert>
			<sch:assert id="a-1126-33610-branch-50008-c" test="not(Tested)">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Grade 2.16.840.1.113883.3.520.4.15 (CONF:1126-33610).</sch:assert>
			<sch:assert id="a-1126-33611-branch-50008-c" test="not(Tested)">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Grade 2.16.840.1.113883.3.520.4.15 (CONF:1126-33611).</sch:assert>
			<sch:assert id="a-1126-33612-branch-50008" test="cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33612).</sch:assert>
			<sch:assert id="a-1126-33613-branch-50008" test="not(cda:value/cda:originalText) or cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33613).</sch:assert>
			<sch:assert id="a-1126-33614-branch-50008" test="not(cda:value/cda:originalText/cda:reference) or cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33614).</sch:assert>
			<sch:assert id="a-1126-33704-branch-50008" test="cda:value[@sdtc:valueSet='2.16.840.1.113883.3.520.4.15']">This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.15" (CodeSystem: NAACCR Grade 2.16.840.1.113883.3.520.3.15 STATIC) (CONF:1126-33704).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-50008-branch-50008-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2014-08-08']]/cda:value[@xsi:type='CD'][cda:qualifier[cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2014-08-08-50008-branch-50008-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33409" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33409).</sch:assert>
			<sch:assert id="a-1126-33410" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33410).</sch:assert>
			<sch:assert id="a-1126-33411" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33411).</sch:assert>
			<sch:assert id="a-1126-33416" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33416).</sch:assert>
			<sch:assert id="a-1126-33417" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33417).</sch:assert>
			<sch:assert id="a-1126-33419" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@displayName]">This value SHOULD contain zero or one [0..1] @displayName (CONF:1126-33419).</sch:assert>
			<sch:assert id="a-1126-33420" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33420).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49686-branch-49686-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33441-branch-49686" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33441).</sch:assert>
			<sch:assert id="a-1126-33442-branch-49686" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33442).</sch:assert>
			<sch:assert id="a-1126-33443-branch-49686" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33443).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49686-branch-49686-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21905-5'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.6']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49686-branch-49686-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49687-branch-49687-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33452-branch-49687" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33452).</sch:assert>
			<sch:assert id="a-1126-33453-branch-49687" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33453).</sch:assert>
			<sch:assert id="a-1126-33454-branch-49687" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33454).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49687-branch-49687-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21906-3'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.7']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49687-branch-49687-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49688-branch-49688-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33464-branch-49688" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33464).</sch:assert>
			<sch:assert id="a-1126-33465-branch-49688" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33465).</sch:assert>
			<sch:assert id="a-1126-33466-branch-49688" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33466).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49688-branch-49688-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21907-1'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.8']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-49688-branch-49688-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-59172-branch-59172-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33986-branch-59172" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33986).</sch:assert>
			<sch:assert id="a-1126-33987-branch-59172" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33987).</sch:assert>
			<sch:assert id="a-1126-33988-branch-59172" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33988).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-59172-branch-59172-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[cda:code[@code='21910-5'][@codeSystem='2.16.840.1.113883.6.1']][@classCode='OBS'][@moodCode='EVN'][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.3.520.3.4'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.4']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2014-08-08-59172-branch-59172-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract"/>
			<sch:assert id="a-1126-33927" test="count(cda:performer[count(cda:assignedEntity)=1]) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1126-33927) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33928).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33930-branch-61244" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33930).</sch:assert>
			<sch:assert id="a-1126-33931-branch-61244" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33931).</sch:assert>
			<sch:assert id="a-1126-33933-branch-61244" test="not(cda:assignedEntity) or cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33933).
Note: Local Cancer Registry approved provider identifier</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-61244-branch-61244-warnings-abstract"/>
			<sch:assert id="a-1126-33934-branch-61244-c" test="not(tested_here_yet)">This assignedEntity SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33934).</sch:assert>
			<sch:assert id="a-1126-33936-branch-61244-c" test="not(tested_here_yet)">The assignedPerson, if present, SHOULD contain zero or more [0..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33936).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47680-branch-47680-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33197-branch-47680" test="cda:observation/cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHOULD contain zero or one [0..1] low (CONF:1126-33197).</sch:assert>
			<sch:assert id="a-1126-33693-branch-47680" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain exactly one [1..1] originalText (CONF:1126-33693).</sch:assert>
			<sch:assert id="a-1126-33694-branch-47680" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">This originalText SHOULD contain exactly one [1..1] reference (CONF:1126-33694).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1126-33695-branch-47680" test="cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">This reference SHOULD contain exactly one [1..1] @value (CONF:1126-33695).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47680-branch-47680-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2014-08-08']]/cda:component[cda:observation[cda:code[@code='21844-6'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47680-branch-47680-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47688-branch-47688-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33200-branch-47688" test="cda:observation/cda:effectiveTime[count(cda:low)=1]">This effectiveTime SHOULD contain zero or one [0..1] low (CONF:1126-33200).</sch:assert>
			<sch:assert id="a-1126-33696-branch-47688" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain exactly one [1..1] originalText (CONF:1126-33696).</sch:assert>
			<sch:assert id="a-1126-33697-branch-47688" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">This originalText SHOULD contain exactly one [1..1] reference (CONF:1126-33697).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1126-33698-branch-47688" test="cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">This reference SHOULD contain exactly one [1..1] @value (CONF:1126-33698).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47688-branch-47688-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2014-08-08']]/cda:component[cda:observation[cda:code[@code='21843-8'][@codeSystem='2.16.840.1.113883.6.1']]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2014-08-08-47688-branch-47688-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33484" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33484).</sch:assert>
			<sch:assert id="a-1126-33485" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33485).</sch:assert>
			<sch:assert id="a-1126-33486" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33486).</sch:assert>
			<sch:assert id="a-1126-33491" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33491).</sch:assert>
			<sch:assert id="a-1126-33492" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33492).</sch:assert>
			<sch:assert id="a-1126-33493" test="not(cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference) or cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33493).</sch:assert>
			<sch:assert id="a-1126-33495" test="cda:entryRelationship/cda:observation/cda:value[@xsi:type='CD']/cda:qualifier/cda:value[@displayName]">This value SHOULD contain zero or one [0..1] @displayName (CONF:1126-33495).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49761-branch-49761-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33512-branch-49761" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33512).</sch:assert>
			<sch:assert id="a-1126-33513-branch-49761" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33513).</sch:assert>
			<sch:assert id="a-1126-33514-branch-49761" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33514).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49761-branch-49761-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.17']][cda:code[@code='21899-0'][@codeSystem='2.16.840.1.113883.6.1']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49761-branch-49761-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49773-branch-49773-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33525-branch-49773" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33525).</sch:assert>
			<sch:assert id="a-1126-33526-branch-49773" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33526).</sch:assert>
			<sch:assert id="a-1126-33527-branch-49773" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33527).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49773-branch-49773-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21900-6'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.18']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49773-branch-49773-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49785-branch-49785-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33537-branch-49785" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33537).</sch:assert>
			<sch:assert id="a-1126-33538-branch-49785" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33538).</sch:assert>
			<sch:assert id="a-1126-33539-branch-49785" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33539).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49785-branch-49785-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[cda:observation[@classCode='OBS'][@moodCode='EVN'][cda:code[@code='21901-4'][@codeSystem='2.16.840.1.113883.6.1']][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.15.6'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.19']]][@typeCode='COMP']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-49785-branch-49785-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-59184-branch-59184-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33994-branch-59184" test="cda:observation/cda:value[@xsi:type='CD'][count(cda:originalText)=1]">This value SHOULD contain zero or one [0..1] originalText (CONF:1126-33994).</sch:assert>
			<sch:assert id="a-1126-33995-branch-59184" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33995).</sch:assert>
			<sch:assert id="a-1126-33996-branch-59184" test="not(cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference) or cda:observation/cda:value[@xsi:type='CD']/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33996).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-59184-branch-59184-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2014-08-08']]/cda:entryRelationship[cda:observation][cda:entryRelationship[@typeCode='COMP'][cda:observation[cda:code[@code='21904-8'][@codeSystem='2.16.840.1.113883.6.1']][@classCode='OBS'][@moodCode='EVN'][cda:value[@xsi:type='CD'][@code][@codeSystem='2.16.840.1.113883.3.520.3.17'][@sdtc:valueSet='2.16.840.1.113883.3.520.4.27']]]]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2014-08-08-59184-branch-59184-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33939-branch-49430" test="cda:assignedEntity[count(cda:telecom) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33939).</sch:assert>
			<sch:assert id="a-1126-33940-branch-49430" test="cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33940) such that it</sch:assert>
			<sch:assert id="a-1126-33942-branch-49430" test="cda:assignedEntity[count(cda:id) &gt; 0]">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33942).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1126-33979-branch-49430" test="cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33979) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-49430-branch-49430-warnings-abstract"/>
			<sch:assert id="a-1126-33943-branch-49430-c" test="not(tested_here_yet)">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33943).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61257-branch-61257-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61257-branch-61257-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF'][cda:assignedEntity][cda:assignedPerson]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61257-branch-61257-warnings-abstract"/>
			<sch:assert id="a-1126-33945-branch-61257-c" test="not(tested_here_yet)">SHOULD contain zero or more [0..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33945).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61255-branch-61255-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33941-branch-61255-c" test="count(cda:assignedEntity/cda:id[@root=&quot;2.16.840.1.113883.4.6&quot;]) &gt; 0">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33941).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61255-branch-61255-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF'][cda:assignedEntity][cda:id[@root='2.16.840.1.113883.4.6']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61255-branch-61255-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61326-branch-61326-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33981-branch-61326" test="count(cda:name)=1">SHOULD contain zero or one [0..1] name (CONF:1126-33981).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61326-branch-61326-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF'][cda:assignedEntity][cda:representedOrganization]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-61326-branch-61326-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract"/>
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33330" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1126-33330).</sch:assert>
			<sch:assert id="a-1126-33331" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33331).</sch:assert>
			<sch:assert id="a-1126-33332" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33332).</sch:assert>
			<sch:assert id="a-1126-33333" test="count(cda:targetSiteCode) &gt; 0">SHOULD contain zero or more [0..*] targetSiteCode (CONF:1126-33333).</sch:assert>
			<sch:assert id="a-1126-33334" test="count(cda:performer) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1126-33334).</sch:assert>
			<sch:assert id="a-1126-33336" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33336).</sch:assert>
			<sch:assert id="a-1126-33346" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1126-33346).</sch:assert>
			<sch:assert id="a-1126-33656" test="not(cda:targetSiteCode) or cda:targetSiteCode[@displayName]">The targetSiteCode, if present, SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 (CONF:1126-33656).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33363" test="cda:code[count(cda:originalText)=1]">This code SHOULD contain zero or one [0..1] originalText (CONF:1126-33363).</sch:assert>
			<sch:assert id="a-1126-33364" test="not(cda:code/cda:originalText) or cda:code/cda:originalText[count(cda:reference)=1]">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33364).</sch:assert>
			<sch:assert id="a-1126-33365" test="not(cda:code/cda:originalText/cda:reference) or cda:code/cda:originalText/cda:reference[@value]">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33365).</sch:assert>
			<sch:assert id="a-1126-33366" test="count(cda:targetSiteCode) &gt; 0">SHOULD contain zero or more [0..*] targetSiteCode (CONF:1126-33366).</sch:assert>
			<sch:assert id="a-1126-33367" test="count(cda:performer) &gt; 0">SHOULD contain zero or more [0..*] performer (CONF:1126-33367).</sch:assert>
			<sch:assert id="a-1126-33369" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:representedOrganization)=1]">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33369).</sch:assert>
			<sch:assert id="a-1126-33379" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1126-33379).</sch:assert>
			<sch:assert id="a-1126-33585" test="not(cda:performer/cda:assignedEntity) or cda:performer/cda:assignedEntity[count(cda:assignedPerson)=1]">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33585).</sch:assert>
			<sch:assert id="a-1126-33624" test="count(cda:entryRelationship[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']])=1]) &gt; 0">SHOULD contain at least one [1..*] entryRelationship (CONF:1126-33624) such that it SHALL contain exactly one [1..1] Radiation Regional Dose - cGy (identifier: urn:hl7ii:2.16.840.1.113883.10.13.27:2014-08-08) (CONF:1126-33625).</sch:assert>
			<sch:assert id="a-1126-33655" test="not(cda:targetSiteCode) or cda:targetSiteCode[@displayName]">The targetSiteCode, if present, SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 (CONF:1126-33655).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings-abstract"/>
			<sch:assert id="a-1126-33586-c" test="not(tested_here_yet)">The assignedPerson, if present, SHOULD contain zero or one [0..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33586).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.31' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert test="."/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.32' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
</sch:schema>
