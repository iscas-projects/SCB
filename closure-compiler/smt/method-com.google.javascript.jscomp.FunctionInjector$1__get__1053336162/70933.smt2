(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextId/1595260694 (var3879) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var3879 var3879)
(declare-const var958 var3879) ; Statement: r0 := @this: com.google.javascript.jscomp.FunctionInjector$1 
(assert (not (= var958 null-var3879)))
(define-const var3481 Int (nextId/1595260694 var958)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.FunctionInjector$1: int nextId> 
(define-const var3379 Int (+ var3481 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var958!1 var3879)
(assert (not (= var958!1 null-var3879)))
(assert (= (nextId/1595260694 var958!1) var3379)) ; Statement: r0.<com.google.javascript.jscomp.FunctionInjector$1: int nextId> = $i1 
(define-const var124 String (String_valueOf/1240665136 var3481)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {nextId/1595260694=([com.google.javascript.jscomp.FunctionInjector$1], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var3879=com.google.javascript.jscomp.FunctionInjector$1, var958=r0, var3481=$i0, var3379=$i1, var124=$r1}
; {com.google.javascript.jscomp.FunctionInjector$1=var3879, r0=var958, $i0=var3481, $i1=var3379, $r1=var124}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.FunctionInjector$1;	$i0 = r0.<com.google.javascript.jscomp.FunctionInjector$1: int nextId>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.FunctionInjector$1: int nextId> = $i1;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1