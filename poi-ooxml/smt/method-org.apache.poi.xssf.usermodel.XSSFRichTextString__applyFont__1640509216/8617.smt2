(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1038 0)
(declare-sort var2121 0)
(declare-sort var1330 0)
(declare-sort var1122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun styles/-1073116066 (var1038) var2121)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getFontAt/-1277839246 (var2121 Int) var1330)
(declare-fun applyFont/804923801 (var1038 Int Int var1122) void)
(declare-fun cast-from-var1330-to-var1122 (var1330) var1122)
(declare-const null-var1038 var1038)
(declare-const null-Int Int)
(declare-const null-var2121 var2121)
(declare-const var42 var1038) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var42 null-var1038)))
(declare-const var2763 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2763 null-Int)))
(declare-const var1348 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1348 null-Int)))
(declare-const var3819 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var3819 null-Int)))
(define-const var3047 var2121 (styles/-1073116066 var42)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
(assert (not (= var3047 null-var2121))) ; Cond: $r1 != null 
(define-const var2881 var2121 (styles/-1073116066 var42)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
(define-const var1688 Int (cast-from-Int-to-Int var3819)) ; Statement: $i4 = (int) s0 
(assert true)
(define-const var3906 var1330 (getFontAt/-1277839246 var2881 var1688)) ; Statement: r8 = virtualinvoke $r2.<org.apache.poi.xssf.model.StylesTable: org.apache.poi.xssf.usermodel.XSSFFont getFontAt(int)>($i4) 
(assert true) ; Non Conditional
(assert true)
;(assert (applyFont/804923801 var42 var2763 var1348 (cast-from-var1330-to-var1122 var3906))) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(i1, i2, r8) 

(declare-const var42!1 var1038)
(declare-const var2763!1 Int)
(declare-const var1348!1 Int)
(declare-const var3906!1 var1330)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {styles/-1073116066=([org.apache.poi.xssf.usermodel.XSSFRichTextString], org.apache.poi.xssf.model.StylesTable), cast-from-Int-to-Int=([short], int), getFontAt/-1277839246=([org.apache.poi.xssf.model.StylesTable, int], org.apache.poi.xssf.usermodel.XSSFFont), applyFont/804923801=([org.apache.poi.xssf.usermodel.XSSFRichTextString, int, int, org.apache.poi.ss.usermodel.Font], void), cast-from-var1330-to-var1122=([org.apache.poi.xssf.usermodel.XSSFFont], org.apache.poi.ss.usermodel.Font)}
; {var1038=org.apache.poi.xssf.usermodel.XSSFRichTextString, var42=r0, var2763=i1, var1348=i2, var3819=s0, var2121=org.apache.poi.xssf.model.StylesTable, var3047=$r1, var2881=$r2, var1688=$i4, var1330=org.apache.poi.xssf.usermodel.XSSFFont, var3906=r8, var1122=org.apache.poi.ss.usermodel.Font}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var1038, r0=var42, i1=var2763, i2=var1348, s0=var3819, org.apache.poi.xssf.model.StylesTable=var2121, $r1=var3047, $r2=var2881, $i4=var1688, org.apache.poi.xssf.usermodel.XSSFFont=var1330, r8=var3906, org.apache.poi.ss.usermodel.Font=var1122}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	i1 := @parameter0: int;	i2 := @parameter1: int;	s0 := @parameter2: short;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	$i4 = (int) s0;	r8 = virtualinvoke $r2.<org.apache.poi.xssf.model.StylesTable: org.apache.poi.xssf.usermodel.XSSFFont getFontAt(int)>($i4);	virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(i1, i2, r8);	return
;block_num 3