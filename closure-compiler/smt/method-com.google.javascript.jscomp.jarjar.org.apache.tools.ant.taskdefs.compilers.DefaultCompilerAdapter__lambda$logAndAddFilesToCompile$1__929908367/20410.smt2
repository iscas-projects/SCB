(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1597 0)
(declare-sort var3465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3465-init () (Array Int var3465))
(declare-fun cast-from-String-to-var3465 (String) var3465)
(declare-fun String_format/1339386452 (String (Array Int var3465)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var3465__ (Array Int var3465))
(declare-const var3482 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3482 null-String)))
(define-const var2341 (Array Int var3465) arr-var3465-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var2341!1 (Array Int var3465))
(assert (not (= var2341!1 null-__Array__Int__var3465__)))
(assert (= (select var2341!1 0) (cast-from-String-to-var3465 var3482))) ; Statement: $r0[0] = r1 
(define-const var1516 String (String_format/1339386452 "    %s%n" var2341!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("    %s%n", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3465-init=([], java.lang.Object[]), cast-from-String-to-var3465=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3482=r1, var1597=null_type, var3465=java.lang.Object, var2341=$r0, var1516=$r2}
; {r1=var3482, null_type=var1597, java.lang.Object=var3465, $r0=var2341, $r2=var1516}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("    %s%n", $r0);	return $r2
;block_num 1