(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var588 0)
(declare-sort var2176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/125188790 (var588) var2176)
(declare-const null-var588 var588)
(declare-const null-Bool Bool)
(declare-const null-var2176 var2176)
(declare-const var3540 var588) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.IntervalSet 
(assert (not (= var3540 null-var588)))
(declare-const var3530 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3530 null-Bool)))
(define-const var1791 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1791)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1791!1 String)
(assert (= var1791!1 ""))
(define-const var2821 var2176 (intervals/125188790 var3540)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (= var2821 null-var2176)) ; Cond: $r2 == null 
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/125188790=([org.antlr.v4.runtime.misc.IntervalSet], java.util.List)}
; {var588=org.antlr.v4.runtime.misc.IntervalSet, var3540=r1, var3530=z1, var1791=$r17, var2176=java.util.List, var2821=$r2}
; {org.antlr.v4.runtime.misc.IntervalSet=var588, r1=var3540, z1=var3530, $r17=var1791, java.util.List=var2176, $r2=var2821}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.IntervalSet;	z1 := @parameter0: boolean;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	return "{}"
;block_num 2