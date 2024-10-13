(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/1674390985 (var889) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var889 var889)
(declare-const var812 var889) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNState 
(assert (not (= var812 null-var889)))
(define-const var329 Int (stateNumber/1674390985 var812)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int stateNumber> 
(define-const var1521 String (String_valueOf/1240665136 var329)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/1674390985=([com.github.jknack.handlebars.internal.antlr.atn.ATNState], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var889=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var812=r0, var329=$i0, var1521=$r1}
; {com.github.jknack.handlebars.internal.antlr.atn.ATNState=var889, r0=var812, $i0=var329, $r1=var1521}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNState;	$i0 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int stateNumber>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1