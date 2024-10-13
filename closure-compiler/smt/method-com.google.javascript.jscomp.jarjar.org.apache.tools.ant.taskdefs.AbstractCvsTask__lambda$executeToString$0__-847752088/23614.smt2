(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1551 0)
(declare-sort var2643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2643-init () (Array Int var2643))
(declare-fun cast-from-String-to-var2643 (String) var2643)
(declare-fun String_format/1339386452 (String (Array Int var2643)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var2643__ (Array Int var2643))
(declare-const var911 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var911 null-String)))
(define-const var1258 (Array Int var2643) arr-var2643-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var1258!1 (Array Int var2643))
(assert (not (= var1258!1 null-__Array__Int__var2643__)))
(assert (= (select var1258!1 0) (cast-from-String-to-var2643 var911))) ; Statement: $r0[0] = r1 
(define-const var514 String (String_format/1339386452 "%n\t%s" var1258!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n\t%s", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2643-init=([], java.lang.Object[]), cast-from-String-to-var2643=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var911=r1, var1551=null_type, var2643=java.lang.Object, var1258=$r0, var514=$r2}
; {r1=var911, null_type=var1551, java.lang.Object=var2643, $r0=var1258, $r2=var514}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n\t%s", $r0);	return $r2
;block_num 1