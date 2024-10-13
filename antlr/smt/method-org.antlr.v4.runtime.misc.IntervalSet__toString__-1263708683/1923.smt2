(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var56 0)
(declare-sort var1396 0)
(declare-sort var3633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/125188790 (var56) var3633)
(declare-fun var3633_isEmpty/-153543822 (var3633) Bool)
(declare-const null-var56 var56)
(declare-const null-var1396 var1396)
(declare-const null-var3633 var3633)
(declare-const var896 var56) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.IntervalSet 
(assert (not (= var896 null-var56)))
(declare-const var3578 var1396) ; Statement: r8 := @parameter0: org.antlr.v4.runtime.Vocabulary 
(assert (not (= var3578 null-var1396)))
(define-const var704 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var704)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var704!1 String)
(assert (= var704!1 ""))
(define-const var3247 var3633 (intervals/125188790 var896)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (not (= var3247 null-var3633))) ; Negate: Cond: $r2 == null  
(define-const var1281 var3633 (intervals/125188790 var896)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var2299 Bool (var3633_isEmpty/-153543822 var1281)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (not (= (ite var2299 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/125188790=([org.antlr.v4.runtime.misc.IntervalSet], java.util.List), var3633_isEmpty/-153543822=([java.util.List], boolean)}
; {var56=org.antlr.v4.runtime.misc.IntervalSet, var896=r1, var1396=org.antlr.v4.runtime.Vocabulary, var3578=r8, var704=$r0, var3633=java.util.List, var3247=$r2, var1281=$r3, var2299=$z0}
; {org.antlr.v4.runtime.misc.IntervalSet=var56, r1=var896, org.antlr.v4.runtime.Vocabulary=var1396, r8=var3578, $r0=var704, java.util.List=var3633, $r2=var3247, $r3=var1281, $z0=var2299}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.IntervalSet;	r8 := @parameter0: org.antlr.v4.runtime.Vocabulary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	$r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	return "{}"
;block_num 3