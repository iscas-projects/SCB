(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var306 0)
(declare-sort var746 0)
(declare-sort var3277 0)
(declare-sort var129 0)
(declare-sort var1592 0)
(declare-sort var3566 0)
(declare-sort var1817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var746_getSheet/292787143 (var746) var3277)
(declare-fun cast-from-var3277-to-var129 (var3277) var129)
(declare-fun cast-from-var306-to-var129 (var306) var129)
(declare-fun arrayFormulas/-1100774885 (var306) var1592)
(declare-fun var1592_iterator/-912451715 (var1592) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var129)
(declare-fun cast-from-var129-to-var3566 (var129) var3566)
(declare-fun isInRange/945559528 (var3566 var746) Bool)
(declare-fun var1592_remove/563718388 (var1592 var129) Bool)
(declare-fun cast-from-var3566-to-var129 (var3566) var129)
(declare-fun getCellRange/1228274481 (var306 var3566) var1817)
(declare-fun var1817_iterator/1481011198 (var1817) Iterator)
(declare-const null-var306 var306)
(declare-const null-var746 var746)
(declare-const var1419 var306) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1419 null-var306)))
(declare-const var2868 var746) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var2868 null-var746)))
(define-const var3096 var3277 (var746_getSheet/292787143 var2868)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var3277-to-var129 var3096) (cast-from-var306-to-var129 var1419))) ; Cond: $r2 == r1 
(define-const var2959 var1592 (arrayFormulas/-1100774885 var1419)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var3379 Iterator (var1592_iterator/-912451715 var2959)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3553 Bool (Iterator_hasNext/-1669924200 var3379)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var3553 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2190 var129 (Iterator_next/-1124697587 var3379)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3379!1 Iterator)
(define-const var1818 var3566 (cast-from-var129-to-var3566 var2190)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var1373 Bool (isInRange/945559528 var1818 var2868)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1373 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3553!1 Bool (Iterator_hasNext/-1669924200 var3379!1)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var3553!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2190!1 var129 (Iterator_next/-1124697587 var3379!1)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3379!2 Iterator)
(define-const var1818!1 var3566 (cast-from-var129-to-var3566 var2190!1)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var1373!1 Bool (isInRange/945559528 var1818!1 var2868)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1373!1 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3553!2 Bool (Iterator_hasNext/-1669924200 var3379!2)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var3553!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2190!2 var129 (Iterator_next/-1124697587 var3379!2)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3379!3 Iterator)
(define-const var1818!2 var3566 (cast-from-var129-to-var3566 var2190!2)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var1373!2 Bool (isInRange/945559528 var1818!2 var2868)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var1373!2 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2526 var1592 (arrayFormulas/-1100774885 var1419)) ; Statement: $r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
;(assert (var1592_remove/563718388 var2526 (cast-from-var3566-to-var129 var1818!2))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12) 

(declare-const var2526!1 var1592)
(declare-const var1818!3 var3566)
(assert true)
(define-const var445 var1817 (getCellRange/1228274481 var1419 var1818!3)) ; Statement: r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12) 
(define-const var904 Iterator (var1817_iterator/1481011198 var445)) ; Statement: r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1962 Bool (Iterator_hasNext/-1669924200 var904)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (= (ite var1962 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var746_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var3277-to-var129=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var306-to-var129=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var1592_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var129-to-var3566=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var1592_remove/563718388=([java.util.List, java.lang.Object], boolean), cast-from-var3566-to-var129=([org.apache.poi.ss.util.CellRangeAddress], java.lang.Object), getCellRange/1228274481=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellRangeAddress], org.apache.poi.ss.usermodel.CellRange), var1817_iterator/1481011198=([org.apache.poi.ss.usermodel.CellRange], java.util.Iterator)}
; {var306=org.apache.poi.xssf.usermodel.XSSFSheet, var1419=r1, var746=org.apache.poi.ss.usermodel.Cell, var2868=r0, var3277=org.apache.poi.ss.usermodel.Sheet, var3096=$r2, var129=java.lang.Object, var1592=java.util.List, var2959=$r3, var3379=r19, var3553=$z0, var2190=$r11, var3566=org.apache.poi.ss.util.CellRangeAddress, var1818=r12, var1373=$z1, var2526=$r13, var1817=org.apache.poi.ss.usermodel.CellRange, var445=r14, var904=r15, var1962=$z2}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var306, r1=var1419, org.apache.poi.ss.usermodel.Cell=var746, r0=var2868, org.apache.poi.ss.usermodel.Sheet=var3277, $r2=var3096, java.lang.Object=var129, java.util.List=var1592, $r3=var2959, r19=var3379, $z0=var3553, $r11=var2190, org.apache.poi.ss.util.CellRangeAddress=var3566, r12=var1818, $z1=var1373, $r13=var2526, org.apache.poi.ss.usermodel.CellRange=var1817, r14=var445, r15=var904, $z2=var1962}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	$r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12);	r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12);	r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	return r14
;block_num 13