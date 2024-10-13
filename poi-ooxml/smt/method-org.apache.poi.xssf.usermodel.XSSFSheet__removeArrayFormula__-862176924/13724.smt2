(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1071 0)
(declare-sort var1621 0)
(declare-sort var2399 0)
(declare-sort var2456 0)
(declare-sort var1835 0)
(declare-sort var163 0)
(declare-sort var873 0)
(declare-sort var3426 0)
(declare-sort var2910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1621_getSheet/292787143 (var1621) var2399)
(declare-fun cast-from-var2399-to-var2456 (var2399) var2456)
(declare-fun cast-from-var1071-to-var2456 (var1071) var2456)
(declare-fun arrayFormulas/-1100774885 (var1071) var1835)
(declare-fun var1835_iterator/-912451715 (var1835) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2456)
(declare-fun cast-from-var2456-to-var163 (var2456) var163)
(declare-fun isInRange/945559528 (var163 var1621) Bool)
(declare-fun var1835_remove/563718388 (var1835 var2456) Bool)
(declare-fun cast-from-var163-to-var2456 (var163) var2456)
(declare-fun getCellRange/1228274481 (var1071 var163) var873)
(declare-fun var873_iterator/1481011198 (var873) Iterator)
(declare-fun cast-from-var2456-to-var3426 (var2456) var3426)
(declare-fun setBlank/1591196184 (var2910) void)
(declare-fun cast-from-var3426-to-var2910 (var3426) var2910)
(declare-const null-var1071 var1071)
(declare-const null-var1621 var1621)
(declare-const var3013 var1071) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3013 null-var1071)))
(declare-const var3204 var1621) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var3204 null-var1621)))
(define-const var3596 var2399 (var1621_getSheet/292787143 var3204)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var2399-to-var2456 var3596) (cast-from-var1071-to-var2456 var3013))) ; Cond: $r2 == r1 
(define-const var81 var1835 (arrayFormulas/-1100774885 var3013)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var1252 Iterator (var1835_iterator/-912451715 var81)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1894 Bool (Iterator_hasNext/-1669924200 var1252)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var1894 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3562 var2456 (Iterator_next/-1124697587 var1252)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1252!1 Iterator)
(define-const var1092 var163 (cast-from-var2456-to-var163 var3562)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3914 Bool (isInRange/945559528 var1092 var3204)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3914 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1894!1 Bool (Iterator_hasNext/-1669924200 var1252!1)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var1894!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3562!1 var2456 (Iterator_next/-1124697587 var1252!1)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1252!2 Iterator)
(define-const var1092!1 var163 (cast-from-var2456-to-var163 var3562!1)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3914!1 Bool (isInRange/945559528 var1092!1 var3204)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var3914!1 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3688 var1835 (arrayFormulas/-1100774885 var3013)) ; Statement: $r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
;(assert (var1835_remove/563718388 var3688 (cast-from-var163-to-var2456 var1092!1))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12) 

(declare-const var3688!1 var1835)
(declare-const var1092!2 var163)
(assert true)
(define-const var2141 var873 (getCellRange/1228274481 var3013 var1092!2)) ; Statement: r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12) 
(define-const var1029 Iterator (var873_iterator/1481011198 var2141)) ; Statement: r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3232 Bool (Iterator_hasNext/-1669924200 var1029)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (not (= (ite var3232 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3476 var2456 (Iterator_next/-1124697587 var1029)) ; Statement: $r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1029!1 Iterator)
(define-const var107 var3426 (cast-from-var2456-to-var3426 var3476)) ; Statement: r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16 
(assert true)
;(assert (setBlank/1591196184 (cast-from-var3426-to-var2910 var107))) ; Statement: virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>() 

(declare-const var107!1 var3426)
 ; Statement: goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3232!1 Bool (Iterator_hasNext/-1669924200 var1029!1)) ; Statement: $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return r14 
(assert (= (ite var3232!1 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1621_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var2399-to-var2456=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var1071-to-var2456=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var1835_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2456-to-var163=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var1835_remove/563718388=([java.util.List, java.lang.Object], boolean), cast-from-var163-to-var2456=([org.apache.poi.ss.util.CellRangeAddress], java.lang.Object), getCellRange/1228274481=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellRangeAddress], org.apache.poi.ss.usermodel.CellRange), var873_iterator/1481011198=([org.apache.poi.ss.usermodel.CellRange], java.util.Iterator), cast-from-var2456-to-var3426=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFCell), setBlank/1591196184=([org.apache.poi.ss.usermodel.CellBase], void), cast-from-var3426-to-var2910=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellBase)}
; {var1071=org.apache.poi.xssf.usermodel.XSSFSheet, var3013=r1, var1621=org.apache.poi.ss.usermodel.Cell, var3204=r0, var2399=org.apache.poi.ss.usermodel.Sheet, var3596=$r2, var2456=java.lang.Object, var1835=java.util.List, var81=$r3, var1252=r19, var1894=$z0, var3562=$r11, var163=org.apache.poi.ss.util.CellRangeAddress, var1092=r12, var3914=$z1, var3688=$r13, var873=org.apache.poi.ss.usermodel.CellRange, var2141=r14, var1029=r15, var3232=$z2, var3476=$r16, var3426=org.apache.poi.xssf.usermodel.XSSFCell, var107=r17, var2910=org.apache.poi.ss.usermodel.CellBase}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1071, r1=var3013, org.apache.poi.ss.usermodel.Cell=var1621, r0=var3204, org.apache.poi.ss.usermodel.Sheet=var2399, $r2=var3596, java.lang.Object=var2456, java.util.List=var1835, $r3=var81, r19=var1252, $z0=var1894, $r11=var3562, org.apache.poi.ss.util.CellRangeAddress=var163, r12=var1092, $z1=var3914, $r13=var3688, org.apache.poi.ss.usermodel.CellRange=var873, r14=var2141, r15=var1029, $z2=var3232, $r16=var3476, org.apache.poi.xssf.usermodel.XSSFCell=var3426, r17=var107, org.apache.poi.ss.usermodel.CellBase=var2910}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	$r13 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	interfaceinvoke $r13.<java.util.List: boolean remove(java.lang.Object)>(r12);	r14 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.ss.usermodel.CellRange getCellRange(org.apache.poi.ss.util.CellRangeAddress)>(r12);	r15 = interfaceinvoke r14.<org.apache.poi.ss.usermodel.CellRange: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	$r16 = interfaceinvoke r15.<java.util.Iterator: java.lang.Object next()>();	r17 = (org.apache.poi.xssf.usermodel.XSSFCell) $r16;	virtualinvoke r17.<org.apache.poi.xssf.usermodel.XSSFCell: void setBlank()>();	goto [?= $z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>()];	$z2 = interfaceinvoke r15.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return r14;	return r14
;block_num 12