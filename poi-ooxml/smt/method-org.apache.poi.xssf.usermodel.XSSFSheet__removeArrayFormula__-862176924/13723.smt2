(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3896 0)
(declare-sort var3621 0)
(declare-sort var2834 0)
(declare-sort var2842 0)
(declare-sort var2615 0)
(declare-sort var3233 0)
(declare-sort var2421 0)
(declare-sort var1396 0)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3621_getSheet/292787143 (var3621) var2834)
(declare-fun cast-from-var2834-to-var2842 (var2834) var2842)
(declare-fun cast-from-var3896-to-var2842 (var3896) var2842)
(declare-fun arrayFormulas/-1100774885 (var3896) var2615)
(declare-fun var2615_iterator/-912451715 (var2615) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2842)
(declare-fun cast-from-var2842-to-var3233 (var2842) var3233)
(declare-fun isInRange/945559528 (var3233 var3621) Bool)
(declare-fun var2615_remove/563718388 (var2615 var2842) Bool)
(declare-fun cast-from-var3233-to-var2842 (var3233) var2842)
(declare-fun getCellRange/1228274481 (var3896 var3233) var2421)
(declare-fun var2421_iterator/1481011198 (var2421) Iterator)
(declare-fun cast-from-var2842-to-var1396 (var2842) var1396)
(declare-fun setBlank/1591196184 (var697) void)
(declare-fun cast-from-var1396-to-var697 (var1396) var697)
(declare-const null-var3896 var3896)
(declare-const null-var3621 var3621)
(declare-const var1883 var3896) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1883 null-var3896)))
(declare-const var3752 var3621) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var3752 null-var3621)))
(define-const var1108 var2834 (var3621_getSheet/292787143 var3752)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var2834-to-var2842 var1108) (cast-from-var3896-to-var2842 var1883))) ; Cond: $r2 == r1 
(define-const var3466 var2615 (arrayFormulas/-1100774885 var1883)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var3125 Iterator (var2615_iterator/-912451715 var3466)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var349 Bool (Iterator_hasNext/-1669924200 var3125)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var349 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var259 var2842 (Iterator_next/-1124697587 var3125)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3125!1 Iterator)
(define-const var2718 var3233 (cast-from-var2842-to-var3233 var259)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var481 Bool (isInRange/945559528 var2718 var3752)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var481 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2097 var2615 (arrayFormulas/-1100774885 var1883)) ; Statement: $r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
;(assert (var2615_remove/563718388 var2097 (cast-from-var3233-to-var2842 var2718))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12) 

(declare-const var2097!1 var2615)
(declare-const var2718!1 var3233)
(assert true)
(define-const var3285 var2421 (getCellRange/1228274481 var1883 var2718!1)) ; Statement: r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12) 
(define-const var2037 Iterator (var2421_iterator/1481011198 var3285)) ; Statement: r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var833 Bool (Iterator_hasNext/-1669924200 var2037)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (not (= (ite var833 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var127 var2842 (Iterator_next/-1124697587 var2037)) ; Statement: $r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2037!1 Iterator)
(define-const var2579 var1396 (cast-from-var2842-to-var1396 var127)) ; Statement: r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16 
(assert true)
;(assert (setBlank/1591196184 (cast-from-var1396-to-var697 var2579))) ; Statement: virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>() 

(declare-const var2579!1 var1396)
 ; Statement: goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var833!1 Bool (Iterator_hasNext/-1669924200 var2037!1)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (not (= (ite var833!1 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var127!1 var2842 (Iterator_next/-1124697587 var2037!1)) ; Statement: $r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2037!2 Iterator)
(define-const var2579!2 var1396 (cast-from-var2842-to-var1396 var127!1)) ; Statement: r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16 
(assert true)
;(assert (setBlank/1591196184 (cast-from-var1396-to-var697 var2579!2))) ; Statement: virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>() 

(declare-const var2579!3 var1396)
 ; Statement: goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var833!2 Bool (Iterator_hasNext/-1669924200 var2037!2)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (= (ite var833!2 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3621_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var2834-to-var2842=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var3896-to-var2842=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var2615_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2842-to-var3233=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var2615_remove/563718388=([java.util.List, java.lang.Object], boolean), cast-from-var3233-to-var2842=([org.apache.poi.ss.util.CellRangeAddress], java.lang.Object), getCellRange/1228274481=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellRangeAddress], org.apache.poi.ss.usermodel.CellRange), var2421_iterator/1481011198=([org.apache.poi.ss.usermodel.CellRange], java.util.Iterator), cast-from-var2842-to-var1396=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFCell), setBlank/1591196184=([org.apache.poi.ss.usermodel.CellBase], void), cast-from-var1396-to-var697=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellBase)}
; {var3896=org.apache.poi.xssf.usermodel.XSSFSheet, var1883=r1, var3621=org.apache.poi.ss.usermodel.Cell, var3752=r0, var2834=org.apache.poi.ss.usermodel.Sheet, var1108=$r2, var2842=java.lang.Object, var2615=java.util.List, var3466=$r3, var3125=r19, var349=$z0, var259=$r11, var3233=org.apache.poi.ss.util.CellRangeAddress, var2718=r12, var481=$z1, var2097=$r13, var2421=org.apache.poi.ss.usermodel.CellRange, var3285=r14, var2037=r15, var833=$z2, var127=$r16, var1396=org.apache.poi.xssf.usermodel.XSSFCell, var2579=r17, var697=org.apache.poi.ss.usermodel.CellBase}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3896, r1=var1883, org.apache.poi.ss.usermodel.Cell=var3621, r0=var3752, org.apache.poi.ss.usermodel.Sheet=var2834, $r2=var1108, java.lang.Object=var2842, java.util.List=var2615, $r3=var3466, r19=var3125, $z0=var349, $r11=var259, org.apache.poi.ss.util.CellRangeAddress=var3233, r12=var2718, $z1=var481, $r13=var2097, org.apache.poi.ss.usermodel.CellRange=var2421, r14=var3285, r15=var2037, $z2=var833, $r16=var127, org.apache.poi.xssf.usermodel.XSSFCell=var1396, r17=var2579, org.apache.poi.ss.usermodel.CellBase=var697}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	$r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12);	r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12);	r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	$r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>();	r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16;	virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>();	goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	$r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>();	r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16;	virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>();	goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	return r14
;block_num 11