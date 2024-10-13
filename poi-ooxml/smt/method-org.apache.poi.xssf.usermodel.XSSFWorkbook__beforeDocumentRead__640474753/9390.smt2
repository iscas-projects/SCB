(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var995 0)
(declare-sort var1921 0)
(declare-sort var950 0)
(declare-sort var2083 0)
(declare-sort var3202 0)
(declare-sort var1959 0)
(declare-sort var1566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCorePart/1817991850 (var950) var1921)
(declare-fun cast-from-var995-to-var950 (var995) var950)
(declare-fun getContentType/323114383 (var1921) String)
(declare-fun getContentType/-305056247 (var3202) String)
(declare-fun cast-from-var2083-to-var3202 (var2083) var3202)
(declare-fun var1959-init () var1959)
(declare-fun <init>/-325640736 (var1959) void)
(declare-fun cast-from-var1959-to-var1566 (var1959) var1566)
(declare-fun pivotTables/-433134786 (var995) var1566)
(declare-fun pivotCaches/-433134786 (var995) var1566)
(declare-const null-var995 var995)
(declare-const var2083-XLSB_BINARY_WORKBOOK var2083)
(declare-const var1109 var995) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1109 null-var995)))
(assert true)
(define-const var349 var1921 (getCorePart/1817991850 (cast-from-var995-to-var950 var1109))) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>() 
(assert true)
(define-const var2465 String (getContentType/323114383 var349)) ; Statement: $r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>() 
(define-const var1533 var2083 var2083-XLSB_BINARY_WORKBOOK) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation XLSB_BINARY_WORKBOOK> 
(assert true)
(define-const var3359 String (getContentType/-305056247 (cast-from-var2083-to-var3202 var1533))) ; Statement: $r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var2347 Bool (= var2465 var3359)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r9 = new java.util.ArrayList 
(assert (= (ite var2347 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1089 var1959 var1959-init) ; Statement: $r9 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1089)) ; Statement: specialinvoke $r9.<java.util.ArrayList: void <init>()>() 

(declare-const var1089!1 var1959)
(declare-const var1109!1 var995)
(assert (not (= var1109!1 null-var995)))
(assert (= (pivotTables/-433134786 var1109!1) (cast-from-var1959-to-var1566 var1089!1))) ; Statement: r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List pivotTables> = $r9 
(define-const var990 var1959 var1959-init) ; Statement: $r10 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var990)) ; Statement: specialinvoke $r10.<java.util.ArrayList: void <init>()>() 

(declare-const var990!1 var1959)
(declare-const var1109!2 var995)
(assert (not (= var1109!2 null-var995)))
(assert (= (pivotCaches/-433134786 var1109!2) (cast-from-var1959-to-var1566 var990!1))) ; Statement: r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List pivotCaches> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCorePart/1817991850=([org.apache.poi.ooxml.POIXMLDocument], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var995-to-var950=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.poi.ooxml.POIXMLDocument), getContentType/323114383=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.String), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var2083-to-var3202=([org.apache.poi.xssf.usermodel.XSSFRelation], org.apache.poi.ooxml.POIXMLRelation), var1959-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1959-to-var1566=([java.util.ArrayList], java.util.List), pivotTables/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List), pivotCaches/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List)}
; {var995=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1109=r0, var1921=org.apache.poi.openxml4j.opc.PackagePart, var950=org.apache.poi.ooxml.POIXMLDocument, var349=$r1, var2465=$r4, var2083=org.apache.poi.xssf.usermodel.XSSFRelation, var1533=$r2, var3202=org.apache.poi.ooxml.POIXMLRelation, var3359=$r3, var2347=$z0, var1959=java.util.ArrayList, var1089=$r9, var1566=java.util.List, var990=$r10}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var995, r0=var1109, org.apache.poi.openxml4j.opc.PackagePart=var1921, org.apache.poi.ooxml.POIXMLDocument=var950, $r1=var349, $r4=var2465, org.apache.poi.xssf.usermodel.XSSFRelation=var2083, $r2=var1533, org.apache.poi.ooxml.POIXMLRelation=var3202, $r3=var3359, $z0=var2347, java.util.ArrayList=var1959, $r9=var1089, java.util.List=var1566, $r10=var990}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>();	$r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation XLSB_BINARY_WORKBOOK>;	$r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r9 = new java.util.ArrayList;	$r9 = new java.util.ArrayList;	specialinvoke $r9.<java.util.ArrayList: void <init>()>();	r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List pivotTables> = $r9;	$r10 = new java.util.ArrayList;	specialinvoke $r10.<java.util.ArrayList: void <init>()>();	r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List pivotCaches> = $r10;	return
;block_num 2