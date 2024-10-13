(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var436 0)
(declare-sort var1003 0)
(declare-sort var2706 0)
(declare-sort var2087 0)
(declare-sort var847 0)
(declare-sort var2584 0)
(declare-sort var2205 0)
(declare-sort var99 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstCell/1646459898 (var1003) var2706)
(declare-fun getSheetName/525963585 (var2706) String)
(declare-fun var2087_getSheetName/1433762611 (var2087) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2205_bootstrap$/-552411462 (var1003) var2584)
(declare-fun createPivotTable/-1504821204 (var436 var2706 var2087 var2584) var99)
(declare-const null-var436 var436)
(declare-const null-var1003 var1003)
(declare-const null-var2706 var2706)
(declare-const null-var2087 var2087)
(declare-const null-String String)
(declare-const var1124 var436) ; Statement: r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1124 null-var436)))
(declare-const var532 var1003) ; Statement: r0 := @parameter0: org.apache.poi.ss.util.AreaReference 
(assert (not (= var532 null-var1003)))
(declare-const var2140 var2706) ; Statement: r4 := @parameter1: org.apache.poi.ss.util.CellReference 
(assert (not (= var2140 null-var2706)))
(declare-const var3635 var2087) ; Statement: r5 := @parameter2: org.apache.poi.ss.usermodel.Sheet 
(assert (not (= var3635 null-var2087)))
(assert true)
(define-const var3452 var2706 (getFirstCell/1646459898 var532)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>() 
(assert true)
(define-const var493 String (getSheetName/525963585 var3452)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>() 
 ; Statement: if r2 == null goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0) 
(assert (not (= var493 null-String))) ; Negate: Cond: r2 == null  
(define-const var3973 String (var2087_getSheetName/1433762611 var3635)) ; Statement: $r8 = interfaceinvoke r5.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var1404 Bool (equalsIgnoreCase/-92311102 var493 var3973)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r8) 
 ; Statement: if $z0 != 0 goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0) 
(assert (not (= (ite var1404 1 0) 0))) ; Cond: $z0 != 0 
(define-const var304 var2584 (var2205_bootstrap$/-552411462 var532)) ; Statement: $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0) 
(assert true)
(define-const var3751 var99 (createPivotTable/-1504821204 var1124 var2140 var3635 var304)) ; Statement: $r7 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet,org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator)>(r4, r5, $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstCell/1646459898=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), getSheetName/525963585=([org.apache.poi.ss.util.CellReference], java.lang.String), var2087_getSheetName/1433762611=([org.apache.poi.ss.usermodel.Sheet], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2205_bootstrap$/-552411462=([org.apache.poi.ss.util.AreaReference], org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator), createPivotTable/-1504821204=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Sheet, org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator], org.apache.poi.xssf.usermodel.XSSFPivotTable)}
; {var436=org.apache.poi.xssf.usermodel.XSSFSheet, var1124=r3, var1003=org.apache.poi.ss.util.AreaReference, var532=r0, var2706=org.apache.poi.ss.util.CellReference, var2140=r4, var2087=org.apache.poi.ss.usermodel.Sheet, var3635=r5, var3452=$r1, var493=r2, var847=null_type, var3973=$r8, var1404=$z0, var2584=org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator, var2205=org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511, var304=$r6, var99=org.apache.poi.xssf.usermodel.XSSFPivotTable, var3751=$r7}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var436, r3=var1124, org.apache.poi.ss.util.AreaReference=var1003, r0=var532, org.apache.poi.ss.util.CellReference=var2706, r4=var2140, org.apache.poi.ss.usermodel.Sheet=var2087, r5=var3635, $r1=var3452, r2=var493, null_type=var847, $r8=var3973, $z0=var1404, org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator=var2584, org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511=var2205, $r6=var304, org.apache.poi.xssf.usermodel.XSSFPivotTable=var99, $r7=var3751}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.util.AreaReference;	r4 := @parameter1: org.apache.poi.ss.util.CellReference;	r5 := @parameter2: org.apache.poi.ss.usermodel.Sheet;	$r1 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>();	r2 = virtualinvoke $r1.<org.apache.poi.ss.util.CellReference: java.lang.String getSheetName()>();	if r2 == null goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0);	$r8 = interfaceinvoke r5.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r8);	if $z0 != 0 goto $r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0);	$r6 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_2__511: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.util.AreaReference)>(r0);	$r7 = specialinvoke r3.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet,org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator)>(r4, r5, $r6);	return $r7
;block_num 3