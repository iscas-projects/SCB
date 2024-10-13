(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1608 0)
(declare-sort var1368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1368-init () (Array Int var1368))
(declare-fun cast-from-var1608-to-var1368 (var1608) var1368)
(declare-fun String_format/1339386452 (String (Array Int var1368)) String)
(declare-const null-var1608 var1608)
(declare-const null-__Array__Int__var1368__ (Array Int var1368))
(declare-const var3895 var1608) ; Statement: r1 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3895 null-var1608)))
(define-const var92 (Array Int var1368) arr-var1368-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var92!1 (Array Int var1368))
(assert (not (= var92!1 null-__Array__Int__var1368__)))
(assert (= (select var92!1 0) (cast-from-var1608-to-var1368 var3895))) ; Statement: $r0[0] = r1 
(define-const var200 String (String_format/1339386452 "Method [%s] must return a boolean" var92!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Method [%s] must return a boolean", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1368-init=([], java.lang.Object[]), cast-from-var1608-to-var1368=([java.lang.reflect.Method], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1608=java.lang.reflect.Method, var3895=r1, var1368=java.lang.Object, var92=$r0, var200=$r2}
; {java.lang.reflect.Method=var1608, r1=var3895, java.lang.Object=var1368, $r0=var92, $r2=var200}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.reflect.Method;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Method [%s] must return a boolean", $r0);	return $r2
;block_num 1