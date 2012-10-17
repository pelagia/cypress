<?xml version="1.0"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:cda="urn:hl7-org:v3" xmlns:sdtc="urn:hl7-org:sdtc" version="1.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
<axsl:param name="archiveDirParameter"/><axsl:param name="archiveNameParameter"/><axsl:param name="fileNameParameter"/><axsl:param name="fileDirParameter"/>

<!--PHASES-->


<!--PROLOG-->
<axsl:output xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" method="xml" omit-xml-declaration="no" standalone="yes" indent="yes"/>

<!--KEYS-->


<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->
<axsl:template match="*" mode="schematron-select-full-path"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->
<axsl:template match="*" mode="schematron-get-full-path"><axsl:apply-templates select="parent::*" mode="schematron-get-full-path"/><axsl:text>/</axsl:text><axsl:choose><axsl:when test="namespace-uri()=''"><axsl:value-of select="name()"/><axsl:variable name="p_1" select="1+    count(preceding-sibling::*[name()=name(current())])"/><axsl:if test="$p_1&gt;1 or following-sibling::*[name()=name(current())]">[<axsl:value-of select="$p_1"/>]</axsl:if></axsl:when><axsl:otherwise><axsl:text>*[local-name()='</axsl:text><axsl:value-of select="local-name()"/><axsl:text>' and namespace-uri()='</axsl:text><axsl:value-of select="namespace-uri()"/><axsl:text>']</axsl:text><axsl:variable name="p_2" select="1+   count(preceding-sibling::*[local-name()=local-name(current())])"/><axsl:if test="$p_2&gt;1 or following-sibling::*[local-name()=local-name(current())]">[<axsl:value-of select="$p_2"/>]</axsl:if></axsl:otherwise></axsl:choose></axsl:template><axsl:template match="@*" mode="schematron-get-full-path"><axsl:text>/</axsl:text><axsl:choose><axsl:when test="namespace-uri()=''">@<axsl:value-of select="name()"/></axsl:when><axsl:otherwise><axsl:text>@*[local-name()='</axsl:text><axsl:value-of select="local-name()"/><axsl:text>' and namespace-uri()='</axsl:text><axsl:value-of select="namespace-uri()"/><axsl:text>']</axsl:text></axsl:otherwise></axsl:choose></axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-2-->
<!--This mode can be used to generate prefixed XPath for humans-->
<axsl:template match="node() | @*" mode="schematron-get-full-path-2"><axsl:for-each select="ancestor-or-self::*"><axsl:text>/</axsl:text><axsl:value-of select="name(.)"/><axsl:if test="preceding-sibling::*[name(.)=name(current())]"><axsl:text>[</axsl:text><axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/><axsl:text>]</axsl:text></axsl:if></axsl:for-each><axsl:if test="not(self::*)"><axsl:text/>/@<axsl:value-of select="name(.)"/></axsl:if></axsl:template>

<!--MODE: GENERATE-ID-FROM-PATH -->
<axsl:template match="/" mode="generate-id-from-path"/><axsl:template match="text()" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/></axsl:template><axsl:template match="comment()" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/></axsl:template><axsl:template match="processing-instruction()" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/></axsl:template><axsl:template match="@*" mode="generate-id-from-path"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:value-of select="concat('.@', name())"/></axsl:template><axsl:template match="*" mode="generate-id-from-path" priority="-0.5"><axsl:apply-templates select="parent::*" mode="generate-id-from-path"/><axsl:text>.</axsl:text><axsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/></axsl:template><!--MODE: SCHEMATRON-FULL-PATH-3-->
<!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
<axsl:template match="node() | @*" mode="schematron-get-full-path-3"><axsl:for-each select="ancestor-or-self::*"><axsl:text>/</axsl:text><axsl:value-of select="name(.)"/><axsl:if test="parent::*"><axsl:text>[</axsl:text><axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/><axsl:text>]</axsl:text></axsl:if></axsl:for-each><axsl:if test="not(self::*)"><axsl:text/>/@<axsl:value-of select="name(.)"/></axsl:if></axsl:template>

<!--MODE: GENERATE-ID-2 -->
<axsl:template match="/" mode="generate-id-2">U</axsl:template><axsl:template match="*" mode="generate-id-2" priority="2"><axsl:text>U</axsl:text><axsl:number level="multiple" count="*"/></axsl:template><axsl:template match="node()" mode="generate-id-2"><axsl:text>U.</axsl:text><axsl:number level="multiple" count="*"/><axsl:text>n</axsl:text><axsl:number count="node()"/></axsl:template><axsl:template match="@*" mode="generate-id-2"><axsl:text>U.</axsl:text><axsl:number level="multiple" count="*"/><axsl:text>_</axsl:text><axsl:value-of select="string-length(local-name(.))"/><axsl:text>_</axsl:text><axsl:value-of select="translate(name(),':','.')"/></axsl:template><!--Strip characters--><axsl:template match="text()" priority="-1"/>

