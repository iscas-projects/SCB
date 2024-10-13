(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var806 0)
(declare-sort var1772 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/-640238533 (var806) var657)
(declare-fun var657_isEmpty/-153543822 (var657) Bool)
(declare-const null-var806 var806)
(declare-const null-var1772 var1772)
(declare-const null-var657 var657)
(declare-const var1927 var806) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet 
(assert (not (= var1927 null-var806)))
(declare-const var2242 var1772) ; Statement: r8 := @parameter0: com.github.jknack.handlebars.internal.antlr.Vocabulary 
(assert (not (= var2242 null-var1772)))
(define-const var487 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var487)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var487!1 String)
(assert (= var487!1 ""))
(define-const var3966 var657 (intervals/-640238533 var1927)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (not (= var3966 null-var657))) ; Negate: Cond: $r2 == null  
(define-const var2220 var657 (intervals/-640238533 var1927)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals> 
(define-const var1387 Bool (var657_isEmpty/-153543822 var2220)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: int size()>() 
(assert (not (= (ite var1387 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/-640238533=([com.github.jknack.handlebars.internal.antlr.misc.IntervalSet], java.util.List), var657_isEmpty/-153543822=([java.util.List], boolean)}
; {var806=com.github.jknack.handlebars.internal.antlr.misc.IntervalSet, var1927=r1, var1772=com.github.jknack.handlebars.internal.antlr.Vocabulary, var2242=r8, var487=$r0, var657=java.util.List, var3966=$r2, var2220=$r3, var1387=$z0}
; {com.github.jknack.handlebars.internal.antlr.misc.IntervalSet=var806, r1=var1927, com.github.jknack.handlebars.internal.antlr.Vocabulary=var1772, r8=var2242, $r0=var487, java.util.List=var657, $r2=var3966, $r3=var2220, $z0=var1387}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet;	r8 := @parameter0: com.github.jknack.handlebars.internal.antlr.Vocabulary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: int size()>();	return "{}"
;block_num 3