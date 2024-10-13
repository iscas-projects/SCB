(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var121 0)
(declare-sort var1805 0)
(declare-sort var3753 0)
(declare-sort var2659 0)
(declare-sort var1704 0)
(declare-sort var3381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstCell/1646459898 (var121) var1805)
(declare-fun getSheetName/525963585 (var1805) String)
(declare-fun getSheetName/173734675 (var851) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun getWorkbook/803238250 (var851) var2659)
(declare-fun getSheet/-1213929324 (var2659 String) var851)
(declare-fun createPivotTable/-1838589274 (var851 var121 var1805 var3381) var1704)
(declare-fun cast-from-var851-to-var3381 (var851) var3381)
(declare-const null-var851 var851)
(declare-const null-var121 var121)
(declare-const null-var1805 var1805)
(declare-const null-String String)
(declare-const var269 var851) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var269 null-var851)))
(declare-const var2853 var121) ; Statement: r0 := @parameter0: org.apache.poi.ss.util.AreaReference 
(assert (not (= var2853 null-var121)))
(declare-const var777 var1805) ; Statement: r4 := @parameter1: org.apache.poi.ss.util.CellReference 
(assert (not (= var777 null-var1805)))
(assert true)
(define-const var854 var1805 (getFirstCell/1646459898 var2853)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>() 
(assert true)
(define-const var3066 String (getSheetName/525963585 var854)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>() 
 ; Statement: if r2 == null goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3) 
(assert (not (= var3066 null-String))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var1549 String (getSheetName/173734675 var269)) ; Statement: $r6 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var1980 Bool (equalsIgnoreCase/-92311102 var3066 var1549)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r6) 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3) 
(assert (not (not (= (ite var1980 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var243 var2659 (getWorkbook/803238250 var269)) ; Statement: $r7 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var1356 var851 (getSheet/-1213929324 var243 var3066)) ; Statement: r8 = virtualinvoke $r7.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet getSheet(java.lang.String)>(r2) 
(assert true)
(define-const var3099 var1704 (createPivotTable/-1838589274 var269 var2853 var777 (cast-from-var851-to-var3381 var1356))) ; Statement: $r9 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstCell/1646459898=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), getSheetName/525963585=([org.apache.poi.ss.util.CellReference], java.lang.String), getSheetName/173734675=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheet/-1213929324=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String], org.apache.poi.xssf.usermodel.XSSFSheet), createPivotTable/-1838589274=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.AreaReference, org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Sheet], org.apache.poi.xssf.usermodel.XSSFPivotTable), cast-from-var851-to-var3381=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet)}
; {var851=org.apache.poi.xssf.usermodel.XSSFSheet, var269=r3, var121=org.apache.poi.ss.util.AreaReference, var2853=r0, var1805=org.apache.poi.ss.util.CellReference, var777=r4, var854=$r1, var3066=r2, var3753=null_type, var1549=$r6, var1980=$z0, var2659=org.apache.poi.xssf.usermodel.XSSFWorkbook, var243=$r7, var1356=r8, var1704=org.apache.poi.xssf.usermodel.XSSFPivotTable, var3381=org.apache.poi.ss.usermodel.Sheet, var3099=$r9}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var851, r3=var269, org.apache.poi.ss.util.AreaReference=var121, r0=var2853, org.apache.poi.ss.util.CellReference=var1805, r4=var777, $r1=var854, r2=var3066, null_type=var3753, $r6=var1549, $z0=var1980, org.apache.poi.xssf.usermodel.XSSFWorkbook=var2659, $r7=var243, r8=var1356, org.apache.poi.xssf.usermodel.XSSFPivotTable=var1704, org.apache.poi.ss.usermodel.Sheet=var3381, $r9=var3099}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.util.AreaReference;	r4 := @parameter1: org.apache.poi.ss.util.CellReference;	$r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>();	r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>();	if r2 == null goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3);	$r6 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getSheetName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r6);	if $z0 != 0 goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3);	$r7 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r8 = virtualinvoke $r7.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFSheet getSheet(java.lang.String)>(r2);	$r9 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r8);	return $r9
;block_num 3