<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron C:/Users/rickg/workspaces-svn/ClientProjects/QRDATesting/measure-specific-schematron/schematron.xsd">
	<ns uri="urn:hl7-org:v3" prefix="cda"/>
	<ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
	<phase id="warnings">
		<active pattern="p"/>
	</phase>
	<pattern id="p">
		<rule context="/cda:ClinicalDocument">
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.624']">For QDT pattern 'Diagnosis, Active: Hospital Measures - AMI', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.624". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.748']">For QDT pattern 'Diagnosis, Active: Hospital Measures-Cardiopulmonary arrest', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.748". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.20'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.735']">For QDT pattern 'Diagnostic Study, Result: Hospital Measures-ECG', QRDA template id "2.16.840.1.113883.10.20.24.3.20" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.735". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.900']">For QDT pattern 'Encounter, Performed: Hospital Measures - Encounter ED', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.900". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.625']">For QDT pattern 'Encounter, Performed: Hospital Measures-Encounter Inpatient', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.5.625". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.42'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.736']">For QDT pattern 'Medication, Administered: Hospital Measures-Fibrinolytic Therapy', QRDA template id "2.16.840.1.113883.10.20.24.3.42" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.736". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.51'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.2.643']">For QDT pattern 'Patient Characteristic Clinical Trial Participant: Clinical Trial Participant', QRDA template id "2.16.840.1.113883.10.20.24.3.51" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.2.643". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.1151']">For QDT pattern 'Procedure, Performed: Hospital Measures-Aortic balloon pump insertion', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.1151". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.747']">For QDT pattern 'Procedure, Performed: Hospital Measures-Endotrachael intubation', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.747". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.737']">For QDT pattern 'Procedure, Performed: Hospital Measures-PCI', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.737". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.81'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.684']">For QDT pattern 'Transfer From: Hospital Measures-Acute care hospital', QRDA template id "2.16.840.1.113883.10.20.24.3.81" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.684". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.81'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.05.687']">For QDT pattern 'Transfer From: Hospital Measures-Ambulatory surgical center', QRDA template id "2.16.840.1.113883.10.20.24.3.81" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.666.05.687". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']">For QDT pattern 'Patient Characteristic Payer: Payer', QRDA template id "2.16.840.1.113883.10.20.24.3.55" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.221.5". </assert>
		</rule>
	</pattern>
</schema>