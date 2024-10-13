(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3169 0)
(declare-sort var3567 0)
(declare-sort var2849 0)
(declare-sort var3449 0)
(declare-sort var3828 0)
(declare-sort var2599 0)
(declare-sort var1705 0)
(declare-sort var1733 0)
(declare-sort var1942 0)
(declare-sort var3952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3567_named/-1193891179 (var3567) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3567_matches/1631125019 (var3567) String)
(declare-fun var3449_bootstrap$/-1011906567 (var3567) var2849)
(declare-fun var3828_notBlank/1673218924 (String var2849) String)
(declare-fun var2599_bootstrap$/634400507 (var3567) var2849)
(declare-fun var1705_getProperty/258823597 (String) String)
(declare-fun arr-var1942-init () (Array Int var1942))
(declare-fun cast-from-String-to-var1942 (String) var1942)
(declare-fun String_format/1339386452 (String (Array Int var1942)) String)
(declare-fun var3567_disabledReason/-342464116 (var3567) String)
(declare-fun var3952_disabled/125704223 (String String) var3952)
(declare-const null-var3169 var3169)
(declare-const null-var3567 var3567)
(declare-const null-String String)
(declare-const null-__Array__Int__var1942__ (Array Int var1942))
(declare-const var3722 var3169) ; Statement: r18 := @this: org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition 
(assert (not (= var3722 null-var3169)))
(declare-const var164 var3567) ; Statement: r0 := @parameter0: org.junit.jupiter.api.condition.EnabledIfSystemProperty 
(assert (not (= var164 null-var3567)))
(define-const var1052 String (var3567_named/-1193891179 var164)) ; Statement: $r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfSystemProperty: java.lang.String named()>() 
(assert true)
(define-const var3586 String (trim/-847153721 var1052)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var213 String (var3567_matches/1631125019 var164)) ; Statement: r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfSystemProperty: java.lang.String matches()>() 
(define-const var785 var2849 (var3449_bootstrap$/-1011906567 var164)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_0__74: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfSystemProperty)>(r0) 
;(assert (var3828_notBlank/1673218924 var3586 var785)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4) 

(declare-const var3586!1 String)
(declare-const var785!1 var2849)
(define-const var2505 var2849 (var2599_bootstrap$/634400507 var164)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_1__75: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfSystemProperty)>(r0) 
;(assert (var3828_notBlank/1673218924 var213 var2505)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5) 

(declare-const var213!1 String)
(declare-const var2505!1 var2849)
(define-const var3079 String (var1705_getProperty/258823597 var3586!1)) ; Statement: r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>(r2) 
 ; Statement: if r6 != null goto $z0 = virtualinvoke r6.<java.lang.String: boolean matches(java.lang.String)>(r3) 
(assert (not (not (= var3079 null-String)))) ; Negate: Cond: r6 != null  
(define-const var2188 (Array Int var1942) arr-var1942-init) ; Statement: $r14 = newarray (java.lang.Object)[1] 
(declare-const var2188!1 (Array Int var1942))
(assert (not (= var2188!1 null-__Array__Int__var1942__)))
(assert (= (select var2188!1 0) (cast-from-String-to-var1942 var3586!1))) ; Statement: $r14[0] = r2 
(define-const var2679 String (String_format/1339386452 "System property [%s] does not exist" var2188!1)) ; Statement: $r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("System property [%s] does not exist", $r14) 
(define-const var2462 String (var3567_disabledReason/-342464116 var164)) ; Statement: $r15 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfSystemProperty: java.lang.String disabledReason()>() 
(define-const var824 var3952 (var3952_disabled/125704223 var2679 var2462)) ; Statement: $r17 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult disabled(java.lang.String,java.lang.String)>($r16, $r15) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3567_named/-1193891179=([org.junit.jupiter.api.condition.EnabledIfSystemProperty], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var3567_matches/1631125019=([org.junit.jupiter.api.condition.EnabledIfSystemProperty], java.lang.String), var3449_bootstrap$/-1011906567=([org.junit.jupiter.api.condition.EnabledIfSystemProperty], java.util.function.Supplier), var3828_notBlank/1673218924=([java.lang.String, java.util.function.Supplier], java.lang.String), var2599_bootstrap$/634400507=([org.junit.jupiter.api.condition.EnabledIfSystemProperty], java.util.function.Supplier), var1705_getProperty/258823597=([java.lang.String], java.lang.String), arr-var1942-init=([], java.lang.Object[]), cast-from-String-to-var1942=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var3567_disabledReason/-342464116=([org.junit.jupiter.api.condition.EnabledIfSystemProperty], java.lang.String), var3952_disabled/125704223=([java.lang.String, java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var3169=org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition, var3722=r18, var3567=org.junit.jupiter.api.condition.EnabledIfSystemProperty, var164=r0, var1052=$r1, var3586=r2, var213=r3, var2849=java.util.function.Supplier, var3449=org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_0__74, var785=$r4, var3828=org.junit.platform.commons.util.Preconditions, var2599=org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_1__75, var2505=$r5, var1705=java.lang.System, var3079=r6, var1733=null_type, var1942=java.lang.Object, var2188=$r14, var2679=$r16, var2462=$r15, var3952=org.junit.jupiter.api.extension.ConditionEvaluationResult, var824=$r17}
; {org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition=var3169, r18=var3722, org.junit.jupiter.api.condition.EnabledIfSystemProperty=var3567, r0=var164, $r1=var1052, r2=var3586, r3=var213, java.util.function.Supplier=var2849, org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_0__74=var3449, $r4=var785, org.junit.platform.commons.util.Preconditions=var3828, org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_1__75=var2599, $r5=var2505, java.lang.System=var1705, r6=var3079, null_type=var1733, java.lang.Object=var1942, $r14=var2188, $r16=var2679, $r15=var2462, org.junit.jupiter.api.extension.ConditionEvaluationResult=var3952, $r17=var824}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r18 := @this: org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition;	r0 := @parameter0: org.junit.jupiter.api.condition.EnabledIfSystemProperty;	$r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfSystemProperty: java.lang.String named()>();	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfSystemProperty: java.lang.String matches()>();	$r4 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_0__74: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfSystemProperty)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4);	$r5 = staticinvoke <org.junit.jupiter.api.condition.EnabledIfSystemPropertyCondition$lambda_evaluate_1__75: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.EnabledIfSystemProperty)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5);	r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>(r2);	if r6 != null goto $z0 = virtualinvoke r6.<java.lang.String: boolean matches(java.lang.String)>(r3);	$r14 = newarray (java.lang.Object)[1];	$r14[0] = r2;	$r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("System property [%s] does not exist", $r14);	$r15 = interfaceinvoke r0.<org.junit.jupiter.api.condition.EnabledIfSystemProperty: java.lang.String disabledReason()>();	$r17 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult disabled(java.lang.String,java.lang.String)>($r16, $r15);	return $r17
;block_num 2