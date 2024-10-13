(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2836 0)
(declare-sort var2273 0)
(declare-sort var2330 0)
(declare-sort var220 0)
(declare-sort var896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPackagePart/-804310696 (var2330) var2273)
(declare-fun cast-from-var2836-to-var2330 (var2836) var2330)
(declare-fun getContentType/323114383 (var2273) String)
(declare-fun getContentType/-305056247 (var896) String)
(declare-fun cast-from-var220-to-var896 (var220) var896)
(declare-const null-var2836 var2836)
(declare-const var220-MACROS_WORKBOOK var220)
(declare-const var2000 var2836) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var2000 null-var2836)))
(assert true)
(define-const var3689 var2273 (getPackagePart/-804310696 (cast-from-var2836-to-var2330 var2000))) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var3410 String (getContentType/323114383 var3689)) ; Statement: $r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>() 
(define-const var1042 var220 var220-MACROS_WORKBOOK) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation MACROS_WORKBOOK> 
(assert true)
(define-const var3566 String (getContentType/-305056247 (cast-from-var220-to-var896 var1042))) ; Statement: $r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var2129 Bool (= var3410 var3566)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var2836-to-var2330=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.poi.ooxml.POIXMLDocumentPart), getContentType/323114383=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.String), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var220-to-var896=([org.apache.poi.xssf.usermodel.XSSFRelation], org.apache.poi.ooxml.POIXMLRelation)}
; {var2836=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2000=r0, var2273=org.apache.poi.openxml4j.opc.PackagePart, var2330=org.apache.poi.ooxml.POIXMLDocumentPart, var3689=$r1, var3410=$r4, var220=org.apache.poi.xssf.usermodel.XSSFRelation, var1042=$r2, var896=org.apache.poi.ooxml.POIXMLRelation, var3566=$r3, var2129=$z0}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var2836, r0=var2000, org.apache.poi.openxml4j.opc.PackagePart=var2273, org.apache.poi.ooxml.POIXMLDocumentPart=var2330, $r1=var3689, $r4=var3410, org.apache.poi.xssf.usermodel.XSSFRelation=var220, $r2=var1042, org.apache.poi.ooxml.POIXMLRelation=var896, $r3=var3566, $z0=var2129}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFRelation: org.apache.poi.xssf.usermodel.XSSFRelation MACROS_WORKBOOK>;	$r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFRelation: java.lang.String getContentType()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z0
;block_num 1