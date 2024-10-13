(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1448 0)
(declare-sort var1579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1448-init () (Array Int var1448))
(declare-fun var1579_identityHashCode/1096208673 (var1448) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1448 (Int) var1448)
(declare-fun String_format/1339386452 (String (Array Int var1448)) String)
(declare-const null-var1448 var1448)
(declare-const null-__Array__Int__var1448__ (Array Int var1448))
(declare-const var3612 var1448) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3612 null-var1448)))
(define-const var442 (Array Int var1448) arr-var1448-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1632 Int (var1579_identityHashCode/1096208673 var3612)) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(define-const var3768 Int (Int_valueOf/-1371140006 var1632)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var442!1 (Array Int var1448))
(assert (not (= var442!1 null-__Array__Int__var1448__)))
(assert (= (select var442!1 0) (cast-from-Int-to-var1448 var3768))) ; Statement: $r0[0] = $r2 
(define-const var3319 String (String_format/1339386452 "0x%08x" var442!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("0x%08x", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1448-init=([], java.lang.Object[]), var1579_identityHashCode/1096208673=([java.lang.Object], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1448=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1448=java.lang.Object, var3612=r1, var442=$r0, var1579=java.lang.System, var1632=$i0, var3768=$r2, var3319=$r3}
; {java.lang.Object=var1448, r1=var3612, $r0=var442, java.lang.System=var1579, $i0=var1632, $r2=var3768, $r3=var3319}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.Object;	$r0 = newarray (java.lang.Object)[1];	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("0x%08x", $r0);	return $r3
;block_num 1