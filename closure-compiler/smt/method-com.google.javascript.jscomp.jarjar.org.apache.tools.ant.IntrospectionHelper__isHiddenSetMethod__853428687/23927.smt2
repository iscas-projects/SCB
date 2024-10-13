(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1995 0)
(declare-sort var1843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1995 var1995)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1876 var1995) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1876 null-var1995)))
(declare-const var29 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var29 null-String)))
(declare-const var2960 ClassObject) ; Statement: r3 := @parameter1: java.lang.Class 
(assert (not (= var2960 null-ClassObject)))
(define-const var3682 String "setLocation") ; Statement: $r1 = "setLocation" 
(assert true)
(define-const var2650 Bool (= var3682 var29)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "setTaskType" 
(assert (= (ite var2650 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3175 String "setTaskType") ; Statement: $r2 = "setTaskType" 
(assert true)
(define-const var1636 Bool (= var3175 var29)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $z4 = 0 
(assert (= (ite var1636 1 0) 0)) ; Cond: $z1 == 0 
(define-const var40 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1995=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1876=r6, var29=r0, var1843=null_type, var2960=r3, var3682=$r1, var2650=$z0, var3175=$r2, var1636=$z1, var40=$z4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1995, r6=var1876, r0=var29, null_type=var1843, r3=var2960, $r1=var3682, $z0=var2650, $r2=var3175, $z1=var1636, $z4=var40}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Class;	$r1 = "setLocation";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "setTaskType";	$r2 = "setTaskType";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 == 0 goto $z4 = 0;	$z4 = 0;	return $z4
;block_num 4