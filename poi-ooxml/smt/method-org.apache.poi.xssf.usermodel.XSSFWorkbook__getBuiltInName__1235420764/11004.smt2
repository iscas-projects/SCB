(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1588 0)
(declare-sort var724 0)
(declare-sort var1751 0)
(declare-sort var3390 0)
(declare-sort var3659 0)
(declare-sort var461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedRangesByName/-433134786 (var1588) var1751)
(declare-fun toLowerCase/1946809429 (String var3390) String)
(declare-fun var1751_get/-972254374 (var1751 var461) var3659)
(declare-fun cast-from-String-to-var461 (String) var461)
(declare-fun var3659_iterator/-912451715 (var3659) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1588 var1588)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3390-ENGLISH var3390)
(declare-const var1973 var1588) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1973 null-var1588)))
(declare-const var1757 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1757 null-String)))
(declare-const var1151 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1151 null-Int)))
(define-const var2353 var1751 (namedRangesByName/-433134786 var1973)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(define-const var2154 var3390 var3390-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var546 String (toLowerCase/1946809429 var1757 var2154)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var729 var3659 (var1751_get/-972254374 var2353 (cast-from-String-to-var461 var546))) ; Statement: $r5 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: java.util.List get(java.lang.Object)>($r4) 
(define-const var612 Iterator (var3659_iterator/-912451715 var729)) ; Statement: r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var705 Bool (Iterator_hasNext/-1669924200 var612)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var705 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {namedRangesByName/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.commons.collections4.ListValuedMap), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1751_get/-972254374=([org.apache.commons.collections4.ListValuedMap, java.lang.Object], java.util.List), cast-from-String-to-var461=([java.lang.String], java.lang.Object), var3659_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1588=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1973=r0, var1757=r1, var724=null_type, var1151=i0, var1751=org.apache.commons.collections4.ListValuedMap, var2353=$r3, var3390=java.util.Locale, var2154=$r2, var546=$r4, var3659=java.util.List, var461=java.lang.Object, var729=$r5, var612=r6, var705=$z0}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var1588, r0=var1973, r1=var1757, null_type=var724, i0=var1151, org.apache.commons.collections4.ListValuedMap=var1751, $r3=var2353, java.util.Locale=var3390, $r2=var2154, $r4=var546, java.util.List=var3659, java.lang.Object=var461, $r5=var729, r6=var612, $z0=var705}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: java.util.List get(java.lang.Object)>($r4);	r6 = interfaceinvoke $r5.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return null;	return null
;block_num 3