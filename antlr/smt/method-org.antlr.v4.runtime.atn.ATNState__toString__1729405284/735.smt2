(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/-1160961596 (var1295) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1295 var1295)
(declare-const var3512 var1295) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ATNState 
(assert (not (= var3512 null-var1295)))
(define-const var1790 Int (stateNumber/-1160961596 var3512)) ; Statement: $i0 = r0.<org.antlr.v4.runtime.atn.ATNState: int stateNumber> 
(define-const var2359 String (String_valueOf/1240665136 var1790)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/-1160961596=([org.antlr.v4.runtime.atn.ATNState], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1295=org.antlr.v4.runtime.atn.ATNState, var3512=r0, var1790=$i0, var2359=$r1}
; {org.antlr.v4.runtime.atn.ATNState=var1295, r0=var3512, $i0=var1790, $r1=var2359}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ATNState;	$i0 = r0.<org.antlr.v4.runtime.atn.ATNState: int stateNumber>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1