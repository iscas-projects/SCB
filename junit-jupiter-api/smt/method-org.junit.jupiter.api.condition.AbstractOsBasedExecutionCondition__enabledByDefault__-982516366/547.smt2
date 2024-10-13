(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3846 0)
(declare-sort var2615 0)
(declare-sort var2064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2615-init () (Array Int var2615))
(declare-fun annotationType/-541488626 (var3846) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var2615 (String) var2615)
(declare-fun String_format/1339386452 (String (Array Int var2615)) String)
(declare-fun var2064_enabled/-244532757 (String) var2064)
(declare-const null-var3846 var3846)
(declare-const null-__Array__Int__var2615__ (Array Int var2615))
(declare-const var3622 var3846) ; Statement: r1 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition 
(assert (not (= var3622 null-var3846)))
(define-const var2665 (Array Int var2615) arr-var2615-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1930 ClassObject (annotationType/-541488626 var3622)) ; Statement: $r2 = r1.<org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.Class annotationType> 
(assert true)
(define-const var79 String (getSimpleName/-390194377 var1930)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var2665!1 (Array Int var2615))
(assert (not (= var2665!1 null-__Array__Int__var2615__)))
(assert (= (select var2665!1 0) (cast-from-String-to-var2615 var79))) ; Statement: $r0[0] = $r3 
(define-const var813 String (String_format/1339386452 "@%s is not present" var2665!1)) ; Statement: r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s is not present", $r0) 
(define-const var701 var2064 (var2064_enabled/-244532757 var813)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>(r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2615-init=([], java.lang.Object[]), annotationType/-541488626=([org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var2615=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2064_enabled/-244532757=([java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var3846=org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition, var3622=r1, var2615=java.lang.Object, var2665=$r0, var1930=$r2, var79=$r3, var813=r4, var2064=org.junit.jupiter.api.extension.ConditionEvaluationResult, var701=$r5}
; {org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition=var3846, r1=var3622, java.lang.Object=var2615, $r0=var2665, $r2=var1930, $r3=var79, r4=var813, org.junit.jupiter.api.extension.ConditionEvaluationResult=var2064, $r5=var701}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition;	$r0 = newarray (java.lang.Object)[1];	$r2 = r1.<org.junit.jupiter.api.condition.AbstractOsBasedExecutionCondition: java.lang.Class annotationType>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s is not present", $r0);	$r5 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>(r4);	return $r5
;block_num 1