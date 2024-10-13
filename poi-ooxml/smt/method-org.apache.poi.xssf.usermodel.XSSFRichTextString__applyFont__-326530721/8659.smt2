(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var540 0)
(declare-sort var521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/1374316433 (var540) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun applyFont/804923801 (var540 Int Int var521) void)
(declare-const null-var540 var540)
(declare-const null-var521 var521)
(declare-const var545 var540) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var545 null-var540)))
(declare-const var2272 var521) ; Statement: r2 := @parameter0: org.apache.poi.ss.usermodel.Font 
(assert (not (= var2272 null-var521)))
(assert true)
(define-const var2777 String (getString/1374316433 var545)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>() 
(assert true)
(define-const var587 Int (length/-134980193 var2777)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (applyFont/804923801 var545 0 var587 var2272)) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(0, $i0, r2) 

(declare-const var545!1 var540)
(declare-const var2289 Int)
(declare-const var587!1 Int)
(declare-const var2272!1 var521)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/1374316433=([org.apache.poi.xssf.usermodel.XSSFRichTextString], java.lang.String), length/-134980193=([java.lang.String], int), applyFont/804923801=([org.apache.poi.xssf.usermodel.XSSFRichTextString, int, int, org.apache.poi.ss.usermodel.Font], void)}
; {var540=org.apache.poi.xssf.usermodel.XSSFRichTextString, var545=r0, var521=org.apache.poi.ss.usermodel.Font, var2272=r2, var2777=r1, var587=$i0, var2289=0}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var540, r0=var545, org.apache.poi.ss.usermodel.Font=var521, r2=var2272, r1=var2777, $i0=var587, 0=var2289}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	r2 := @parameter0: org.apache.poi.ss.usermodel.Font;	r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(0, $i0, r2);	return
;block_num 1