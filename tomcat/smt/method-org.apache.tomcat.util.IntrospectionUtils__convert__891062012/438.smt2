(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3554 0)
(declare-sort var439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var439 (String) var439)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var439 var439)
(declare-const var1965 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1965 null-String)))
(declare-const var442 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var442 null-ClassObject)))
(define-const var2107 var439 null-var439) ; Statement: r30 = null 
(define-const var2502 String "java.lang.String") ; Statement: $r2 = "java.lang.String" 
(assert true)
(define-const var2578 String (getName/-1958580599 var442)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var938 Bool (= var2502 var2578)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "java.lang.Integer" 
(assert (not (= (ite var938 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2107!1 var439 (cast-from-String-to-var439 var1965)) ; Statement: r30 = r5 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r30 != null goto return r30 
(assert (not (= var2107!1 null-var439))) ; Cond: r30 != null 
 ; Statement: return r30 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var439=([java.lang.String], java.io.Serializable)}
; {var1965=r5, var3554=null_type, var442=r0, var439=java.io.Serializable, var2107=r30, var2502=$r2, var2578=$r1, var938=$z0}
; {r5=var1965, null_type=var3554, r0=var442, java.io.Serializable=var439, r30=var2107, $r2=var2502, $r1=var2578, $z0=var938}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Class;	r30 = null;	$r2 = "java.lang.String";	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "java.lang.Integer";	r30 = r5;	goto [?= (branch)];	if r30 != null goto return r30;	return r30
;block_num 4