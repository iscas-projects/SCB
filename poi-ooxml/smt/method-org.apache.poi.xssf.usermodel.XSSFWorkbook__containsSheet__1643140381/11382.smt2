(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2837 0)
(declare-sort var2995 0)
(declare-sort var3386 0)
(declare-sort var3298 0)
(declare-sort var3346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun workbook/-433134786 (var2837) var3386)
(declare-fun var3386_getSheets/1674154499 (var3386) var3298)
(declare-fun var3298_getSheetArray/-1620380094 (var3298) (Array Int var3346))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getLength-Arr-var3346-1 ((Array Int var3346)) Int)
(declare-const null-var2837 var2837)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2925 var2837) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var2925 null-var2837)))
(declare-const var3069 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3069 null-String)))
(declare-const var1687 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1687 null-Int)))
(define-const var716 var3386 (workbook/-433134786 var2925)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var2591 var3298 (var3386_getSheets/1674154499 var716)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets getSheets()>() 
(define-const var3353 (Array Int var3346) (var3298_getSheetArray/-1620380094 var2591)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet[] getSheetArray()>() 
(assert true)
(define-const var2691 Int (length/-134980193 var3069)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 31 goto i3 = 0 
(assert (<= var2691 31)) ; Cond: $i0 <= 31 
(define-const var469 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3087 Int (getLength-Arr-var3346-1 var3353)) ; Statement: $i4 = lengthof r3 
 ; Statement: if i3 >= $i4 goto return 0 
(assert (>= var469 var3087)) ; Cond: i3 >= $i4 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {workbook/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook), var3386_getSheets/1674154499=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets), var3298_getSheetArray/-1620380094=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet[]), length/-134980193=([java.lang.String], int), getLength-Arr-var3346-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet[]], int)}
; {var2837=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2925=r0, var3069=r5, var2995=null_type, var1687=i2, var3386=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook, var716=$r1, var3298=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets, var2591=$r2, var3346=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet, var3353=r3, var2691=$i0, var469=i3, var3087=$i4}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var2837, r0=var2925, r5=var3069, null_type=var2995, i2=var1687, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook=var3386, $r1=var716, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets=var3298, $r2=var2591, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet=var3346, r3=var3353, $i0=var2691, i3=var469, $i4=var3087}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r5 := @parameter0: java.lang.String;	i2 := @parameter1: int;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets getSheets()>();	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet[] getSheetArray()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	if $i0 <= 31 goto i3 = 0;	i3 = 0;	$i4 = lengthof r3;	if i3 >= $i4 goto return 0;	return 0
;block_num 4