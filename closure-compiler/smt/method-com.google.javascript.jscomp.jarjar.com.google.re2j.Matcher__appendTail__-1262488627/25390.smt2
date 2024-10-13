(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun appendPos/-44828506 (var2933) Int)
(declare-fun inputLength/-44828506 (var2933) Int)
(declare-fun substring/-128493403 (var2933 Int Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2933 var2933)
(declare-const null-String String)
(declare-const var761 var2933) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var761 null-var2933)))
(declare-const var3456 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3456 null-String)))
(define-const var2211 Int (appendPos/-44828506 var761)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int appendPos> 
(define-const var2361 Int (inputLength/-44828506 var761)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int inputLength> 
(assert true)
(define-const var2114 String (substring/-128493403 var761 var2211 var2361)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.String substring(int,int)>($i1, $i0) 
(assert true)
;(assert (append/1560614132 var3456 var2114)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3456!1 String)
(assert (str.prefixof var3456 var3456!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {appendPos/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], int), inputLength/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], int), substring/-128493403=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, int, int], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2933=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var761=r1, var3456=r0, var2211=$i1, var2361=$i0, var2114=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var2933, r1=var761, r0=var3456, $i1=var2211, $i0=var2361, $r2=var2114}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r0 := @parameter0: java.lang.StringBuffer;	$i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int appendPos>;	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int inputLength>;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.String substring(int,int)>($i1, $i0);	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return r0
;block_num 1