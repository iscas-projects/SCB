(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3819 0)
(declare-sort var682 0)
(declare-sort var97 0)
(declare-sort var41 0)
(declare-sort var1517 0)
(declare-sort var871 0)
(declare-sort var3916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var3819) var682)
(declare-fun getSheetIndex/-737518688 (var682 var97) Int)
(declare-fun cast-from-var3819-to-var97 (var3819) var97)
(declare-fun getBuiltInName/1235420764 (var682 String Int) var41)
(declare-fun getRefersToFormula/883716177 (var41) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var871) Int)
(declare-fun getLastColumnIndex/-111059718 (var871) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3916_valueOf/234543428 (String) var3916)
(declare-fun getFirstColumn/-1595317375 (var3916) Int)
(declare-fun getLastColumn/1024515335 (var3916) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3819 var3819)
(declare-const null-Bool Bool)
(declare-const null-var41 var41)
(declare-const null-String String)
(declare-const var871-EXCEL2007 var871)
(declare-const var1425 var3819) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1425 null-var3819)))
(declare-const var660 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var660 null-Bool)))
(assert true)
(define-const var2209 var682 (getWorkbook/803238250 var1425)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var2540 Int (getSheetIndex/-737518688 var2209 (cast-from-var3819-to-var97 var1425))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var1970 var682 (getWorkbook/803238250 var1425)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var809 var41 (getBuiltInName/1235420764 var1970 "_xlnm.Print_Titles" var2540)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var809 null-var41))) ; Cond: r3 != null 
(assert true)
(define-const var610 String (getRefersToFormula/883716177 var809)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var610 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var3111 (Array Int String) (split/-636890950 var610 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var610 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2324 var871 var871-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2366 Int (getLastRowIndex/-973705812 var2324)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var3275 var871 var871-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3565 Int (getLastColumnIndex/-111059718 var3275)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var3253 Int (getLength-Arr-String-1 var3111)) ; Statement: i3 = lengthof r5 
(define-const var1190 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var1190 var3253))) ; Negate: Cond: i12 >= i3  
(define-const var435 String (select var3111 var1190)) ; Statement: r8 = r5[i12] 
(define-const var2137 var3916 (var3916_valueOf/234543428 var435)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var2041 Int (getFirstColumn/-1595317375 var2137)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (not (= var2041 0)))) ; Negate: Cond: $i4 != 0  
(assert true)
(define-const var3614 Int (getLastColumn/1024515335 var2137)) ; Statement: $i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
 ; Statement: if $i11 == i2 goto (branch) 
(assert (not (= var3614 var3565))) ; Negate: Cond: $i11 == i2  
(assert true)
(define-const var3593 Int (getFirstColumn/-1595317375 var2137)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var3771 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var3593 var3771)))) ; Negate: Cond: $i5 != $i14  
(assert true)
(define-const var3019 Int (getLastColumn/1024515335 var2137)) ; Statement: $i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
(define-const var1260 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var3019 var1260)))) ; Negate: Cond: $i10 != $i16  
 ; Statement: if z0 == 0 goto i12 = i12 + 1 
(assert (not (= (ite var660 1 0) 0))) ; Negate: Cond: z0 == 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var3819-to-var97=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var3916_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int)}
; {var3819=org.apache.poi.xssf.usermodel.XSSFSheet, var1425=r0, var660=z0, var682=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2209=$r1, var97=org.apache.poi.ss.usermodel.Sheet, var2540=i0, var1970=$r2, var41=org.apache.poi.xssf.usermodel.XSSFName, var809=r3, var610=r4, var1517=null_type, var3111=r5, var871=org.apache.poi.ss.SpreadsheetVersion, var2324=$r6, var2366=i1, var3275=$r7, var3565=i2, var3253=i3, var1190=i12, var435=r8, var3916=org.apache.poi.ss.util.CellRangeAddress, var2137=r9, var2041=$i4, var3614=$i11, var3593=$i5, var3771=$i14, var3019=$i10, var1260=$i16}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3819, r0=var1425, z0=var660, org.apache.poi.xssf.usermodel.XSSFWorkbook=var682, $r1=var2209, org.apache.poi.ss.usermodel.Sheet=var97, i0=var2540, $r2=var1970, org.apache.poi.xssf.usermodel.XSSFName=var41, r3=var809, r4=var610, null_type=var1517, r5=var3111, org.apache.poi.ss.SpreadsheetVersion=var871, $r6=var2324, i1=var2366, $r7=var3275, i2=var3565, i3=var3253, i12=var1190, r8=var435, org.apache.poi.ss.util.CellRangeAddress=var3916, r9=var2137, $i4=var2041, $i11=var3614, $i5=var3593, $i14=var3771, $i10=var3019, $i16=var1260}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	if $i11 == i2 goto (branch);	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	$i16 = (int) -1;	if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if z0 == 0 goto i12 = i12 + 1;	return r9
;block_num 10