(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var84 0)
(declare-sort var2984 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun keyIndex/854684194 (var84) var3404)
(declare-fun get/-328895909 (var3404 var2984) var2984)
(declare-fun cast-from-var2984-to-Int (var2984) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun setValue/398865021 (var84 Int var2984) var2984)
(declare-const null-var84 var84)
(declare-const null-var2984 var2984)
(declare-const null-Int Int)
(declare-const var855 var84) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap 
(assert (not (= var855 null-var84)))
(declare-const var2713 var2984) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2713 null-var2984)))
(declare-const var3013 var2984) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var3013 null-var2984)))
(define-const var1622 var3404 (keyIndex/854684194 var855)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap keyIndex> 
(assert true)
(define-const var1971 var2984 (get/-328895909 var1622 var2713)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var627 Int (cast-from-var2984-to-Int var1971)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (= var627 null-Int))) ; Cond: r4 != null 
(assert true)
(define-const var1110 Int (intValue/-1815674922 var627)) ; Statement: $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var724 var2984 (setValue/398865021 var855 var1110 var3013)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: java.lang.Object setValue(int,java.lang.Object)>($i0, r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {keyIndex/854684194=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), get/-328895909=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, java.lang.Object], java.lang.Object), cast-from-var2984-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), setValue/398865021=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap, int, java.lang.Object], java.lang.Object)}
; {var84=com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap, var855=r0, var2984=java.lang.Object, var2713=r1, var3013=r5, var3404=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1622=$r2, var1971=$r3, var627=r4, var1110=$i0, var724=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap=var84, r0=var855, java.lang.Object=var2984, r1=var2713, r5=var3013, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3404, $r2=var1622, $r3=var1971, r4=var627, $i0=var1110, $r6=var724}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap;	r1 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap keyIndex>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: java.lang.Object setValue(int,java.lang.Object)>($i0, r5);	return $r6
;block_num 2