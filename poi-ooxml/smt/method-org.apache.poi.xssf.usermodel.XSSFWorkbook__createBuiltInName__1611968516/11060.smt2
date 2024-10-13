(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var420 0)
(declare-sort var3691 0)
(declare-sort var856 0)
(declare-sort var1473 0)
(declare-sort var1105 0)
(declare-sort var823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateSheetIndex/302308305 (var420 Int) void)
(declare-fun workbook/-433134786 (var420) var856)
(declare-fun var856_getDefinedNames/1834598957 (var856) var1473)
(declare-fun var856_addNewDefinedNames/-1521042758 (var856) var1473)
(declare-fun var1473_addNewDefinedName/-411754027 (var1473) var1105)
(declare-fun var1105_setName/965050371 (var1105 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1105_setLocalSheetId/1228459254 (var1105 Int) void)
(declare-fun getBuiltInName/1235420764 (var420 String Int) var823)
(declare-fun createAndStoreName/-703823965 (var420 var1105) var823)
(declare-const null-var420 var420)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1473 var1473)
(declare-const null-var823 var823)
(declare-const var1195 var420) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1195 null-var420)))
(declare-const var2499 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2499 null-String)))
(declare-const var3174 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3174 null-Int)))
(assert true)
;(assert (validateSheetIndex/302308305 var1195 var3174)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0) 

(declare-const var1195!1 var420)
(declare-const var3174!1 Int)
(define-const var2023 var856 (workbook/-433134786 var1195!1)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var47 var1473 (var856_getDefinedNames/1834598957 var2023)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>() 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(assert (not (not (= var47 null-var1473)))) ; Negate: Cond: $r2 != null  
(define-const var868 var856 (workbook/-433134786 var1195!1)) ; Statement: $r15 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var3710 var1473 (var856_addNewDefinedNames/-1521042758 var868)) ; Statement: $r17 = interfaceinvoke $r15.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames addNewDefinedNames()>() 
 ; Statement: goto [?= $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>()] 
(assert true) ; Non Conditional
(define-const var2804 var1105 (var1473_addNewDefinedName/-411754027 var3710)) ; Statement: $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>() 
;(assert (var1105_setName/965050371 var2804 var2499)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4) 

(declare-const var2804!1 var1105)
(declare-const var2499!1 String)
(define-const var279 Int (cast-from-Int-to-Int var3174!1)) ; Statement: $l1 = (long) i0 
;(assert (var1105_setLocalSheetId/1228459254 var2804!1 var279)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1) 

(declare-const var2804!2 var1105)
(declare-const var279!1 Int)
(assert true)
(define-const var1478 var823 (getBuiltInName/1235420764 var1195!1 var2499!1 var3174!1)) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0) 
 ; Statement: if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16) 
(assert (= var1478 null-var823)) ; Cond: $r5 == null 
(assert true)
(define-const var343 var823 (createAndStoreName/-703823965 var1195!1 var2804!2)) ; Statement: $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {validateSheetIndex/302308305=([org.apache.poi.xssf.usermodel.XSSFWorkbook, int], void), workbook/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook), var856_getDefinedNames/1834598957=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames), var856_addNewDefinedNames/-1521042758=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames), var1473_addNewDefinedName/-411754027=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName), var1105_setName/965050371=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, java.lang.String], void), cast-from-Int-to-Int=([int], long), var1105_setLocalSheetId/1228459254=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, long], void), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), createAndStoreName/-703823965=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName], org.apache.poi.xssf.usermodel.XSSFName)}
; {var420=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1195=r0, var2499=r4, var3691=null_type, var3174=i0, var856=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook, var2023=$r1, var1473=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames, var47=$r2, var868=$r15, var3710=$r17, var1105=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, var2804=$r16, var279=$l1, var823=org.apache.poi.xssf.usermodel.XSSFName, var1478=$r5, var343=$r6}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var420, r0=var1195, r4=var2499, null_type=var3691, i0=var3174, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook=var856, $r1=var2023, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames=var1473, $r2=var47, $r15=var868, $r17=var3710, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName=var1105, $r16=var2804, $l1=var279, org.apache.poi.xssf.usermodel.XSSFName=var823, $r5=var1478, $r6=var343}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0);	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>();	if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r15 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r17 = interfaceinvoke $r15.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames addNewDefinedNames()>();	goto [?= $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>()];	$r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>();	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4);	$l1 = (long) i0;	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1);	$r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0);	if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16);	$r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16);	return $r6
;block_num 4