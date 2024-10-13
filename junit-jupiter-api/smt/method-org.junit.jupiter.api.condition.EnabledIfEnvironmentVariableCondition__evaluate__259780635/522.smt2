(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var253 0)
(declare-sort var3703 0)
(declare-sort var2542 0)
(declare-sort var2540 0)
(declare-sort var226 0)
(declare-sort var501 0)
(declare-sort var2149 0)
(declare-sort var1668 0)
(declare-sort var3015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3703_named/-1727653974 (var3703) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3703_matches/-213812752 (var3703) String)
(declare-fun var2540_bootstrap$/1466058385 (var3703) var2542)
(declare-fun var226_notBlank/1673218924 (String var2542) String)
(declare-fun var501_bootstrap$/1174122703 (var3703) var2542)
(declare-fun getEnvironmentVariable/472887680 (var253 String) String)
(declare-fun arr-var1668-init () (Array Int var1668))
(declare-fun cast-from-String-to-var1668 (String) var1668)
(declare-fun String_format/1339386452 (String (Array Int var1668)) String)
(declare-fun var3703_disabledReason/527950871 (var3703) String)
(declare-fun var3015_disabled/125704223 (String String) var3015)
(declare-const null-var253 var253)
(declare-const null-var3703 var3703)
(declare-const null-String String)
(declare-const null-__Array__Int__var1668__ (Array Int var1668))
(declare-const var1850 var253) ; Statement: r6 := @this: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition 
(assert (not (= var1850 null-var253)))
(declare-const var1394 var3703) ; Statement: r0 := @parameter0: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable 
(assert (not (= var1394 null-var3703)))
(define-const var811 String (var3703_named/-1727653974 var1394)) ; Statement: $r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable: java.lang.String named()>() 
(assert true)
(define-const var728 String (trim/-847153721 var811)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var947 String (var3703_matches/-213812752 var1394)) ; Statement: r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable: java.lang.String matches()>() 
(define-const var2829 var2542 (var2540_bootstrap$/1466058385 var1394)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_0__72: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable)>(r0) 
;(assert (var226_notBlank/1673218924 var728 var2829)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4) 

(declare-const var728!1 String)
(declare-const var2829!1 var2542)
(define-const var1540 var2542 (var501_bootstrap$/1174122703 var1394)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_1__73: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable)>(r0) 
;(assert (var226_notBlank/1673218924 var947 var1540)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5) 

(declare-const var947!1 String)
(declare-const var1540!1 var2542)
(assert true)
(define-const var2272 String (getEnvironmentVariable/472887680 var1850 var728!1)) ; Statement: r7 = virtualinvoke r6.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition: java.lang.String getEnvironmentVariable(java.lang.String)>(r2) 
 ; Statement: if r7 != null goto $z0 = virtualinvoke r7.<java.lang.String: boolean matches(java.lang.String)>(r3) 
(assert (not (not (= var2272 null-String)))) ; Negate: Cond: r7 != null  
(define-const var369 (Array Int var1668) arr-var1668-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var369!1 (Array Int var1668))
(assert (not (= var369!1 null-__Array__Int__var1668__)))
(assert (= (select var369!1 0) (cast-from-String-to-var1668 var728!1))) ; Statement: $r15[0] = r2 
(define-const var3355 String (String_format/1339386452 "Environment variable [%s] does not exist" var369!1)) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Environment variable [%s] does not exist", $r15) 
(define-const var3872 String (var3703_disabledReason/527950871 var1394)) ; Statement: $r16 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable: java.lang.String disabledReason()>() 
(define-const var2242 var3015 (var3015_disabled/125704223 var3355 var3872)) ; Statement: $r18 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult disabled(java.lang.String,java.lang.String)>($r17, $r16) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var3703_named/-1727653974=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var3703_matches/-213812752=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable], java.lang.String), var2540_bootstrap$/1466058385=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable], java.util.function.Supplier), var226_notBlank/1673218924=([java.lang.String, java.util.function.Supplier], java.lang.String), var501_bootstrap$/1174122703=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable], java.util.function.Supplier), getEnvironmentVariable/472887680=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition, java.lang.String], java.lang.String), arr-var1668-init=([], java.lang.Object[]), cast-from-String-to-var1668=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var3703_disabledReason/527950871=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable], java.lang.String), var3015_disabled/125704223=([java.lang.String, java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var253=org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition, var1850=r6, var3703=org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable, var1394=r0, var811=$r1, var728=r2, var947=r3, var2542=java.util.function.Supplier, var2540=org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_0__72, var2829=$r4, var226=org.junit.platform.commons.util.Preconditions, var501=org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_1__73, var1540=$r5, var2272=r7, var2149=null_type, var1668=java.lang.Object, var369=$r15, var3355=$r17, var3872=$r16, var3015=org.junit.jupiter.api.extension.ConditionEvaluationResult, var2242=$r18}
; {org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition=var253, r6=var1850, org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable=var3703, r0=var1394, $r1=var811, r2=var728, r3=var947, java.util.function.Supplier=var2542, org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_0__72=var2540, $r4=var2829, org.junit.platform.commons.util.Preconditions=var226, org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_1__73=var501, $r5=var1540, r7=var2272, null_type=var2149, java.lang.Object=var1668, $r15=var369, $r17=var3355, $r16=var3872, org.junit.jupiter.api.extension.ConditionEvaluationResult=var3015, $r18=var2242}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition;	r0 := @parameter0: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable;	$r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable: java.lang.String named()>();	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable: java.lang.String matches()>();	$r4 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_0__72: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4);	$r5 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition$lambda_evaluate_1__73: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5);	r7 = virtualinvoke r6.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariableCondition: java.lang.String getEnvironmentVariable(java.lang.String)>(r2);	if r7 != null goto $z0 = virtualinvoke r7.<java.lang.String: boolean matches(java.lang.String)>(r3);	$r15 = newarray (java.lang.Object)[1];	$r15[0] = r2;	$r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Environment variable [%s] does not exist", $r15);	$r16 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable: java.lang.String disabledReason()>();	$r18 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult disabled(java.lang.String,java.lang.String)>($r17, $r16);	return $r18
;block_num 2