(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3687 0)
(declare-sort var1662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1662-init () (Array Int var1662))
(declare-fun cast-from-String-to-var1662 (String) var1662)
(declare-fun String_format/1339386452 (String (Array Int var1662)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var1662__ (Array Int var1662))
(declare-const var2999 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2999 null-String)))
(define-const var91 (Array Int var1662) arr-var1662-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var91!1 (Array Int var1662))
(assert (not (= var91!1 null-__Array__Int__var1662__)))
(assert (= (select var91!1 0) (cast-from-String-to-var1662 var2999))) ; Statement: $r0[0] = r1 
(define-const var826 String (String_format/1339386452 "    %s%n" var91!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("    %s%n", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1662-init=([], java.lang.Object[]), cast-from-String-to-var1662=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2999=r1, var3687=null_type, var1662=java.lang.Object, var91=$r0, var826=$r2}
; {r1=var2999, null_type=var3687, java.lang.Object=var1662, $r0=var91, $r2=var826}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("    %s%n", $r0);	return $r2
;block_num 1