(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2610 0)
(declare-sort var2071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2071-init () (Array Int var2071))
(declare-fun cast-from-String-to-var2071 (String) var2071)
(declare-fun String_format/1339386452 (String (Array Int var2071)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var2071__ (Array Int var2071))
(declare-const var3073 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3073 null-String)))
(define-const var873 (Array Int var2071) arr-var2071-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var873!1 (Array Int var2071))
(assert (not (= var873!1 null-__Array__Int__var2071__)))
(assert (= (select var873!1 0) (cast-from-String-to-var2071 var3073))) ; Statement: $r0[0] = r1 
(define-const var3551 String (String_format/1339386452 "  %s%n" var873!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("  %s%n", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2071-init=([], java.lang.Object[]), cast-from-String-to-var2071=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3073=r1, var2610=null_type, var2071=java.lang.Object, var873=$r0, var3551=$r2}
; {r1=var3073, null_type=var2610, java.lang.Object=var2071, $r0=var873, $r2=var3551}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("  %s%n", $r0);	return $r2
;block_num 1