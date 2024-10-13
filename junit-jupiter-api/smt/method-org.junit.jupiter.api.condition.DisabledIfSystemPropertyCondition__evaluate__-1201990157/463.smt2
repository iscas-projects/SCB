(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3350 0)
(declare-sort var492 0)
(declare-sort var1918 0)
(declare-sort var27 0)
(declare-sort var2579 0)
(declare-sort var22 0)
(declare-sort var460 0)
(declare-sort var1329 0)
(declare-sort var1004 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var492_named/266387326 (var492) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var492_matches/504462532 (var492) String)
(declare-fun var27_bootstrap$/-1972456448 (var492) var1918)
(declare-fun var2579_notBlank/1673218924 (String var1918) String)
(declare-fun var22_bootstrap$/216103008 (var492) var1918)
(declare-fun var460_getProperty/258823597 (String) String)
(declare-fun arr-var1004-init () (Array Int var1004))
(declare-fun cast-from-String-to-var1004 (String) var1004)
(declare-fun String_format/1339386452 (String (Array Int var1004)) String)
(declare-fun var2437_enabled/-244532757 (String) var2437)
(declare-const null-var3350 var3350)
(declare-const null-var492 var492)
(declare-const null-String String)
(declare-const null-__Array__Int__var1004__ (Array Int var1004))
(declare-const var2466 var3350) ; Statement: r17 := @this: org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition 
(assert (not (= var2466 null-var3350)))
(declare-const var1587 var492) ; Statement: r0 := @parameter0: org.junit.jupiter.api.condition.DisabledIfSystemProperty 
(assert (not (= var1587 null-var492)))
(define-const var2027 String (var492_named/266387326 var1587)) ; Statement: $r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfSystemProperty: java.lang.String named()>() 
(assert true)
(define-const var1296 String (trim/-847153721 var2027)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var2962 String (var492_matches/504462532 var1587)) ; Statement: r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfSystemProperty: java.lang.String matches()>() 
(define-const var1956 var1918 (var27_bootstrap$/-1972456448 var1587)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_0__59: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfSystemProperty)>(r0) 
;(assert (var2579_notBlank/1673218924 var1296 var1956)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4) 

(declare-const var1296!1 String)
(declare-const var1956!1 var1918)
(define-const var152 var1918 (var22_bootstrap$/216103008 var1587)) ; Statement: $r5 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_1__69: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfSystemProperty)>(r0) 
;(assert (var2579_notBlank/1673218924 var2962 var152)) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5) 

(declare-const var2962!1 String)
(declare-const var152!1 var1918)
(define-const var617 String (var460_getProperty/258823597 var1296!1)) ; Statement: r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>(r2) 
 ; Statement: if r6 != null goto $z0 = virtualinvoke r6.<java.lang.String: boolean matches(java.lang.String)>(r3) 
(assert (not (not (= var617 null-String)))) ; Negate: Cond: r6 != null  
(define-const var611 (Array Int var1004) arr-var1004-init) ; Statement: $r14 = newarray (java.lang.Object)[1] 
(declare-const var611!1 (Array Int var1004))
(assert (not (= var611!1 null-__Array__Int__var1004__)))
(assert (= (select var611!1 0) (cast-from-String-to-var1004 var1296!1))) ; Statement: $r14[0] = r2 
(define-const var3939 String (String_format/1339386452 "System property [%s] does not exist" var611!1)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("System property [%s] does not exist", $r14) 
(define-const var2765 var2437 (var2437_enabled/-244532757 var3939)) ; Statement: $r16 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>($r15) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var492_named/266387326=([org.junit.jupiter.api.condition.DisabledIfSystemProperty], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var492_matches/504462532=([org.junit.jupiter.api.condition.DisabledIfSystemProperty], java.lang.String), var27_bootstrap$/-1972456448=([org.junit.jupiter.api.condition.DisabledIfSystemProperty], java.util.function.Supplier), var2579_notBlank/1673218924=([java.lang.String, java.util.function.Supplier], java.lang.String), var22_bootstrap$/216103008=([org.junit.jupiter.api.condition.DisabledIfSystemProperty], java.util.function.Supplier), var460_getProperty/258823597=([java.lang.String], java.lang.String), arr-var1004-init=([], java.lang.Object[]), cast-from-String-to-var1004=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2437_enabled/-244532757=([java.lang.String], org.junit.jupiter.api.extension.ConditionEvaluationResult)}
; {var3350=org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition, var2466=r17, var492=org.junit.jupiter.api.condition.DisabledIfSystemProperty, var1587=r0, var2027=$r1, var1296=r2, var2962=r3, var1918=java.util.function.Supplier, var27=org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_0__59, var1956=$r4, var2579=org.junit.platform.commons.util.Preconditions, var22=org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_1__69, var152=$r5, var460=java.lang.System, var617=r6, var1329=null_type, var1004=java.lang.Object, var611=$r14, var3939=$r15, var2437=org.junit.jupiter.api.extension.ConditionEvaluationResult, var2765=$r16}
; {org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition=var3350, r17=var2466, org.junit.jupiter.api.condition.DisabledIfSystemProperty=var492, r0=var1587, $r1=var2027, r2=var1296, r3=var2962, java.util.function.Supplier=var1918, org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_0__59=var27, $r4=var1956, org.junit.platform.commons.util.Preconditions=var2579, org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_1__69=var22, $r5=var152, java.lang.System=var460, r6=var617, null_type=var1329, java.lang.Object=var1004, $r14=var611, $r15=var3939, org.junit.jupiter.api.extension.ConditionEvaluationResult=var2437, $r16=var2765}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r17 := @this: org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition;	r0 := @parameter0: org.junit.jupiter.api.condition.DisabledIfSystemProperty;	$r1 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfSystemProperty: java.lang.String named()>();	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	r3 = interfaceinvoke r0.<org.junit.jupiter.api.condition.DisabledIfSystemProperty: java.lang.String matches()>();	$r4 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_0__59: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfSystemProperty)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r2, $r4);	$r5 = staticinvoke <org.junit.jupiter.api.condition.DisabledIfSystemPropertyCondition$lambda_evaluate_1__69: java.util.function.Supplier bootstrap$(org.junit.jupiter.api.condition.DisabledIfSystemProperty)>(r0);	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.String notBlank(java.lang.String,java.util.function.Supplier)>(r3, $r5);	r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>(r2);	if r6 != null goto $z0 = virtualinvoke r6.<java.lang.String: boolean matches(java.lang.String)>(r3);	$r14 = newarray (java.lang.Object)[1];	$r14[0] = r2;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("System property [%s] does not exist", $r14);	$r16 = staticinvoke <org.junit.jupiter.api.extension.ConditionEvaluationResult: org.junit.jupiter.api.extension.ConditionEvaluationResult enabled(java.lang.String)>($r15);	return $r16
;block_num 2