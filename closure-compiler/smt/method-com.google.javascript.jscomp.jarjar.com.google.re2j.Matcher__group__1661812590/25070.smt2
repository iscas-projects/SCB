(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3944 0)
(declare-sort var3785 0)
(declare-sort var404 0)
(declare-sort var437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedGroups/-44828506 (var3944) var404)
(declare-fun var404_get/1088891777 (var404 var437) var437)
(declare-fun cast-from-String-to-var437 (String) var437)
(declare-fun cast-from-var437-to-Int (var437) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun group/-1722080304 (var3944 Int) String)
(declare-const null-var3944 var3944)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3033 var3944) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var3033 null-var3944)))
(declare-const var3302 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3302 null-String)))
(define-const var355 var404 (namedGroups/-44828506 var3033)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups> 
(define-const var1444 var437 (var404_get/1088891777 var355 (cast-from-String-to-var437 var3302))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2178 Int (cast-from-var437-to-Int var1444)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (= var2178 null-Int))) ; Cond: r4 != null 
(assert true)
(define-const var3042 Int (intValue/-1815674922 var2178)) ; Statement: $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var1124 String (group/-1722080304 var3033 var3042)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.String group(int)>($i0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {namedGroups/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.util.Map), var404_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var437=([java.lang.String], java.lang.Object), cast-from-var437-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), group/-1722080304=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, int], java.lang.String)}
; {var3944=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var3033=r0, var3302=r1, var3785=null_type, var404=java.util.Map, var355=$r2, var437=java.lang.Object, var1444=$r3, var2178=r4, var3042=$i0, var1124=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var3944, r0=var3033, r1=var3302, null_type=var3785, java.util.Map=var404, $r2=var355, java.lang.Object=var437, $r3=var1444, r4=var2178, $i0=var3042, $r5=var1124}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.String group(int)>($i0);	return $r5
;block_num 2