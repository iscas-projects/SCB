(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2695 0)
(declare-sort var3803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/125188790 (var2695) var3803)
(declare-fun var3803_isEmpty/-153543822 (var3803) Bool)
(declare-const null-var2695 var2695)
(declare-const null-Bool Bool)
(declare-const null-var3803 var3803)
(declare-const var2555 var2695) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.IntervalSet 
(assert (not (= var2555 null-var2695)))
(declare-const var321 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var321 null-Bool)))
(define-const var2025 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2025)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2025!1 String)
(assert (= var2025!1 ""))
(define-const var2960 var3803 (intervals/125188790 var2555)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (not (= var2960 null-var3803))) ; Negate: Cond: $r2 == null  
(define-const var2717 var3803 (intervals/125188790 var2555)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var3129 Bool (var3803_isEmpty/-153543822 var2717)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (not (= (ite var3129 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/125188790=([org.antlr.v4.runtime.misc.IntervalSet], java.util.List), var3803_isEmpty/-153543822=([java.util.List], boolean)}
; {var2695=org.antlr.v4.runtime.misc.IntervalSet, var2555=r1, var321=z1, var2025=$r17, var3803=java.util.List, var2960=$r2, var2717=$r3, var3129=$z0}
; {org.antlr.v4.runtime.misc.IntervalSet=var2695, r1=var2555, z1=var321, $r17=var2025, java.util.List=var3803, $r2=var2960, $r3=var2717, $z0=var3129}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.IntervalSet;	z1 := @parameter0: boolean;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	$r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	return "{}"
;block_num 3