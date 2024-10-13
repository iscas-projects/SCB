(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/1374316433 (var793) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var793 var793)
(declare-const var2174 var793) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var2174 null-var793)))
(assert true)
(define-const var2017 String (getString/1374316433 var2174)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>() 
(assert true)
(define-const var2424 Int (length/-134980193 var2017)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/1374316433=([org.apache.poi.xssf.usermodel.XSSFRichTextString], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var793=org.apache.poi.xssf.usermodel.XSSFRichTextString, var2174=r0, var2017=$r1, var2424=$i0}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var793, r0=var2174, $r1=var2017, $i0=var2424}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>();	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1