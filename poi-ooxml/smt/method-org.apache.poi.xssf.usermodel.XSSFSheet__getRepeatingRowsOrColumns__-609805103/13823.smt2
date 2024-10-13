(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2198 0)
(declare-sort var2119 0)
(declare-sort var988 0)
(declare-sort var3122 0)
(declare-sort var1428 0)
(declare-sort var3834 0)
(declare-sort var2595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var2198) var2119)
(declare-fun getSheetIndex/-737518688 (var2119 var988) Int)
(declare-fun cast-from-var2198-to-var988 (var2198) var988)
(declare-fun getBuiltInName/1235420764 (var2119 String Int) var3122)
(declare-fun getRefersToFormula/883716177 (var3122) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var3834) Int)
(declare-fun getLastColumnIndex/-111059718 (var3834) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2595_valueOf/234543428 (String) var2595)
(declare-fun getFirstColumn/-1595317375 (var2595) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getFirstRow/-600747447 (var2595) Int)
(declare-fun getLastRow/-1264994685 (var2595) Int)
(declare-const null-var2198 var2198)
(declare-const null-Bool Bool)
(declare-const null-var3122 var3122)
(declare-const null-String String)
(declare-const var3834-EXCEL2007 var3834)
(declare-const var1228 var2198) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1228 null-var2198)))
(declare-const var1145 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1145 null-Bool)))
(assert true)
(define-const var3666 var2119 (getWorkbook/803238250 var1228)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var2984 Int (getSheetIndex/-737518688 var3666 (cast-from-var2198-to-var988 var1228))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var3996 var2119 (getWorkbook/803238250 var1228)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var1990 var3122 (getBuiltInName/1235420764 var3996 "_xlnm.Print_Titles" var2984)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var1990 null-var3122))) ; Cond: r3 != null 
(assert true)
(define-const var252 String (getRefersToFormula/883716177 var1990)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var252 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var2752 (Array Int String) (split/-636890950 var252 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var252 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3683 var3834 var3834-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var1769 Int (getLastRowIndex/-973705812 var3683)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var3674 var3834 var3834-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2371 Int (getLastColumnIndex/-111059718 var3674)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var3416 Int (getLength-Arr-String-1 var2752)) ; Statement: i3 = lengthof r5 
(define-const var3625 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var3625 var3416))) ; Negate: Cond: i12 >= i3  
(define-const var103 String (select var2752 var3625)) ; Statement: r8 = r5[i12] 
(define-const var2104 var2595 (var2595_valueOf/234543428 var103)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var2278 Int (getFirstColumn/-1595317375 var2104)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (= var2278 0))) ; Cond: $i4 != 0 
(assert true)
(define-const var3139 Int (getFirstColumn/-1595317375 var2104)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var3454 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (= var3139 var3454))) ; Cond: $i5 != $i14 
(assert true)
(define-const var1203 Int (getFirstRow/-600747447 var2104)) ; Statement: $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
 ; Statement: if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (= var1203 0))) ; Cond: $i6 != 0 
(assert true)
(define-const var1494 Int (getFirstRow/-600747447 var2104)) ; Statement: $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(define-const var3807 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i7 != $i18 goto i12 = i12 + 1 
(assert (not (not (= var1494 var3807)))) ; Negate: Cond: $i7 != $i18  
(assert true)
(define-const var634 Int (getLastRow/-1264994685 var2104)) ; Statement: $i8 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>() 
(define-const var2880 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
 ; Statement: if $i8 != $i20 goto i12 = i12 + 1 
(assert (not (not (= var634 var2880)))) ; Negate: Cond: $i8 != $i20  
 ; Statement: if z0 != 0 goto i12 = i12 + 1 
(assert (not (not (= (ite var1145 1 0) 0)))) ; Negate: Cond: z0 != 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var2198-to-var988=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var2595_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int), getFirstRow/-600747447=([org.apache.poi.ss.util.CellRangeAddress], int), getLastRow/-1264994685=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var2198=org.apache.poi.xssf.usermodel.XSSFSheet, var1228=r0, var1145=z0, var2119=org.apache.poi.xssf.usermodel.XSSFWorkbook, var3666=$r1, var988=org.apache.poi.ss.usermodel.Sheet, var2984=i0, var3996=$r2, var3122=org.apache.poi.xssf.usermodel.XSSFName, var1990=r3, var252=r4, var1428=null_type, var2752=r5, var3834=org.apache.poi.ss.SpreadsheetVersion, var3683=$r6, var1769=i1, var3674=$r7, var2371=i2, var3416=i3, var3625=i12, var103=r8, var2595=org.apache.poi.ss.util.CellRangeAddress, var2104=r9, var2278=$i4, var3139=$i5, var3454=$i14, var1203=$i6, var1494=$i7, var3807=$i18, var634=$i8, var2880=$i20}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var2198, r0=var1228, z0=var1145, org.apache.poi.xssf.usermodel.XSSFWorkbook=var2119, $r1=var3666, org.apache.poi.ss.usermodel.Sheet=var988, i0=var2984, $r2=var3996, org.apache.poi.xssf.usermodel.XSSFName=var3122, r3=var1990, r4=var252, null_type=var1428, r5=var2752, org.apache.poi.ss.SpreadsheetVersion=var3834, $r6=var3683, i1=var1769, $r7=var3674, i2=var2371, i3=var3416, i12=var3625, r8=var103, org.apache.poi.ss.util.CellRangeAddress=var2595, r9=var2104, $i4=var2278, $i5=var3139, $i14=var3454, $i6=var1203, $i7=var1494, $i18=var3807, $i8=var634, $i20=var2880}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i18 = (int) -1;	if $i7 != $i18 goto i12 = i12 + 1;	$i8 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>();	$i20 = (int) -1;	if $i8 != $i20 goto i12 = i12 + 1;	if z0 != 0 goto i12 = i12 + 1;	return r9
;block_num 11