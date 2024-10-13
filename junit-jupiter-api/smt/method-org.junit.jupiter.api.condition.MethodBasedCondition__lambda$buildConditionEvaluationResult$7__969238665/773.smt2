(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var3134 0)
(declare-sort var344 0)
(declare-sort var262 0)
(declare-sort var147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var344-init () (Array Int var344))
(declare-fun annotationType/-2033612661 (var3895) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var344 (String) var344)
(declare-fun methodName/-2033612661 (var3895) var262)
(declare-fun var262_apply/533941847 (var262 var344) var344)
(declare-fun cast-from-var3134-to-var344 (var3134) var344)
(declare-fun var147_valueOf/1602327315 (Bool) var147)
(declare-fun cast-from-var147-to-var344 (var147) var344)
(declare-fun String_format/1339386452 (String (Array Int var344)) String)
(declare-const null-var3895 var3895)
(declare-const null-var3134 var3134)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var344__ (Array Int var344))
(declare-const var2234 var3895) ; Statement: r1 := @this: org.junit.jupiter.api.condition.MethodBasedCondition 
(assert (not (= var2234 null-var3895)))
(declare-const var470 var3134) ; Statement: r4 := @parameter0: java.lang.annotation.Annotation 
(assert (not (= var470 null-var3134)))
(declare-const var451 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var451 null-Bool)))
(define-const var3561 (Array Int var344) arr-var344-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var3027 ClassObject (annotationType/-2033612661 var2234)) ; Statement: $r2 = r1.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.Class annotationType> 
(assert true)
(define-const var1842 String (getSimpleName/-390194377 var3027)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var3561!1 (Array Int var344))
(assert (not (= var3561!1 null-__Array__Int__var344__)))
(assert (= (select var3561!1 0) (cast-from-String-to-var344 var1842))) ; Statement: $r0[0] = $r3 
(define-const var3345 var262 (methodName/-2033612661 var2234)) ; Statement: $r5 = r1.<org.junit.jupiter.api.condition.MethodBasedCondition: java.util.function.Function methodName> 
(define-const var558 var344 (var262_apply/533941847 var3345 (cast-from-var3134-to-var344 var470))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r4) 
(declare-const var3561!2 (Array Int var344))
(assert (not (= var3561!2 null-__Array__Int__var344__)))
(assert (= (select var3561!2 1) var558)) ; Statement: $r0[1] = $r6 
(define-const var2009 var147 (var147_valueOf/1602327315 var451)) ; Statement: $r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0) 
(declare-const var3561!3 (Array Int var344))
(assert (not (= var3561!3 null-__Array__Int__var344__)))
(assert (= (select var3561!3 2) (cast-from-var147-to-var344 var2009))) ; Statement: $r0[2] = $r7 
(define-const var1734 String (String_format/1339386452 "@%s(\u0022%s\u0022) evaluated to %s" var3561!3)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s(\"%s\") evaluated to %s", $r0) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var344-init=([], java.lang.Object[]), annotationType/-2033612661=([org.junit.jupiter.api.condition.MethodBasedCondition], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var344=([java.lang.String], java.lang.Object), methodName/-2033612661=([org.junit.jupiter.api.condition.MethodBasedCondition], java.util.function.Function), var262_apply/533941847=([java.util.function.Function, java.lang.Object], java.lang.Object), cast-from-var3134-to-var344=([java.lang.annotation.Annotation], java.lang.Object), var147_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var147-to-var344=([java.lang.Boolean], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3895=org.junit.jupiter.api.condition.MethodBasedCondition, var2234=r1, var3134=java.lang.annotation.Annotation, var470=r4, var451=z0, var344=java.lang.Object, var3561=$r0, var3027=$r2, var1842=$r3, var262=java.util.function.Function, var3345=$r5, var558=$r6, var147=java.lang.Boolean, var2009=$r7, var1734=$r8}
; {org.junit.jupiter.api.condition.MethodBasedCondition=var3895, r1=var2234, java.lang.annotation.Annotation=var3134, r4=var470, z0=var451, java.lang.Object=var344, $r0=var3561, $r2=var3027, $r3=var1842, java.util.function.Function=var262, $r5=var3345, $r6=var558, java.lang.Boolean=var147, $r7=var2009, $r8=var1734}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.junit.jupiter.api.condition.MethodBasedCondition;	r4 := @parameter0: java.lang.annotation.Annotation;	z0 := @parameter1: boolean;	$r0 = newarray (java.lang.Object)[3];	$r2 = r1.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.Class annotationType>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	$r5 = r1.<org.junit.jupiter.api.condition.MethodBasedCondition: java.util.function.Function methodName>;	$r6 = interfaceinvoke $r5.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r4);	$r0[1] = $r6;	$r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0);	$r0[2] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s(\"%s\") evaluated to %s", $r0);	return $r8
;block_num 1