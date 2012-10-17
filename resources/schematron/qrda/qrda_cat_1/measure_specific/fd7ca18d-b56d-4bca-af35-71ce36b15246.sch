<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron C:/Users/rickg/workspaces-svn/ClientProjects/QRDATesting/measure-specific-schematron/schematron.xsd">
	<ns uri="urn:hl7-org:v3" prefix="cda"/>
	<ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
	<phase id="warnings">
		<active pattern="p"/>
	</phase>
	<pattern id="p">
		<rule context="/cda:ClinicalDocument">
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.397']">For QDT pattern 'Diagnosis, Active: Complication Mainly in the Course of Labor and Delivery', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.397". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.372']">For QDT pattern 'Diagnosis, Active: Complication Mainly Related to Pregnancy', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.372". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.375']">For QDT pattern 'Diagnosis, Active: Complication of the Puerperium', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.375". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.286']">For QDT pattern 'Diagnosis, Active: Conditions Possibly Justifying Elective Delivery Prior to 39 Weeks Gestation', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.286". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.391']">For QDT pattern 'Diagnosis, Active: Normal Delivery and Other Indications for Care', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.391". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.408']">For QDT pattern 'Diagnosis, Active: Outcome of Delivery', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.408". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.300']">For QDT pattern 'Diagnosis, Active: Spontaneous Rupture of Membranes', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.300". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.23']">For QDT pattern 'Encounter, Performed: Inpatient Encounter', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.23". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.101'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.402']">For QDT pattern 'Patient Characteristic: Gestational Age &lt;37 weeks', QRDA template id "2.16.840.1.113883.10.20.24.3.101" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.402". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.101'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.403']">For QDT pattern 'Patient Characteristic: Gestational Age &gt;38 weeks', QRDA template id "2.16.840.1.113883.10.20.24.3.101" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.403". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.101'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.287']">For QDT pattern 'Patient Characteristic: Gestational Age 37-38 weeks', QRDA template id "2.16.840.1.113883.10.20.24.3.101" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.287". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.101'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.307']">For QDT pattern 'Patient Characteristic: Gestational Age Unknown', QRDA template id "2.16.840.1.113883.10.20.24.3.101" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.307". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.281']">For QDT pattern 'Physical Exam, Finding: Active Labor', QRDA template id "2.16.840.1.113883.10.20.24.3.57" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.281". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.282']">For QDT pattern 'Procedure, Performed: Cesarean Section', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.282". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.401']">For QDT pattern 'Procedure, Performed: Delivery Procedures', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.401". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.288']">For QDT pattern 'Procedure, Performed: Medical Induction of Labor', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.288". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.117.1.7.1.386']">For QDT pattern 'Procedure, Performed: Uterine Surgery', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.117.1.7.1.386". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']">For QDT pattern 'Patient Characteristic Payer: Payer', QRDA template id "2.16.840.1.113883.10.20.24.3.55" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.221.5". </assert>
		</rule>
	</pattern>
</schema>