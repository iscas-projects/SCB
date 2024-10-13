(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2156 0)
(declare-sort var98 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var98-init () (Array Int var98))
(declare-fun cast-from-String-to-var98 (String) var98)
(declare-fun String_format/1339386452 (String (Array Int var98)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var98__ (Array Int var98))
(declare-const var2615 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2615 null-String)))
(define-const var228 (Array Int var98) arr-var98-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var228!1 (Array Int var98))
(assert (not (= var228!1 null-__Array__Int__var98__)))
(assert (= (select var228!1 0) (cast-from-String-to-var98 var2615))) ; Statement: $r0[0] = r1 
(define-const var1992 String (String_format/1339386452 " `%s\u0027" var228!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" `%s\'", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var98-init=([], java.lang.Object[]), cast-from-String-to-var98=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2615=r1, var2156=null_type, var98=java.lang.Object, var228=$r0, var1992=$r2}
; {r1=var2615, null_type=var2156, java.lang.Object=var98, $r0=var228, $r2=var1992}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" `%s\'", $r0);	return $r2
;block_num 1