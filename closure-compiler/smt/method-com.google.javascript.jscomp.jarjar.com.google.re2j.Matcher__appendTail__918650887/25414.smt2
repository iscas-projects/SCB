(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun appendPos/-44828506 (var3509) Int)
(declare-fun inputLength/-44828506 (var3509) Int)
(declare-fun substring/-128493403 (var3509 Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3509 var3509)
(declare-const null-String String)
(declare-const var156 var3509) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var156 null-var3509)))
(declare-const var1768 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1768 null-String)))
(define-const var656 Int (appendPos/-44828506 var156)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int appendPos> 
(define-const var1076 Int (inputLength/-44828506 var156)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int inputLength> 
(assert true)
(define-const var1624 String (substring/-128493403 var156 var656 var1076)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.String substring(int,int)>($i1, $i0) 
(assert true)
;(assert (append/672562846 var1768 var1624)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 var1624)))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {appendPos/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], int), inputLength/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], int), substring/-128493403=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3509=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var156=r1, var1768=r0, var656=$i1, var1076=$i0, var1624=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var3509, r1=var156, r0=var1768, $i1=var656, $i0=var1076, $r2=var1624}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r0 := @parameter0: java.lang.StringBuilder;	$i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int appendPos>;	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int inputLength>;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.String substring(int,int)>($i1, $i0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return r0
;block_num 1