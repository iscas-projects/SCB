(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var29 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/1730335015 (var29) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var29 var29)
(declare-const var2081 var29) ; Statement: r0 := @this: org.apache.poi.xssf.binary.XSSFBRichTextString 
(assert (not (= var2081 null-var29)))
(define-const var3270 String (string/1730335015 var2081)) ; Statement: $r1 = r0.<org.apache.poi.xssf.binary.XSSFBRichTextString: java.lang.String string> 
(assert true)
(define-const var1054 Int (length/-134980193 var3270)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {string/1730335015=([org.apache.poi.xssf.binary.XSSFBRichTextString], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var29=org.apache.poi.xssf.binary.XSSFBRichTextString, var2081=r0, var3270=$r1, var1054=$i0}
; {org.apache.poi.xssf.binary.XSSFBRichTextString=var29, r0=var2081, $r1=var3270, $i0=var1054}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.binary.XSSFBRichTextString;	$r1 = r0.<org.apache.poi.xssf.binary.XSSFBRichTextString: java.lang.String string>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1