<!--SCHEMA METADATA-->
<axsl:template match="/"><svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" title="" schemaVersion=""><axsl:comment><axsl:value-of select="$archiveDirParameter"/>  &#xA0;
		 <axsl:value-of select="$archiveNameParameter"/> &#xA0;
		 <axsl:value-of select="$fileNameParameter"/> &#xA0;
		 <axsl:value-of select="$fileDirParameter"/></axsl:comment><svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:v3" prefix="cda"/><svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:sdtc" prefix="sdtc"/><svrl:active-pattern><axsl:attribute name="id">p</axsl:attribute><axsl:attribute name="name">p</axsl:attribute><axsl:apply-templates/></svrl:active-pattern><axsl:apply-templates select="/" mode="M3"/></svrl:schematron-output></axsl:template>

<!--SCHEMATRON PATTERNS-->


<!--PATTERN p-->


	<!--RULE -->
<axsl:template match="/cda:ClinicalDocument" priority="1000" mode="M3"><svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="/cda:ClinicalDocument"/>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.2.589']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.2.589']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: End Stage Renal Disease', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.624']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.624']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-AMI', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.653']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.653']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-Angioedema', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.664']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.664']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-Aortic stenosis', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.666']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.666']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-Chronic kidney disease', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.659']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.659']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-Nephritis', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.665']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.665']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-Renal artery stenosis', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.656']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.656']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-Renal disease/dysfunction', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.660']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.660']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: Hospital Measures-Renal failure (acute and chronic)', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.644']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.644']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: LVSD', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.749']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.749']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Active: LVSD moderate or severe', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.11</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.13'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.664']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.13'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.664']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Inactive: Hospital Measures-Aortic stenosis', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.13</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.14'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.664']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.14'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.664']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnosis, Resolved: Hospital Measures-Aortic stenosis', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.14</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.20'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.2.29']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.20'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.2.29']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Diagnostic Study, Result: Ejection Fraction', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.20</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.307']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.307']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Encounter, Performed: Encounter Inpatient', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.23</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.31'][descendant::*/@sdtc:valueSet='1.3.6.1.4.1.33895.1.3.0.45']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.31'][descendant::*/@sdtc:valueSet='1.3.6.1.4.1.33895.1.3.0.45']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Intervention, Order: Hospital Measures - Comfort Measure Only Intervention', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.31</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.41'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.41'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Active: Hospital Measures-ACEI', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.41</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.41'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.41'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Active: Hospital Measures-ARB', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.41</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.43'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.43'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Adverse Effects: Hospital Measures-ACEI', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.43</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.43'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.43'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Adverse Effects: Hospital Measures-ARB', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.43</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.44'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.44'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Allergy: Hospital Measures-ACEI', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.44</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.44'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.44'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Allergy: Hospital Measures-ARB', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.44</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.46'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.46'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Intolerance: Hospital Measures-ACEI', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.46</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.46'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.46'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Intolerance: Hospital Measures-ARB', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.46</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.47'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.47'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.645']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Order: Hospital Measures-ACEI', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.47</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.47'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.47'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.646']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Medication, Order: Hospital Measures-ARB', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.47</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.669']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.669']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Physical Exam, Finding: Hospital Measures-Acute periorbital edema', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.57</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.654']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.654']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Physical Exam, Finding: Hospital Measures-Angioneurotic edema', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.57</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.655']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.655']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Physical Exam, Finding: Hospital Measures-Edema of eyelid', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.57</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.668']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.668']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Physical Exam, Finding: Hospital Measures-Edema of glottis, larynx, nasopharynx, or pharynx', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.57</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.652']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.652']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Procedure, Performed: Hospital Measures-Aortic commissurotomy', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.64</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.650']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.650']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Procedure, Performed: Hospital Measures-Aortic repair', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.64</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.658']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.658']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Procedure, Performed: Hospital Measures-Dialysis', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.64</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.662']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.662']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Procedure, Performed: Hospital Measures-Kidney transplant', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.64</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.651']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.651']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Procedure, Performed: Hospital Measures-Valvuloplasty', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.64</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.82'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.684']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.82'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.684']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Transfer To: Hospital Measures-Acute care hospital', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.82</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.82'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.3008']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.82'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.3008']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Transfer To: Hospital Measures - Home Hospice Care', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.82</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.82'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.3007']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.82'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.666.5.3007']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Transfer To: Hospital Measures - Inpatient Hospice Care', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.82</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose>

		<!--ASSERT -->
<axsl:choose><axsl:when test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']"/><axsl:otherwise><svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:schold="http://www.ascc.net/xml/schematron" test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']"><axsl:attribute name="location"><axsl:apply-templates select="." mode="schematron-get-full-path"/></axsl:attribute><svrl:text>For QDT pattern 'Patient Characteristic Payer: Payer', the following QRDA template id SHOULD be present: 2.16.840.1.113883.10.20.24.3.55</svrl:text></svrl:failed-assert></axsl:otherwise></axsl:choose><axsl:apply-templates select="*|comment()|processing-instruction()" mode="M3"/></axsl:template><axsl:template match="text()" priority="-1" mode="M3"/><axsl:template match="@*|node()" priority="-2" mode="M3"><axsl:apply-templates select="*|comment()|processing-instruction()" mode="M3"/></axsl:template></axsl:stylesheet>
