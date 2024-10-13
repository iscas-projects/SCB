(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort var2232 0)
(declare-sort var887 0)
(declare-sort var1188 0)
(declare-sort var3792 0)
(declare-sort var2937 0)
(declare-sort var3581 0)
(declare-sort var3475 0)
(declare-sort var2636 0)
(declare-sort var1210 0)
(declare-sort var643 0)
(declare-sort var396 0)
(declare-sort var747 0)
(declare-sort var3632 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSheet/1494324359 (var745) var887)
(declare-fun getSharedFormula/1971024200 (var887 Int) var1188)
(declare-fun var1188_getStringValue/518823174 (var1188) String)
(declare-fun var1188_getRef/2024865907 (var1188) String)
(declare-fun var3792_valueOf/234543428 (String) var3792)
(declare-fun getWorkbook/803238250 (var887) var2937)
(declare-fun getSheetIndex/-737518688 (var2937 var3581) Int)
(declare-fun cast-from-var887-to-var3581 (var887) var3581)
(declare-fun var3475-init () var3475)
(declare-fun <init>/20967470 (var3475 var2636) void)
(declare-fun getRowIndex/1447976296 (var745) Int)
(declare-fun var396_parse/-907539984 (String var747 var1210 Int Int) (Array Int var643))
(declare-fun cast-from-var2232-to-var747 (var2232) var747)
(declare-fun getFirstRow/-600747447 (var3792) Int)
(declare-fun getColumnIndex/1654948798 (var745) Int)
(declare-fun getFirstColumn/-1595317375 (var3792) Int)
(declare-fun convertSharedFormulas/182812741 (var3475 (Array Int var643) Int Int) (Array Int var643))
(declare-fun var3632_toFormulaString/1137091251 (var1400 (Array Int var643)) String)
(declare-fun cast-from-var2232-to-var1400 (var2232) var1400)
(declare-const null-var745 var745)
(declare-const null-Int Int)
(declare-const null-var2232 var2232)
(declare-const null-var1188 var1188)
(declare-const var2636-EXCEL2007 var2636)
(declare-const var1210-CELL var1210)
(declare-const var3441 var745) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var3441 null-var745)))
(declare-const var3760 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3760 null-Int)))
(declare-const var3075 var2232) ; Statement: r9 := @parameter1: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook 
(assert (not (= var3075 null-var2232)))
(assert true)
(define-const var3836 var887 (getSheet/1494324359 var3441)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>() 
(assert true)
(define-const var3665 var1188 (getSharedFormula/1971024200 var3836 var3760)) ; Statement: r2 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula getSharedFormula(int)>(i0) 
 ; Statement: if r2 != null goto r3 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getStringValue()>() 
(assert (not (= var3665 null-var1188))) ; Cond: r2 != null 
(define-const var3662 String (var1188_getStringValue/518823174 var3665)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getStringValue()>() 
(define-const var2592 String (var1188_getRef/2024865907 var3665)) ; Statement: r4 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getRef()>() 
(define-const var2330 var3792 (var3792_valueOf/234543428 var2592)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r4) 
(assert true)
(define-const var994 var2937 (getWorkbook/803238250 var3836)) ; Statement: $r6 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var418 Int (getSheetIndex/-737518688 var994 (cast-from-var887-to-var3581 var3836))) ; Statement: i1 = virtualinvoke $r6.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r1) 
(define-const var3160 var3475 var3475-init) ; Statement: $r7 = new org.apache.poi.ss.formula.SharedFormula 
(define-const var634 var2636 var2636-EXCEL2007) ; Statement: $r8 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
;(assert (<init>/20967470 var3160 var634)) ; Statement: specialinvoke $r7.<org.apache.poi.ss.formula.SharedFormula: void <init>(org.apache.poi.ss.SpreadsheetVersion)>($r8) 

