(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort var3082 0)
(declare-sort var2863 0)
(declare-sort var2940 0)
(declare-sort var2708 0)
(declare-sort var1832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstCell/1646459898 (var3082) var2863)
(declare-fun getSheetName/525963585 (var2863) String)
(declare-fun getSheetName/173734675 (var3469) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun createPivotTable/-1838589274 (var3469 var3082 var2863 var1832) var2708)
(declare-fun cast-from-var3469-to-var1832 (var3469) var1832)
(declare-const null-var3469 var3469)
(declare-const null-var3082 var3082)
(declare-const null-var2863 var2863)
(declare-const null-String String)
(declare-const var1504 var3469) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1504 null-var3469)))
(declare-const var1859 var3082) ; Statement: r0 := @parameter0: org.apache.poi.ss.util.AreaReference 
(assert (not (= var1859 null-var3082)))
(declare-const var2203 var2863) ; Statement: r4 := @parameter1: org.apache.poi.ss.util.CellReference 
(assert (not (= var2203 null-var2863)))
(assert true)
(define-const var1363 var2863 (getFirstCell/1646459898 var1859)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>() 
(assert true)
(define-const var2539 String (getSheetName/525963585 var1363)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>() 
 ; Statement: if r2 == null goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3) 
(assert (not (= var2539 null-String))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var1228 String (getSheetName/173734675 var1504)) ; Statement: $r6 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var248 Bool (equalsIgnoreCase/-92311102 var2539 var1228)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r6) 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3) 
(assert (not (= (ite var248 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var189 var2708 (createPivotTable/-1838589274 var1504 var1859 var2203 (cast-from-var3469-to-var1832 var1504))) ; Statement: $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstCell/1646459898=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), getSheetName/525963585=([org.apache.poi.ss.util.CellReference], java.lang.String), getSheetName/173734675=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), createPivotTable/-1838589274=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.AreaReference, org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Sheet], org.apache.poi.xssf.usermodel.XSSFPivotTable), cast-from-var3469-to-var1832=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet)}
; {var3469=org.apache.poi.xssf.usermodel.XSSFSheet, var1504=r3, var3082=org.apache.poi.ss.util.AreaReference, var1859=r0, var2863=org.apache.poi.ss.util.CellReference, var2203=r4, var1363=$r1, var2539=r2, var2940=null_type, var1228=$r6, var248=$z0, var2708=org.apache.poi.xssf.usermodel.XSSFPivotTable, var1832=org.apache.poi.ss.usermodel.Sheet, var189=$r5}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3469, r3=var1504, org.apache.poi.ss.util.AreaReference=var3082, r0=var1859, org.apache.poi.ss.util.CellReference=var2863, r4=var2203, $r1=var1363, r2=var2539, null_type=var2940, $r6=var1228, $z0=var248, org.apache.poi.xssf.usermodel.XSSFPivotTable=var2708, org.apache.poi.ss.usermodel.Sheet=var1832, $r5=var189}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.util.AreaReference;	r4 := @parameter1: org.apache.poi.ss.util.CellReference;	$r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>();	r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>();	if r2 == null goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3);	$r6 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getSheetName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r6);	if $z0 != 0 goto $r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3);	$r5 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.AreaReference,org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet)>(r0, r4, r3);	return $r5
;block_num 3