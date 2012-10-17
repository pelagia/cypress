<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron C:/Users/rickg/workspaces-svn/ClientProjects/QRDATesting/measure-specific-schematron/schematron.xsd">
	<ns uri="urn:hl7-org:v3" prefix="cda"/>
	<ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
	<phase id="warnings">
		<active pattern="p"/>
	</phase>
	<pattern id="p">
		<rule context="/cda:ClinicalDocument">
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0001']">For QDT pattern 'Diagnosis, Active: Acute Myocardial Infarction', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0001". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0003']">For QDT pattern 'Diagnosis, Active: Ischemic Vascular Disease', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0003". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.38'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0015']">For QDT pattern 'Laboratory Test, Performed: Complete Lipid Panel', QRDA template id "2.16.840.1.113883.10.20.24.3.38" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0015". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.38'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0012']">For QDT pattern 'Laboratory Test, Performed: HDL-C Laboratory Test', QRDA template id "2.16.840.1.113883.10.20.24.3.38" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0012". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.38'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.03.1248']">For QDT pattern 'Laboratory Test, Performed: LDL-C Laboratory Test', QRDA template id "2.16.840.1.113883.10.20.24.3.38" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.03.1248". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.38'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0013']">For QDT pattern 'Laboratory Test, Performed: Total Cholesterol Laboratory Test', QRDA template id "2.16.840.1.113883.10.20.24.3.38" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0013". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.38'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0014']">For QDT pattern 'Laboratory Test, Performed: Triglycerides Laboratory Test', QRDA template id "2.16.840.1.113883.10.20.24.3.38" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0014". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.40'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.03.1248']">For QDT pattern 'Laboratory Test, Result: LDL-C Laboratory Test', QRDA template id "2.16.840.1.113883.10.20.24.3.40" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.03.1248". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0002']">For QDT pattern 'Procedure, Performed: Coronary Artery Bypass Graft', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0002". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.04.02.0010']">For QDT pattern 'Procedure, Performed: Percutaneous Coronary Interventions', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.04.02.0010". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']">For QDT pattern 'Patient Characteristic Payer: Payer', QRDA template id "2.16.840.1.113883.10.20.24.3.55" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.221.5". </assert>
		</rule>
	</pattern>
</schema>