(declare-const var3160!1 var3475)
(declare-const var634!1 var2636)
(define-const var3958 var1210 var1210-CELL) ; Statement: $r10 = <org.apache.poi.ss.formula.FormulaType: org.apache.poi.ss.formula.FormulaType CELL> 
(assert true)
(define-const var1404 Int (getRowIndex/1447976296 var3441)) ; Statement: $i2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: int getRowIndex()>() 
(define-const var2871 (Array Int var643) (var396_parse/-907539984 var3662 (cast-from-var2232-to-var747 var3075) var3958 var418 var1404)) ; Statement: r11 = staticinvoke <org.apache.poi.ss.formula.FormulaParser: org.apache.poi.ss.formula.ptg.Ptg[] parse(java.lang.String,org.apache.poi.ss.formula.FormulaParsingWorkbook,org.apache.poi.ss.formula.FormulaType,int,int)>(r3, r9, $r10, i1, $i2) 
(assert true)
(define-const var1236 Int (getRowIndex/1447976296 var3441)) ; Statement: $i4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: int getRowIndex()>() 
(assert true)
(define-const var213 Int (getFirstRow/-600747447 var2330)) ; Statement: $i3 = virtualinvoke r5.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(define-const var784 Int (- var1236 var213)) ; Statement: $i8 = $i4 - $i3 
(assert true)
(define-const var2933 Int (getColumnIndex/1654948798 var3441)) ; Statement: $i6 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: int getColumnIndex()>() 
(assert true)
(define-const var2847 Int (getFirstColumn/-1595317375 var2330)) ; Statement: $i5 = virtualinvoke r5.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(define-const var3465 Int (- var2933 var2847)) ; Statement: $i7 = $i6 - $i5 
(assert true)
(define-const var415 (Array Int var643) (convertSharedFormulas/182812741 var3160!1 var2871 var784 var3465)) ; Statement: r12 = virtualinvoke $r7.<org.apache.poi.ss.formula.SharedFormula: org.apache.poi.ss.formula.ptg.Ptg[] convertSharedFormulas(org.apache.poi.ss.formula.ptg.Ptg[],int,int)>(r11, $i8, $i7) 
(define-const var2874 String (var3632_toFormulaString/1137091251 (cast-from-var2232-to-var1400 var3075) var415)) ; Statement: $r13 = staticinvoke <org.apache.poi.ss.formula.FormulaRenderer: java.lang.String toFormulaString(org.apache.poi.ss.formula.FormulaRenderingWorkbook,org.apache.poi.ss.formula.ptg.Ptg[])>(r9, r12) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getSheet/1494324359=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.xssf.usermodel.XSSFSheet), getSharedFormula/1971024200=([org.apache.poi.xssf.usermodel.XSSFSheet, int], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula), var1188_getStringValue/518823174=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula], java.lang.String), var1188_getRef/2024865907=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula], java.lang.String), var3792_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress), getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var887-to-var3581=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), var3475-init=([], org.apache.poi.ss.formula.SharedFormula), <init>/20967470=([org.apache.poi.ss.formula.SharedFormula, org.apache.poi.ss.SpreadsheetVersion], void), getRowIndex/1447976296=([org.apache.poi.xssf.usermodel.XSSFCell], int), var396_parse/-907539984=([java.lang.String, org.apache.poi.ss.formula.FormulaParsingWorkbook, org.apache.poi.ss.formula.FormulaType, int, int], org.apache.poi.ss.formula.ptg.Ptg[]), cast-from-var2232-to-var747=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook], org.apache.poi.ss.formula.FormulaParsingWorkbook), getFirstRow/-600747447=([org.apache.poi.ss.util.CellRangeAddress], int), getColumnIndex/1654948798=([org.apache.poi.xssf.usermodel.XSSFCell], int), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), convertSharedFormulas/182812741=([org.apache.poi.ss.formula.SharedFormula, org.apache.poi.ss.formula.ptg.Ptg[], int, int], org.apache.poi.ss.formula.ptg.Ptg[]), var3632_toFormulaString/1137091251=([org.apache.poi.ss.formula.FormulaRenderingWorkbook, org.apache.poi.ss.formula.ptg.Ptg[]], java.lang.String), cast-from-var2232-to-var1400=([org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook], org.apache.poi.ss.formula.FormulaRenderingWorkbook)}
; {var745=org.apache.poi.xssf.usermodel.XSSFCell, var3441=r0, var3760=i0, var2232=org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook, var3075=r9, var887=org.apache.poi.xssf.usermodel.XSSFSheet, var3836=r1, var1188=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula, var3665=r2, var3662=r3, var2592=r4, var3792=org.apache.poi.ss.util.CellRangeAddress, var2330=r5, var2937=org.apache.poi.xssf.usermodel.XSSFWorkbook, var994=$r6, var3581=org.apache.poi.ss.usermodel.Sheet, var418=i1, var3475=org.apache.poi.ss.formula.SharedFormula, var3160=$r7, var2636=org.apache.poi.ss.SpreadsheetVersion, var634=$r8, var1210=org.apache.poi.ss.formula.FormulaType, var3958=$r10, var1404=$i2, var643=org.apache.poi.ss.formula.ptg.Ptg, var396=org.apache.poi.ss.formula.FormulaParser, var747=org.apache.poi.ss.formula.FormulaParsingWorkbook, var2871=r11, var1236=$i4, var213=$i3, var784=$i8, var2933=$i6, var2847=$i5, var3465=$i7, var415=r12, var3632=org.apache.poi.ss.formula.FormulaRenderer, var1400=org.apache.poi.ss.formula.FormulaRenderingWorkbook, var2874=$r13}
; {org.apache.poi.xssf.usermodel.XSSFCell=var745, r0=var3441, i0=var3760, org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook=var2232, r9=var3075, org.apache.poi.xssf.usermodel.XSSFSheet=var887, r1=var3836, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula=var1188, r2=var3665, r3=var3662, r4=var2592, org.apache.poi.ss.util.CellRangeAddress=var3792, r5=var2330, org.apache.poi.xssf.usermodel.XSSFWorkbook=var2937, $r6=var994, org.apache.poi.ss.usermodel.Sheet=var3581, i1=var418, org.apache.poi.ss.formula.SharedFormula=var3475, $r7=var3160, org.apache.poi.ss.SpreadsheetVersion=var2636, $r8=var634, org.apache.poi.ss.formula.FormulaType=var1210, $r10=var3958, $i2=var1404, org.apache.poi.ss.formula.ptg.Ptg=var643, org.apache.poi.ss.formula.FormulaParser=var396, org.apache.poi.ss.formula.FormulaParsingWorkbook=var747, r11=var2871, $i4=var1236, $i3=var213, $i8=var784, $i6=var2933, $i5=var2847, $i7=var3465, r12=var415, org.apache.poi.ss.formula.FormulaRenderer=var3632, org.apache.poi.ss.formula.FormulaRenderingWorkbook=var1400, $r13=var2874}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	i0 := @parameter0: int;	r9 := @parameter1: org.apache.poi.xssf.usermodel.BaseXSSFEvaluationWorkbook;	r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>();	r2 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula getSharedFormula(int)>(i0);	if r2 != null goto r3 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getStringValue()>();	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getStringValue()>();	r4 = interfaceinvoke r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getRef()>();	r5 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r4);	$r6 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	i1 = virtualinvoke $r6.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r1);	$r7 = new org.apache.poi.ss.formula.SharedFormula;	$r8 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	specialinvoke $r7.<org.apache.poi.ss.formula.SharedFormula: void <init>(org.apache.poi.ss.SpreadsheetVersion)>($r8);	$r10 = <org.apache.poi.ss.formula.FormulaType: org.apache.poi.ss.formula.FormulaType CELL>;	$i2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: int getRowIndex()>();	r11 = staticinvoke <org.apache.poi.ss.formula.FormulaParser: org.apache.poi.ss.formula.ptg.Ptg[] parse(java.lang.String,org.apache.poi.ss.formula.FormulaParsingWorkbook,org.apache.poi.ss.formula.FormulaType,int,int)>(r3, r9, $r10, i1, $i2);	$i4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: int getRowIndex()>();	$i3 = virtualinvoke r5.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i8 = $i4 - $i3;	$i6 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: int getColumnIndex()>();	$i5 = virtualinvoke r5.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i7 = $i6 - $i5;	r12 = virtualinvoke $r7.<org.apache.poi.ss.formula.SharedFormula: org.apache.poi.ss.formula.ptg.Ptg[] convertSharedFormulas(org.apache.poi.ss.formula.ptg.Ptg[],int,int)>(r11, $i8, $i7);	$r13 = staticinvoke <org.apache.poi.ss.formula.FormulaRenderer: java.lang.String toFormulaString(org.apache.poi.ss.formula.FormulaRenderingWorkbook,org.apache.poi.ss.formula.ptg.Ptg[])>(r9, r12);	return $r13
;block_num 2