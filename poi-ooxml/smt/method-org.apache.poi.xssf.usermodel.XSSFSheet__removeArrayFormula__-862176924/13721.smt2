(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2468 0)
(declare-sort var1199 0)
(declare-sort var2742 0)
(declare-sort var1490 0)
(declare-sort var135 0)
(declare-sort var156 0)
(declare-sort var816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1199_getSheet/292787143 (var1199) var2742)
(declare-fun cast-from-var2742-to-var1490 (var2742) var1490)
(declare-fun cast-from-var2468-to-var1490 (var2468) var1490)
(declare-fun arrayFormulas/-1100774885 (var2468) var135)
(declare-fun var135_iterator/-912451715 (var135) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1490)
(declare-fun cast-from-var1490-to-var156 (var1490) var156)
(declare-fun isInRange/945559528 (var156 var1199) Bool)
(declare-fun var135_remove/563718388 (var135 var1490) Bool)
(declare-fun cast-from-var156-to-var1490 (var156) var1490)
(declare-fun getCellRange/1228274481 (var2468 var156) var816)
(declare-fun var816_iterator/1481011198 (var816) Iterator)
(declare-const null-var2468 var2468)
(declare-const null-var1199 var1199)
(declare-const var3237 var2468) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3237 null-var2468)))
(declare-const var1324 var1199) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var1324 null-var1199)))
(define-const var3042 var2742 (var1199_getSheet/292787143 var1324)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var2742-to-var1490 var3042) (cast-from-var2468-to-var1490 var3237))) ; Cond: $r2 == r1 
(define-const var2406 var135 (arrayFormulas/-1100774885 var3237)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var2101 Iterator (var135_iterator/-912451715 var2406)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2660 Bool (Iterator_hasNext/-1669924200 var2101)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var2660 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1878 var1490 (Iterator_next/-1124697587 var2101)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2101!1 Iterator)
(define-const var2819 var156 (cast-from-var1490-to-var156 var1878)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3165 Bool (isInRange/945559528 var2819 var1324)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3165 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2660!1 Bool (Iterator_hasNext/-1669924200 var2101!1)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var2660!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1878!1 var1490 (Iterator_next/-1124697587 var2101!1)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2101!2 Iterator)
(define-const var2819!1 var156 (cast-from-var1490-to-var156 var1878!1)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3165!1 Bool (isInRange/945559528 var2819!1 var1324)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var3165!1 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1775 var135 (arrayFormulas/-1100774885 var3237)) ; Statement: $r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
;(assert (var135_remove/563718388 var1775 (cast-from-var156-to-var1490 var2819!1))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12) 

(declare-const var1775!1 var135)
(declare-const var2819!2 var156)
(assert true)
(define-const var1914 var816 (getCellRange/1228274481 var3237 var2819!2)) ; Statement: r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12) 
(define-const var2722 Iterator (var816_iterator/1481011198 var1914)) ; Statement: r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var273 Bool (Iterator_hasNext/-1669924200 var2722)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (= (ite var273 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1199_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var2742-to-var1490=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var2468-to-var1490=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var135_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1490-to-var156=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var135_remove/563718388=([java.util.List, java.lang.Object], boolean), cast-from-var156-to-var1490=([org.apache.poi.ss.util.CellRangeAddress], java.lang.Object), getCellRange/1228274481=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellRangeAddress], org.apache.poi.ss.usermodel.CellRange), var816_iterator/1481011198=([org.apache.poi.ss.usermodel.CellRange], java.util.Iterator)}
; {var2468=org.apache.poi.xssf.usermodel.XSSFSheet, var3237=r1, var1199=org.apache.poi.ss.usermodel.Cell, var1324=r0, var2742=org.apache.poi.ss.usermodel.Sheet, var3042=$r2, var1490=java.lang.Object, var135=java.util.List, var2406=$r3, var2101=r19, var2660=$z0, var1878=$r11, var156=org.apache.poi.ss.util.CellRangeAddress, var2819=r12, var3165=$z1, var1775=$r13, var816=org.apache.poi.ss.usermodel.CellRange, var1914=r14, var2722=r15, var273=$z2}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var2468, r1=var3237, org.apache.poi.ss.usermodel.Cell=var1199, r0=var1324, org.apache.poi.ss.usermodel.Sheet=var2742, $r2=var3042, java.lang.Object=var1490, java.util.List=var135, $r3=var2406, r19=var2101, $z0=var2660, $r11=var1878, org.apache.poi.ss.util.CellRangeAddress=var156, r12=var2819, $z1=var3165, $r13=var1775, org.apache.poi.ss.usermodel.CellRange=var816, r14=var1914, r15=var2722, $z2=var273}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	$r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12);	r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12);	r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	return r14
;block_num 10