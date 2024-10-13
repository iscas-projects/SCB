(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2771 0)
(declare-sort var1064 0)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var871-init () (Array Int var871))
(declare-fun cast-from-String-to-var871 (String) var871)
(declare-fun String_format/1339386452 (String (Array Int var871)) String)
(declare-const null-var2771 var2771)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var871__ (Array Int var871))
(declare-const var514 var2771) ; Statement: r0 := @this: org.hibernate.dialect.PostgreSQL95Dialect 
(assert (not (= var514 null-var2771)))
(declare-const var2188 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2188 null-String)))
(declare-const var3173 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3173 null-Int)))
(define-const var1876 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i2 = (int) -2 
 ; Statement: if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.PostgreSQL94Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0) 
(assert (not (not (= var3173 var1876)))) ; Negate: Cond: i0 != $i2  
(define-const var1010 (Array Int var871) arr-var871-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var1010!1 (Array Int var871))
(assert (not (= var1010!1 null-__Array__Int__var871__)))
(assert (= (select var1010!1 0) (cast-from-String-to-var871 var2188))) ; Statement: $r3[0] = r1 
(define-const var1030 String (String_format/1339386452 " for share of %s skip locked" var1010!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s skip locked", $r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), arr-var871-init=([], java.lang.Object[]), cast-from-String-to-var871=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2771=org.hibernate.dialect.PostgreSQL95Dialect, var514=r0, var2188=r1, var1064=null_type, var3173=i0, var1876=$i2, var871=java.lang.Object, var1010=$r3, var1030=$r4}
; {org.hibernate.dialect.PostgreSQL95Dialect=var2771, r0=var514, r1=var2188, null_type=var1064, i0=var3173, $i2=var1876, java.lang.Object=var871, $r3=var1010, $r4=var1030}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.dialect.PostgreSQL95Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i2 = (int) -2;	if i0 != $i2 goto $r2 = specialinvoke r0.<org.hibernate.dialect.PostgreSQL94Dialect: java.lang.String getReadLockString(java.lang.String,int)>(r1, i0);	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r1;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s skip locked", $r3);	return $r4
;block_num 2