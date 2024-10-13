(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var500 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var338-init () (Array Int var338))
(declare-fun cast-from-String-to-var338 (String) var338)
(declare-fun String_format/1339386452 (String (Array Int var338)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var338__ (Array Int var338))
(declare-const var2107 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2107 null-String)))
(declare-const var2823 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2823 null-String)))
 ; Statement: if r0 != null goto $r1 = newarray (java.lang.Object)[2] 
(assert (not (= var2823 null-String))) ; Cond: r0 != null 
(define-const var2378 (Array Int var338) arr-var338-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var2378!1 (Array Int var338))
(assert (not (= var2378!1 null-__Array__Int__var338__)))
(assert (= (select var2378!1 0) (cast-from-String-to-var338 var2107))) ; Statement: $r1[0] = r2 
(declare-const var2378!2 (Array Int var338))
(assert (not (= var2378!2 null-__Array__Int__var338__)))
(assert (= (select var2378!2 1) (cast-from-String-to-var338 var2823))) ; Statement: $r1[1] = r0 
(define-const var3385 String (String_format/1339386452 "%s/%s" var2378!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s/%s", $r1) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var338-init=([], java.lang.Object[]), cast-from-String-to-var338=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2107=r2, var500=null_type, var2823=r0, var338=java.lang.Object, var2378=$r1, var3385=$r3}
; {r2=var2107, null_type=var500, r0=var2823, java.lang.Object=var338, $r1=var2378, $r3=var3385}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r0 != null goto $r1 = newarray (java.lang.Object)[2];	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r2;	$r1[1] = r0;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s/%s", $r1);	return $r3
;block_num 3