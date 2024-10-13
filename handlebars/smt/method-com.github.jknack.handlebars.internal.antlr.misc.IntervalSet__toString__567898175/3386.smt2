(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3605 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/-640238533 (var3605) var338)
(declare-fun var338_isEmpty/-153543822 (var338) Bool)
(declare-const null-var3605 var3605)
(declare-const null-Bool Bool)
(declare-const null-var338 var338)
(declare-const var300 var3605) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet 
(assert (not (= var300 null-var3605)))
(declare-const var1873 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1873 null-Bool)))
(define-const var578 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var578)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var578!1 String)
(assert (= var578!1 ""))
(define-const var1566 var338 (intervals/-640238533 var300)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (not (= var1566 null-var338))) ; Negate: Cond: $r2 == null  
(define-const var3468 var338 (intervals/-640238533 var300)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals> 
(define-const var3749 Bool (var338_isEmpty/-153543822 var3468)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: int size()>() 
(assert (not (= (ite var3749 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "{}" 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/-640238533=([com.github.jknack.handlebars.internal.antlr.misc.IntervalSet], java.util.List), var338_isEmpty/-153543822=([java.util.List], boolean)}
; {var3605=com.github.jknack.handlebars.internal.antlr.misc.IntervalSet, var300=r1, var1873=z1, var578=$r17, var338=java.util.List, var1566=$r2, var3468=$r3, var3749=$z0}
; {com.github.jknack.handlebars.internal.antlr.misc.IntervalSet=var3605, r1=var300, z1=var1873, $r17=var578, java.util.List=var338, $r2=var1566, $r3=var3468, $z0=var3749}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.IntervalSet;	z1 := @parameter0: boolean;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: java.util.List intervals>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.misc.IntervalSet: int size()>();	return "{}"
;block_num 3