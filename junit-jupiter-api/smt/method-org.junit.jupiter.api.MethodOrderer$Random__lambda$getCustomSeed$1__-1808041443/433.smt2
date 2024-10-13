(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1527 0)
(declare-sort var1477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1477-init () (Array Int var1477))
(declare-fun cast-from-String-to-var1477 (String) var1477)
(declare-fun String_format/1339386452 (String (Array Int var1477)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var1477__ (Array Int var1477))
(declare-const var1441 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1441 null-String)))
(define-const var3780 (Array Int var1477) arr-var1477-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(declare-const var3780!1 (Array Int var1477))
(assert (not (= var3780!1 null-__Array__Int__var1477__)))
(assert (= (select var3780!1 0) (cast-from-String-to-var1477 "junit.jupiter.execution.order.random.seed"))) ; Statement: $r0[0] = "junit.jupiter.execution.order.random.seed" 
(declare-const var3780!2 (Array Int var1477))
(assert (not (= var3780!2 null-__Array__Int__var1477__)))
(assert (= (select var3780!2 1) (cast-from-String-to-var1477 var1441))) ; Statement: $r0[1] = r1 
(define-const var1635 String (String_format/1339386452 "Using custom seed for configuration parameter [%s] with value [%s]." var3780!2)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Using custom seed for configuration parameter [%s] with value [%s].", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1477-init=([], java.lang.Object[]), cast-from-String-to-var1477=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1441=r1, var1527=null_type, var1477=java.lang.Object, var3780=$r0, var1635=$r2}
; {r1=var1441, null_type=var1527, java.lang.Object=var1477, $r0=var3780, $r2=var1635}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[2];	$r0[0] = "junit.jupiter.execution.order.random.seed";	$r0[1] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Using custom seed for configuration parameter [%s] with value [%s].", $r0);	return $r2
;block_num 1