(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2070 0)
(declare-sort var3068 0)
(declare-sort var3185 0)
(declare-sort var1122 0)
(declare-sort var1823 0)
(declare-sort var2065 0)
(declare-sort var846 0)
(declare-sort var3532 0)
(declare-sort var1538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3068_getSheet/292787143 (var3068) var3185)
(declare-fun cast-from-var3185-to-var1122 (var3185) var1122)
(declare-fun cast-from-var2070-to-var1122 (var2070) var1122)
(declare-fun arrayFormulas/-1100774885 (var2070) var1823)
(declare-fun var1823_iterator/-912451715 (var1823) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1122)
(declare-fun cast-from-var1122-to-var2065 (var1122) var2065)
(declare-fun isInRange/945559528 (var2065 var3068) Bool)
(declare-fun var1823_remove/563718388 (var1823 var1122) Bool)
(declare-fun cast-from-var2065-to-var1122 (var2065) var1122)
(declare-fun getCellRange/1228274481 (var2070 var2065) var846)
(declare-fun var846_iterator/1481011198 (var846) Iterator)
(declare-fun cast-from-var1122-to-var3532 (var1122) var3532)
(declare-fun setBlank/1591196184 (var1538) void)
(declare-fun cast-from-var3532-to-var1538 (var3532) var1538)
(declare-const null-var2070 var2070)
(declare-const null-var3068 var3068)
(declare-const var3331 var2070) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3331 null-var2070)))
(declare-const var1702 var3068) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var1702 null-var3068)))
(define-const var1328 var3185 (var3068_getSheet/292787143 var1702)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var3185-to-var1122 var1328) (cast-from-var2070-to-var1122 var3331))) ; Cond: $r2 == r1 
(define-const var2347 var1823 (arrayFormulas/-1100774885 var3331)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var617 Iterator (var1823_iterator/-912451715 var2347)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var856 Bool (Iterator_hasNext/-1669924200 var617)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var856 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2304 var1122 (Iterator_next/-1124697587 var617)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var617!1 Iterator)
(define-const var3644 var2065 (cast-from-var1122-to-var2065 var2304)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var1377 Bool (isInRange/945559528 var3644 var1702)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var1377 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var132 var1823 (arrayFormulas/-1100774885 var3331)) ; Statement: $r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
;(assert (var1823_remove/563718388 var132 (cast-from-var2065-to-var1122 var3644))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12) 

(declare-const var132!1 var1823)
(declare-const var3644!1 var2065)
(assert true)
(define-const var3270 var846 (getCellRange/1228274481 var3331 var3644!1)) ; Statement: r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12) 
(define-const var1732 Iterator (var846_iterator/1481011198 var3270)) ; Statement: r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3349 Bool (Iterator_hasNext/-1669924200 var1732)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (not (= (ite var3349 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2629 var1122 (Iterator_next/-1124697587 var1732)) ; Statement: $r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1732!1 Iterator)
(define-const var2494 var3532 (cast-from-var1122-to-var3532 var2629)) ; Statement: r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16 
(assert true)
;(assert (setBlank/1591196184 (cast-from-var3532-to-var1538 var2494))) ; Statement: virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>() 

(declare-const var2494!1 var3532)
 ; Statement: goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3349!1 Bool (Iterator_hasNext/-1669924200 var1732!1)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (= (ite var3349!1 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3068_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var3185-to-var1122=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var2070-to-var1122=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var1823_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1122-to-var2065=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var1823_remove/563718388=([java.util.List, java.lang.Object], boolean), cast-from-var2065-to-var1122=([org.apache.poi.ss.util.CellRangeAddress], java.lang.Object), getCellRange/1228274481=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellRangeAddress], org.apache.poi.ss.usermodel.CellRange), var846_iterator/1481011198=([org.apache.poi.ss.usermodel.CellRange], java.util.Iterator), cast-from-var1122-to-var3532=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFCell), setBlank/1591196184=([org.apache.poi.ss.usermodel.CellBase], void), cast-from-var3532-to-var1538=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellBase)}
; {var2070=org.apache.poi.xssf.usermodel.XSSFSheet, var3331=r1, var3068=org.apache.poi.ss.usermodel.Cell, var1702=r0, var3185=org.apache.poi.ss.usermodel.Sheet, var1328=$r2, var1122=java.lang.Object, var1823=java.util.List, var2347=$r3, var617=r19, var856=$z0, var2304=$r11, var2065=org.apache.poi.ss.util.CellRangeAddress, var3644=r12, var1377=$z1, var132=$r13, var846=org.apache.poi.ss.usermodel.CellRange, var3270=r14, var1732=r15, var3349=$z2, var2629=$r16, var3532=org.apache.poi.xssf.usermodel.XSSFCell, var2494=r17, var1538=org.apache.poi.ss.usermodel.CellBase}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var2070, r1=var3331, org.apache.poi.ss.usermodel.Cell=var3068, r0=var1702, org.apache.poi.ss.usermodel.Sheet=var3185, $r2=var1328, java.lang.Object=var1122, java.util.List=var1823, $r3=var2347, r19=var617, $z0=var856, $r11=var2304, org.apache.poi.ss.util.CellRangeAddress=var2065, r12=var3644, $z1=var1377, $r13=var132, org.apache.poi.ss.usermodel.CellRange=var846, r14=var3270, r15=var1732, $z2=var3349, $r16=var2629, org.apache.poi.xssf.usermodel.XSSFCell=var3532, r17=var2494, org.apache.poi.ss.usermodel.CellBase=var1538}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	$r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12);	r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12);	r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	$r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>();	r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16;	virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>();	goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	return r14
;block_num 9