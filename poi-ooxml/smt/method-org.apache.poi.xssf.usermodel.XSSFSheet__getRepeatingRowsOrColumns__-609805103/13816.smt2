(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var3375 0)
(declare-sort var2669 0)
(declare-sort var1982 0)
(declare-sort var2328 0)
(declare-sort var2224 0)
(declare-sort var1537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWorkbook/803238250 (var2751) var3375)
(declare-fun getSheetIndex/-737518688 (var3375 var2669) Int)
(declare-fun cast-from-var2751-to-var2669 (var2751) var2669)
(declare-fun getBuiltInName/1235420764 (var3375 String Int) var1982)
(declare-fun getRefersToFormula/883716177 (var1982) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLastRowIndex/-973705812 (var2224) Int)
(declare-fun getLastColumnIndex/-111059718 (var2224) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1537_valueOf/234543428 (String) var1537)
(declare-fun getFirstColumn/-1595317375 (var1537) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getLastColumn/1024515335 (var1537) Int)
(declare-const null-var2751 var2751)
(declare-const null-Bool Bool)
(declare-const null-var1982 var1982)
(declare-const null-String String)
(declare-const var2224-EXCEL2007 var2224)
(declare-const var847 var2751) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var847 null-var2751)))
(declare-const var3013 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3013 null-Bool)))
(assert true)
(define-const var174 var3375 (getWorkbook/803238250 var847)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var3557 Int (getSheetIndex/-737518688 var174 (cast-from-var2751-to-var2669 var847))) ; Statement: i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var502 var3375 (getWorkbook/803238250 var847)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var3773 var1982 (getBuiltInName/1235420764 var502 "_xlnm.Print_Titles" var3557)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0) 
 ; Statement: if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
(assert (not (= var3773 null-var1982))) ; Cond: r3 != null 
(assert true)
(define-const var2755 String (getRefersToFormula/883716177 var3773)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>() 
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (= var2755 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var633 (Array Int String) (split/-636890950 var2755 ",")) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2755 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var813 var2224 var2224-EXCEL2007) ; Statement: $r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var2204 Int (getLastRowIndex/-973705812 var813)) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>() 
(define-const var3570 var2224 var2224-EXCEL2007) ; Statement: $r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var3035 Int (getLastColumnIndex/-111059718 var3570)) ; Statement: i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(define-const var3326 Int (getLength-Arr-String-1 var633)) ; Statement: i3 = lengthof r5 
(define-const var3162 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i3 goto return null 
(assert (not (>= var3162 var3326))) ; Negate: Cond: i12 >= i3  
(define-const var752 String (select var633 var3162)) ; Statement: r8 = r5[i12] 
(define-const var1783 var1537 (var1537_valueOf/234543428 var752)) ; Statement: r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8) 
(assert true)
(define-const var1559 Int (getFirstColumn/-1595317375 var1783)) ; Statement: $i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
 ; Statement: if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert (not (= var1559 0))) ; Cond: $i4 != 0 
(assert true)
(define-const var1418 Int (getFirstColumn/-1595317375 var1783)) ; Statement: $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var3518 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var1418 var3518)))) ; Negate: Cond: $i5 != $i14  
(assert true)
(define-const var1703 Int (getLastColumn/1024515335 var1783)) ; Statement: $i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
(define-const var19 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert (not (not (= var1703 var19)))) ; Negate: Cond: $i10 != $i16  
 ; Statement: if z0 == 0 goto i12 = i12 + 1 
(assert (not (= (ite var3013 1 0) 0))) ; Negate: Cond: z0 == 0  
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var2751-to-var2669=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getRefersToFormula/883716177=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLastRowIndex/-973705812=([org.apache.poi.ss.SpreadsheetVersion], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), getLength-Arr-String-1=([java.lang.String[]], int), var1537_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), cast-from-Int-to-Int=([int], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int)}
; {var2751=org.apache.poi.xssf.usermodel.XSSFSheet, var847=r0, var3013=z0, var3375=org.apache.poi.xssf.usermodel.XSSFWorkbook, var174=$r1, var2669=org.apache.poi.ss.usermodel.Sheet, var3557=i0, var502=$r2, var1982=org.apache.poi.xssf.usermodel.XSSFName, var3773=r3, var2755=r4, var2328=null_type, var633=r5, var2224=org.apache.poi.ss.SpreadsheetVersion, var813=$r6, var2204=i1, var3570=$r7, var3035=i2, var3326=i3, var3162=i12, var752=r8, var1537=org.apache.poi.ss.util.CellRangeAddress, var1783=r9, var1559=$i4, var1418=$i5, var3518=$i14, var1703=$i10, var19=$i16}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var2751, r0=var847, z0=var3013, org.apache.poi.xssf.usermodel.XSSFWorkbook=var3375, $r1=var174, org.apache.poi.ss.usermodel.Sheet=var2669, i0=var3557, $r2=var502, org.apache.poi.xssf.usermodel.XSSFName=var1982, r3=var3773, r4=var2755, null_type=var2328, r5=var633, org.apache.poi.ss.SpreadsheetVersion=var2224, $r6=var813, i1=var2204, $r7=var3570, i2=var3035, i3=var3326, i12=var3162, r8=var752, org.apache.poi.ss.util.CellRangeAddress=var1537, r9=var1783, $i4=var1559, $i5=var1418, $i14=var3518, $i10=var1703, $i16=var19}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	z0 := @parameter0: boolean;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i0 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	r3 = virtualinvoke $r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm.Print_Titles", i0);	if r3 != null goto r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getRefersToFormula()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r6 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i1 = virtualinvoke $r6.<org.apache.poi.ss.SpreadsheetVersion: int getLastRowIndex()>();	$r7 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	i2 = virtualinvoke $r7.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	i3 = lengthof r5;	i12 = 0;	if i12 >= i3 goto return null;	r8 = r5[i12];	r9 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r8);	$i4 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	if $i4 != 0 goto $i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i5 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i14 = (int) -1;	if $i5 != $i14 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i10 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	$i16 = (int) -1;	if $i10 != $i16 goto $i6 = virtualinvoke r9.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	if z0 == 0 goto i12 = i12 + 1;	return r9
;block_num 9