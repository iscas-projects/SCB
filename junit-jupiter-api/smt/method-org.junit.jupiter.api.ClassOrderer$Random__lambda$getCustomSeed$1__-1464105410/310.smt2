(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2050 0)
(declare-sort var3696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3696-init () (Array Int var3696))
(declare-fun cast-from-String-to-var3696 (String) var3696)
(declare-fun String_format/1339386452 (String (Array Int var3696)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var3696__ (Array Int var3696))
(declare-const var3902 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3902 null-String)))
(define-const var2904 (Array Int var3696) arr-var3696-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(declare-const var2904!1 (Array Int var3696))
(assert (not (= var2904!1 null-__Array__Int__var3696__)))
(assert (= (select var2904!1 0) (cast-from-String-to-var3696 "junit.jupiter.execution.order.random.seed"))) ; Statement: $r0[0] = "junit.jupiter.execution.order.random.seed" 
(declare-const var2904!2 (Array Int var3696))
(assert (not (= var2904!2 null-__Array__Int__var3696__)))
(assert (= (select var2904!2 1) (cast-from-String-to-var3696 var3902))) ; Statement: $r0[1] = r1 
(define-const var880 String (String_format/1339386452 "Using custom seed for configuration parameter [%s] with value [%s]." var2904!2)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Using custom seed for configuration parameter [%s] with value [%s].", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3696-init=([], java.lang.Object[]), cast-from-String-to-var3696=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3902=r1, var2050=null_type, var3696=java.lang.Object, var2904=$r0, var880=$r2}
; {r1=var3902, null_type=var2050, java.lang.Object=var3696, $r0=var2904, $r2=var880}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[2];	$r0[0] = "junit.jupiter.execution.order.random.seed";	$r0[1] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Using custom seed for configuration parameter [%s] with value [%s].", $r0);	return $r2
;block_num 1