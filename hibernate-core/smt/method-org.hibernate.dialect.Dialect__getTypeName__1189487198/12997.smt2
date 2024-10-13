(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort var1374 0)
(declare-sort var1544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun typeNames/-970077672 (var3767) var1374)
(declare-fun get/932734625 (var1374 Int) String)
(declare-const null-var3767 var3767)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2430 var3767) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2430 null-var3767)))
(declare-const var862 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var862 null-Int)))
(define-const var3697 var1374 (typeNames/-970077672 var2430)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames> 
(assert true)
(define-const var3581 String (get/932734625 var3697 var862)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0) 
 ; Statement: if r2 != null goto return r2 
(assert (not (= var3581 null-String))) ; Cond: r2 != null 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {typeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), get/932734625=([org.hibernate.dialect.TypeNames, int], java.lang.String)}
; {var3767=org.hibernate.dialect.Dialect, var2430=r0, var862=i0, var1374=org.hibernate.dialect.TypeNames, var3697=$r1, var3581=r2, var1544=null_type}
; {org.hibernate.dialect.Dialect=var3767, r0=var2430, i0=var862, org.hibernate.dialect.TypeNames=var1374, $r1=var3697, r2=var3581, null_type=var1544}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames>;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0);	if r2 != null goto return r2;	return r2
;block_num 2