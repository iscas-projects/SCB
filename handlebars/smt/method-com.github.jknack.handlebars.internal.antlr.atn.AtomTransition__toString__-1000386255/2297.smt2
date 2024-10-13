(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-994607527 (var1313) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1313 var1313)
(declare-const var3813 var1313) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.AtomTransition 
(assert (not (= var3813 null-var1313)))
(define-const var1492 Int (label/-994607527 var3813)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.antlr.atn.AtomTransition: int label> 
(define-const var140 String (String_valueOf/1240665136 var1492)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-994607527=([com.github.jknack.handlebars.internal.antlr.atn.AtomTransition], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1313=com.github.jknack.handlebars.internal.antlr.atn.AtomTransition, var3813=r0, var1492=$i0, var140=$r1}
; {com.github.jknack.handlebars.internal.antlr.atn.AtomTransition=var1313, r0=var3813, $i0=var1492, $r1=var140}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.AtomTransition;	$i0 = r0.<com.github.jknack.handlebars.internal.antlr.atn.AtomTransition: int label>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1