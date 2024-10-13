(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1228 0)
(declare-sort var2300 0)
(declare-sort var990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hibernateTypeNames/-970077672 (var1228) var2300)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun get/1201938295 (var2300 Int Int Int Int) String)
(declare-const null-var1228 var1228)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var963 var1228) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var963 null-var1228)))
(declare-const var1103 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1103 null-Int)))
(declare-const var478 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var478 null-Int)))
(declare-const var664 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var664 null-Int)))
(declare-const var1563 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var1563 null-Int)))
(define-const var3232 var2300 (hibernateTypeNames/-970077672 var963)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames> 
(define-const var2278 Int (cast-from-Int-to-Int var478)) ; Statement: $l4 = (long) i1 
(assert true)
(define-const var501 String (get/1201938295 var3232 var1103 var2278 var664 var1563)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, $l4, i2, i3) 
 ; Statement: if r2 != null goto return r2 
(assert (not (= var501 null-String))) ; Cond: r2 != null 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {hibernateTypeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), cast-from-Int-to-Int=([int], long), get/1201938295=([org.hibernate.dialect.TypeNames, int, long, int, int], java.lang.String)}
; {var1228=org.hibernate.dialect.Dialect, var963=r0, var1103=i0, var478=i1, var664=i2, var1563=i3, var2300=org.hibernate.dialect.TypeNames, var3232=$r1, var2278=$l4, var501=r2, var990=null_type}
; {org.hibernate.dialect.Dialect=var1228, r0=var963, i0=var1103, i1=var478, i2=var664, i3=var1563, org.hibernate.dialect.TypeNames=var2300, $r1=var3232, $l4=var2278, r2=var501, null_type=var990}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames>;	$l4 = (long) i1;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, $l4, i2, i3);	if r2 != null goto return r2;	return r2
;block_num 2