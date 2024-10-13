(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var237 0)
(declare-sort var3172 0)
(declare-sort var972 0)
(declare-sort var1505 0)
(declare-sort var3001 0)
(declare-sort var2316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var237) var3172)
(declare-fun getSheetIndex/-737518688 (var3172 var972) Int)
(declare-fun cast-from-var237-to-var972 (var237) var972)
(declare-fun getBuiltInName/1235420764 (var3172 String Int) var1505)
(declare-fun getRefersToFormula/883716177 (var1505) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var2316) Int)
(declare-fun getLastColumnIndex/-111059718 (var2316) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var237 var237)
(declare-const null-Bool Bool)
(declare-const null-var1505 var1505)
(declare-const null-String String)
(declare-const var2316-EXCEL2007 var2316)
(declare-const var515 var237) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var515 null-var237)))
(declare-const var2580 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2580 null-Bool)))
(assert true)
(define-const var1225 var3172 (getWorkbook/803238250 var515)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var2339 Int (getSheetIndex/-737518688 var1225 (cast-from-var237-to-var972 var515))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var780 var3172 (getWorkbook/803238250 var515)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var2273 var1505 (getBuiltInName/1235420764 var780 "_xlnm.Print_Titles" var2339)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var2273 null-var1505))) ; Cond: r3 != null 
(assert true)
(define-const var3631 String (getRefersToFormula/883716177 var2273)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var3631 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var3322 (Array Int String) (split/-636890950 var3631 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3631 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3774 var2316 var2316-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var1596 Int (getLastRowIndex/-973705812 var3774)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var2784 var2316 var2316-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2828 Int (getLastColumnIndex/-111059718 var2784)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var2347 Int (getLength-Arr-String-1 var3322)) ; Statement: i3 = lengthof r5 
(define-const var3545 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (>= var3545 var2347)) ; Cond: i12 >= i3 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var237-to-var972=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var237=org.apache.poi.xssf.usermodel.XSSFSheet, var515=r0, var2580=z0, var3172=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1225=$r1, var972=org.apache.poi.ss.usermodel.Sheet, var2339=i0, var780=$r2, var1505=org.apache.poi.xssf.usermodel.XSSFName, var2273=r3, var3631=r4, var3001=null_type, var3322=r5, var2316=org.apache.poi.ss.SpreadsheetVersion, var3774=$r6, var1596=i1, var2784=$r7, var2828=i2, var2347=i3, var3545=i12}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var237, r0=var515, z0=var2580, org.apache.poi.xssf.usermodel.XSSFWorkbook=var3172, $r1=var1225, org.apache.poi.ss.usermodel.Sheet=var972, i0=var2339, $r2=var780, org.apache.poi.xssf.usermodel.XSSFName=var1505, r3=var2273, r4=var3631, null_type=var3001, r5=var3322, org.apache.poi.ss.SpreadsheetVersion=var2316, $r6=var3774, i1=var1596, $r7=var2784, i2=var2828, i3=var2347, i12=var3545}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	return null
;block_num 5