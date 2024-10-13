(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var698 var698)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var751 var698) ; Statement: r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var751 null-var698)))
(declare-const var2751 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2751 null-String)))
(declare-const var2625 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2625 null-Int)))
(define-const var3449 Int 0) ; Statement: i8 = 0 
(define-const var1548 Int var2625) ; Statement: i9 = i0 
(define-const var1279 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var3027 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var2768 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var3207 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1675 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3041 Int (length/-171891354 var2751)) ; Statement: $i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i9 >= $i1 goto (branch) 
(assert (>= var1548 var3041)) ; Cond: i9 >= $i1 
 ; Statement: if i8 <= 0 goto $i2 = i9 - i0 
(assert (<= var3449 0)) ; Cond: i8 <= 0 
(define-const var3693 Int (- var1548 var2625)) ; Statement: $i2 = i9 - i0 
(define-const var2575 Int (+ var3693 1)) ; Statement: $i3 = $i2 + 1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int)}
; {var698=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var751=r2, var2751=r0, var2625=i0, var3449=i8, var1548=i9, var1279=z0, var3027=z4, var2768=z3, var3207=z2, var1675=z1, var3041=$i1, var3693=$i2, var2575=$i3}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var698, r2=var751, r0=var2751, i0=var2625, i8=var3449, i9=var1548, z0=var1279, z4=var3027, z3=var2768, z2=var3207, z1=var1675, $i1=var3041, $i2=var3693, $i3=var2575}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	i8 = 0;	i9 = i0;	z0 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	$i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if i9 >= $i1 goto (branch);	if i8 <= 0 goto $i2 = i9 - i0;	$i2 = i9 - i0;	$i3 = $i2 + 1;	return $i3
;block_num 4