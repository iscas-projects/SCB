(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var750 0)
(declare-sort var3461 0)
(declare-sort var2109 0)
(declare-sort var3217 0)
(declare-sort var1496 0)
(declare-sort var1223 0)
(declare-sort var3898 0)
(declare-sort var1874 0)
(declare-sort var1412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3461_getSheet/292787143 (var3461) var2109)
(declare-fun cast-from-var2109-to-var3217 (var2109) var3217)
(declare-fun cast-from-var750-to-var3217 (var750) var3217)
(declare-fun arrayFormulas/-1100774885 (var750) var1496)
(declare-fun var1496_iterator/-912451715 (var1496) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3217)
(declare-fun cast-from-var3217-to-var1223 (var3217) var1223)
(declare-fun isInRange/945559528 (var1223 var3461) Bool)
(declare-fun var1496_remove/563718388 (var1496 var3217) Bool)
(declare-fun cast-from-var1223-to-var3217 (var1223) var3217)
(declare-fun getCellRange/1228274481 (var750 var1223) var3898)
(declare-fun var3898_iterator/1481011198 (var3898) Iterator)
(declare-fun cast-from-var3217-to-var1874 (var3217) var1874)
(declare-fun setBlank/1591196184 (var1412) void)
(declare-fun cast-from-var1874-to-var1412 (var1874) var1412)
(declare-const null-var750 var750)
(declare-const null-var3461 var3461)
(declare-const var3266 var750) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3266 null-var750)))
(declare-const var2753 var3461) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var2753 null-var3461)))
(define-const var3343 var2109 (var3461_getSheet/292787143 var2753)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var2109-to-var3217 var3343) (cast-from-var750-to-var3217 var3266))) ; Cond: $r2 == r1 
(define-const var3648 var1496 (arrayFormulas/-1100774885 var3266)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var2778 Iterator (var1496_iterator/-912451715 var3648)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1091 Bool (Iterator_hasNext/-1669924200 var2778)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var1091 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3749 var3217 (Iterator_next/-1124697587 var2778)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2778!1 Iterator)
(define-const var576 var1223 (cast-from-var3217-to-var1223 var3749)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3050 Bool (isInRange/945559528 var576 var2753)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var3050 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var403 var1496 (arrayFormulas/-1100774885 var3266)) ; Statement: $r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
;(assert (var1496_remove/563718388 var403 (cast-from-var1223-to-var3217 var576))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12) 

(declare-const var403!1 var1496)
(declare-const var576!1 var1223)
(assert true)
(define-const var182 var3898 (getCellRange/1228274481 var3266 var576!1)) ; Statement: r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12) 
(define-const var2783 Iterator (var3898_iterator/1481011198 var182)) ; Statement: r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1044 Bool (Iterator_hasNext/-1669924200 var2783)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (not (= (ite var1044 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3528 var3217 (Iterator_next/-1124697587 var2783)) ; Statement: $r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2783!1 Iterator)
(define-const var1729 var1874 (cast-from-var3217-to-var1874 var3528)) ; Statement: r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16 
(assert true)
;(assert (setBlank/1591196184 (cast-from-var1874-to-var1412 var1729))) ; Statement: virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>() 

(declare-const var1729!1 var1874)
 ; Statement: goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1044!1 Bool (Iterator_hasNext/-1669924200 var2783!1)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (not (= (ite var1044!1 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3528!1 var3217 (Iterator_next/-1124697587 var2783!1)) ; Statement: $r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2783!2 Iterator)
(define-const var1729!2 var1874 (cast-from-var3217-to-var1874 var3528!1)) ; Statement: r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16 
(assert true)
;(assert (setBlank/1591196184 (cast-from-var1874-to-var1412 var1729!2))) ; Statement: virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>() 

(declare-const var1729!3 var1874)
 ; Statement: goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1044!2 Bool (Iterator_hasNext/-1669924200 var2783!2)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (not (= (ite var1044!2 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3528!2 var3217 (Iterator_next/-1124697587 var2783!2)) ; Statement: $r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2783!3 Iterator)
(define-const var1729!4 var1874 (cast-from-var3217-to-var1874 var3528!2)) ; Statement: r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16 
(assert true)
;(assert (setBlank/1591196184 (cast-from-var1874-to-var1412 var1729!4))) ; Statement: virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>() 

(declare-const var1729!5 var1874)
 ; Statement: goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1044!3 Bool (Iterator_hasNext/-1669924200 var2783!3)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (= (ite var1044!3 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3461_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var2109-to-var3217=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var750-to-var3217=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var1496_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3217-to-var1223=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var1496_remove/563718388=([java.util.List, java.lang.Object], boolean), cast-from-var1223-to-var3217=([org.apache.poi.ss.util.CellRangeAddress], java.lang.Object), getCellRange/1228274481=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellRangeAddress], org.apache.poi.ss.usermodel.CellRange), var3898_iterator/1481011198=([org.apache.poi.ss.usermodel.CellRange], java.util.Iterator), cast-from-var3217-to-var1874=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFCell), setBlank/1591196184=([org.apache.poi.ss.usermodel.CellBase], void), cast-from-var1874-to-var1412=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellBase)}
; {var750=org.apache.poi.xssf.usermodel.XSSFSheet, var3266=r1, var3461=org.apache.poi.ss.usermodel.Cell, var2753=r0, var2109=org.apache.poi.ss.usermodel.Sheet, var3343=$r2, var3217=java.lang.Object, var1496=java.util.List, var3648=$r3, var2778=r19, var1091=$z0, var3749=$r11, var1223=org.apache.poi.ss.util.CellRangeAddress, var576=r12, var3050=$z1, var403=$r13, var3898=org.apache.poi.ss.usermodel.CellRange, var182=r14, var2783=r15, var1044=$z2, var3528=$r16, var1874=org.apache.poi.xssf.usermodel.XSSFCell, var1729=r17, var1412=org.apache.poi.ss.usermodel.CellBase}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var750, r1=var3266, org.apache.poi.ss.usermodel.Cell=var3461, r0=var2753, org.apache.poi.ss.usermodel.Sheet=var2109, $r2=var3343, java.lang.Object=var3217, java.util.List=var1496, $r3=var3648, r19=var2778, $z0=var1091, $r11=var3749, org.apache.poi.ss.util.CellRangeAddress=var1223, r12=var576, $z1=var3050, $r13=var403, org.apache.poi.ss.usermodel.CellRange=var3898, r14=var182, r15=var2783, $z2=var1044, $r16=var3528, org.apache.poi.xssf.usermodel.XSSFCell=var1874, r17=var1729, org.apache.poi.ss.usermodel.CellBase=var1412}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	$r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12);	r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12);	r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	$r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>();	r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16;	virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>();	goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	$r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>();	r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16;	virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>();	goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	$r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>();	r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16;	virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>();	goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	return r14
;block_num 13