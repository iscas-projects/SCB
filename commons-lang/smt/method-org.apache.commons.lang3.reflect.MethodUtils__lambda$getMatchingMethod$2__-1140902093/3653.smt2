(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3699 0)
(declare-sort var815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var815) String)
(declare-const null-String String)
(declare-const null-var815 var815)
(declare-const var3856 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3856 null-String)))
(declare-const var869 var815) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var869 null-var815)))
(assert true)
(define-const var1743 String (getName/1227988463 var869)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1578 Bool (= var1743 var3856)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var3856=r1, var3699=null_type, var815=java.lang.reflect.Method, var869=r0, var1743=$r2, var1578=$z0}
; {r1=var3856, null_type=var3699, java.lang.reflect.Method=var815, r0=var869, $r2=var1743, $z0=var1578}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.reflect.Method;	$r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1