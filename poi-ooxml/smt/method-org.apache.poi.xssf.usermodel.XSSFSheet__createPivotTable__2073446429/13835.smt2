(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var248 0)
(declare-sort var3434 0)
(declare-sort var373 0)
(declare-sort var1754 0)
(declare-sort var1191 0)
(declare-sort var3988 0)
(declare-sort var3811 0)
(declare-sort var2339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3434_getSheetName/-2120222945 (var3434) String)
(declare-fun var1754_getSheetName/1433762611 (var1754) String)
(declare-fun var3811_bootstrap$/-1442308413 (var3434) var3988)
(declare-fun createPivotTable/-1504821204 (var248 var373 var1754 var3988) var2339)
(declare-const null-var248 var248)
(declare-const null-var3434 var3434)
(declare-const null-var373 var373)
(declare-const null-var1754 var1754)
(declare-const null-String String)
(declare-const var1488 var248) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1488 null-var248)))
(declare-const var760 var3434) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Name 
(assert (not (= var760 null-var3434)))
(declare-const var2981 var373) ; Statement: r3 := @parameter1: org.apache.poi.ss.util.CellReference 
(assert (not (= var2981 null-var373)))
(declare-const var1759 var1754) ; Statement: r4 := @parameter2: org.apache.poi.ss.usermodel.Sheet 
(assert (not (= var1759 null-var1754)))
(define-const var496 String (var3434_getSheetName/-2120222945 var760)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>() 
 ; Statement: if $r1 == null goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0) 
(assert (not (= var496 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3089 String (var3434_getSheetName/-2120222945 var760)) ; Statement: $r8 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>() 
(define-const var3079 String (var1754_getSheetName/1433762611 var1759)) ; Statement: $r7 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var42 Bool (= var3089 var3079)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0) 
(assert (not (= (ite var42 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3199 var3988 (var3811_bootstrap$/-1442308413 var760)) ; Statement: $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0) 
(assert true)
(define-const var1928 var2339 (createPivotTable/-1504821204 var1488 var2981 var1759 var3199)) ; Statement: $r6 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet,org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator)>(r3, r4, $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3434_getSheetName/-2120222945=([org.apache.poi.ss.usermodel.Name], java.lang.String), var1754_getSheetName/1433762611=([org.apache.poi.ss.usermodel.Sheet], java.lang.String), var3811_bootstrap$/-1442308413=([org.apache.poi.ss.usermodel.Name], org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator), createPivotTable/-1504821204=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Sheet, org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator], org.apache.poi.xssf.usermodel.XSSFPivotTable)}
; {var248=org.apache.poi.xssf.usermodel.XSSFSheet, var1488=r2, var3434=org.apache.poi.ss.usermodel.Name, var760=r0, var373=org.apache.poi.ss.util.CellReference, var2981=r3, var1754=org.apache.poi.ss.usermodel.Sheet, var1759=r4, var496=$r1, var1191=null_type, var3089=$r8, var3079=$r7, var42=$z0, var3988=org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator, var3811=org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512, var3199=$r5, var2339=org.apache.poi.xssf.usermodel.XSSFPivotTable, var1928=$r6}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var248, r2=var1488, org.apache.poi.ss.usermodel.Name=var3434, r0=var760, org.apache.poi.ss.util.CellReference=var373, r3=var2981, org.apache.poi.ss.usermodel.Sheet=var1754, r4=var1759, $r1=var496, null_type=var1191, $r8=var3089, $r7=var3079, $z0=var42, org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator=var3988, org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512=var3811, $r5=var3199, org.apache.poi.xssf.usermodel.XSSFPivotTable=var2339, $r6=var1928}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Name;	r3 := @parameter1: org.apache.poi.ss.util.CellReference;	r4 := @parameter2: org.apache.poi.ss.usermodel.Sheet;	$r1 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>();	if $r1 == null goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0);	$r8 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Name: java.lang.String getSheetName()>();	$r7 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if $z0 != 0 goto $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0);	$r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFSheet$lambda_createPivotTable_3__512: org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator bootstrap$(org.apache.poi.ss.usermodel.Name)>(r0);	$r6 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFPivotTable createPivotTable(org.apache.poi.ss.util.CellReference,org.apache.poi.ss.usermodel.Sheet,org.apache.poi.xssf.usermodel.XSSFPivotTable$PivotTableReferenceConfigurator)>(r3, r4, $r5);	return $r6
;block_num 3