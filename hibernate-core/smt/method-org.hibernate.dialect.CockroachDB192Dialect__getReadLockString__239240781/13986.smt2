(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var911 0)
(declare-sort var1314 0)
(declare-sort var3214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var3214-init () (Array Int var3214))
(declare-fun cast-from-String-to-var3214 (String) var3214)
(declare-fun String_format/1339386452 (String (Array Int var3214)) String)
(declare-const null-var911 var911)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3214__ (Array Int var3214))
(declare-const var2404 var911) ; Statement: r0 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var2404 null-var911)))
(declare-const var1173 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1173 null-String)))
(declare-const var3046 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3046 null-Int)))
(define-const var2681 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i2 = (int) -2 
 ; Statement: if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0) 
(assert (not (not (= var3046 var2681)))) ; Negate: Cond: i0 != $i2  
(define-const var1655 (Array Int var3214) arr-var3214-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var1655!1 (Array Int var3214))
(assert (not (= var1655!1 null-__Array__Int__var3214__)))
(assert (= (select var1655!1 0) (cast-from-String-to-var3214 var1173))) ; Statement: $r3[0] = r1 
(define-const var3210 String (String_format/1339386452 " for share of %s skip locked" var1655!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s skip locked", $r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), arr-var3214-init=([], java.lang.Object[]), cast-from-String-to-var3214=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var911=org.hibernate.dialect.CockroachDB192Dialect, var2404=r0, var1173=r1, var1314=null_type, var3046=i0, var2681=$i2, var3214=java.lang.Object, var1655=$r3, var3210=$r4}
; {org.hibernate.dialect.CockroachDB192Dialect=var911, r0=var2404, r1=var1173, null_type=var1314, i0=var3046, $i2=var2681, java.lang.Object=var3214, $r3=var1655, $r4=var3210}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i2 = (int) -2;	if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0);	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r1;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s skip locked", $r3);	return $r4
;block_num 2