(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var2200 0)
(declare-sort var2184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun typeNames/-970077672 (var2556) var2200)
(declare-fun get/1201938295 (var2200 Int Int Int Int) String)
(declare-const null-var2556 var2556)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var800 var2556) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var800 null-var2556)))
(declare-const var2897 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2897 null-Int)))
(declare-const var692 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var692 null-Int)))
(declare-const var1040 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1040 null-Int)))
(declare-const var3344 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var3344 null-Int)))
(define-const var244 var2200 (typeNames/-970077672 var800)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames> 
(assert true)
(define-const var2479 String (get/1201938295 var244 var2897 var692 var1040 var3344)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, l1, i2, i3) 
 ; Statement: if r2 != null goto return r2 
(assert (not (= var2479 null-String))) ; Cond: r2 != null 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {typeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), get/1201938295=([org.hibernate.dialect.TypeNames, int, long, int, int], java.lang.String)}
; {var2556=org.hibernate.dialect.Dialect, var800=r0, var2897=i0, var692=l1, var1040=i2, var3344=i3, var2200=org.hibernate.dialect.TypeNames, var244=$r1, var2479=r2, var2184=null_type}
; {org.hibernate.dialect.Dialect=var2556, r0=var800, i0=var2897, l1=var692, i2=var1040, i3=var3344, org.hibernate.dialect.TypeNames=var2200, $r1=var244, r2=var2479, null_type=var2184}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	l1 := @parameter1: long;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames typeNames>;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int,long,int,int)>(i0, l1, i2, i3);	if r2 != null goto return r2;	return r2
;block_num 2