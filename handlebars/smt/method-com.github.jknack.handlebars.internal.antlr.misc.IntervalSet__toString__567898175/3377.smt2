(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1820 0)
(declare-sort var1034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/-640238533 (var1820) var1034)
(declare-const null-var1820 var1820)
(declare-const null-Bool Bool)
(declare-const null-var1034 var1034)
(declare-const var1472 var1820) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet 
(assert (not (= var1472 null-var1820)))
(declare-const var2188 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var2188 null-Bool)))
(define-const var2242 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2242)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2242!1 String)
(assert (= var2242!1 ""))
(define-const var1373 var1034 (intervals/-640238533 var1472)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (= var1373 null-var1034)) ; Cond: $r2 == null 
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/-640238533=([com.github.jknack.handlebars.internal.antlr.misc.IntervalSet], java.util.List)}
; {var1820=com.github.jknack.handlebars.internal.antlr.misc.IntervalSet, var1472=r1, var2188=z1, var2242=$r17, var1034=java.util.List, var1373=$r2}
; {com.github.jknack.handlebars.internal.antlr.misc.IntervalSet=var1820, r1=var1472, z1=var2188, $r17=var2242, java.util.List=var1034, $r2=var1373}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet;	z1 := @parameter0: boolean;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	return "{}"
;block_num 2