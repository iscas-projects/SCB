(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3551 0)
(declare-sort var1636 0)
(declare-sort var1121 0)
(declare-sort var1091 0)
(declare-sort var3573 0)
(declare-sort var587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateSheetIndex/302308305 (var3551 Int) void)
(declare-fun workbook/-433134786 (var3551) var1121)
(declare-fun var1121_getDefinedNames/1834598957 (var1121) var1091)
(declare-fun var1091_addNewDefinedName/-411754027 (var1091) var3573)
(declare-fun var3573_setName/965050371 (var3573 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3573_setLocalSheetId/1228459254 (var3573 Int) void)
(declare-fun getBuiltInName/1235420764 (var3551 String Int) var587)
(declare-fun createAndStoreName/-703823965 (var3551 var3573) var587)
(declare-const null-var3551 var3551)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1091 var1091)
(declare-const null-var587 var587)
(declare-const var3530 var3551) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var3530 null-var3551)))
(declare-const var2743 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2743 null-String)))
(declare-const var1050 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1050 null-Int)))
(assert true)
;(assert (validateSheetIndex/302308305 var3530 var1050)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0) 

(declare-const var3530!1 var3551)
(declare-const var1050!1 Int)
(define-const var294 var1121 (workbook/-433134786 var3530!1)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var2667 var1091 (var1121_getDefinedNames/1834598957 var294)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>() 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(assert (not (= var2667 null-var1091))) ; Cond: $r2 != null 
(define-const var2432 var1121 (workbook/-433134786 var3530!1)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var1966 var1091 (var1121_getDefinedNames/1834598957 var2432)) ; Statement: $r17 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>() 
(assert true) ; Non Conditional
(define-const var1224 var3573 (var1091_addNewDefinedName/-411754027 var1966)) ; Statement: $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>() 
;(assert (var3573_setName/965050371 var1224 var2743)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4) 

(declare-const var1224!1 var3573)
(declare-const var2743!1 String)
(define-const var1772 Int (cast-from-Int-to-Int var1050!1)) ; Statement: $l1 = (long) i0 
;(assert (var3573_setLocalSheetId/1228459254 var1224!1 var1772)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1) 

(declare-const var1224!2 var3573)
(declare-const var1772!1 Int)
(assert true)
(define-const var1235 var587 (getBuiltInName/1235420764 var3530!1 var2743!1 var1050!1)) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0) 
 ; Statement: if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16) 
(assert (= var1235 null-var587)) ; Cond: $r5 == null 
(assert true)
(define-const var3402 var587 (createAndStoreName/-703823965 var3530!1 var1224!2)) ; Statement: $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {validateSheetIndex/302308305=([org.apache.poi.xssf.usermodel.XSSFWorkbook, int], void), workbook/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook), var1121_getDefinedNames/1834598957=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames), var1091_addNewDefinedName/-411754027=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName), var3573_setName/965050371=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, java.lang.String], void), cast-from-Int-to-Int=([int], long), var3573_setLocalSheetId/1228459254=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, long], void), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), createAndStoreName/-703823965=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName], org.apache.poi.xssf.usermodel.XSSFName)}
; {var3551=org.apache.poi.xssf.usermodel.XSSFWorkbook, var3530=r0, var2743=r4, var1636=null_type, var1050=i0, var1121=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook, var294=$r1, var1091=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames, var2667=$r2, var2432=$r3, var1966=$r17, var3573=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, var1224=$r16, var1772=$l1, var587=org.apache.poi.xssf.usermodel.XSSFName, var1235=$r5, var3402=$r6}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var3551, r0=var3530, r4=var2743, null_type=var1636, i0=var1050, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook=var1121, $r1=var294, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames=var1091, $r2=var2667, $r3=var2432, $r17=var1966, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName=var3573, $r16=var1224, $l1=var1772, org.apache.poi.xssf.usermodel.XSSFName=var587, $r5=var1235, $r6=var3402}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0);	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>();	if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r17 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>();	$r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>();	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4);	$l1 = (long) i0;	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1);	$r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0);	if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16);	$r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16);	return $r6
;block_num 4