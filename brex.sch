<?xml version='1.0' encoding='UTF-8'?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
  <sch:title>Règles BREX auto-générées</sch:title>
  <sch:pattern name="BREX rules">
    <sch:rule context="dml">
      <sch:assert test="not(//dml[(descendant-or-self::dmlIdent[child::dmlCode[attribute::dmlType!=&quot;s&quot;]]) and ((descendant-or-self::dmlEntry[child::dmlRef]) or (descendant-or-self::dmlEntry[child::commentRef]))])">BREX-S1-00001: A DMRL must not contain comments or other data management lists (Chap 4.5, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="dmlEntry"/>
    <sch:rule context="dmlEntry"/>
    <sch:rule context="dml">
      <sch:assert test="not(//dml[descendant-or-self::dmlAddress[descendant-or-self::dmlIdent[child::dmlCode[attribute::dmlType=&quot;s&quot;]]] and descendant-or-self::dmlEntry[(descendant-or-self::dmRefIdent[not(child::issueInfo)] or descendant-or-self::pmRefIdent[not(child::issueInfo)] or descendant-or-self::dmlRefIdent[not(child::issueInfo)])]])">BREX-S1-00004: The CSL must contain the issue numbers of the CSDB objects it contains (Chap 4.5, Para 3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="dml">
      <sch:assert test="not(//dml[descendant-or-self::dmlStatus[attribute::issueType = &quot;new&quot;] and descendant-or-self::dmlAddress[descendant-or-self::issueInfo[attribute::issueNumber != &quot;000&quot; and attribute::issueNumber != &quot;001&quot;]]])">BREX-S1-00005: A new data module list must not have an issue number exceeding 001 (Chap 4.5, Para 4.1.1.2)</sch:assert>
    </sch:rule>
    <sch:rule context="dml">
      <sch:assert test="not(//dml[descendant-or-self::dmlAddress[descendant-or-self::dmlCode[attribute::dmlType=&quot;s&quot;]] and descendant-or-self::dmlStatus[child::dmlRef[child::dmlRefIdent[child::dmlCode[attribute::dmlType != &quot;s&quot;]]]]])">BREX-S1-00006: References in a CSDB status list must only refer to other CSDB status list.(Chap 4.5, Para 4.1.2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="dml">
      <sch:assert test="not(//dml[descendant-or-self::dmlIdent[child::dmlCode[attribute::dmlType=&quot;s&quot;]] and descendant-or-self::dmlEntry[child::answer]])">BREX-S1-00007: The element answer must not be used in a CSL (Chap 4.5, Para 4.2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="dml">
      <sch:assert test="not(//dml[descendant-or-self::dmlIdent[child::dmlCode[attribute::dmlType!=&quot;s&quot;]] and descendant-or-self::dmlEntry[child::answer and (child::pmRef or child::infoEntityRef or child::dmlRef or child::commentRef)]])">BREX-S1-00008: When used (in a DMRL), the element answer must only be used for data module entries (Chap 4.5, Para 4.2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="dmlCode"/>
    <sch:rule context="commentCode"/>
    <sch:rule context="commentRefs"/>
    <sch:rule context="ddn">
      <sch:assert test="not(//ddn[descendant-or-self::entityControlNumber[contains((.),&quot;ICN-&quot;)]])">BREX-S1-00012: The entity control number given in a DDN must not include the prefix ICN- (Chap 4.4, Para 2).</sch:assert>
    </sch:rule>
    <sch:rule context="*">
      <sch:assert test="not(//*[attribute::changeMark = &quot;1&quot; and ancestor::pm[child::identAndStatusSection[child::pmStatus[attribute::issueType != &quot;changed&quot; and attribute::issueType != &quot;rinstate-changed&quot;]]]])">BREX-S1-00013: No change markers must appear in a publication module if the issue type is not changed (Chap 3.9.5.2.1.1, Para 2.1.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;0A1&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::enterpriseSpec or descendant::toolSpec or descendant::supplySpec or descendant::controlIndicatorSpec or descendant::supplyRqmtSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::partIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00022: Only functionalPhysicalAreaSpec, functionalPhysicalAreaIdent, applicIdent, applicRefIdent, applic, applicRef, figure, figureIdent, multimedia, multimediaIdent elements can be used in the Data update file representing the functional physical area CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;0A2&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::enterpriseSpec or descendant::toolSpec or descendant::supplySpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::supplyRqmtSpec or descendant::multimedia or descendant::figure or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::partIdent or descendant::multimediaIdent  or descendant::figureIdent or descendant::warningIdent or descendant::cautionIdent or descendant::applicRef or descendant::applicRefIdent]]])">BREX-S1-00024: Only applicSpec, applicSpecIdent, applic, applicIdent elements can be used in the Data update file representing the applicabilities CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00E&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::accessPointSpec or descendant::toolSpec or descendant::enterpriseSpec or descendant::supplySpec or descendant::supplyRqmtSpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::partIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00016: Only functionalItemSpec, functionalItemIdent, figure, figureIdent, multimedia, multimediaIdent, applicIdent, applicRefIdent, applic, applicRef elements must be used in the Data update file representing the FIN CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00F&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::toolSpec or descendant::enterpriseSpec or descendant::supplySpec or descendant::supplyRqmtSpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::partIdent or descendant::functionalItemIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00017: Only circuitBreakerSpec, circuitBreakerIdent, applicIdent, applicRefIdent, applic, applicRef, figure, figureIdent, multimedia, multimediaIdent elements can be used in the Data update file representing the CB CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00G&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::functionalItemSpec or descendant::circuitBreakerSpec or descendant::accessPointSpec or descendant::toolSpec or descendant::enterpriseSpec or descendant::supplySpec or descendant::supplyRqmtSpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00014: Only partSpec, partIdent, figure, figureIdent, multimedia, multimediaIdent, applic, applicIdent, applicRef and applicRefIdent elements can be used in the Data update file representing the part CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00H&quot; and ancestor::dataUpdateFile[descendant::update[descendant::partSpec or descendant::functionalItemSpec or descendant::circuitBreakerSpec or descendant::accessPointSpec or descendant::toolSpec or descendant::enterpriseSpec or descendant::supplySpec or descendant::supplyRqmtSpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::partIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00015: Only zoneSpec, zoneIdent, figure, figureIdent, multimedia, multimediaIdent, applicIdent, applicRefIdent, applic, applicRef elements can be used in the Data update file representing the zone CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00J&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::toolSpec or descendant::enterpriseSpec or descendant::supplySpec or descendant::supplyRqmtSpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::partIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00018: Only accessPointSpec, accessPointIdent, figure, figureIdent, multimedia, multimediaIdent, applic, applicRef, applicIdent, applicRefIdent elements can be used in the Data update file representing the access point CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00K&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::applicSpec or descendant::toolSpec or descendant::supplySpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::supplyRqmtSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::partIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent or descendant::applicRef or descendant::applicRefIdent or descendant::applic or descendant::applicIdent]]])">BREX-S1-00025: Only enterpriseSpec, enterpriseIdent, figure, figureIdent, multimedia, multimediaIdent elements can be used in the Data update file representing the enterprise CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00L&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::enterpriseSpec or descendant::toolSpec or descendant::supplyRqmtSpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::partIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00020: Only supplySpec, supplyIdent, figure, figureIdent, multimedia, multimediaIdent, applic, applicRef, applicIdent, applicRefIdent elements can be used in the Data update file representing the supply CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00M&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::enterpriseSpec or descendant::toolSpec or descendant::supplySpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::partIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00021: Only supplyRqmtSpec, supplyRqmtIdent, applicIdent, applicRefIdent, applic, applicRef, figure, figureIdent, multimedia, multimediaIdent elements can be used in the Data update file representing the supply requirements CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00N&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::enterpriseSpec or descendant::supplySpec or descendant::supplyRqmtSpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::partIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00019: Only toolSpec, toolIdent, figure, figureIdent, multimedia, multimediaIdent, applicIdent, applicRefIdent, applic, applicRef elements can be used in the Data update file representing the tool CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[attribute::infoCode=&quot;00X&quot; and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::enterpriseSpec or descendant::toolSpec or descendant::supplySpec or descendant::functionalPhysicalAreaSpec or descendant::supplyRqmtSpec or descendant::applicSpec or descendant::warningSpec or descendant::cautionSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::enterpriseIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::partIdent or descendant::applicSpecIdent or descendant::warningIdent or descendant::cautionIdent]]])">BREX-S1-00023: Only controlIndicatorSpec, controlIndicatorIdent, figure, figureIdent, multimedia, multimediaIdent, applicIdent, applicRefIdent, applic, applicRef elements can be used in the Data update file representing the control indicators CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateCode">
      <sch:assert test="not(//updateCode[(attribute::infoCode=&quot;012&quot; or attribute::infoCode=&quot;0A4&quot; or attribute::infoCode=&quot;0A5&quot;) and ancestor::dataUpdateFile[descendant::update[descendant::zoneSpec or descendant::partSpec or descendant::circuitBreakerSpec or descendant::functionalItemSpec or descendant::accessPointSpec or descendant::applicSpec or descendant::toolSpec or descendant::enterpriseSpec or descendant::supplySpec or descendant::functionalPhysicalAreaSpec or descendant::controlIndicatorSpec or descendant::supplyRqmtSpec or descendant::zoneIdent or descendant::functionalItemIdent or descendant::circuitBreakerIdent or descendant::accessPointIdent or descendant::toolIdent or descendant::partIdent or descendant::supplyIdent or descendant::supplyRqmtIdent or descendant::functionalPhysicalAreaIdent or descendant::controlIndicatorIdent or descendant::applicSpecIdent or descendant::enterpriseIdent]]])">BREX-S1-00026: Only warningSpec, warningIdent, cautionSpec, cautionIdent, applicIdent, applicRefIdent, applic, applicRef, figure, figureIdent, multimedia, multimediaIdent elements can be used in the Data update file representing the warning and caution CIR (Chap 4.13.2.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="">
      <sch:assert test="not(/*[not(self::dmodule or self::pm or self::ddn or self::dml or self::comment or self::dataUpdateFile or self::scormContentPackage or self::icnMetadataFile)])">BREX-S1-00027: The root element of an interchanged xml CSDB object must be one of dmodule, pm, ddn, dml, comment, dataUpdateFile, scormContentPackage or icnMetadataFile (Chap 1.4.2, Para 2.3.1.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="language"/>
    <sch:rule context="identAndStatusSection">
      <sch:assert test="not(//identAndStatusSection[dmStatus/@issueType!=&quot;new&quot;]//dmAddress//issueInfo[@issueNumber=&quot;000&quot; or (@issueNumber=&quot;001&quot; and @inWork=&quot;00&quot;)])">BREX-S1-00030: Data modules up to and including the initial issue of the approved release must have the attribute issueNumber set to the value 000 for inwork versions or value 001 for the initial issue and have the attribute issueType set to the value /new/. (Chap 3.9.5.1, Para 2.2)</sch:assert>
    </sch:rule>
    <sch:rule context="@issueType"/>
    <sch:rule context="dmodule">
      <sch:assert test="not(//dmodule[(descendant-or-self::dmAddress[descendant-or-self::issueInfo[attribute::inwork=&quot;00&quot;]]) and (child::content[descendant-or-self::*[attribute::changeMark or attribute::changeType]] and not(descendant-or-self::dmStatus[attribute::issueType=&quot;changed&quot; or attribute::issueType=&quot;rinstate-changed&quot;]))])">BREX-S1-00032: Published data modules that have been changed and have the changes indicated within the data module using change elements and attributes, must have the attribute issueType set to the value /changed/ or, if the data module is reinstated, set to /rinstate-changed/. (Chap 3.9.5.1, Para 2.2)</sch:assert>
    </sch:rule>
    <sch:rule context="dmodule">
      <sch:assert test="not(//dmodule[child::content[descendant-or-self::*[attribute::changeMark or attribute::changeType]] and descendant-or-self::dmStatus[attribute::issueType=&quot;revised&quot; or attribute::issueType=&quot;rinstate-revised&quot;]])">BREX-S1-00033: Data modules that have been totally revised and that contain no change elements or attributes must have the attribute issueType set to the value /revised/ or, if the data module is reinstated, set to /rinstate-revised/. (Chap 3.9.5.1, Para 2.2)</sch:assert>
    </sch:rule>
    <sch:rule context="dmodule">
      <sch:assert test="not(//dmodule[not(descendant-or-self::identAndStatusSection[descendant-or-self::reasonForUpdate]) and not(child::content[descendant-or-self::*[attribute::changeType or attribute::changeMark]]) and (child::identAndStatusSection[descendant-or-self::*[attribute::changeType or attribute::changeMark]]) and descendant-or-self::dmStatus[not(attribute::issueType=&quot;status&quot; or attribute::issueType=&quot;rinstate-status&quot;)]])">BREX-S1-00034: Data modules that have had their identification and status information updated must have the attribute issueType set to the value /status/ or, if the data module is reinstated, set to /rinstate-status/. (Chap 3.9.5.1, Para 2.2)</sch:assert>
    </sch:rule>
    <sch:rule context="responsiblePartnerCompany">
      <sch:assert test="not(//responsiblePartnerCompany[(not(attribute::enterpriseCode) or attribute::enterpriseCode = &quot;&quot;) and (not(child::enterpriseName) or child::enterpriseName = &quot;&quot;)])">BREX-S1-00035: Company or organization must be indicated by at least one of either the name of the company and/or the companys CAGE code, .... However, if a responsible partner company has an enterprise code, then that code must be used (Chap 3.9.5.1, Para 2.2.7).</sch:assert>
    </sch:rule>
    <sch:rule context="dmodule">
      <sch:assert test="not(//dmodule[not(descendant-or-self::dmAddress[descendant-or-self::dmCode[attribute::modelIdentCode = &quot;S1000D&quot;]]) and (descendant-or-self::changeInline or descendant-or-self::*[attribute::changeMark]) and child::identAndStatusSection[child::dmStatus[attribute::issueType != &quot;changed&quot; and attribute::issueType != &quot;rinstate-changed&quot;]]])">BREX-S1-00036: No change markers must appear if the issue type is not changed (Chap 3.9.5.2.1.1, Para 2.1.1).</sch:assert>
    </sch:rule>
    <sch:rule context="dmodule">
      <sch:assert test="not(//dmodule[descendant-or-self::dmStatus[attribute::issueType != &quot;changed&quot;] and descendant-or-self::dmAddress[descendant-or-self::issueInfo[attribute::issueNumber != &quot;000&quot; and attribute::issueNumber != &quot;001&quot;]] and not(descendant-or-self::reasonForUpdate)])">BREX-S1-00038: Data modules that are not of issue type changed must also have at least one reason for update element if the issue number is greater than 001 (Chap 3.9.5.2.1.1, Para 2.1.1 and Para 2.1.2).</sch:assert>
    </sch:rule>
    <sch:rule context="reasonForUpdate"/>
    <sch:rule context="*"/>
    <sch:rule context="internalRef"/>
    <sch:rule context="dmRef"/>
    <sch:rule context="graphic">
      <sch:assert test="not(//graphic[attribute::changeMark=&quot;1&quot; and parent::figure[count(child::graphic) &gt; 1] and (ancestor::figure[attribute::changeMark=&quot;1&quot;] or ancestor::figureAlts[attribute::changeMark=&quot;1&quot;])])">BREX-S1-00043: If the element /figure/ is change marked, the change attributes on the element /graphic/ of multi-sheet figures must not be used (Chap 3.9.5.2.1.1, Para 2.3).</sch:assert>
    </sch:rule>
    <sch:rule context="@changeMark"/>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt01&quot; and not(attribute::internalRefId = //figure/@id or attribute::internalRefId = //figureAlts/@id)])">BREX-S1-00045: Only when the reference target is a figure can the value of attribute internalRefTargetType be irtt01 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt02&quot; and not(attribute::internalRefId = //table/@id)])">BREX-S1-00046: Only when the reference target is a table can the value of attribute internalRefTargetType be irtt02 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt03&quot; and not(attribute::internalRefId = //multimedia/@id or attribute::internalRefId = //multimediaAlts/@id)])">BREX-S1-00047: Only when the reference target is multimedia (containing one or more objects) can the value of attribute internalRefTargetType be irtt03 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt04&quot; and not(attribute::internalRefId = //supplyDescr/@id) and not(attribute::internalRefId = //embeddedSupplyDescr/@id)])">BREX-S1-00048: Only when the reference target is a supply  can the value of attribute internalRefTargetType be irtt04 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt05&quot; and not(attribute::internalRefId = //supportEquipDescr/@id) and not (attribute::internalRefId = //embeddedSupportEquipDescr/@id) and not(attribute::internalRefId = //toolRef/@id) and not(attribute::internalRefId = //toolsListCode/@id)])">BREX-S1-00049: Only when the reference target is support equipment can the value of attribute internalRefTargetType be irtt05 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt06&quot; and not(attribute::internalRefId = //spareDescr/@id) and not(attribute::internalRefId = //embeddedSpareDescr/@id)])">BREX-S1-00050: Only when the reference target is a spare can the value of attribute internalRefTargetType be irtt06 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt07&quot; and not(attribute::internalRefId = //levelledPara/@id or attribute::internalRefId = //levelledParaAlts/@id)])">BREX-S1-00051: Only when the reference target is a paragraph can the value of attribute internalRefTargetType be irtt07 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt08&quot; and not(attribute::internalRefId = //proceduralStep/@id or attribute::internalRefId = //proceduralStepAlts/@id or attribute::internalRefId = //isolationStep/@id or attribute::internalRefId = //isolationStepAlts/@id or attribute::internalRefId = //isolationProcedureEnd/@id or attribute::internalRefId = //isolationProcedureEndAlts/@id or attribute::internalRefId = //crewDrillStep/@id or attribute::internalRefId = //checkListStep/@id)])">BREX-S1-00052: Only when the reference target is a step can the value of attribute internalRefTargetType be irtt08 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt09&quot; and not(attribute::internalRefId = //graphic/@id)])">BREX-S1-00053: Only when the reference target is a figure can the value of attribute internalRefTargetType be irtt09 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt10&quot; and not(attribute::internalRefId = //multimediaObject/@id)])">BREX-S1-00054: Only when the reference target is a single multimedia object can the value of attribute internalRefTargetType be irtt10 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt12&quot; and not(attribute::internalRefId = //parameter/@id)])">BREX-S1-00055: Only when the reference target is a parameter can the value of attribute internalRefTargetType be irtt12 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt13&quot; and not(attribute::internalRefId = //zoneRef/@id)])">BREX-S1-00056: Only when the reference target is a zone can the value of attribute internalRefTargetType be irtt13 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt14&quot; and not(attribute::internalRefId = //workLocation/@id)])">BREX-S1-00057: Only when the reference target is a work location can the value of attribute internalRefTargetType be irtt14 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt15&quot; and not(@internalRefId=//sbMaterialSet/@id) and not(@internalRefId=//sbSupportEquipSet/@id) and not(@internalRefId=//sbIndividualSupportEquip/@id) and not(@internalRefId=//sbExternalSupportEquipSet/@id) and not(@internalRefId=//sbSupplySet/@id) and not(@internalRefId=//sbIndividualSupply/@id) and not(@internalRefId=//sbExternalSupplySet/@id) and not(@internalRefId=//sbSpareSet/@id) and not(@internalRefId=//sbIndividualSpare/@id) and not(@internalRefId=//sbExternalSpareSet/@id) and not(@internalRefId=//sbRemovedSpareSet/@id) and not(@internalRefId=//sbIndividualRemovedSpare/@id)])">BREX-S1-00058: Only when the reference target is a Service Bulletin material set (including individual, external or removed material) can the value of attribute internalRefTargetType be irtt15 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt16&quot; and not(attribute::internalRefId = //accessPointRef/@id)])">BREX-S1-00059: Only when the reference target is an access point can the value of attribute internalRefTargetType be irtt16 (Chap 3.9.5.2.1.2, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[attribute::internalRefTargetType=&quot;irtt11&quot; and not(attribute::internalRefId = //hotspot/@id or normalize-space(attribute::referredFragment) != &quot;&quot;)])">BREX-S1-00060: Only when the reference target is a hotspot can the value of attribute internalRefTargetType be irtt11 (Chap 3.9.5.2.1.2, Para 2.1, and Chap 3.9.5.2.1.8, Para 2.3 and Para 2.4.1).</sch:assert>
    </sch:rule>
    <sch:rule context="externalPubIssueDate">
      <sch:assert test="not(//externalPubIssueDate[(attribute::day and not(attribute::month)) or (attribute::month and not(attribute::year))])">BREX-S1-00061: In a date, if the month is given then a year must also be given and if the day is given then a month is required. (Chap 3.9.5.2.1.2, Para 2.5.2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="warningRef">
      <sch:assert test="not(//warningRef/dmRef/dmRefIdent/dmCode[(attribute::infoCode!=&quot;012&quot; and attribute::infoCode!=&quot;0A4&quot;)])">BREX-S1-00062: The dmRef element in a warningRef element must point only at a warning repository data module (Chap 3.9.5.2.1.2, Para 2.7).</sch:assert>
    </sch:rule>
    <sch:rule context="cautionRef">
      <sch:assert test="not(//cautionRef/dmRef/dmRefIdent/dmCode[(attribute::infoCode!=&quot;012&quot; and attribute::infoCode!=&quot;0A5&quot;)])">BREX-S1-00063: The dmRef in a cautionRef element must point only at a caution repository data module (Chap 3.9.5.2.1.2, Para 2.7).</sch:assert>
    </sch:rule>
    <sch:rule context="sequentialList">
      <sch:assert test="not(//sequentialList/listItem/para/sequentialList/listItem/para[child::sequentialList])">BREX-S1-00064: Sequential (ordered) lists are limited to a maximum of two levels (Chap 3.9.5.2.1.3, Para 2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="proceduralStep"/>
    <sch:rule context="sequentialList"/>
    <sch:rule context="action">
      <sch:assert test="not(//action/randomList/listItem/para[child::sequentialList or child::randomList or child::definitionList])">BREX-S1-00067: The use of random lists within a fault isolation action is strictly limited to one level. (Chap 3.9.5.2.1.3, Para 2.2).</sch:assert>
    </sch:rule>
    <sch:rule context="table"/>
    <sch:rule context="internalRef">
      <sch:assert test="not(//internalRef[not(attribute::internalRefId) and (not(attribute::referredFragment) or normalize-space(attribute::referredFragment) = &quot;&quot;)])">BREX-S1-00069: An internal reference must point at a target, either by an internalRefId attribute or a referredFragment attribute (Chap 3.9.5.2.1.8, Para 2.4.1).</sch:assert>
    </sch:rule>
    <sch:rule context="taskDuration">
      <sch:assert test="not(//taskDuration[attribute::unitOfMeasure != &quot;h&quot; and attribute::unitOfMeasure != &quot;d&quot;])">BREX-S1-00070: Task duration time must be given as one of the two characters h or d  (for manhour and manday) (Chap 3.9.5.2.1.9, Para 2.1.3).</sch:assert>
    </sch:rule>
    <sch:rule context="estimatedTime">
      <sch:assert test="not(//estimatedTime[attribute::unitOfMeasure != &quot;h&quot;])">BREX-S1-00072: Estimated time must be given as one character = h (for  manhour) (Chap 3.9.5.2.1.9, Para 2.3.1.4).</sch:assert>
    </sch:rule>
    <sch:rule context="supportEquipDescr">
      <sch:assert test="not(//supportEquipDescr[attribute::materialUsage=&quot;mu01&quot; or attribute::materialUsage=&quot;mu02&quot; or attribute::materialUsage =&quot;mu03&quot; or attribute::materialUsage =&quot;mu04&quot; or attribute::materialUsage =&quot;mu06&quot;])">BREX-S1-00073: A support equipment can not be discarded, retained, modified, or referenced (Chap 3.9.5.2.1.9, Para 2.5.1).</sch:assert>
    </sch:rule>
    <sch:rule context="preliminaryRqmts">
      <sch:assert test="not(//preliminaryRqmts[descendant::materialSetRef[not(following-sibling::embeddedSupportEquipDescr or following-sibling::embeddedSupplyDescr or following-sibling::embeddedSpareDescr) ]])">BREX-S1-00261: Element materialSetRef must not be used in preliminary requirements without either a supplementary element embeddedSupportEquipDescr, embeddedSupplyDescr or embeddedSpareDescr (Chap 3.9.5.2.1.9, Para 2.5.1.3.8)</sch:assert>
    </sch:rule>
    <sch:rule context="supplyDescr">
      <sch:assert test="not(//supplyDescr[attribute::materialUsage =&quot;mu03&quot; or attribute::materialUsage =&quot;mu06&quot;])">BREX-S1-00074 : A supply can not be modified (Chap 3.9.5.2.1.9, Para 2.6.1).</sch:assert>
    </sch:rule>
    <sch:rule context="circuitBreakerRef">
      <sch:assert test="not(//circuitBreakerRef[attribute::circuitBreakerAction=&quot;open-order&quot; or attribute::circuitBreakerAction=&quot;close-order&quot;])">BREX-S1-00071: The open-order and close-order values are not allowed for the attribute circuitBreakerAction in the circuitBreakerRef element. (Chap 3.9.5.2.1.10, Para 2.1.1).</sch:assert>
    </sch:rule>
    <sch:rule context="quantity">
      <sch:assert test="not(//quantity[attribute::quantityType=&quot;qty02&quot; and string-length(attribute::quantityTypeSpecifics)!= 3])">BREX-S1-00075: When the quantity type is price then a currency code must be provided iaw ISO 4217 (Chap 3.9.5.2.1.10, Para 2.1.4).</sch:assert>
    </sch:rule>
    <sch:rule context="quantity">
      <sch:assert test="not(//quantity[attribute::quantityType=&quot;qty02&quot;  and descendant-or-self::*[attribute::quantityUnitOfMeasure]])">BREX-S1-00076: When the quantity type is price then unit of measure does not apply (only currency code does) (Chap 3.9.5.2.1.10, Para 2.1.4).</sch:assert>
    </sch:rule>
    <sch:rule context="applicRef">
      <sch:assert test="not(//applicRef/dmRef/dmRefIdent/dmCode[attribute::infoCode!=&quot;0A2&quot;])">BREX-S1-00133: When applicability is externalized a proper CIR data module (using IC=0A2) must be referred by the element applicRef. (Chap 3.9.5.2.1.13, Para 2.1)</sch:assert>
    </sch:rule>
    <sch:rule context="levelledPara"/>
    <sch:rule context="levelledPara">
      <sch:assert test="not(//levelledPara[count(ancestor-or-self::levelledPara) &gt; 8])">BREX-S1-00078: The subparagraph breakdown must never exceed eight levels of depth. (Chap 3.9.5.2.2, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="proceduralStep"/>
    <sch:rule context="proceduralStep">
      <sch:assert test="not(//proceduralStep[count(ancestor-or-self::proceduralStep) &gt; 8])">BREX-S1-00080: The procedural substep breakdown must never exceed eight levels of depth (Chap 3.9.5.2.3, Para 2.4.1).</sch:assert>
    </sch:rule>
    <sch:rule context="proceduralStep">
      <sch:assert test="not(//proceduralStep[child::title and (ancestor::proceduralStep[1][not(child::title)] or (ancestor::*[self::proceduralStep or self::mainProcedure])[1][child::*[self::proceduralStep[not(child::title)] or self::proceduralStepAlts[child::proceduralStep[not(child::title)]]]])])">BREX-S1-00264: A step must have a title if any of its sibling steps have a title and a substep can have title only if its parent step has a title. (Chap 3.9.5.2.3, Para 2.4.3).</sch:assert>
    </sch:rule>
    <sch:rule context="catalogSeqNumberRef">
      <sch:assert test="not(//catalogSeqNumberRef[attribute::figureNumberVariant and normalize-space(attribute::figureNumberVariant) = &quot;&quot;])">BREX-S1-00081: The attribute figureNumberVariant must not be empty or contain a space string (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="catalogSeqNumberRef">
      <sch:assert test="not(//catalogSeqNumberRef[attribute::itemVariant and normalize-space(attribute::itemVariant) = &quot;&quot;])">BREX-S1-00082: The attribute itemVariant must not be empty or contain a space string (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="catalogSeqNumber">
      <sch:assert test="not(//catalogSeqNumber[attribute::figureNumberVariant and normalize-space(attribute::figureNumberVariant) = &quot;&quot;])">BREX-S1-00083: The attribute figureNumberVariant must not be empty or contain a space string (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="catalogSeqNumber">
      <sch:assert test="not(//catalogSeqNumber[attribute::itemVariant and normalize-space(attribute::itemVariant) = &quot;&quot;])">BREX-S1-00084: The attribute itemVariant must not be empty or contain a space string (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="categoryOneContainerLocation">
      <sch:assert test="not(//categoryOneContainerLocation[attribute::figureNumberVariant and normalize-space(attribute::figureNumberVariant) = &quot;&quot;])">BREX-S1-00085: The attribute figureNumberVariant must not be empty or contain a space string (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="categoryOneContainerLocation">
      <sch:assert test="not(//categoryOneContainerLocation[attribute::itemVariant and normalize-space(attribute::itemVariant) = &quot;&quot;])">BREX-S1-00086: The attribute itemVariant must not be empty or contain a space string (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="catalogSeqNumber">
      <sch:assert test="not(//catalogSeqNumber[(attribute::systemCode or attribute::subSystemCode or attribute::subSubSystemCode or attribute::assyCode) and (not(attribute::systemCode) or not(attribute::subSystemCode) or not(attribute::subSubSystemCode) or not(attribute::assyCode))])">BREX-S1-00087: A chapterized catalogue sequence number must contain all SNS derived constituents (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="categoryOneContainerLocation">
      <sch:assert test="not(//categoryOneContainerLocation[(attribute::systemCode or attribute::subSystemCode or attribute::subSubSystemCode or attribute::assyCode) and (not(attribute::systemCode) or not(attribute::subSystemCode) or not(attribute::subSubSystemCode) or not(attribute::assyCode))])">BREX-S1-00088: A chapterized catalogue sequence number must contain all SNS derived constituents (Chap 3.9.5.2.7, Para 2.4).</sch:assert>
    </sch:rule>
    <sch:rule context="catalogSeqNumberRef">
      <sch:assert test="not(//catalogSeqNumberRef[(attribute::systemCode or attribute::subSystemCode or attribute::subSubSystemCode or attribute::assyCode) and (not(attribute::systemCode) or not(attribute::subSystemCode) or not(attribute::subSubSystemCode) or not(attribute::assyCode))])">BREX-S1-00089: A chapterized catalogue sequence number reference must contain all SNS derived constituents (Chap 3.9.5.2.7, Para 2.4.2.2).</sch:assert>
    </sch:rule>
    <sch:rule context="@sparePartClassCode"/>
    <sch:rule context="unitOfIssueQualificationSegment">
      <sch:assert test="not(//unitOfIssueQualificationSegment[not(preceding-sibling::unitOfIssue)])">BREX-S1-00091: unitOfIssueQualificationSegment must not be given if unitOfIssue is not used. (Chap 3.9.5.2.7, Para 2.5.5.3.9).</sch:assert>
    </sch:rule>
    <sch:rule context="warningSpec">
      <sch:assert test="not(//warningSpec/warningAndCautionPara/internalRef)">BREX-S1-00092: The element internalRef is not allowed in a warning in the Warning Repository data module since the warnings in the repository must be context insensitive (Chap 3.9.5.2.11.13, Para 2.1.1)</sch:assert>
    </sch:rule>
    <sch:rule context="cautionSpec">
      <sch:assert test="not(//cautionSpec/warningAndCautionPara/internalRef)">BREX-S1-00093: The element internalRef is not allowed in a caution in the Caution Repository data module since the cautions in the repository must be context insensitive (Chap 3.9.5.2.11.14, Para 2.1.1)</sch:assert>
    </sch:rule>
    <sch:rule context="sb">
      <sch:assert test="not(//sb[child::sbMaterialInfoContent[ancestor::dmodule[child::identAndStatusSection[child::dmAddress[child::dmIdent[child::dmCode[attribute::infoCode!=&quot;934&quot;]]]]]]])">BREX-S1-00094: When element sbMaterialInfoContent is used as direct child of element sb then the information code of the data module must be 934 (Chap 3.9.5.2.15, Para 2.3.1)</sch:assert>
    </sch:rule>
    <sch:rule context="sbRevisionInfo">
      <sch:assert test="not(//sbRevisionInfo/sbTopic[attribute::sbTopicType=&quot;sbtt02&quot; or attribute::sbTopicType=&quot;sbtt03&quot; or attribute::sbTopicType=&quot;sbtt04&quot;])">BREX-S1-00095: Generic values 'sbtt02', 'sbtt03' and 'sbtt04' are not allowed in service bulletin revision information (Chap 3.9.5.2.15, Para 2.3.3 and Para 2.3.3.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbSummary">
      <sch:assert test="not(//sbSummary/sbTopic[attribute::sbTopicType=&quot;sbtt01&quot; or attribute::sbTopicType=&quot;sbtt03&quot; or attribute::sbTopicType=&quot;sbtt04&quot;])">BREX-S1-00096: Generic values 'sbtt01', 'sbtt03' and 'sbtt04' are not allowed in service bulletin summary (Chap 3.9.5.2.15, Para 2.3.4 and Para 2.3.3.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbPlanningInfo">
      <sch:assert test="not(//sbPlanningInfo/sbTopic[attribute::sbTopicType=&quot;sbtt01&quot; or attribute::sbTopicType=&quot;sbtt02&quot; or attribute::sbTopicType=&quot;sbtt04&quot;])">BREX-S1-00097: Generic values 'sbtt01', 'sbtt02' and 'sbtt04' are not allowed in service bulletin planning information (Chap 3.9.5.2.15, Para 2.3.5 and Para 2.3.3.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbAdditionalInfo">
      <sch:assert test="not(//sbAdditionalInfo/sbTopic[attribute::sbTopicType=&quot;sbtt01&quot; or attribute::sbTopicType=&quot;sbtt02&quot; or attribute::sbTopicType=&quot;sbtt03&quot;])">BREX-S1-00098: Generic values 'sbtt01', 'sbtt02' and 'sbtt03' are not allowed in service bulletin additional information (Chap 3.9.5.2.15, Para 2.3.8 and Para 2.3.3.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbTimeCompliance">
      <sch:assert test="not(//sbTimeCompliance[attribute::sbTimeComplianceType = &quot;sbtct01&quot; and child::limit[attribute::limitTypeValue != &quot;po&quot;]])">BREX-S1-00099: A basic service bulletin accomplishment limit has to be considered once (Chap 3.9.5.2.15.1, Para 2.6.1.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbTimeCompliance">
      <sch:assert test="not(//sbTimeCompliance[attribute::sbTimeComplianceType = &quot;sbtct02&quot; and child::limit[attribute::limitTypeValue != &quot;po&quot;]])">BREX-S1-00100: A grace period limit has to be considered once (Chap 3.9.5.2.15.1, Para 2.6.1.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbTimeCompliance">
      <sch:assert test="not(//sbTimeCompliance[attribute::sbTimeComplianceType = &quot;sbtct03&quot; and child::limit[attribute::limitTypeValue != &quot;pe&quot;]])">BREX-S1-00101: A repetitive inspection must be in accordance with periodic limit type (Chap 3.9.5.2.15.1, Para 2.6.1.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbDuration">
      <sch:assert test="not(//sbDuration[child::quantity[descendant-or-self::*[attribute::quantityUnitOfMeasure != &quot;h&quot; and attribute::quantityUnitOfMeasure != &quot;d&quot; ]]])">BREX-S1-00102: The quantity unit of measure for service bulletin duration time must be given as one of the two characters h or d  (for  hour and day).(Chap 3.9.5.2.15.1, Para 2.7.1.2)</sch:assert>
    </sch:rule>
    <sch:rule context="sbEstimatedTime">
      <sch:assert test="not(//sbEstimatedTime[child::quantity[descendant-or-self::*[attribute::quantityUnitOfMeasure != &quot;h&quot;]]])">BREX-S1-00103: The quantity unit of measure for service bulletin estimated time must be given as one character = h (for  manhour) (Chap 3.9.5.2.15.1, Para 2.7.1.3)</sch:assert>
    </sch:rule>
    <sch:rule context="sbIndividualRemovedSpare">
      <sch:assert test="not(//sbIndividualRemovedSpare/sbRemovedSpareDescr[attribute::materialUsage=&quot;mu03&quot; or attribute::materialUsage=&quot;mu04&quot; or @materialUsage =&quot;mu05&quot;])">BREX-S1-00104: A removed spare can not be modified from another spare, referenced or set of removed material (Chap 3.9.5.2.15.2, Para 2.5.2.1)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::natoStockNumber[attribute::id]])">BREX-S1-00105: Attribute @id must not be used for element natoStockNumber in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.6.4).</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::natoStockNumber[child::refs]])">BREX-S1-00106: Element refs must not be used natoStockNumber in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.6.4).</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::productAndModel[descendant-or-self::identNumber[child::refs or child::remarks]]]])">BREX-S1-00107: Element refs and element remarks must not be used in identNumber in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.6.5).</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::dataRestrictions[attribute::id or attribute::authorityName or attribute::authorityDocument]])">BREX-S1-00108: Attributes @id, @authorityName and @authorityDocument must not be used for element dataRestrictions in a front matter data module (Chap 3.9.5.2.16, Para 2.3.1.9)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::graphic[attribute::id or attribute::authorityName or attribute::authorityDocument]])">BREX-S1-00109: Attributes @id, @authorityName and @authorityDocument must not be used for element graphic in a front matter data module (Chap 3.9.5.2.16, Para 2.3.1.10)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::enterpriseSpec[attribute::id or attribute::authorityName or attribute::authorityDocument]]])">BREX-S1-00110: Attributes @id, @authorityName and @authorityDocument must not be used for element enterpriseSpec in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.11)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::symbol[attribute::id or attribute::authorityName or attribute::authorityDocument]])">BREX-S1-00111: Attributes @id, @authorityName and @authorityDocument must not be used for element symbol in a front matter data module (Chap 3.9.5.2.16, Para 2.3.1.12)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::responsiblePartnerCompany[attribute::id]]])">BREX-S1-00112: Attribute @id must not be used for element responsiblePartnerCompany in a front matter data module (Chap 3.9.5.2.16, Para 2.3.1.13)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::responsiblePartnerCompany[not(descendant-or-self::enterpriseName)]]])">BREX-S1-00113: A front matter title page must always specify the name of the publisher (Chap 3.9.5.2.16, Para 2.3.1.12)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::publisherLogo[attribute::id or attribute::authorityName or attribute::authorityDocument]]])">BREX-S1-00114: Attributes @id, @authorityName and @authorityDocument must not be used for element publisherLogo in a front matter data module (Chap 3.9.5.2.16, Para 2.3.1.14)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::barCode[attribute::applicRefId]]])">BREX-S1-00115: Attribute @applicRefId must not be used for element barCode in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.15)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::barCode[child::barCodeSymbol[attribute::id]]]])">BREX-S1-00116: Attribute @id must not be used for element barCodeSymbol in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.15.2)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::frontMatterInfo[child::reducedPara[child::reducedRandomList[attribute::* and attribute::listItemPrefix!=&quot;pf03&quot;]]]]])">BREX-S1-00117: No attributes must be used for element reducedRandomList in a front matter title page except attribute @listItemPrefix which must be set to value pf03 (Chap 3.9.5.2.16, Para 2.3.1.16.2)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::frontMatterInfo[descendant-or-self::reducedRandomListItem[attribute::id or attribute::applicRefId or attribute::authorityName or attribute::authorityDocument]]]])">BREX-S1-00118: Attributes @id, @applicRefId, @authorityName and @authorityDocument must not be used for element reducedRandomListItem in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.16.2)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTitlePage[child::frontMatterInfo[descendant-or-self::reducedRandomListItem[child::reducedListItemPara[attribute::id or attribute::applicRefId]]]]])">BREX-S1-00119: Attributes @id and @applicRefId must not be used for element reducedListItemPara in a front matter title page (Chap 3.9.5.2.16, Para 2.3.1.16.2)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTableOfContent[descendant-or-self::tocEntry[child::dmRef[not(descendant-or-self::techName and descendant-or-self::infoName)]]]])">BREX-S1-00120: References to data modules from the front matter tables of content must include a complete data module title (techName + infoName) as it must be presented (Chap 3.9.5.2.16, Para 2.3.2.3.3)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTableOfContent[descendant-or-self::tocEntry[child::dmRef[not(attribute::applicRefId)]]]])">BREX-S1-00121: References to data modules in the front matter tables of content must include applicability information. (Chap 3.9.5.2.16, Para 2.3.2.3.3)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::dmRef[attribute::referredFragment]])">BREX-S1-00122: References to other data modules from a front matter data module must be to data modules themselves, not to any specific part of them (Chap 3.9.5.2.16, Para 2.3.2.3.3)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::dmRef[attribute::id or attribute::authorityName or attribute::authorityDocument]])">BREX-S1-00123: Attributes @id, @authorityName and @authorityDocument must not be used for  references to other data modules in a front matter data module (Chap 3.9.5.2.16, Para 2.3.2.3.3)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTableOfContent[descendant-or-self::tocEntry[child::pmRef[not(descendant-or-self::pmTitle)]]]])">BREX-S1-00124: References to publication modules in the front matter tables of content must include a full title (pmTitle) as it must be presented (Chap 3.9.5.2.16, Para 2.3.2.3.4)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTableOfContent[descendant-or-self::tocEntry[child::pmRef[not(attribute::applicRefId)]]]])">BREX-S1-00125: References to publication modules in the front matter tables of content must include applicability information. (Chap 3.9.5.2.16, Para 2.3.2.3.4)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::pmRef[attribute::id or attribute::authorityName or attribute::authorityDocument]])">BREX-S1-00126: Attributes @id, @authorityName and @authorityDocument must not be used for  references to publication modules in a front matter data module  (Chap 3.9.5.2.16, Para 2.3.2.3.4)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTableOfContent[descendant-or-self::tocEntry[child::externalPubRef[not(descendant-or-self::externalPubCode)]]]])">BREX-S1-00127: References to external publications in the front matter tables of content must include the external publication code (externalPubCode) as it must be presented (Chap 3.9.5.2.16, Para 2.3.2.3.5)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[child::frontMatterTableOfContent[descendant-or-self::tocEntry[child::externalPubRef[not(attribute::applicRefId)]]]])">BREX-S1-00128: References to external publications in the front matter tables of content must include applicability information. (Chap 3.9.5.2.16, Para 2.3.2.3.5)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::externalPubRef[attribute::id or attribute::authorityName or attribute::authorityDocument]])">BREX-S1-00129: Attributes @id, @authorityName and @authorityDocument must not be used for  references to external publications in a front matter data module  (Chap 3.9.5.2.16, Para 2.3.2.3.5)</sch:assert>
    </sch:rule>
    <sch:rule context="frontMatter">
      <sch:assert test="not(//frontMatter[descendant-or-self::footnote[descendant-or-self::para[child::sequentialList or child::randomList or child::definitionList]]])">BREX-S1-00130: Front matter foot notes must not contain lists (Chap 3.9.5.2.16, Para 2.3.3.3)</sch:assert>
    </sch:rule>
    <sch:rule context="dmAddress">
      <sch:assert test="not(//dmAddress[child::dmIdent[child::dmCode[attribute::infoCode=&quot;0A2&quot; and ancestor::dmodule[descendant::applicRef]]]])">BREX-S1-00131: The element applicRef must not be used in the applicability Repository (Chap 3.9.5.3, Para 2.1.3).</sch:assert>
    </sch:rule>
    <sch:rule context="dmAddress">
      <sch:assert test="not(//dmAddress[child::dmIdent[child::dmCode[attribute::infoCode=&quot;0A2&quot; and ancestor::dmodule[descendant::referencedApplicGroupRef]]]])">BREX-S1-00132: The element referencedApplicGroupRef must not be used in the applicability Repository (Chap 3.9.5.3, Para 2.1.3).</sch:assert>
    </sch:rule>
    <sch:rule context="expression">
      <sch:assert test="not(//expression[ancestor::dmodule[descendant::commonRepository and descendant::identAndStatusSection[child::dmAddress[child::dmIdent[child::dmCode[attribute::infoCode=&quot;0A2&quot;]]]]] and not(ancestor::referencedApplicGroup)])">BREX-S1-00134: In an applicability repository, the element expression (child of element applic) is used only in the referencedApplicGroup element (Chap 3.9.5.3, Para 2.4)</sch:assert>
    </sch:rule>
    <sch:rule context="productAttribute">
      <sch:assert test="not(//productAttribute[attribute::valuePattern and (attribute::valueDataType = &quot;boolean&quot; or attribute::valueDataType = &quot;integer&quot; or attribute::valueDataType = &quot;real&quot;)])">BREX-S1-00135: A product attribute value pattern is not allowed when the product attribute value data type is boolean, integer or real (Chap 3.9.5.3.1, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="productAttribute">
      <sch:assert test="not(//productAttribute[child::enumeration[attribute::enumerationLabel and attribute::applicPropertyValues[contains(string(.),&quot;~&quot;) or contains(string(.),&quot;|&quot;)]]])">BREX-S1-00136: Enumerations with enumerationLabel attribute cannot specify a range or list of values in applicPropertyValues attribute (Chap 3.9.5.3.1, Para 2.3.3.4).</sch:assert>
    </sch:rule>
    <sch:rule context="condType">
      <sch:assert test="not(//condType[attribute::valuePattern and (attribute::valueDataType = &quot;boolean&quot; or attribute::valueDataType = &quot;integer&quot; or attribute::valueDataType = &quot;real&quot;)])">BREX-S1-00137: A condition type value pattern is not allowed when the product attribute value data type is boolean, integer or real (Chap 3.9.5.3.2, Para 2.3.1).</sch:assert>
    </sch:rule>
    <sch:rule context="@itemLocationCode"/>
    <sch:rule context="@learnCode"/>
    <sch:rule context="dmCode">
      <sch:assert test="not(//dmCode[attribute::learnCode and not(attribute::learnEventCode)])">BREX-S1-00140: Whenever a learn code is used, the learn event code must be used (Chap 4.3.10, Para 1).</sch:assert>
    </sch:rule>
    <sch:rule context="@learnEventCode"/>
    <sch:rule context="@infoEntityIdent"/>
    <sch:rule context="@infoEntityRefIdent"/>
    <sch:rule context="">
      <sch:assert test="not(/dmodule[content/brDoc]/identAndStatusSection/dmAddress/dmIdent/dmCode[@infoCode!=&quot;024&quot; or @itemLocationCode!=&quot;D&quot;])">BREX-S1-00265: The information code for a business rules document data module is 024, and the item location code is set to D. (Chap 4.10.1, Para 3).</sch:assert>
    </sch:rule>
    <sch:rule context="">
      <sch:assert test="not(/dmodule/content/brDoc//brDecision[(brDecisionText or brDecisionValueGroup) and not(@brDecisionIdentNumber)])">BREX-S1-00266: A business rules decision must be assigned a number using attribute brDecisionIdentNumber.  (Chap 4.10.1, Para 4.4).</sch:assert>
    </sch:rule>
    <sch:rule context="snsSystem"/>
    <sch:rule context="snsSubSystem"/>
    <sch:rule context="snsSubSubSystem"/>
    <sch:rule context="snsAssy"/>
    <sch:rule context="structureObjectRule">
      <sch:assert test="not(//structureObjectRule/objectPath[not(attribute::allowedObjectFlag)])">BREX-S1-00149: Attribute allowedObjectFlag must be specified for every element objectPath (Chap 4.10.2.2, Para 2.1.2).</sch:assert>
    </sch:rule>
    <sch:rule context="">
      <sch:assert test="not(/dmodule[content/brex]/identAndStatusSection/dmAddress/dmIdent/dmCode[@modelIdentCode!=&quot;S1000D&quot; and @assyCode!=&quot;00&quot; and @assyCode!=&quot;0000&quot;])">BREX-S1-00144: SNS must not be applied below sub-subsystem level. Unit/Assembly of the BREX DM must be 00 or 0000. (Chap 4.10.2.4, Para 2).</sch:assert>
    </sch:rule>
    <sch:rule context="">
      <sch:assert test="not(/dmodule[content/brex]/identAndStatusSection/dmAddress/dmIdent/dmCode[@infoCode!=&quot;022&quot; or @itemLocationCode!=&quot;D&quot;])">BREX-S1-00268: The information code for a BREX data module is 022, and the item location code is set to D. (Chap 4.10.2.4, Para 2).</sch:assert>
    </sch:rule>
    <sch:rule context="accessPointAlts">
      <sch:assert test="not(//accessPointAlts[child::accessPoint[following-sibling::accessPoint] and child::accessPoint[not(attribute::applicRefId)]])">BREX-S1-00150: In an accessPoint alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="assocWarningMalfunctionAlts">
      <sch:assert test="not(//assocWarningMalfunctionAlts[child::assocWarningMalfunction[following-sibling::assocWarningMalfunction] and child::assocWarningMalfunction[not(attribute::applicRefId)]])">BREX-S1-00151: In an assocWarningMalfunction alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="bitMessageAlts">
      <sch:assert test="not(//bitMessageAlts[child::bitMessage[following-sibling::bitMessage] and child::bitMessage[not(attribute::applicRefId)]])">BREX-S1-00152: In an bitMessage alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="circuitBreakerAlts">
      <sch:assert test="not(//circuitBreakerAlts[child::circuitBreaker[following-sibling::circuitBreaker] and child::circuitBreaker[not(attribute::applicRefId)]])">BREX-S1-00153: In an circuitBreaker alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="commonInfoDescrParaAlts">
      <sch:assert test="not(//commonInfoDescrParaAlts[child::commonInfoDescrPara[following-sibling::commonInfoDescrPara] and child::commonInfoDescrPara[not(attribute::applicRefId)]])">BREX-S1-00154: In an commonInfoDescrPara alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="correlatedFaultAlts">
      <sch:assert test="not(//correlatedFaultAlts[child::correlatedFault[following-sibling::correlatedFault] and child::correlatedFault[not(attribute::applicRefId)]])">BREX-S1-00155: In an correlatedFault alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="detectedFaultAlts">
      <sch:assert test="not(//detectedFaultAlts[child::detectedFault[following-sibling::detectedFault] and child::detectedFault[not(attribute::applicRefId)]])">BREX-S1-00156: In an detectedFault alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="dialogAlts">
      <sch:assert test="not(//dialogAlts[child::dialog[following-sibling::dialog] and child::dialog[not(attribute::applicRefId)]])">BREX-S1-00157: In an dialog alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="dmNodeAlts">
      <sch:assert test="not(//dmNodeAlts[child::dmNode[following-sibling::dmNode] and child::dmNode[not(attribute::applicRefId)]])">BREX-S1-00158: In an dmNode alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="dmSeqAlts">
      <sch:assert test="not(//dmSeqAlts[child::dmSeq[following-sibling::dmSeq] and child::dmSeq[not(attribute::applicRefId)]])">BREX-S1-00159: In an dmSeq alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="electricalEquipAlts">
      <sch:assert test="not(//electricalEquipAlts[child::electricalEquip[following-sibling::electricalEquip] and child::electricalEquip[not(attribute::applicRefId)]])">BREX-S1-00160: In an electricalEquip alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="figureAlts">
      <sch:assert test="not(//figureAlts[child::figure[following-sibling::figure] and child::figure[not(attribute::applicRefId)]])">BREX-S1-00161: In an figure alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="functionalItemAlts">
      <sch:assert test="not(//functionalItemAlts[child::functionalItem[following-sibling::functionalItem] and child::functionalItem[not(attribute::applicRefId)]])">BREX-S1-00162: In an functionalItem alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="harnessAlts">
      <sch:assert test="not(//harnessAlts[child::harness[following-sibling::harness] and child::harness[not(attribute::applicRefId)]])">BREX-S1-00163: In an harness alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="isolatedFaultAlts">
      <sch:assert test="not(//isolatedFaultAlts[child::isolatedFault[following-sibling::isolatedFault] and child::isolatedFault[not(attribute::applicRefId)]])">BREX-S1-00164: In an isolatedFault alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="isolationProcedureEndAlts">
      <sch:assert test="not(//isolationProcedureEndAlts[child::isolationProcedureEnd[following-sibling::isolationProcedureEnd] and child::isolationProcedureEnd[not(attribute::applicRefId)]])">BREX-S1-00165: In an isolationProcedureEnd alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="isolationStepAlts">
      <sch:assert test="not(//isolationStepAlts[child::isolationStep[following-sibling::isolationStep] and child::isolationStep[not(attribute::applicRefId)]])">BREX-S1-00166: In an isolationStep alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="levelledParaAlts">
      <sch:assert test="not(//levelledParaAlts[child::levelledPara[following-sibling::levelledPara] and child::levelledPara[not(attribute::applicRefId)]])">BREX-S1-00167: In an levelledPara alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="messageAlts">
      <sch:assert test="not(//messageAlts[child::message[following-sibling::message] and child::message[not(attribute::applicRefId)]])">BREX-S1-00168: In an message alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="multimediaAlts">
      <sch:assert test="not(//multimediaAlts[child::multimedia[following-sibling::multimedia] and child::multimedia[not(attribute::applicRefId)]])">BREX-S1-00169: In an multimedia alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="observedFaultAlts">
      <sch:assert test="not(//observedFaultAlts[child::observedFault[following-sibling::observedFault] and child::observedFault[not(attribute::applicRefId)]])">BREX-S1-00170: In an observedFault alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="proceduralStepAlts">
      <sch:assert test="not(//proceduralStepAlts[child::proceduralStep[following-sibling::proceduralStep] and child::proceduralStep[not(attribute::applicRefId)]])">BREX-S1-00171: In an proceduralStep alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="supplyRqmtAlts">
      <sch:assert test="not(//supplyRqmtAlts[child::supplyRqmt[following-sibling::supplyRqmt] and child::supplyRqmt[not(attribute::applicRefId)]])">BREX-S1-00172: In an supplyRqmt alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="taskDefinitionAlts">
      <sch:assert test="not(//taskDefinitionAlts[child::taskDefinition[following-sibling::taskDefinition] and child::taskDefinition[not(attribute::applicRefId)]])">BREX-S1-00173: In an taskDefinition alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="toolAlts">
      <sch:assert test="not(//toolAlts[child::tool[following-sibling::tool] and child::tool[not(attribute::applicRefId)]])">BREX-S1-00174: In an tool alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="warningMalfunctionAlts">
      <sch:assert test="not(//warningMalfunctionAlts[child::warningMalfunction[following-sibling::warningMalfunction] and child::warningMalfunction[not(attribute::applicRefId)]])">BREX-S1-00175: In an warningMalfunction alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="wireAlts">
      <sch:assert test="not(//wireAlts[child::wire[following-sibling::wire] and child::wire[not(attribute::applicRefId)]])">BREX-S1-00176: In an wire alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="zoneAlts">
      <sch:assert test="not(//zoneAlts[child::zone[following-sibling::zone] and child::zone[not(attribute::applicRefId)]])">BREX-S1-00177: In an zone alternates group each alternate must specify a valid applicability annotation  (Chap 4.13.3, Para 2 and Para 3)</sch:assert>
    </sch:rule>
    <sch:rule context="randomList">
      <sch:assert test="not(//randomList/listItem/para/randomList/listItem/para/randomList/listItem/para[child::randomList])">BREX-S1-00178: There are [at the most] three levels of random lists (Chap 6.2.2, Para 2.6.2.1).</sch:assert>
    </sch:rule>
    <sch:rule context="updateIdent"/>
    <sch:rule context="dmIdent"/>
    <sch:rule context="@accessPointTypeValue"/>
    <sch:rule context="@acronymType"/>
    <sch:rule context="@actionIdentType"/>
    <sch:rule context="@barCodeSymbology"/>
    <sch:rule context="@brDecisionPointPriority"/>
    <sch:rule context="@brSeverityLevel"/>
    <sch:rule context="@brStatus"/>
    <sch:rule context="@cancelCaption"/>
    <sch:rule context="@caveat"/>
    <sch:rule context="@checkListCategory"/>
    <sch:rule context="@circuitBreakerRefType"/>
    <sch:rule context="@circuitBreakerType"/>
    <sch:rule context="@color"/>
    <sch:rule context="@commentPriorityCode"/>
    <sch:rule context="@commercialClassification"/>
    <sch:rule context="@crewMemberType"/>
    <sch:rule context="@crewStepCondition"/>
    <sch:rule context="@defaultBrSeverityLevel"/>
    <sch:rule context="@drillType"/>
    <sch:rule context="@emphasisType"/>
    <sch:rule context="@frontMatterInfoType"/>
    <sch:rule context="@frontMatterType"/>
    <sch:rule context="@function"/>
    <sch:rule context="@functionalItemRefType"/>
    <sch:rule context="@functionalItemType"/>
    <sch:rule context="@genericPropertyType"/>
    <sch:rule context="@hazardousClassValue"/>
    <sch:rule context="@icnInfoItemType"/>
    <sch:rule context="@icnResourceFileType"/>
    <sch:rule context="@icnSourceFileType"/>
    <sch:rule context="@installationLocationType"/>
    <sch:rule context="@internalRefTargetType"/>
    <sch:rule context="@itemCharacteristic"/>
    <sch:rule context="@itemOriginator"/>
    <sch:rule context="@limitUnitType"/>
    <sch:rule context="@listItemPrefix"/>
    <sch:rule context="@lowestLevel"/>
    <sch:rule context="@maintLevelCode"/>
    <sch:rule context="@materialUsage"/>
    <sch:rule context="@operationType"/>
    <sch:rule context="@partCharacteristic"/>
    <sch:rule context="@partStatus"/>
    <sch:rule context="@partUsageCode"/>
    <sch:rule context="@pmEntryType"/>
    <sch:rule context="@pmType"/>
    <sch:rule context="@productCategory"/>
    <sch:rule context="@productItemType"/>
    <sch:rule context="@quantityType"/>
    <sch:rule context="@refType"/>
    <sch:rule context="@reqCondCategory"/>
    <sch:rule context="@reqTechInfoCategory"/>
    <sch:rule context="@resetCaption"/>
    <sch:rule context="@responseType"/>
    <sch:rule context="@sbComplianceCategory"/>
    <sch:rule context="@sbImpactType"/>
    <sch:rule context="@sbMaterialType"/>
    <sch:rule context="@sbTaskCategory"/>
    <sch:rule context="@sbTimeComplianceType"/>
    <sch:rule context="@sbTopicType"/>
    <sch:rule context="@scoEntryType"/>
    <sch:rule context="@securityClassification"/>
    <sch:rule context="@significantParaDataType"/>
    <sch:rule context="@skillLevelCode"/>
    <sch:rule context="@skillType"/>
    <sch:rule context="@softwareClassificationValue"/>
    <sch:rule context="@softwareCustomizationStatusValue"/>
    <sch:rule context="@sourceCriticality"/>
    <sch:rule context="@sourceTypeCode"/>
    <sch:rule context="@sourcingTypeValue"/>
    <sch:rule context="@submitCaption"/>
    <sch:rule context="@supervisorLevelCode"/>
    <sch:rule context="@supplyNumberType"/>
    <sch:rule context="@taskCode"/>
    <sch:rule context="@thresholdUnitOfMeasure"/>
    <sch:rule context="@updateReasonType"/>
    <sch:rule context="@verbatimStyle"/>
    <sch:rule context="@quantityUnitOfMeasure"/>
  </sch:pattern>
</sch:schema>
