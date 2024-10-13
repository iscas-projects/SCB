(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var829 0)
(declare-sort var3845 0)
(declare-sort var256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3845_notNull/-1363825176 (var256 String) var256)
(declare-fun cast-from-String-to-var256 (String) var256)
(declare-const null-String String)
(declare-const var3682 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3682 null-String)))
(declare-const var1441 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1441 null-String)))
;(assert (var3845_notNull/-1363825176 (cast-from-String-to-var256 var3682) "expected line must not be null")) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r0, "expected line must not be null") 

(declare-const var3682!1 String)
(declare-const var615 String)
;(assert (var3845_notNull/-1363825176 (cast-from-String-to-var256 var1441) "actual line must not be null")) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r1, "actual line must not be null") 

(declare-const var1441!1 String)
(declare-const var894 String)
(assert true)
(define-const var1950 Bool (= var3682!1 var1441!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>(r0) 
(assert (not (= (ite var1950 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3845_notNull/-1363825176=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var256=([java.lang.String], java.lang.Object)}
; {var3682=r0, var829=null_type, var1441=r1, var3845=org.junit.platform.commons.util.Preconditions, var256=java.lang.Object, var615="expected line must not be null", var894="actual line must not be null", var1950=$z0}
; {r0=var3682, null_type=var829, r1=var1441, org.junit.platform.commons.util.Preconditions=var3845, java.lang.Object=var256, "expected line must not be null"=var615, "actual line must not be null"=var894, $z0=var1950}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r0, "expected line must not be null");	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r1, "actual line must not be null");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>(r0);	return 1
;block_num 2