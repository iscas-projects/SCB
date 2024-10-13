(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2873 0)
(declare-sort var2017 0)
(declare-sort var1306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2017-init () (Array Int var2017))
(declare-fun annotationType/-1761383991 (var2873) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var2017 (String) var2017)
(declare-fun String_format/1339386452 (String (Array Int var2017)) String)
(declare-fun var1306_enabled/-244532757 (String) var1306)
(declare-const null-var2873 var2873)
(declare-const null-__Array__Int__var2017__ (Array Int var2017))
(declare-const var1196 var2873) ; Statement: r1 := @this: org.junit.jupiter.api.condition.BooleanExecutionCondition 
(assert (not (= var1196 null-var2873)))
(define-const var3183 (Array Int var2017) arr-var2017-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var2566 ClassObject (annotationType/-1761383991 var1196)) ; Statement: $r2 = r1.<org.junit.jupiter.api.condition.BooleanExecutionCondition: java.lang.Class annotationType> 
(assert true)
(define-const var926 String (getSimpleName/-390194377 var2566)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var3183!1 (Array Int var2017))
(assert (not (= var3183!1 null-__Array__Int__var2017__)))
(assert (= (select var3183!1 0) (cast-from-String-to-var2017 var926))) ; Statement: $r0[0] = $r3 
(define-const var2324 String (String_format/1339386452 "@%s is not present" var3183!1)) ; Statement: r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s is not present", $r0) 
(define-const var3554 var1306 (var1306_enabled/-244532757 var2324)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>(r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2017-init=([], java.lang.Object[]), annotationType/-1761383991=([org.junit.jupiter.api.condition.BooleanExecutionCondition], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var2017=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var1306_enabled/-244532757=([java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var2873=org.junit.jupiter.api.condition.BooleanExecutionCondition, var1196=r1, var2017=java.lang.Object, var3183=$r0, var2566=$r2, var926=$r3, var2324=r4, var1306=org.junit.jupiter.api.extension.ConditionEvaluationResult, var3554=$r5}
; {org.junit.jupiter.api.condition.BooleanExecutionCondition=var2873, r1=var1196, java.lang.Object=var2017, $r0=var3183, $r2=var2566, $r3=var926, r4=var2324, org.junit.jupiter.api.extension.ConditionEvaluationResult=var1306, $r5=var3554}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.junit.jupiter.api.condition.BooleanExecutionCondition;	$r0 = newarray (java.lang.Object)[1];	$r2 = r1.<org.junit.jupiter.api.condition.BooleanExecutionCondition: java.lang.Class annotationType>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("@%s is not present", $r0);	$r5 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>(r4);	return $r5
;block_num 1