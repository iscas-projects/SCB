(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3363 0)
(declare-sort var3348 0)
(declare-sort var1236 0)
(declare-sort var2511 0)
(declare-sort var1771 0)
(declare-sort var559 0)
(declare-sort var2789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var3363) var3348)
(declare-fun getSheetIndex/-737518688 (var3348 var1236) Int)
(declare-fun cast-from-var3363-to-var1236 (var3363) var1236)
(declare-fun getBuiltInName/1235420764 (var3348 String Int) var2511)
(declare-fun getRefersToFormula/883716177 (var2511) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var559) Int)
(declare-fun getLastColumnIndex/-111059718 (var559) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2789_valueOf/234543428 (String) var2789)
(declare-fun getFirstColumn/-1595317375 (var2789) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getFirstRow/-600747447 (var2789) Int)
(declare-const null-var3363 var3363)
(declare-const null-Bool Bool)
(declare-const null-var2511 var2511)
(declare-const null-String String)
(declare-const var559-EXCEL2007 var559)
(declare-const var2360 var3363) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2360 null-var3363)))
(declare-const var1555 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1555 null-Bool)))
(assert true)
(define-const var2582 var3348 (getWorkbook/803238250 var2360)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var1206 Int (getSheetIndex/-737518688 var2582 (cast-from-var3363-to-var1236 var2360))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var1925 var3348 (getWorkbook/803238250 var2360)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var2656 var2511 (getBuiltInName/1235420764 var1925 "_xlnm.Print_Titles" var1206)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var2656 null-var2511))) ; Cond: r3 != null 
(assert true)
(define-const var3894 String (getRefersToFormula/883716177 var2656)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var3894 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var1377 (Array Int String) (split/-636890950 var3894 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3894 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2587 var559 var559-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var982 Int (getLastRowIndex/-973705812 var2587)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var138 var559 var559-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2330 Int (getLastColumnIndex/-111059718 var138)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var253 Int (getLength-Arr-String-1 var1377)) ; Statement: i3 = lengthof r5 
(define-const var2623 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var2623 var253))) ; Negate: Cond: i12 >= i3  
(define-const var2828 String (select var1377 var2623)) ; Statement: r8 = r5[i12] 
(define-const var451 var2789 (var2789_valueOf/234543428 var2828)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var1271 Int (getFirstColumn/-1595317375 var451)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (= var1271 0))) ; Cond: $i4 != 0 
(assert true)
(define-const var3600 Int (getFirstColumn/-1595317375 var451)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var916 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (= var3600 var916))) ; Cond: $i5 != $i14 
(assert true)
(define-const var3390 Int (getFirstRow/-600747447 var451)) ; Statement: $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
 ; Statement: if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (= var3390 0))) ; Cond: $i6 != 0 
(assert true)
(define-const var3765 Int (getFirstRow/-600747447 var451)) ; Statement: $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(define-const var2222 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i7 != $i18 goto i12 = i12 + 1 
(assert (not (= var3765 var2222))) ; Cond: $i7 != $i18 
(define-const var2623!1 Int (+ var2623 1)) ; Statement: i12 = i12 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (>= var2623!1 var253)) ; Cond: i12 >= i3 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var3363-to-var1236=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var2789_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int), getFirstRow/-600747447=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var3363=org.apache.poi.xssf.usermodel.XSSFSheet, var2360=r0, var1555=z0, var3348=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2582=$r1, var1236=org.apache.poi.ss.usermodel.Sheet, var1206=i0, var1925=$r2, var2511=org.apache.poi.xssf.usermodel.XSSFName, var2656=r3, var3894=r4, var1771=null_type, var1377=r5, var559=org.apache.poi.ss.SpreadsheetVersion, var2587=$r6, var982=i1, var138=$r7, var2330=i2, var253=i3, var2623=i12, var2828=r8, var2789=org.apache.poi.ss.util.CellRangeAddress, var451=r9, var1271=$i4, var3600=$i5, var916=$i14, var3390=$i6, var3765=$i7, var2222=$i18}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3363, r0=var2360, z0=var1555, org.apache.poi.xssf.usermodel.XSSFWorkbook=var3348, $r1=var2582, org.apache.poi.ss.usermodel.Sheet=var1236, i0=var1206, $r2=var1925, org.apache.poi.xssf.usermodel.XSSFName=var2511, r3=var2656, r4=var3894, null_type=var1771, r5=var1377, org.apache.poi.ss.SpreadsheetVersion=var559, $r6=var2587, i1=var982, $r7=var138, i2=var2330, i3=var253, i12=var2623, r8=var2828, org.apache.poi.ss.util.CellRangeAddress=var2789, r9=var451, $i4=var1271, $i5=var3600, $i14=var916, $i6=var3390, $i7=var3765, $i18=var2222}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i18 = (int) -1;	if $i7 != $i18 goto i12 = i12 + 1;	i12 = i12 + 1;	goto [?= (branch)];	if i12 >= i3 goto return null;	return null
;block_num 11