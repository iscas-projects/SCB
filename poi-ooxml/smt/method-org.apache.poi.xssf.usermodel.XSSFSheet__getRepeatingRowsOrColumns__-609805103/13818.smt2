(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1200 0)
(declare-sort var303 0)
(declare-sort var403 0)
(declare-sort var309 0)
(declare-sort var535 0)
(declare-sort var81 0)
(declare-sort var2997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var1200) var303)
(declare-fun getSheetIndex/-737518688 (var303 var403) Int)
(declare-fun cast-from-var1200-to-var403 (var1200) var403)
(declare-fun getBuiltInName/1235420764 (var303 String Int) var309)
(declare-fun getRefersToFormula/883716177 (var309) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var81) Int)
(declare-fun getLastColumnIndex/-111059718 (var81) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2997_valueOf/234543428 (String) var2997)
(declare-fun getFirstColumn/-1595317375 (var2997) Int)
(declare-fun getLastColumn/1024515335 (var2997) Int)
(declare-const null-var1200 var1200)
(declare-const null-Bool Bool)
(declare-const null-var309 var309)
(declare-const null-String String)
(declare-const var81-EXCEL2007 var81)
(declare-const var1294 var1200) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1294 null-var1200)))
(declare-const var2233 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2233 null-Bool)))
(assert true)
(define-const var2243 var303 (getWorkbook/803238250 var1294)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var3582 Int (getSheetIndex/-737518688 var2243 (cast-from-var1200-to-var403 var1294))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var3034 var303 (getWorkbook/803238250 var1294)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var1136 var309 (getBuiltInName/1235420764 var3034 "_xlnm.Print_Titles" var3582)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var1136 null-var309))) ; Cond: r3 != null 
(assert true)
(define-const var131 String (getRefersToFormula/883716177 var1136)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var131 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var1244 (Array Int String) (split/-636890950 var131 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var131 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var1216 var81 var81-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3181 Int (getLastRowIndex/-973705812 var1216)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var3615 var81 var81-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var1209 Int (getLastColumnIndex/-111059718 var3615)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var942 Int (getLength-Arr-String-1 var1244)) ; Statement: i3 = lengthof r5 
(define-const var2621 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var2621 var942))) ; Negate: Cond: i12 >= i3  
(define-const var3273 String (select var1244 var2621)) ; Statement: r8 = r5[i12] 
(define-const var359 var2997 (var2997_valueOf/234543428 var3273)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var1719 Int (getFirstColumn/-1595317375 var359)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (not (= var1719 0)))) ; Negate: Cond: $i4 != 0  
(assert true)
(define-const var1531 Int (getLastColumn/1024515335 var359)) ; Statement: $i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
 ; Statement: if $i11 == i2 goto (branch) 
(assert (= var1531 var1209)) ; Cond: $i11 == i2 
 ; Statement: if z0 == 0 goto i12 = i12 + 1 
(assert (= (ite var2233 1 0) 0)) ; Cond: z0 == 0 
(define-const var2621!1 Int (+ var2621 1)) ; Statement: i12 = i12 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (>= var2621!1 var942)) ; Cond: i12 >= i3 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var1200-to-var403=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var2997_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var1200=org.apache.poi.xssf.usermodel.XSSFSheet, var1294=r0, var2233=z0, var303=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2243=$r1, var403=org.apache.poi.ss.usermodel.Sheet, var3582=i0, var3034=$r2, var309=org.apache.poi.xssf.usermodel.XSSFName, var1136=r3, var131=r4, var535=null_type, var1244=r5, var81=org.apache.poi.ss.SpreadsheetVersion, var1216=$r6, var3181=i1, var3615=$r7, var1209=i2, var942=i3, var2621=i12, var3273=r8, var2997=org.apache.poi.ss.util.CellRangeAddress, var359=r9, var1719=$i4, var1531=$i11}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1200, r0=var1294, z0=var2233, org.apache.poi.xssf.usermodel.XSSFWorkbook=var303, $r1=var2243, org.apache.poi.ss.usermodel.Sheet=var403, i0=var3582, $r2=var3034, org.apache.poi.xssf.usermodel.XSSFName=var309, r3=var1136, r4=var131, null_type=var535, r5=var1244, org.apache.poi.ss.SpreadsheetVersion=var81, $r6=var1216, i1=var3181, $r7=var3615, i2=var1209, i3=var942, i12=var2621, r8=var3273, org.apache.poi.ss.util.CellRangeAddress=var2997, r9=var359, $i4=var1719, $i11=var1531}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	if $i11 == i2 goto (branch);	if z0 == 0 goto i12 = i12 + 1;	i12 = i12 + 1;	goto [?= (branch)];	if i12 >= i3 goto return null;	return null
;block_num 10