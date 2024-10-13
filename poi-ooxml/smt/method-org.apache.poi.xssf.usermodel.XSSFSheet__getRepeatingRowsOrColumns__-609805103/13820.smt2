(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3846 0)
(declare-sort var324 0)
(declare-sort var1675 0)
(declare-sort var3031 0)
(declare-sort var105 0)
(declare-sort var3984 0)
(declare-sort var3997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var3846) var324)
(declare-fun getSheetIndex/-737518688 (var324 var1675) Int)
(declare-fun cast-from-var3846-to-var1675 (var3846) var1675)
(declare-fun getBuiltInName/1235420764 (var324 String Int) var3031)
(declare-fun getRefersToFormula/883716177 (var3031) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var3984) Int)
(declare-fun getLastColumnIndex/-111059718 (var3984) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3997_valueOf/234543428 (String) var3997)
(declare-fun getFirstColumn/-1595317375 (var3997) Int)
(declare-fun getLastColumn/1024515335 (var3997) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getFirstRow/-600747447 (var3997) Int)
(declare-fun getLastRow/-1264994685 (var3997) Int)
(declare-const null-var3846 var3846)
(declare-const null-Bool Bool)
(declare-const null-var3031 var3031)
(declare-const null-String String)
(declare-const var3984-EXCEL2007 var3984)
(declare-const var2907 var3846) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2907 null-var3846)))
(declare-const var1600 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1600 null-Bool)))
(assert true)
(define-const var749 var324 (getWorkbook/803238250 var2907)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var809 Int (getSheetIndex/-737518688 var749 (cast-from-var3846-to-var1675 var2907))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var615 var324 (getWorkbook/803238250 var2907)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var128 var3031 (getBuiltInName/1235420764 var615 "_xlnm.Print_Titles" var809)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var128 null-var3031))) ; Cond: r3 != null 
(assert true)
(define-const var1459 String (getRefersToFormula/883716177 var128)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var1459 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var2470 (Array Int String) (split/-636890950 var1459 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1459 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3040 var3984 var3984-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var307 Int (getLastRowIndex/-973705812 var3040)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var2603 var3984 var3984-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3750 Int (getLastColumnIndex/-111059718 var2603)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var2597 Int (getLength-Arr-String-1 var2470)) ; Statement: i3 = lengthof r5 
(define-const var2379 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var2379 var2597))) ; Negate: Cond: i12 >= i3  
(define-const var3832 String (select var2470 var2379)) ; Statement: r8 = r5[i12] 
(define-const var3277 var3997 (var3997_valueOf/234543428 var3832)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var1671 Int (getFirstColumn/-1595317375 var3277)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (not (= var1671 0)))) ; Negate: Cond: $i4 != 0  
(assert true)
(define-const var2923 Int (getLastColumn/1024515335 var3277)) ; Statement: $i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
 ; Statement: if $i11 == i2 goto (branch) 
(assert (not (= var2923 var3750))) ; Negate: Cond: $i11 == i2  
(assert true)
(define-const var291 Int (getFirstColumn/-1595317375 var3277)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var944 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (= var291 var944))) ; Cond: $i5 != $i14 
(assert true)
(define-const var744 Int (getFirstRow/-600747447 var3277)) ; Statement: $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
 ; Statement: if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var744 0)))) ; Negate: Cond: $i6 != 0  
(assert true)
(define-const var1666 Int (getLastRow/-1264994685 var3277)) ; Statement: $i9 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>() 
 ; Statement: if $i9 == i1 goto (branch) 
(assert (= var1666 var307)) ; Cond: $i9 == i1 
 ; Statement: if z0 != 0 goto i12 = i12 + 1 
(assert (not (not (= (ite var1600 1 0) 0)))) ; Negate: Cond: z0 != 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var3846-to-var1675=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var3997_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int), getFirstRow/-600747447=([org.apache.poi.ss.util.CellRangeAddress], int), getLastRow/-1264994685=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var3846=org.apache.poi.xssf.usermodel.XSSFSheet, var2907=r0, var1600=z0, var324=org.apache.poi.xssf.usermodel.XSSFWorkbook, var749=$r1, var1675=org.apache.poi.ss.usermodel.Sheet, var809=i0, var615=$r2, var3031=org.apache.poi.xssf.usermodel.XSSFName, var128=r3, var1459=r4, var105=null_type, var2470=r5, var3984=org.apache.poi.ss.SpreadsheetVersion, var3040=$r6, var307=i1, var2603=$r7, var3750=i2, var2597=i3, var2379=i12, var3832=r8, var3997=org.apache.poi.ss.util.CellRangeAddress, var3277=r9, var1671=$i4, var2923=$i11, var291=$i5, var944=$i14, var744=$i6, var1666=$i9}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3846, r0=var2907, z0=var1600, org.apache.poi.xssf.usermodel.XSSFWorkbook=var324, $r1=var749, org.apache.poi.ss.usermodel.Sheet=var1675, i0=var809, $r2=var615, org.apache.poi.xssf.usermodel.XSSFName=var3031, r3=var128, r4=var1459, null_type=var105, r5=var2470, org.apache.poi.ss.SpreadsheetVersion=var3984, $r6=var3040, i1=var307, $r7=var2603, i2=var3750, i3=var2597, i12=var2379, r8=var3832, org.apache.poi.ss.util.CellRangeAddress=var3997, r9=var3277, $i4=var1671, $i11=var2923, $i5=var291, $i14=var944, $i6=var744, $i9=var1666}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i11 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	if $i11 == i2 goto (branch);	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if $i6 != 0 goto $i7 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i9 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>();	if $i9 == i1 goto (branch);	if z0 != 0 goto i12 = i12 + 1;	return r9
;block_num 11