(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var83 0)
(declare-sort var3341 0)
(declare-sort var1478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toNanos/-1386218734 (var3341) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var83 var83)
(declare-const null-var3341 var3341)
(declare-const null-var1478 var1478)
(declare-const var193 var83) ; Statement: r2 := @this: org.hibernate.type.DurationType 
(assert (not (= var193 null-var83)))
(declare-const var3056 var3341) ; Statement: r0 := @parameter0: java.time.Duration 
(assert (not (= var3056 null-var3341)))
(declare-const var463 var1478) ; Statement: r3 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var463 null-var1478)))
(assert true)
(define-const var3470 Int (toNanos/-1386218734 var3056)) ; Statement: $l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>() 
(define-const var2004 String (String_valueOf/-107395227 var3470)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toNanos/-1386218734=([java.time.Duration], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var83=org.hibernate.type.DurationType, var193=r2, var3341=java.time.Duration, var3056=r0, var1478=org.hibernate.dialect.Dialect, var463=r3, var3470=$l0, var2004=$r1}
; {org.hibernate.type.DurationType=var83, r2=var193, java.time.Duration=var3341, r0=var3056, org.hibernate.dialect.Dialect=var1478, r3=var463, $l0=var3470, $r1=var2004}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r2 := @this: org.hibernate.type.DurationType;	r0 := @parameter0: java.time.Duration;	r3 := @parameter1: org.hibernate.dialect.Dialect;	$l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>();	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r1
;block_num 1