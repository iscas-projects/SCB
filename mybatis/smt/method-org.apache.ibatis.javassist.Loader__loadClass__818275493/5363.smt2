(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3360 0)
(declare-sort var2026 0)
(declare-sort var2803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-const null-var3360 var3360)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2803 var2803)
(declare-const var2566 var3360) ; Statement: r0 := @this: org.apache.ibatis.javassist.Loader 
(assert (not (= var2566 null-var3360)))
(declare-const var2133 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2133 null-String)))
(declare-const var1198 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1198 null-Bool)))
(assert true)
(define-const var749 String (intern/-1326102057 var2133)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String intern()>() 
 ; Statement: entermonitor r3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3268 var2803) ; Statement: $r1 := @caughtexception 
(assert (not (= var3268 null-var2803)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r3 
(assert true) ; Non Conditional
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String)}
; {var3360=org.apache.ibatis.javassist.Loader, var2566=r0, var2133=r2, var2026=null_type, var1198=z0, var749=r3, var2803=java.lang.Throwable, var3268=$r1}
; {org.apache.ibatis.javassist.Loader=var3360, r0=var2566, r2=var2133, null_type=var2026, z0=var1198, r3=var749, java.lang.Throwable=var2803, $r1=var3268}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.Loader;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r3 = virtualinvoke r2.<java.lang.String: java.lang.String intern()>();	entermonitor r3;	$r1 := @caughtexception;	exitmonitor r3;	throw $r1
;block_num 4