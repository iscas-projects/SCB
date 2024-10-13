(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2323 0)
(declare-sort var2970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/1668378889 (var2970 String (Array Int Int) (Array Int Int)) void)
(declare-fun cast-from-var2323-to-var2970 (var2323) var2970)
(declare-const null-var2323 var2323)
(declare-const var1845 var2323) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$SingleWidth 
(assert (not (= var1845 null-var2323)))
(define-const var885 String "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61") ; Statement: $r1 = "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61" 
(assert true)
(define-const var192 (Array Int Int) (toCharArray/415275702 var885)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(define-const var424 String "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc") ; Statement: $r2 = "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc" 
(assert true)
(define-const var3603 (Array Int Int) (toCharArray/415275702 var424)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/1668378889 (cast-from-var2323-to-var2970 var1845) "CharMatcher.singleWidth()" var192 var3603)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher: void <init>(java.lang.String,char[],char[])>("CharMatcher.singleWidth()", $r4, $r3) 

(declare-const var1845!1 var2323)
(declare-const var1098 String)
(declare-const var192!1 (Array Int Int))
(declare-const var3603!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), <init>/1668378889=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher, java.lang.String, char[], char[]], void), cast-from-var2323-to-var2970=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$SingleWidth], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher)}
; {var2323=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$SingleWidth, var1845=r0, var885=$r1, var192=$r4, var424=$r2, var3603=$r3, var2970=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher, var1098="CharMatcher.singleWidth()"}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$SingleWidth=var2323, r0=var1845, $r1=var885, $r4=var192, $r2=var424, $r3=var3603, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher=var2970, "CharMatcher.singleWidth()"=var1098}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$SingleWidth;	$r1 = "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61";	$r4 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	$r2 = "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher: void <init>(java.lang.String,char[],char[])>("CharMatcher.singleWidth()", $r4, $r3);	return
;block_num 1