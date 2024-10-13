(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort var675 0)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var675 var675)
(declare-const null-var2811 var2811)
(declare-const var1588 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1588 null-String)))
(declare-const var3949 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3949 null-String)))
(declare-const var1846 var675) ; Statement: r4 := @parameter2: org.hibernate.dialect.Dialect 
(assert (not (= var1846 null-var675)))
(declare-const var3552 var2811) ; Statement: r5 := @parameter3: org.hibernate.dialect.function.SQLFunctionRegistry 
(assert (not (= var3552 null-var2811)))
(define-const var2802 String "(") ; Statement: $r1 = "(" 
(assert true)
(define-const var3931 Bool (= var2802 var3949)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var3931 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3233 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= return $z6] 
(assert true) ; Non Conditional
 ; Statement: return $z6 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1588=r2, var981=null_type, var3949=r0, var675=org.hibernate.dialect.Dialect, var1846=r4, var2811=org.hibernate.dialect.function.SQLFunctionRegistry, var3552=r5, var2802=$r1, var3931=$z0, var3233=$z6}
; {r2=var1588, null_type=var981, r0=var3949, org.hibernate.dialect.Dialect=var675, r4=var1846, org.hibernate.dialect.function.SQLFunctionRegistry=var2811, r5=var3552, $r1=var2802, $z0=var3931, $z6=var3233}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: org.hibernate.dialect.Dialect;	r5 := @parameter3: org.hibernate.dialect.function.SQLFunctionRegistry;	$r1 = "(";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= return $z6];	return $z6
;block_num 3