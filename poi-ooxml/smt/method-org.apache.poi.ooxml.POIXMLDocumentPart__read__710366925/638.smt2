(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var664 0)
(declare-sort var2283 0)
(declare-sort var2549 0)
(declare-sort var2272 0)
(declare-sort var461 0)
(declare-sort var1829 0)
(declare-sort var2513 0)
(declare-sort var899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPackagePart/-804310696 (var664) var2272)
(declare-fun getContentType/323114383 (var2272) String)
(declare-fun getContentType/-305056247 (var1829) String)
(declare-fun cast-from-var461-to-var1829 (var461) var1829)
(declare-fun var2513_atWarn/914825121 (var2513) var899)
(declare-fun var899_log/1618568336 (var899 String) void)
(declare-const null-var664 var664)
(declare-const null-var2283 var2283)
(declare-const null-var2549 var2549)
(declare-const var461-GLOSSARY_DOCUMENT var461)
(declare-const var664-LOG var2513)
(declare-const var1973 var664) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLDocumentPart 
(assert (not (= var1973 null-var664)))
(declare-const var236 var2283) ; Statement: r12 := @parameter0: org.apache.poi.ooxml.POIXMLFactory 
(assert (not (= var236 null-var2283)))
(declare-const var3683 var2549) ; Statement: r5 := @parameter1: java.util.Map 
(assert (not (= var3683 null-var2549)))
(assert true)
(define-const var337 var2272 (getPackagePart/-804310696 var1973)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var1432 String (getContentType/323114383 var337)) ; Statement: $r4 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>() 
(define-const var2744 var461 var461-GLOSSARY_DOCUMENT) ; Statement: $r2 = <org.apache.poi.xwpf.usermodel.XWPFRelation: org.apache.poi.xwpf.usermodel.XWPFRelation GLOSSARY_DOCUMENT> 
(assert true)
(define-const var811 String (getContentType/-305056247 (cast-from-var461-to-var1829 var2744))) ; Statement: $r3 = virtualinvoke $r2.<org.apache.poi.xwpf.usermodel.XWPFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var531 Bool (= var1432 var811)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r6 = interfaceinvoke r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r0) 
(assert (not (= (ite var531 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2241 var2513 var664-LOG) ; Statement: $r37 = <org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.logging.log4j.Logger LOG> 
(define-const var766 var899 (var2513_atWarn/914825121 var2241)) ; Statement: $r38 = interfaceinvoke $r37.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atWarn()>() 
;(assert (var899_log/1618568336 var766 "POI does not currently support template.main+xml (glossary) parts.  Skipping this part for now.")) ; Statement: interfaceinvoke $r38.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("POI does not currently support template.main+xml (glossary) parts.  Skipping this part for now.") 

(declare-const var766!1 var899)
(declare-const var3294 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), getContentType/323114383=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.String), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var461-to-var1829=([org.apache.poi.xwpf.usermodel.XWPFRelation], org.apache.poi.ooxml.POIXMLRelation), var2513_atWarn/914825121=([org.apache.logging.log4j.Logger], org.apache.logging.log4j.LogBuilder), var899_log/1618568336=([org.apache.logging.log4j.LogBuilder, java.lang.String], void)}
; {var664=org.apache.poi.ooxml.POIXMLDocumentPart, var1973=r0, var2283=org.apache.poi.ooxml.POIXMLFactory, var236=r12, var2549=java.util.Map, var3683=r5, var2272=org.apache.poi.openxml4j.opc.PackagePart, var337=r1, var1432=$r4, var461=org.apache.poi.xwpf.usermodel.XWPFRelation, var2744=$r2, var1829=org.apache.poi.ooxml.POIXMLRelation, var811=$r3, var531=$z0, var2513=org.apache.logging.log4j.Logger, var2241=$r37, var899=org.apache.logging.log4j.LogBuilder, var766=$r38, var3294="POI does not currently support template.main+xml (glossary) parts.  Skipping this part for now."}
; {org.apache.poi.ooxml.POIXMLDocumentPart=var664, r0=var1973, org.apache.poi.ooxml.POIXMLFactory=var2283, r12=var236, java.util.Map=var2549, r5=var3683, org.apache.poi.openxml4j.opc.PackagePart=var2272, r1=var337, $r4=var1432, org.apache.poi.xwpf.usermodel.XWPFRelation=var461, $r2=var2744, org.apache.poi.ooxml.POIXMLRelation=var1829, $r3=var811, $z0=var531, org.apache.logging.log4j.Logger=var2513, $r37=var2241, org.apache.logging.log4j.LogBuilder=var899, $r38=var766, "POI does not currently support template.main+xml (glossary) parts.  Skipping this part for now."=var3294}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLDocumentPart;	r12 := @parameter0: org.apache.poi.ooxml.POIXMLFactory;	r5 := @parameter1: java.util.Map;	r1 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r4 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>();	$r2 = <org.apache.poi.xwpf.usermodel.XWPFRelation: org.apache.poi.xwpf.usermodel.XWPFRelation GLOSSARY_DOCUMENT>;	$r3 = virtualinvoke $r2.<org.apache.poi.xwpf.usermodel.XWPFRelation: java.lang.String getContentType()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r6 = interfaceinvoke r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r0);	$r37 = <org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.logging.log4j.Logger LOG>;	$r38 = interfaceinvoke $r37.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atWarn()>();	interfaceinvoke $r38.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("POI does not currently support template.main+xml (glossary) parts.  Skipping this part for now.");	return
;block_num 2