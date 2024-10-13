(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var505 0)
(declare-sort var1410 0)
(declare-sort var2247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1410-init () (Array Int var1410))
(declare-fun annotationType/-2033612661 (var505) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var1410 (String) var1410)
(declare-fun String_format/1339386452 (String (Array Int var1410)) String)
(declare-fun var2247_enabled/-244532757 (String) var2247)
(declare-const null-var505 var505)
(declare-const null-__Array__Int__var1410__ (Array Int var1410))
(declare-const var3566 var505) ; Statement: r1 := @this: org.junit.jupiter.api.condition.MethodBasedCondition 
(assert (not (= var3566 null-var505)))
(define-const var2218 (Array Int var1410) arr-var1410-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var639 ClassObject (annotationType/-2033612661 var3566)) ; Statement: $r2 = r1.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.Class annotationType> 
(assert true)
(define-const var1903 String (getSimpleName/-390194377 var639)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var2218!1 (Array Int var1410))
(assert (not (= var2218!1 null-__Array__Int__var1410__)))
(assert (= (select var2218!1 0) (cast-from-String-to-var1410 var1903))) ; Statement: $r0[0] = $r3 
(define-const var2864 String (String_format/1339386452 "@%s is not present" var2218!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s is not present", $r0) 
(define-const var2457 var2247 (var2247_enabled/-244532757 var2864)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>($r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1410-init=([], java.lang.Object[]), annotationType/-2033612661=([org.junit.jupiter.api.condition.MethodBasedCondition], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var1410=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2247_enabled/-244532757=([java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var505=org.junit.jupiter.api.condition.MethodBasedCondition, var3566=r1, var1410=java.lang.Object, var2218=$r0, var639=$r2, var1903=$r3, var2864=$r4, var2247=org.junit.jupiter.api.extension.ConditionEvaluationResult, var2457=$r5}
; {org.junit.jupiter.api.condition.MethodBasedCondition=var505, r1=var3566, java.lang.Object=var1410, $r0=var2218, $r2=var639, $r3=var1903, $r4=var2864, org.junit.jupiter.api.extension.ConditionEvaluationResult=var2247, $r5=var2457}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.junit.jupiter.api.condition.MethodBasedCondition;	$r0 = newarray (java.lang.Object)[1];	$r2 = r1.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.Class annotationType>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s is not present", $r0);	$r5 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>($r4);	return $r5
;block_num 1