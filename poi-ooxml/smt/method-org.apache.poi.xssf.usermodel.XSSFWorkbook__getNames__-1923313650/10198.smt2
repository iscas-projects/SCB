(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3446 0)
(declare-sort var2605 0)
(declare-sort var1179 0)
(declare-sort var2419 0)
(declare-sort var2474 0)
(declare-sort var1387 0)
(declare-sort var2359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedRangesByName/-433134786 (var3446) var1179)
(declare-fun toLowerCase/1946809429 (String var2419) String)
(declare-fun var1179_get/-972254374 (var1179 var1387) var2474)
(declare-fun cast-from-String-to-var1387 (String) var1387)
(declare-fun var2359_unmodifiableList/-1798737475 (var2474) var2474)
(declare-const null-var3446 var3446)
(declare-const null-String String)
(declare-const var2419-ENGLISH var2419)
(declare-const var1003 var3446) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1003 null-var3446)))
(declare-const var2305 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2305 null-String)))
(define-const var2624 var1179 (namedRangesByName/-433134786 var1003)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(define-const var143 var2419 var2419-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1523 String (toLowerCase/1946809429 var2305 var143)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var3432 var2474 (var1179_get/-972254374 var2624 (cast-from-String-to-var1387 var1523))) ; Statement: $r5 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: java.util.List get(java.lang.Object)>($r4) 
(define-const var314 var2474 (var2359_unmodifiableList/-1798737475 var3432)) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.List unmodifiableList(java.util.List)>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {namedRangesByName/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.commons.collections4.ListValuedMap), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1179_get/-972254374=([org.apache.commons.collections4.ListValuedMap, java.lang.Object], java.util.List), cast-from-String-to-var1387=([java.lang.String], java.lang.Object), var2359_unmodifiableList/-1798737475=([java.util.List], java.util.List)}
; {var3446=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1003=r0, var2305=r1, var2605=null_type, var1179=org.apache.commons.collections4.ListValuedMap, var2624=$r3, var2419=java.util.Locale, var143=$r2, var1523=$r4, var2474=java.util.List, var1387=java.lang.Object, var3432=$r5, var2359=java.util.Collections, var314=$r6}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var3446, r0=var1003, r1=var2305, null_type=var2605, org.apache.commons.collections4.ListValuedMap=var1179, $r3=var2624, java.util.Locale=var2419, $r2=var143, $r4=var1523, java.util.List=var2474, java.lang.Object=var1387, $r5=var3432, java.util.Collections=var2359, $r6=var314}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: java.util.List get(java.lang.Object)>($r4);	$r6 = staticinvoke <java.util.Collections: java.util.List unmodifiableList(java.util.List)>($r5);	return $r6
;block_num 1