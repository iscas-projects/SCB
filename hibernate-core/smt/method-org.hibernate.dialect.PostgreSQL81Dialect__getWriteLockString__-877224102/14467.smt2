(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2925 0)
(declare-sort var969 0)
(declare-sort var1514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1514-init () (Array Int var1514))
(declare-fun cast-from-String-to-var1514 (String) var1514)
(declare-fun String_format/1339386452 (String (Array Int var1514)) String)
(declare-const null-var2925 var2925)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1514__ (Array Int var1514))
(declare-const var920 var2925) ; Statement: r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var920 null-var2925)))
(declare-const var2710 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2710 null-String)))
(declare-const var3611 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3611 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (not (= var3611 0)))) ; Negate: Cond: i0 != 0  
(define-const var483 (Array Int var1514) arr-var1514-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var483!1 (Array Int var1514))
(assert (not (= var483!1 null-__Array__Int__var1514__)))
(assert (= (select var483!1 0) (cast-from-String-to-var1514 var2710))) ; Statement: $r5[0] = r1 
(define-const var1936 String (String_format/1339386452 " for update of %s nowait" var483!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for update of %s nowait", $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1514-init=([], java.lang.Object[]), cast-from-String-to-var1514=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2925=org.hibernate.dialect.PostgreSQL81Dialect, var920=r7, var2710=r1, var969=null_type, var3611=i0, var1514=java.lang.Object, var483=$r5, var1936=$r6}
; {org.hibernate.dialect.PostgreSQL81Dialect=var2925, r7=var920, r1=var2710, null_type=var969, i0=var3611, java.lang.Object=var1514, $r5=var483, $r6=var1936}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r5 = newarray (java.lang.Object)[1];	$r5[0] = r1;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for update of %s nowait", $r5);	return $r6
;block_num 2