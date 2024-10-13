(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/141642260 (var462) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var462 var462)
(declare-const var463 var462) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.AtomTransition 
(assert (not (= var463 null-var462)))
(define-const var3001 Int (label/141642260 var463)) ; Statement: $i0 = r0.<org.antlr.v4.runtime.atn.AtomTransition: int label> 
(define-const var3447 String (String_valueOf/1240665136 var3001)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {label/141642260=([org.antlr.v4.runtime.atn.AtomTransition], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var462=org.antlr.v4.runtime.atn.AtomTransition, var463=r0, var3001=$i0, var3447=$r1}
; {org.antlr.v4.runtime.atn.AtomTransition=var462, r0=var463, $i0=var3001, $r1=var3447}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.AtomTransition;	$i0 = r0.<org.antlr.v4.runtime.atn.AtomTransition: int label>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1