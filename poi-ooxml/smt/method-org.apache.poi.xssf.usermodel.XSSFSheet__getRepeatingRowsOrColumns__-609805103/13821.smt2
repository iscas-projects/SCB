(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2514 0)
(declare-sort var932 0)
(declare-sort var350 0)
(declare-sort var2879 0)
(declare-sort var2413 0)
(declare-sort var1022 0)
(declare-sort var2147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var2514) var932)
(declare-fun getSheetIndex/-737518688 (var932 var350) Int)
(declare-fun cast-from-var2514-to-var350 (var2514) var350)
(declare-fun getBuiltInName/1235420764 (var932 String Int) var2879)
(declare-fun getRefersToFormula/883716177 (var2879) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var1022) Int)
(declare-fun getLastColumnIndex/-111059718 (var1022) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2147_valueOf/234543428 (String) var2147)
(declare-fun getFirstColumn/-1595317375 (var2147) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLastColumn/1024515335 (var2147) Int)
(declare-const null-var2514 var2514)
(declare-const null-Bool Bool)
(declare-const null-var2879 var2879)
(declare-const null-String String)
(declare-const var1022-EXCEL2007 var1022)
(declare-const var2845 var2514) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2845 null-var2514)))
(declare-const var2766 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2766 null-Bool)))
(assert true)
(define-const var3897 var932 (getWorkbook/803238250 var2845)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var853 Int (getSheetIndex/-737518688 var3897 (cast-from-var2514-to-var350 var2845))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var3954 var932 (getWorkbook/803238250 var2845)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var1959 var2879 (getBuiltInName/1235420764 var3954 "_xlnm.Print_Titles" var853)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var1959 null-var2879))) ; Cond: r3 != null 
(assert true)
(define-const var1764 String (getRefersToFormula/883716177 var1959)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var1764 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var3759 (Array Int String) (split/-636890950 var1764 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1764 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2276 var1022 var1022-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2710 Int (getLastRowIndex/-973705812 var2276)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var139 var1022 var1022-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var1069 Int (getLastColumnIndex/-111059718 var139)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var1661 Int (getLength-Arr-String-1 var3759)) ; Statement: i3 = lengthof r5 
(define-const var3822 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var3822 var1661))) ; Negate: Cond: i12 >= i3  
(define-const var2247 String (select var3759 var3822)) ; Statement: r8 = r5[i12] 
(define-const var3845 var2147 (var2147_valueOf/234543428 var2247)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var2204 Int (getFirstColumn/-1595317375 var3845)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (= var2204 0))) ; Cond: $i4 != 0 
(assert true)
(define-const var1521 Int (getFirstColumn/-1595317375 var3845)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var251 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var1521 var251)))) ; Negate: Cond: $i5 != $i14  
(assert true)
(define-const var2176 Int (getLastColumn/1024515335 var3845)) ; Statement: $i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
(define-const var1453 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var2176 var1453)))) ; Negate: Cond: $i10 != $i16  
 ; Statement: if z0 == 0 goto i12 = i12 + 1 
(assert (= (ite var2766 1 0) 0)) ; Cond: z0 == 0 
(define-const var3822!1 Int (+ var3822 1)) ; Statement: i12 = i12 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (>= var3822!1 var1661)) ; Cond: i12 >= i3 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var2514-to-var350=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var2147_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var2514=org.apache.poi.xssf.usermodel.XSSFSheet, var2845=r0, var2766=z0, var932=org.apache.poi.xssf.usermodel.XSSFWorkbook, var3897=$r1, var350=org.apache.poi.ss.usermodel.Sheet, var853=i0, var3954=$r2, var2879=org.apache.poi.xssf.usermodel.XSSFName, var1959=r3, var1764=r4, var2413=null_type, var3759=r5, var1022=org.apache.poi.ss.SpreadsheetVersion, var2276=$r6, var2710=i1, var139=$r7, var1069=i2, var1661=i3, var3822=i12, var2247=r8, var2147=org.apache.poi.ss.util.CellRangeAddress, var3845=r9, var2204=$i4, var1521=$i5, var251=$i14, var2176=$i10, var1453=$i16}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var2514, r0=var2845, z0=var2766, org.apache.poi.xssf.usermodel.XSSFWorkbook=var932, $r1=var3897, org.apache.poi.ss.usermodel.Sheet=var350, i0=var853, $r2=var3954, org.apache.poi.xssf.usermodel.XSSFName=var2879, r3=var1959, r4=var1764, null_type=var2413, r5=var3759, org.apache.poi.ss.SpreadsheetVersion=var1022, $r6=var2276, i1=var2710, $r7=var139, i2=var1069, i3=var1661, i12=var3822, r8=var2247, org.apache.poi.ss.util.CellRangeAddress=var2147, r9=var3845, $i4=var2204, $i5=var1521, $i14=var251, $i10=var2176, $i16=var1453}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	$i16 = (int) -1;	if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if z0 == 0 goto i12 = i12 + 1;	i12 = i12 + 1;	goto [?= (branch)];	if i12 >= i3 goto return null;	return null
;block_num 11