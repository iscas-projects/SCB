(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2957 0)
(declare-sort var1565 0)
(declare-sort var3657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3657-init () (Array Int var3657))
(declare-fun cast-from-String-to-var3657 (String) var3657)
(declare-fun String_format/1339386452 (String (Array Int var3657)) String)
(declare-const null-var2957 var2957)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3657__ (Array Int var3657))
(declare-const var3691 var2957) ; Statement: r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var3691 null-var2957)))
(declare-const var2899 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2899 null-String)))
(declare-const var3794 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3794 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (not (= var3794 0)))) ; Negate: Cond: i0 != 0  
(define-const var3470 (Array Int var3657) arr-var3657-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var3470!1 (Array Int var3657))
(assert (not (= var3470!1 null-__Array__Int__var3657__)))
(assert (= (select var3470!1 0) (cast-from-String-to-var3657 var2899))) ; Statement: $r5[0] = r1 
(define-const var2447 String (String_format/1339386452 " for share of %s nowait" var3470!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s nowait", $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3657-init=([], java.lang.Object[]), cast-from-String-to-var3657=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2957=org.hibernate.dialect.PostgreSQL81Dialect, var3691=r7, var2899=r1, var1565=null_type, var3794=i0, var3657=java.lang.Object, var3470=$r5, var2447=$r6}
; {org.hibernate.dialect.PostgreSQL81Dialect=var2957, r7=var3691, r1=var2899, null_type=var1565, i0=var3794, java.lang.Object=var3657, $r5=var3470, $r6=var2447}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r5 = newarray (java.lang.Object)[1];	$r5[0] = r1;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s nowait", $r5);	return $r6
;block_num 2