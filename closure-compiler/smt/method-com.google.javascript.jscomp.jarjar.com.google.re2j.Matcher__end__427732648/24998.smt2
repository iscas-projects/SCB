(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2743 0)
(declare-sort var1657 0)
(declare-sort var705 0)
(declare-sort var2021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedGroups/-44828506 (var2743) var705)
(declare-fun var705_get/1088891777 (var705 var2021) var2021)
(declare-fun cast-from-String-to-var2021 (String) var2021)
(declare-fun cast-from-var2021-to-Int (var2021) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun end/-756842922 (var2743 Int) Int)
(declare-const null-var2743 var2743)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3717 var2743) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var3717 null-var2743)))
(declare-const var2241 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2241 null-String)))
(define-const var867 var705 (namedGroups/-44828506 var3717)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups> 
(define-const var2088 var2021 (var705_get/1088891777 var867 (cast-from-String-to-var2021 var2241))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2058 Int (cast-from-var2021-to-Int var2088)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (= var2058 null-Int))) ; Cond: r4 != null 
(assert true)
(define-const var3060 Int (intValue/-1815674922 var2058)) ; Statement: $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var1776 Int (end/-756842922 var3717 var3060)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int end(int)>($i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {namedGroups/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.util.Map), var705_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2021=([java.lang.String], java.lang.Object), cast-from-var2021-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), end/-756842922=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, int], int)}
; {var2743=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var3717=r0, var2241=r1, var1657=null_type, var705=java.util.Map, var867=$r2, var2021=java.lang.Object, var2088=$r3, var2058=r4, var3060=$i0, var1776=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var2743, r0=var3717, r1=var2241, null_type=var1657, java.util.Map=var705, $r2=var867, java.lang.Object=var2021, $r3=var2088, r4=var2058, $i0=var3060, $i1=var1776}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int end(int)>($i0);	return $i1
;block_num 2