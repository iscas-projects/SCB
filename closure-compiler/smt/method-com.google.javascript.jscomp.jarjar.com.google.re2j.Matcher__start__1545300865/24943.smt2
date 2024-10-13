(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2489 0)
(declare-sort var3679 0)
(declare-sort var3560 0)
(declare-sort var3900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedGroups/-44828506 (var2489) var3560)
(declare-fun var3560_get/1088891777 (var3560 var3900) var3900)
(declare-fun cast-from-String-to-var3900 (String) var3900)
(declare-fun cast-from-var3900-to-Int (var3900) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun start/-1636313891 (var2489 Int) Int)
(declare-const null-var2489 var2489)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var760 var2489) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var760 null-var2489)))
(declare-const var924 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var924 null-String)))
(define-const var3271 var3560 (namedGroups/-44828506 var760)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups> 
(define-const var420 var3900 (var3560_get/1088891777 var3271 (cast-from-String-to-var3900 var924))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3443 Int (cast-from-var3900-to-Int var420)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (= var3443 null-Int))) ; Cond: r4 != null 
(assert true)
(define-const var2085 Int (intValue/-1815674922 var3443)) ; Statement: $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var3618 Int (start/-1636313891 var760 var2085)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int start(int)>($i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {namedGroups/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.util.Map), var3560_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3900=([java.lang.String], java.lang.Object), cast-from-var3900-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), start/-1636313891=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, int], int)}
; {var2489=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var760=r0, var924=r1, var3679=null_type, var3560=java.util.Map, var3271=$r2, var3900=java.lang.Object, var420=$r3, var3443=r4, var2085=$i0, var3618=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var2489, r0=var760, r1=var924, null_type=var3679, java.util.Map=var3560, $r2=var3271, java.lang.Object=var3900, $r3=var420, r4=var3443, $i0=var2085, $i1=var3618}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int start(int)>($i0);	return $i1
;block_num 2