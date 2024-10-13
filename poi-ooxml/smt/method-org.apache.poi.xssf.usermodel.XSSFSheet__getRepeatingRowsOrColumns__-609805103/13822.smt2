(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1191 0)
(declare-sort var765 0)
(declare-sort var3175 0)
(declare-sort var2670 0)
(declare-sort var1465 0)
(declare-sort var1150 0)
(declare-sort var1773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var1191) var765)
(declare-fun getSheetIndex/-737518688 (var765 var3175) Int)
(declare-fun cast-from-var1191-to-var3175 (var1191) var3175)
(declare-fun getBuiltInName/1235420764 (var765 String Int) var2670)
(declare-fun getRefersToFormula/883716177 (var2670) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var1150) Int)
(declare-fun getLastColumnIndex/-111059718 (var1150) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1773_valueOf/234543428 (String) var1773)
(declare-fun getFirstColumn/-1595317375 (var1773) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLastColumn/1024515335 (var1773) Int)
(declare-fun getFirstRow/-600747447 (var1773) Int)
(declare-fun getLastRow/-1264994685 (var1773) Int)
(declare-const null-var1191 var1191)
(declare-const null-Bool Bool)
(declare-const null-var2670 var2670)
(declare-const null-String String)
(declare-const var1150-EXCEL2007 var1150)
(declare-const var691 var1191) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var691 null-var1191)))
(declare-const var144 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var144 null-Bool)))
(assert true)
(define-const var103 var765 (getWorkbook/803238250 var691)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var2982 Int (getSheetIndex/-737518688 var103 (cast-from-var1191-to-var3175 var691))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var2714 var765 (getWorkbook/803238250 var691)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var1405 var2670 (getBuiltInName/1235420764 var2714 "_xlnm.Print_Titles" var2982)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var1405 null-var2670))) ; Cond: r3 != null 
(assert true)
(define-const var1762 String (getRefersToFormula/883716177 var1405)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var1762 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var572 (Array Int String) (split/-636890950 var1762 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1762 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3401 var1150 var1150-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3267 Int (getLastRowIndex/-973705812 var3401)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var3718 var1150 var1150-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2045 Int (getLastColumnIndex/-111059718 var3718)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var967 Int (getLength-Arr-String-1 var572)) ; Statement: i3 = lengthof r5 
(define-const var3910 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var3910 var967))) ; Negate: Cond: i12 >= i3  
(define-const var975 String (select var572 var3910)) ; Statement: r8 = r5[i12] 
(define-const var709 var1773 (var1773_valueOf/234543428 var975)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var2804 Int (getFirstColumn/-1595317375 var709)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (= var2804 0))) ; Cond: $i4 != 0 
(assert true)
(define-const var1327 Int (getFirstColumn/-1595317375 var709)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var2825 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var1327 var2825)))) ; Negate: Cond: $i5 != $i14  
(assert true)
(define-const var1435 Int (getLastColumn/1024515335 var709)) ; Statement: $i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
(define-const var2443 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (= var1435 var2443))) ; Cond: $i10 != $i16 
(assert true)
(define-const var3326 Int (getFirstRow/-600747447 var709)) ; Statement: $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
 ; Statement: if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var3326 0)))) ; Negate: Cond: $i6 != 0  
(assert true)
(define-const var3690 Int (getLastRow/-1264994685 var709)) ; Statement: $i9 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>() 
 ; Statement: if $i9 == i1 goto (branch) 
(assert (= var3690 var3267)) ; Cond: $i9 == i1 
 ; Statement: if z0 != 0 goto i12 = i12 + 1 
(assert (not (not (= (ite var144 1 0) 0)))) ; Negate: Cond: z0 != 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var1191-to-var3175=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var1773_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int), getFirstRow/-600747447=([org.apache.poi.ss.util.CellRangeAddress], int), getLastRow/-1264994685=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var1191=org.apache.poi.xssf.usermodel.XSSFSheet, var691=r0, var144=z0, var765=org.apache.poi.xssf.usermodel.XSSFWorkbook, var103=$r1, var3175=org.apache.poi.ss.usermodel.Sheet, var2982=i0, var2714=$r2, var2670=org.apache.poi.xssf.usermodel.XSSFName, var1405=r3, var1762=r4, var1465=null_type, var572=r5, var1150=org.apache.poi.ss.SpreadsheetVersion, var3401=$r6, var3267=i1, var3718=$r7, var2045=i2, var967=i3, var3910=i12, var975=r8, var1773=org.apache.poi.ss.util.CellRangeAddress, var709=r9, var2804=$i4, var1327=$i5, var2825=$i14, var1435=$i10, var2443=$i16, var3326=$i6, var3690=$i9}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1191, r0=var691, z0=var144, org.apache.poi.xssf.usermodel.XSSFWorkbook=var765, $r1=var103, org.apache.poi.ss.usermodel.Sheet=var3175, i0=var2982, $r2=var2714, org.apache.poi.xssf.usermodel.XSSFName=var2670, r3=var1405, r4=var1762, null_type=var1465, r5=var572, org.apache.poi.ss.SpreadsheetVersion=var1150, $r6=var3401, i1=var3267, $r7=var3718, i2=var2045, i3=var967, i12=var3910, r8=var975, org.apache.poi.ss.util.CellRangeAddress=var1773, r9=var709, $i4=var2804, $i5=var1327, $i14=var2825, $i10=var1435, $i16=var2443, $i6=var3326, $i9=var3690}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	$i16 = (int) -1;	if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i9 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>();	if $i9 == i1 goto (branch);	if z0 != 0 goto i12 = i12 + 1;	return r9
;block_num 11