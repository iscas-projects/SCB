(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2603-init () (Array Int var2603))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2603 (Int) var2603)
(declare-fun String_format/1339386452 (String (Array Int var2603)) String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2603__ (Array Int var2603))
(declare-const var1217 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1217 null-Int)))
(define-const var2433 (Array Int var2603) arr-var2603-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var2945 Int (Int_valueOf/-1371140006 var1217)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2433!1 (Array Int var2603))
(assert (not (= var2433!1 null-__Array__Int__var2603__)))
(assert (= (select var2433!1 0) (cast-from-Int-to-var2603 var2945))) ; Statement: $r0[0] = $r1 
(define-const var2692 String (String_format/1339386452 "fast-forward(%d) limit must be greater than zero" var2433!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("fast-forward(%d) limit must be greater than zero", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2603-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2603=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1217=i0, var2603=java.lang.Object, var2433=$r0, var2945=$r1, var2692=$r2}
; {i0=var1217, java.lang.Object=var2603, $r0=var2433, $r1=var2945, $r2=var2692}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	$r0 = newarray (java.lang.Object)[1];	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r0[0] = $r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("fast-forward(%d) limit must be greater than zero", $r0);	return $r2
;block_num 1