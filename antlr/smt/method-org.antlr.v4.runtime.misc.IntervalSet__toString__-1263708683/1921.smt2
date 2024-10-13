(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var977 0)
(declare-sort var353 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/125188790 (var977) var2118)
(declare-const null-var977 var977)
(declare-const null-var353 var353)
(declare-const null-var2118 var2118)
(declare-const var245 var977) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.IntervalSet 
(assert (not (= var245 null-var977)))
(declare-const var1020 var353) ; Statement: r8 := @parameter0: org.antlr.v4.runtime.Vocabulary 
(assert (not (= var1020 null-var353)))
(define-const var2897 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2897)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2897!1 String)
(assert (= var2897!1 ""))
(define-const var2538 var2118 (intervals/125188790 var245)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (= var2538 null-var2118)) ; Cond: $r2 == null 
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/125188790=([org.antlr.v4.runtime.misc.IntervalSet], java.util.List)}
; {var977=org.antlr.v4.runtime.misc.IntervalSet, var245=r1, var353=org.antlr.v4.runtime.Vocabulary, var1020=r8, var2897=$r0, var2118=java.util.List, var2538=$r2}
; {org.antlr.v4.runtime.misc.IntervalSet=var977, r1=var245, org.antlr.v4.runtime.Vocabulary=var353, r8=var1020, $r0=var2897, java.util.List=var2118, $r2=var2538}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.IntervalSet;	r8 := @parameter0: org.antlr.v4.runtime.Vocabulary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	return "{}"
;block_num 2