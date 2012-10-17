<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron C:/Users/rickg/workspaces-svn/ClientProjects/QRDATesting/measure-specific-schematron/schematron.xsd">
	<ns uri="urn:hl7-org:v3" prefix="cda"/>
	<ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
	<phase id="warnings">
		<active pattern="p"/>
	</phase>
	<pattern id="p">
		<rule context="/cda:ClinicalDocument">
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.450']">For QDT pattern 'Diagnosis, Active: Bipolar Diagnosis', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.450". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.145']">For QDT pattern 'Diagnosis, Active: Depression diagnosis', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.145". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.1916']">For QDT pattern 'Encounter, Performed: Depression Screening Denominator Encounter Codes New', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.1916". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.31'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.537']">For QDT pattern 'Intervention, Order: Referral for Depression Adolescent', QRDA template id "2.16.840.1.113883.10.20.24.3.31" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.537". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.31'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.538']">For QDT pattern 'Intervention, Order: Referral for Depression Adult', QRDA template id "2.16.840.1.113883.10.20.24.3.31" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.538". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.459']">For QDT pattern 'Intervention, Performed: Additional evaluation for depression - adolescent', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.459". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.460']">For QDT pattern 'Intervention, Performed: Additional evaluation for depression - adult', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.460". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.426']">For QDT pattern 'Intervention, Performed: Adolescent Depression Screening', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.426". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.431']">For QDT pattern 'Intervention, Performed: Adult Depression Screening', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.431". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.467']">For QDT pattern 'Intervention, Performed: Follow-up for depression - adolescent', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.467". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.32'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.468']">For QDT pattern 'Intervention, Performed: Follow-up for depression - adult', QRDA template id "2.16.840.1.113883.10.20.24.3.32" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.468". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.34'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.794']">For QDT pattern 'Intervention, Result: Negative Depression Screening', QRDA template id "2.16.840.1.113883.10.20.24.3.34" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.794". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.34'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.793']">For QDT pattern 'Intervention, Result: Positive Depression Screening', QRDA template id "2.16.840.1.113883.10.20.24.3.34" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.793". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.47'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.469']">For QDT pattern 'Medication, Order: Depression medications - adolescent', QRDA template id "2.16.840.1.113883.10.20.24.3.47" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.469". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.47'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.600.470']">For QDT pattern 'Medication, Order: Depression medications - adult', QRDA template id "2.16.840.1.113883.10.20.24.3.47" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.600.470". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.101'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.560.100.4']">For QDT pattern 'Patient Characteristic: birth date', QRDA template id "2.16.840.1.113883.10.20.24.3.101" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.560.100.4". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']">For QDT pattern 'Patient Characteristic Payer: Payer', QRDA template id "2.16.840.1.113883.10.20.24.3.55" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.221.5". </assert>
		</rule>
	</pattern>
</schema>