(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2263 0)
(declare-sort var2754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun var2754-init () var2754)
(declare-fun <init>/875830710 (var2754 String) void)
(declare-const null-var2263 var2263)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var446 var2263) ; Statement: r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var446 null-var2263)))
(declare-const var1988 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1988 null-String)))
(declare-const var3695 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3695 null-Int)))
(define-const var1506 Int 0) ; Statement: i8 = 0 
(define-const var667 Int var3695) ; Statement: i9 = i0 
(define-const var891 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var1511 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var37 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var238 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1116 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1010 Int (length/-171891354 var1988)) ; Statement: $i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i9 >= $i1 goto (branch) 
(assert (>= var667 var1010)) ; Cond: i9 >= $i1 
 ; Statement: if i8 <= 0 goto $i2 = i9 - i0 
(assert (not (<= var1506 0))) ; Negate: Cond: i8 <= 0  
(define-const var2637 var2754 var2754-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2637 "Failed to parse the CTE query inner query because closing \u0027)\u0027 was not found.")) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Failed to parse the CTE query inner query because closing \')\' was not found.") 

(declare-const var2637!1 var2754)
(declare-const var3543 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), var2754-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2263=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var446=r2, var1988=r0, var3695=i0, var1506=i8, var667=i9, var891=z0, var1511=z4, var37=z3, var238=z2, var1116=z1, var1010=$i1, var2754=java.lang.IllegalArgumentException, var2637=$r3, var3543="Failed to parse the CTE query inner query because closing \')\' was not found."}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var2263, r2=var446, r0=var1988, i0=var3695, i8=var1506, i9=var667, z0=var891, z4=var1511, z3=var37, z2=var238, z1=var1116, $i1=var1010, java.lang.IllegalArgumentException=var2754, $r3=var2637, "Failed to parse the CTE query inner query because closing \')\' was not found."=var3543}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	i8 = 0;	i9 = i0;	z0 = 0;	z4 = 0;	z3 = 0;	z2 = 0;	z1 = 0;	$i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if i9 >= $i1 goto (branch);	if i8 <= 0 goto $i2 = i9 - i0;	$r3 = new java.lang.IllegalArgumentException;	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Failed to parse the CTE query inner query because closing \')\' was not found.");	throw $r3
;block_num 4