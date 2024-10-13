(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3141 0)
(declare-sort var1306 0)
(declare-sort var3108 0)
(declare-sort var2445 0)
(declare-sort var2892 0)
(declare-sort var391 0)
(declare-sort var150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var3141) var1306)
(declare-fun getSheetIndex/-737518688 (var1306 var3108) Int)
(declare-fun cast-from-var3141-to-var3108 (var3141) var3108)
(declare-fun getBuiltInName/1235420764 (var1306 String Int) var2445)
(declare-fun getRefersToFormula/883716177 (var2445) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var391) Int)
(declare-fun getLastColumnIndex/-111059718 (var391) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var150_valueOf/234543428 (String) var150)
(declare-fun getFirstColumn/-1595317375 (var150) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getFirstRow/-600747447 (var150) Int)
(declare-fun getLastRow/-1264994685 (var150) Int)
(declare-const null-var3141 var3141)
(declare-const null-Bool Bool)
(declare-const null-var2445 var2445)
(declare-const null-String String)
(declare-const var391-EXCEL2007 var391)
(declare-const var1344 var3141) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1344 null-var3141)))
(declare-const var3057 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3057 null-Bool)))
(assert true)
(define-const var1833 var1306 (getWorkbook/803238250 var1344)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var909 Int (getSheetIndex/-737518688 var1833 (cast-from-var3141-to-var3108 var1344))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var1490 var1306 (getWorkbook/803238250 var1344)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var248 var2445 (getBuiltInName/1235420764 var1490 "_xlnm.Print_Titles" var909)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var248 null-var2445))) ; Cond: r3 != null 
(assert true)
(define-const var8 String (getRefersToFormula/883716177 var248)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var8 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var458 (Array Int String) (split/-636890950 var8 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var8 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2945 var391 var391-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3298 Int (getLastRowIndex/-973705812 var2945)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var1525 var391 var391-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var1734 Int (getLastColumnIndex/-111059718 var1525)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var2715 Int (getLength-Arr-String-1 var458)) ; Statement: i3 = lengthof r5 
(define-const var484 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var484 var2715))) ; Negate: Cond: i12 >= i3  
(define-const var1823 String (select var458 var484)) ; Statement: r8 = r5[i12] 
(define-const var3708 var150 (var150_valueOf/234543428 var1823)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var487 Int (getFirstColumn/-1595317375 var3708)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (= var487 0))) ; Cond: $i4 != 0 
(assert true)
(define-const var2167 Int (getFirstColumn/-1595317375 var3708)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var67 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (= var2167 var67))) ; Cond: $i5 != $i14 
(assert true)
(define-const var1346 Int (getFirstRow/-600747447 var3708)) ; Statement: $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
 ; Statement: if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var1346 0)))) ; Negate: Cond: $i6 != 0  
(assert true)
(define-const var3982 Int (getLastRow/-1264994685 var3708)) ; Statement: $i9 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>() 
 ; Statement: if $i9 == i1 goto (branch) 
(assert (= var3982 var3298)) ; Cond: $i9 == i1 
 ; Statement: if z0 != 0 goto i12 = i12 + 1 
(assert (not (not (= (ite var3057 1 0) 0)))) ; Negate: Cond: z0 != 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var3141-to-var3108=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var150_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int), getFirstRow/-600747447=([org.apache.poi.ss.util.CellRangeAddress], int), getLastRow/-1264994685=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var3141=org.apache.poi.xssf.usermodel.XSSFSheet, var1344=r0, var3057=z0, var1306=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1833=$r1, var3108=org.apache.poi.ss.usermodel.Sheet, var909=i0, var1490=$r2, var2445=org.apache.poi.xssf.usermodel.XSSFName, var248=r3, var8=r4, var2892=null_type, var458=r5, var391=org.apache.poi.ss.SpreadsheetVersion, var2945=$r6, var3298=i1, var1525=$r7, var1734=i2, var2715=i3, var484=i12, var1823=r8, var150=org.apache.poi.ss.util.CellRangeAddress, var3708=r9, var487=$i4, var2167=$i5, var67=$i14, var1346=$i6, var3982=$i9}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3141, r0=var1344, z0=var3057, org.apache.poi.xssf.usermodel.XSSFWorkbook=var1306, $r1=var1833, org.apache.poi.ss.usermodel.Sheet=var3108, i0=var909, $r2=var1490, org.apache.poi.xssf.usermodel.XSSFName=var2445, r3=var248, r4=var8, null_type=var2892, r5=var458, org.apache.poi.ss.SpreadsheetVersion=var391, $r6=var2945, i1=var3298, $r7=var1525, i2=var1734, i3=var2715, i12=var484, r8=var1823, org.apache.poi.ss.util.CellRangeAddress=var150, r9=var3708, $i4=var487, $i5=var2167, $i14=var67, $i6=var1346, $i9=var3982}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i9 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>();	if $i9 == i1 goto (branch);	if z0 != 0 goto i12 = i12 + 1;	return r9
;block_num 10