(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var19 0)
(declare-sort var1925 0)
(declare-sort var3969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/-640238533 (var19) var3969)
(declare-const null-var19 var19)
(declare-const null-var1925 var1925)
(declare-const null-var3969 var3969)
(declare-const var644 var19) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet 
(assert (not (= var644 null-var19)))
(declare-const var1948 var1925) ; Statement: r8 := @parameter0: com.github.jknack.handlebars.internal.antlr.Vocabulary 
(assert (not (= var1948 null-var1925)))
(define-const var2284 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2284)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2284!1 String)
(assert (= var2284!1 ""))
(define-const var1769 var3969 (intervals/-640238533 var644)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (= var1769 null-var3969)) ; Cond: $r2 == null 
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/-640238533=([com.github.jknack.handlebars.internal.antlr.misc.IntervalSet], java.util.List)}
; {var19=com.github.jknack.handlebars.internal.antlr.misc.IntervalSet, var644=r1, var1925=com.github.jknack.handlebars.internal.antlr.Vocabulary, var1948=r8, var2284=$r0, var3969=java.util.List, var1769=$r2}
; {com.github.jknack.handlebars.internal.antlr.misc.IntervalSet=var19, r1=var644, com.github.jknack.handlebars.internal.antlr.Vocabulary=var1925, r8=var1948, $r0=var2284, java.util.List=var3969, $r2=var1769}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet;	r8 := @parameter0: com.github.jknack.handlebars.internal.antlr.Vocabulary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	return "{}"
;block_num 2