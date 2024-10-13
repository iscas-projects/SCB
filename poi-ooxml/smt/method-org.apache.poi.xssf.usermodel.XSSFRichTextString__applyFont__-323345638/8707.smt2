(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3689 0)
(declare-sort var3602 0)
(declare-sort var3998 0)
(declare-sort var3090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun styles/-1073116066 (var3689) var3602)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getFontAt/-1277839246 (var3602 Int) var3998)
(declare-fun getString/1374316433 (var3689) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun applyFont/804923801 (var3689 Int Int var3090) void)
(declare-fun cast-from-var3998-to-var3090 (var3998) var3090)
(declare-const null-var3689 var3689)
(declare-const null-Int Int)
(declare-const null-var3602 var3602)
(declare-const var2586 var3689) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var2586 null-var3689)))
(declare-const var2797 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var2797 null-Int)))
(define-const var1690 var3602 (styles/-1073116066 var2586)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
(assert (not (= var1690 null-var3602))) ; Cond: $r1 != null 
(define-const var185 var3602 (styles/-1073116066 var2586)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
(define-const var163 Int (cast-from-Int-to-Int var2797)) ; Statement: $i3 = (int) s0 
(assert true)
(define-const var1423 var3998 (getFontAt/-1277839246 var185 var163)) ; Statement: r9 = virtualinvoke $r2.<org.apache.poi.xssf.model.StylesTable: org.apache.poi.xssf.usermodel.XSSFFont getFontAt(int)>($i3) 
(assert true) ; Non Conditional
(assert true)
(define-const var1611 String (getString/1374316433 var2586)) ; Statement: $r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>() 
(assert true)
(define-const var438 Int (length/-134980193 var1611)) ; Statement: $i1 = virtualinvoke $r8.<java.lang.String: int length()>() 
(assert true)
;(assert (applyFont/804923801 var2586 0 var438 (cast-from-var3998-to-var3090 var1423))) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(0, $i1, r9) 

(declare-const var2586!1 var3689)
(declare-const var2537 Int)
(declare-const var438!1 Int)
(declare-const var1423!1 var3998)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {styles/-1073116066=([org.apache.poi.xssf.usermodel.XSSFRichTextString], org.apache.poi.xssf.model.StylesTable), cast-from-Int-to-Int=([short], int), getFontAt/-1277839246=([org.apache.poi.xssf.model.StylesTable, int], org.apache.poi.xssf.usermodel.XSSFFont), getString/1374316433=([org.apache.poi.xssf.usermodel.XSSFRichTextString], java.lang.String), length/-134980193=([java.lang.String], int), applyFont/804923801=([org.apache.poi.xssf.usermodel.XSSFRichTextString, int, int, org.apache.poi.ss.usermodel.Font], void), cast-from-var3998-to-var3090=([org.apache.poi.xssf.usermodel.XSSFFont], org.apache.poi.ss.usermodel.Font)}
; {var3689=org.apache.poi.xssf.usermodel.XSSFRichTextString, var2586=r0, var2797=s0, var3602=org.apache.poi.xssf.model.StylesTable, var1690=$r1, var185=$r2, var163=$i3, var3998=org.apache.poi.xssf.usermodel.XSSFFont, var1423=r9, var1611=$r8, var438=$i1, var3090=org.apache.poi.ss.usermodel.Font, var2537=0}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var3689, r0=var2586, s0=var2797, org.apache.poi.xssf.model.StylesTable=var3602, $r1=var1690, $r2=var185, $i3=var163, org.apache.poi.xssf.usermodel.XSSFFont=var3998, r9=var1423, $r8=var1611, $i1=var438, org.apache.poi.ss.usermodel.Font=var3090, 0=var2537}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	s0 := @parameter0: short;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	$i3 = (int) s0;	r9 = virtualinvoke $r2.<org.apache.poi.xssf.model.StylesTable: org.apache.poi.xssf.usermodel.XSSFFont getFontAt(int)>($i3);	$r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>();	$i1 = virtualinvoke $r8.<java.lang.String: int length()>();	virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(0, $i1, r9);	return
;block_num 3