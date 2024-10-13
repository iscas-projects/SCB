(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort var3773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var3773 var3773)
(declare-const var3452 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3452 null-String)))
(declare-const var40 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var40 null-String)))
(declare-const var1961 var3773) ; Statement: r2 := @parameter2: org.hibernate.dialect.function.SQLFunctionRegistry 
(assert (not (= var1961 null-var3773)))
(define-const var836 String "(") ; Statement: $r1 = "(" 
(assert true)
(define-const var3159 Bool (= var836 var40)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto r4 = virtualinvoke r2.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r3) 
(assert (not (= (ite var3159 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3452=r3, var3170=null_type, var40=r0, var3773=org.hibernate.dialect.function.SQLFunctionRegistry, var1961=r2, var836=$r1, var3159=$z0}
; {r3=var3452, null_type=var3170, r0=var40, org.hibernate.dialect.function.SQLFunctionRegistry=var3773, r2=var1961, $r1=var836, $z0=var3159}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: org.hibernate.dialect.function.SQLFunctionRegistry;	$r1 = "(";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto r4 = virtualinvoke r2.<org.hibernate.dialect.function.SQLFunctionRegistry: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r3);	return 1
;block_num 2