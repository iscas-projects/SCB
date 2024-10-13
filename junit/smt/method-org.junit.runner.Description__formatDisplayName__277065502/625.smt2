(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var40 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var40-init () (Array Int var40))
(declare-fun cast-from-String-to-var40 (String) var40)
(declare-fun String_format/1339386452 (String (Array Int var40)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var40__ (Array Int var40))
(declare-const var2383 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2383 null-String)))
(declare-const var1741 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1741 null-String)))
(define-const var1113 (Array Int var40) arr-var40-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(declare-const var1113!1 (Array Int var40))
(assert (not (= var1113!1 null-__Array__Int__var40__)))
(assert (= (select var1113!1 0) (cast-from-String-to-var40 var2383))) ; Statement: $r0[0] = r1 
(declare-const var1113!2 (Array Int var40))
(assert (not (= var1113!2 null-__Array__Int__var40__)))
(assert (= (select var1113!2 1) (cast-from-String-to-var40 var1741))) ; Statement: $r0[1] = r2 
(define-const var2718 String (String_format/1339386452 "%s(%s)" var1113!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(%s)", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var40-init=([], java.lang.Object[]), cast-from-String-to-var40=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2383=r1, var117=null_type, var1741=r2, var40=java.lang.Object, var1113=$r0, var2718=$r3}
; {r1=var2383, null_type=var117, r2=var1741, java.lang.Object=var40, $r0=var1113, $r3=var2718}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = newarray (java.lang.Object)[2];	$r0[0] = r1;	$r0[1] = r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(%s)", $r0);	return $r3
;block_num 1