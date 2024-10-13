(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1547 0)
(declare-sort var1149 0)
(declare-sort var2071 0)
(declare-sort var192 0)
(declare-sort var2641 0)
(declare-sort var1314 0)
(declare-sort var3767 0)
(declare-sort var2104 0)
(declare-sort var2982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1149_named/-960385951 (var1149) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var1149_matches/-1603617561 (var1149) String)
(declare-fun var192_bootstrap$/969892415 (var1149) var2071)
(declare-fun var2641_notBlank/1673218924 (String var2071) String)
(declare-fun var1314_bootstrap$/2049560027 (var1149) var2071)
(declare-fun getEnvironmentVariable/-1510444681 (var1547 String) String)
(declare-fun arr-var2104-init () (Array Int var2104))
(declare-fun cast-from-String-to-var2104 (String) var2104)
(declare-fun String_format/1339386452 (String (Array Int var2104)) String)
(declare-fun var2982_enabled/-244532757 (String) var2982)
(declare-const null-var1547 var1547)
(declare-const null-var1149 var1149)
(declare-const null-String String)
(declare-const null-__Array__Int__var2104__ (Array Int var2104))
(declare-const var3783 var1547) ; Statement: r6 := @this: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition 
(assert (not (= var3783 null-var1547)))
(declare-const var2906 var1149) ; Statement: r0 := @parameter0: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable 
(assert (not (= var2906 null-var1149)))
(define-const var2881 String (var1149_named/-960385951 var2906)) ; Statement: $r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable: java.lang.String named()>() 
(assert true)
(define-const var3559 String (trim/-847153721 var2881)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var2133 String (var1149_matches/-1603617561 var2906)) ; Statement: r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable: java.lang.String matches()>() 
(define-const var2135 var2071 (var192_bootstrap$/969892415 var2906)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_0__58: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable)>(r0) 
;(assert (var2641_notBlank/1673218924 var3559 var2135)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4) 

(declare-const var3559!1 String)
(declare-const var2135!1 var2071)
(define-const var695 var2071 (var1314_bootstrap$/2049560027 var2906)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_1__64: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable)>(r0) 
;(assert (var2641_notBlank/1673218924 var2133 var695)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5) 

(declare-const var2133!1 String)
(declare-const var695!1 var2071)
(assert true)
(define-const var1990 String (getEnvironmentVariable/-1510444681 var3783 var3559!1)) ; Statement: r7 = virtualinvoke r6.<org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition: java.lang.String getEnvironmentVariable(java.lang.String)>(r2) 
 ; Statement: if r7 != null goto $z0 = virtualinvoke r7.<java.lang.String: boolean matches(java.lang.String)>(r3) 
(assert (not (not (= var1990 null-String)))) ; Negate: Cond: r7 != null  
(define-const var3907 (Array Int var2104) arr-var2104-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var3907!1 (Array Int var2104))
(assert (not (= var3907!1 null-__Array__Int__var2104__)))
(assert (= (select var3907!1 0) (cast-from-String-to-var2104 var3559!1))) ; Statement: $r15[0] = r2 
(define-const var859 String (String_format/1339386452 "Environment variable [%s] does not exist" var3907!1)) ; Statement: $r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Environment variable [%s] does not exist", $r15) 
(define-const var795 var2982 (var2982_enabled/-244532757 var859)) ; Statement: $r17 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>($r16) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1149_named/-960385951=([org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var1149_matches/-1603617561=([org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable], java.lang.String), var192_bootstrap$/969892415=([org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable], java.util.function.Supplier), var2641_notBlank/1673218924=([java.lang.String, java.util.function.Supplier], java.lang.String), var1314_bootstrap$/2049560027=([org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable], java.util.function.Supplier), getEnvironmentVariable/-1510444681=([org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition, java.lang.String], java.lang.String), arr-var2104-init=([], java.lang.Object[]), cast-from-String-to-var2104=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2982_enabled/-244532757=([java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var1547=org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition, var3783=r6, var1149=org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable, var2906=r0, var2881=$r1, var3559=r2, var2133=r3, var2071=java.util.function.Supplier, var192=org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_0__58, var2135=$r4, var2641=org.junit.platform.commons.util.Preconditions, var1314=org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_1__64, var695=$r5, var1990=r7, var3767=null_type, var2104=java.lang.Object, var3907=$r15, var859=$r16, var2982=org.junit.jupiter.api.extension.ConditionEvaluationResult, var795=$r17}
; {org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition=var1547, r6=var3783, org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable=var1149, r0=var2906, $r1=var2881, r2=var3559, r3=var2133, java.util.function.Supplier=var2071, org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_0__58=var192, $r4=var2135, org.junit.platform.commons.util.Preconditions=var2641, org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_1__64=var1314, $r5=var695, r7=var1990, null_type=var3767, java.lang.Object=var2104, $r15=var3907, $r16=var859, org.junit.jupiter.api.extension.ConditionEvaluationResult=var2982, $r17=var795}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition;	r0 := @parameter0: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable;	$r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable: java.lang.String named()>();	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable: java.lang.String matches()>();	$r4 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_0__58: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4);	$r5 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition$lambda_evaluate_1__64: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5);	r7 = virtualinvoke r6.<org.junit.jupiter.api.condition.DisabledIfEnvironmentVariableCondition: java.lang.String getEnvironmentVariable(java.lang.String)>(r2);	if r7 != null goto $z0 = virtualinvoke r7.<java.lang.String: boolean matches(java.lang.String)>(r3);	$r15 = newarray (java.lang.Object)[1];	$r15[0] = r2;	$r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Environment variable [%s] does not exist", $r15);	$r17 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>($r16);	return $r17
;block_num 2