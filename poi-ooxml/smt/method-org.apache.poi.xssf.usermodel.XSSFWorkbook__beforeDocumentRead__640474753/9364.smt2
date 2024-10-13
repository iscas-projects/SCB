(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2873 0)
(declare-sort var1194 0)
(declare-sort var2963 0)
(declare-sort var2102 0)
(declare-sort var2793 0)
(declare-sort var2032 0)
(declare-sort var1091 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCorePart/1817991850 (var2963) var1194)
(declare-fun cast-from-var2873-to-var2963 (var2873) var2963)
(declare-fun getContentType/323114383 (var1194) String)
(declare-fun getContentType/-305056247 (var2793) String)
(declare-fun cast-from-var2102-to-var2793 (var2102) var2793)
(declare-fun var2032-init () var2032)
(declare-fun <init>/895820132 (var2032) void)
(declare-fun cast-from-var2032-to-var1091 (var2032) var1091)
(declare-const null-var2873 var2873)
(declare-const var2102-XLSB_BINARY_WORKBOOK var2102)
(declare-const var2241 var2873) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var2241 null-var2873)))
(assert true)
(define-const var3829 var1194 (getCorePart/1817991850 (cast-from-var2873-to-var2963 var2241))) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>() 
(assert true)
(define-const var696 String (getContentType/323114383 var3829)) ; Statement: $r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>() 
(define-const var309 var2102 var2102-XLSB_BINARY_WORKBOOK) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation XLSB_BINARY_WORKBOOK> 
(assert true)
(define-const var3570 String (getContentType/-305056247 (cast-from-var2102-to-var2793 var309))) ; Statement: $r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var396 Bool (= var696 var3570)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r9 = new java.util.ArrayList 
(assert (not (= (ite var396 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1322 var2032 var2032-init) ; Statement: $r8 = new org.apache.poi.xssf.XLSBUnsupportedException 
(assert true)
;(assert (<init>/895820132 var1322)) ; Statement: specialinvoke $r8.<org.apache.poi.xssf.XLSBUnsupportedException: void <init>()>() 

(declare-const var1322!1 var2032)
(define-const var1213 var1091 (cast-from-var2032-to-var1091 var1322!1)) ; Statement: $r11 = (java.lang.Throwable) $r8 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getCorePart/1817991850=([org.apache.poi.ooxml.POIXMLDocument], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var2873-to-var2963=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.poi.ooxml.POIXMLDocument), getContentType/323114383=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.String), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var2102-to-var2793=([org.apache.poi.xssf.usermodel.XSSFRelation], org.apache.poi.ooxml.POIXMLRelation), var2032-init=([], org.apache.poi.xssf.XLSBUnsupportedException), <init>/895820132=([org.apache.poi.xssf.XLSBUnsupportedException], void), cast-from-var2032-to-var1091=([org.apache.poi.xssf.XLSBUnsupportedException], java.lang.Throwable)}
; {var2873=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2241=r0, var1194=org.apache.poi.openxml4j.opc.PackagePart, var2963=org.apache.poi.ooxml.POIXMLDocument, var3829=$r1, var696=$r4, var2102=org.apache.poi.xssf.usermodel.XSSFRelation, var309=$r2, var2793=org.apache.poi.ooxml.POIXMLRelation, var3570=$r3, var396=$z0, var2032=org.apache.poi.xssf.XLSBUnsupportedException, var1322=$r8, var1091=java.lang.Throwable, var1213=$r11}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var2873, r0=var2241, org.apache.poi.openxml4j.opc.PackagePart=var1194, org.apache.poi.ooxml.POIXMLDocument=var2963, $r1=var3829, $r4=var696, org.apache.poi.xssf.usermodel.XSSFRelation=var2102, $r2=var309, org.apache.poi.ooxml.POIXMLRelation=var2793, $r3=var3570, $z0=var396, org.apache.poi.xssf.XLSBUnsupportedException=var2032, $r8=var1322, java.lang.Throwable=var1091, $r11=var1213}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>();	$r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation XLSB_BINARY_WORKBOOK>;	$r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r9 = new java.util.ArrayList;	$r8 = new org.apache.poi.xssf.XLSBUnsupportedException;	specialinvoke $r8.<org.apache.poi.xssf.XLSBUnsupportedException: void <init>()>();	$r11 = (java.lang.Throwable) $r8;	throw $r11
;block_num 2