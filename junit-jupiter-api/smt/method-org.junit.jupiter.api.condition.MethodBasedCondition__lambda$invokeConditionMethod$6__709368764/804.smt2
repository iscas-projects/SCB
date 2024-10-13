(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3158 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3338-init () (Array Int var3338))
(declare-fun cast-from-var3158-to-var3338 (var3158) var3338)
(declare-fun String_format/1339386452 (String (Array Int var3338)) String)
(declare-const null-var3158 var3158)
(declare-const null-__Array__Int__var3338__ (Array Int var3338))
(declare-const var1647 var3158) ; Statement: r1 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1647 null-var3158)))
(define-const var2116 (Array Int var3338) arr-var3338-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var2116!1 (Array Int var3338))
(assert (not (= var2116!1 null-__Array__Int__var3338__)))
(assert (= (select var2116!1 0) (cast-from-var3158-to-var3338 var1647))) ; Statement: $r0[0] = r1 
(define-const var2663 String (String_format/1339386452 "Method [%s] must accept either an ExtensionContext or no arguments" var2116!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Method [%s] must accept either an ExtensionContext or no arguments", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3338-init=([], java.lang.Object[]), cast-from-var3158-to-var3338=([java.lang.reflect.Method], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3158=java.lang.reflect.Method, var1647=r1, var3338=java.lang.Object, var2116=$r0, var2663=$r2}
; {java.lang.reflect.Method=var3158, r1=var1647, java.lang.Object=var3338, $r0=var2116, $r2=var2663}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.reflect.Method;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Method [%s] must accept either an ExtensionContext or no arguments", $r0);	return $r2
;block_num 1