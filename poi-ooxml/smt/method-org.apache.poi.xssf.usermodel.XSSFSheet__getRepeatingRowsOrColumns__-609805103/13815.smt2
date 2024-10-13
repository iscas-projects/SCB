(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3881 0)
(declare-sort var3572 0)
(declare-sort var1798 0)
(declare-sort var662 0)
(declare-sort var2759 0)
(declare-sort var2912 0)
(declare-sort var2575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var3881) var3572)
(declare-fun getSheetIndex/-737518688 (var3572 var1798) Int)
(declare-fun cast-from-var3881-to-var1798 (var3881) var1798)
(declare-fun getBuiltInName/1235420764 (var3572 String Int) var662)
(declare-fun getRefersToFormula/883716177 (var662) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var2912) Int)
(declare-fun getLastColumnIndex/-111059718 (var2912) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2575_valueOf/234543428 (String) var2575)
(declare-fun getFirstColumn/-1595317375 (var2575) Int)
(declare-fun getLastColumn/1024515335 (var2575) Int)
(declare-const null-var3881 var3881)
(declare-const null-Bool Bool)
(declare-const null-var662 var662)
(declare-const null-String String)
(declare-const var2912-EXCEL2007 var2912)
(declare-const var3197 var3881) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3197 null-var3881)))
(declare-const var3893 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3893 null-Bool)))
(assert true)
(define-const var291 var3572 (getWorkbook/803238250 var3197)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var202 Int (getSheetIndex/-737518688 var291 (cast-from-var3881-to-var1798 var3197))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var2199 var3572 (getWorkbook/803238250 var3197)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var2974 var662 (getBuiltInName/1235420764 var2199 "_xlnm.Print_Titles" var202)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var2974 null-var662))) ; Cond: r3 != null 
(assert true)
(define-const var1586 String (getRefersToFormula/883716177 var2974)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var1586 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var3805 (Array Int String) (split/-636890950 var1586 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1586 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var406 var2912 var2912-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var1535 Int (getLastRowIndex/-973705812 var406)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var138 var2912 var2912-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2991 Int (getLastColumnIndex/-111059718 var138)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var1017 Int (getLength-Arr-String-1 var3805)) ; Statement: i3 = lengthof r5 
(define-const var0 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var0 var1017))) ; Negate: Cond: i12 >= i3  
(define-const var683 String (select var3805 var0)) ; Statement: r8 = r5[i12] 
(define-const var2390 var2575 (var2575_valueOf/234543428 var683)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var1154 Int (getFirstColumn/-1595317375 var2390)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (not (= var1154 0)))) ; Negate: Cond: $i4 != 0  
(assert true)
(define-const var3088 Int (getLastColumn/1024515335 var2390)) ; Statement: $i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
 ; Statement: if $i11 == i2 goto (branch) 
(assert (= var3088 var2991)) ; Cond: $i11 == i2 
 ; Statement: if z0 == 0 goto i12 = i12 + 1 
(assert (not (= (ite var3893 1 0) 0))) ; Negate: Cond: z0 == 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var3881-to-var1798=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var2575_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var3881=org.apache.poi.xssf.usermodel.XSSFSheet, var3197=r0, var3893=z0, var3572=org.apache.poi.xssf.usermodel.XSSFWorkbook, var291=$r1, var1798=org.apache.poi.ss.usermodel.Sheet, var202=i0, var2199=$r2, var662=org.apache.poi.xssf.usermodel.XSSFName, var2974=r3, var1586=r4, var2759=null_type, var3805=r5, var2912=org.apache.poi.ss.SpreadsheetVersion, var406=$r6, var1535=i1, var138=$r7, var2991=i2, var1017=i3, var0=i12, var683=r8, var2575=org.apache.poi.ss.util.CellRangeAddress, var2390=r9, var1154=$i4, var3088=$i11}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3881, r0=var3197, z0=var3893, org.apache.poi.xssf.usermodel.XSSFWorkbook=var3572, $r1=var291, org.apache.poi.ss.usermodel.Sheet=var1798, i0=var202, $r2=var2199, org.apache.poi.xssf.usermodel.XSSFName=var662, r3=var2974, r4=var1586, null_type=var2759, r5=var3805, org.apache.poi.ss.SpreadsheetVersion=var2912, $r6=var406, i1=var1535, $r7=var138, i2=var2991, i3=var1017, i12=var0, r8=var683, org.apache.poi.ss.util.CellRangeAddress=var2575, r9=var2390, $i4=var1154, $i11=var3088}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	if $i11 == i2 goto (branch);	if z0 == 0 goto i12 = i12 + 1;	return r9
;block_num 8