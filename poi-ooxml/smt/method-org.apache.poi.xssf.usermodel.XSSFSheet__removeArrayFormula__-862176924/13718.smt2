(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3236 0)
(declare-sort var880 0)
(declare-sort var3066 0)
(declare-sort var1011 0)
(declare-sort var151 0)
(declare-sort var3262 0)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var880_getSheet/292787143 (var880) var3066)
(declare-fun cast-from-var3066-to-var1011 (var3066) var1011)
(declare-fun cast-from-var3236-to-var1011 (var3236) var1011)
(declare-fun arrayFormulas/-1100774885 (var3236) var151)
(declare-fun var151_iterator/-912451715 (var151) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1011)
(declare-fun cast-from-var1011-to-var3262 (var1011) var3262)
(declare-fun isInRange/945559528 (var3262 var880) Bool)
(declare-fun var151_remove/563718388 (var151 var1011) Bool)
(declare-fun cast-from-var3262-to-var1011 (var3262) var1011)
(declare-fun getCellRange/1228274481 (var3236 var3262) var474)
(declare-fun var474_iterator/1481011198 (var474) Iterator)
(declare-const null-var3236 var3236)
(declare-const null-var880 var880)
(declare-const var3116 var3236) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3116 null-var3236)))
(declare-const var1961 var880) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var1961 null-var880)))
(define-const var198 var3066 (var880_getSheet/292787143 var1961)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var3066-to-var1011 var198) (cast-from-var3236-to-var1011 var3116))) ; Cond: $r2 == r1 
(define-const var1908 var151 (arrayFormulas/-1100774885 var3116)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var1341 Iterator (var151_iterator/-912451715 var1908)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3915 Bool (Iterator_hasNext/-1669924200 var1341)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var3915 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2092 var1011 (Iterator_next/-1124697587 var1341)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1341!1 Iterator)
(define-const var2301 var3262 (cast-from-var1011-to-var3262 var2092)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var2460 Bool (isInRange/945559528 var2301 var1961)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var2460 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1580 var151 (arrayFormulas/-1100774885 var3116)) ; Statement: $r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
;(assert (var151_remove/563718388 var1580 (cast-from-var3262-to-var1011 var2301))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12) 

(declare-const var1580!1 var151)
(declare-const var2301!1 var3262)
(assert true)
(define-const var1849 var474 (getCellRange/1228274481 var3116 var2301!1)) ; Statement: r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12) 
(define-const var117 Iterator (var474_iterator/1481011198 var1849)) ; Statement: r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1489 Bool (Iterator_hasNext/-1669924200 var117)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (= (ite var1489 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var880_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var3066-to-var1011=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var3236-to-var1011=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var151_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1011-to-var3262=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var151_remove/563718388=([java.util.List, java.lang.Object], boolean), cast-from-var3262-to-var1011=([org.apache.poi.ss.util.CellRangeAddress], java.lang.Object), getCellRange/1228274481=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellRangeAddress], org.apache.poi.ss.usermodel.CellRange), var474_iterator/1481011198=([org.apache.poi.ss.usermodel.CellRange], java.util.Iterator)}
; {var3236=org.apache.poi.xssf.usermodel.XSSFSheet, var3116=r1, var880=org.apache.poi.ss.usermodel.Cell, var1961=r0, var3066=org.apache.poi.ss.usermodel.Sheet, var198=$r2, var1011=java.lang.Object, var151=java.util.List, var1908=$r3, var1341=r19, var3915=$z0, var2092=$r11, var3262=org.apache.poi.ss.util.CellRangeAddress, var2301=r12, var2460=$z1, var1580=$r13, var474=org.apache.poi.ss.usermodel.CellRange, var1849=r14, var117=r15, var1489=$z2}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3236, r1=var3116, org.apache.poi.ss.usermodel.Cell=var880, r0=var1961, org.apache.poi.ss.usermodel.Sheet=var3066, $r2=var198, java.lang.Object=var1011, java.util.List=var151, $r3=var1908, r19=var1341, $z0=var3915, $r11=var2092, org.apache.poi.ss.util.CellRangeAddress=var3262, r12=var2301, $z1=var2460, $r13=var1580, org.apache.poi.ss.usermodel.CellRange=var474, r14=var1849, r15=var117, $z2=var1489}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	$r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12);	r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12);	r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	return r14
;block_num 7