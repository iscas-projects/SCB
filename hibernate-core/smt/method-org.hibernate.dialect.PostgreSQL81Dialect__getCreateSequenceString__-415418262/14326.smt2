(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2506 0)
(declare-sort var1539 0)
(declare-sort var350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var350-init () (Array Int var350))
(declare-fun getCreateSequenceString/797157860 (var2506 String) String)
(declare-fun cast-from-String-to-var350 (String) var350)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var350 (Int) var350)
(declare-fun String_format/1339386452 (String (Array Int var350)) String)
(declare-const null-var2506 var2506)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var350__ (Array Int var350))
(declare-const var1437 var2506) ; Statement: r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var1437 null-var2506)))
(declare-const var1750 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1750 null-String)))
(declare-const var636 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var636 null-Int)))
(declare-const var1802 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1802 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (>= var636 0)) ; Cond: i0 >= 0 
 ; Statement: if i0 <= 0 goto $r0 = newarray (java.lang.Object)[3] 
(assert (<= var636 0)) ; Cond: i0 <= 0 
(define-const var3021 (Array Int var350) arr-var350-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1370 String (getCreateSequenceString/797157860 var1437 var1750)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(declare-const var3021!1 (Array Int var350))
(assert (not (= var3021!1 null-__Array__Int__var350__)))
(assert (= (select var3021!1 0) (cast-from-String-to-var350 var1370))) ; Statement: $r0[0] = $r3 
(define-const var3518 Int (Int_valueOf/-1371140006 var636)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3021!2 (Array Int var350))
(assert (not (= var3021!2 null-__Array__Int__var350__)))
(assert (= (select var3021!2 1) (cast-from-Int-to-var350 var3518))) ; Statement: $r0[1] = $r4 
(define-const var1695 Int (Int_valueOf/-1371140006 var1802)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3021!3 (Array Int var350))
(assert (not (= var3021!3 null-__Array__Int__var350__)))
(assert (= (select var3021!3 2) (cast-from-Int-to-var350 var1695))) ; Statement: $r0[2] = $r5 
(define-const var2505 String (String_format/1339386452 "%s start %d increment %d" var3021!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s start %d increment %d", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var350-init=([], java.lang.Object[]), getCreateSequenceString/797157860=([org.hibernate.dialect.PostgreSQL81Dialect, java.lang.String], java.lang.String), cast-from-String-to-var350=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var350=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2506=org.hibernate.dialect.PostgreSQL81Dialect, var1437=r1, var1750=r2, var1539=null_type, var636=i0, var1802=i1, var350=java.lang.Object, var3021=$r0, var1370=$r3, var3518=$r4, var1695=$r5, var2505=$r6}
; {org.hibernate.dialect.PostgreSQL81Dialect=var2506, r1=var1437, r2=var1750, null_type=var1539, i0=var636, i1=var1802, java.lang.Object=var350, $r0=var3021, $r3=var1370, $r4=var3518, $r5=var1695, $r6=var2505}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i0 <= 0 goto $r0 = newarray (java.lang.Object)[3];	$r0 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r0[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r0[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s start %d increment %d", $r0);	return $r6
;block_num 3