<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron C:/Users/rickg/workspaces-svn/ClientProjects/QRDATesting/measure-specific-schematron/schematron.xsd">
	<ns uri="urn:hl7-org:v3" prefix="cda"/>
	<ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
	<phase id="warnings">
		<active pattern="p"/>
	</phase>
	<pattern id="p">
		<rule context="/cda:ClinicalDocument">
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.03.1002']">For QDT pattern 'Diagnosis, Active: Chronic Kidney Disease, Stage 5', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.03.1002". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.03.353']">For QDT pattern 'Diagnosis, Active: End Stage Renal Disease', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.03.353". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0011']">For QDT pattern 'Diagnosis, Active: Essential Hypertension', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0011". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.03.378']">For QDT pattern 'Diagnosis, Active: Pregnancy', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.03.378". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.09.02.0014']">For QDT pattern 'Encounter, Performed: ESRD Monthly Outpatient Services', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.09.02.0014". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.01.02.0048']">For QDT pattern 'Encounter, Performed: Face-to-Face Interaction', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.01.02.0048". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.01.02.0001']">For QDT pattern 'Encounter, Performed: Office Visit', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.01.02.0001". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.01.02.0008']">For QDT pattern 'Encounter, Performed: Outpatient Consultation', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.01.02.0008". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.01.02.0025']">For QDT pattern 'Encounter, Performed: Preventive Care Services - Established Office Visit, 18 and Up', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.01.02.0025". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.01.02.0023']">For QDT pattern 'Encounter, Performed: Preventive Care Services-Initial Office Visit, 18 and Up', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.01.02.0023". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.09.02.0016']">For QDT pattern 'Intervention, Performed: Dialysis Education', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.09.02.0016". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.09.02.0015']">For QDT pattern 'Intervention, Performed: Other Services Related to Dialysis', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.09.02.0015". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.03.1033']">For QDT pattern 'Physical Exam, Finding: Diastolic Blood Pressure', QRDA template id "2.16.840.1.113883.10.20.24.3.57" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.03.1033". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.03.1032']">For QDT pattern 'Physical Exam, Finding: Systolic Blood Pressure', QRDA template id "2.16.840.1.113883.10.20.24.3.57" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.03.1032". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.09.02.0013']">For QDT pattern 'Procedure, Performed: Dialysis Services', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.09.02.0013". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.09.02.0012']">For QDT pattern 'Procedure, Performed: Kidney Transplant', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.09.02.0012". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.09.02.0011']">For QDT pattern 'Procedure, Performed: Vascular Access for Dialysis', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.09.02.0011". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']">For QDT pattern 'Patient Characteristic Payer: Payer', QRDA template id "2.16.840.1.113883.10.20.24.3.55" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.221.5". </assert>
		</rule>
	</pattern>
</schema>