(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var970 0)
(declare-sort var2946 0)
(declare-sort var3224 0)
(declare-sort var625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3224_getRequiredTestClass/1377074048 (var3224) ClassObject)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun findMethod/-1663568989 (var970 ClassObject String) var625)
(declare-const null-var970 var970)
(declare-const null-String String)
(declare-const null-var3224 var3224)
(declare-const var3619 var970) ; Statement: r11 := @this: org.junit.jupiter.api.condition.MethodBasedCondition 
(assert (not (= var3619 null-var970)))
(declare-const var3677 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3677 null-String)))
(declare-const var2158 var3224) ; Statement: r0 := @parameter1: org.junit.jupiter.api.extension.ExtensionContext 
(assert (not (= var2158 null-var3224)))
(define-const var1693 ClassObject (var3224_getRequiredTestClass/1377074048 var2158)) ; Statement: r1 = interfaceinvoke r0.<org.junit.jupiter.api.extension.ExtensionContext: java.lang.Class getRequiredTestClass()>() 
(assert true)
(define-const var2776 Bool (contains/1009244746 var3677 (cast-from-String-to-String "#"))) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("#") 
 ; Statement: if $z0 != 0 goto r3 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: java.lang.String[] parseFullyQualifiedMethodName(java.lang.String)>(r2) 
(assert (not (not (= (ite var2776 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3787 var625 (findMethod/-1663568989 var3619 var1693 var3677)) ; Statement: $r13 = specialinvoke r11.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.reflect.Method findMethod(java.lang.Class,java.lang.String)>(r1, r2) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3224_getRequiredTestClass/1377074048=([org.junit.jupiter.api.extension.ExtensionContext], java.lang.Class), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), findMethod/-1663568989=([org.junit.jupiter.api.condition.MethodBasedCondition, java.lang.Class, java.lang.String], java.lang.reflect.Method)}
; {var970=org.junit.jupiter.api.condition.MethodBasedCondition, var3619=r11, var3677=r2, var2946=null_type, var3224=org.junit.jupiter.api.extension.ExtensionContext, var2158=r0, var1693=r1, var2776=$z0, var625=java.lang.reflect.Method, var3787=$r13}
; {org.junit.jupiter.api.condition.MethodBasedCondition=var970, r11=var3619, r2=var3677, null_type=var2946, org.junit.jupiter.api.extension.ExtensionContext=var3224, r0=var2158, r1=var1693, $z0=var2776, java.lang.reflect.Method=var625, $r13=var3787}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r11 := @this: org.junit.jupiter.api.condition.MethodBasedCondition;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.junit.jupiter.api.extension.ExtensionContext;	r1 = interfaceinvoke r0.<org.junit.jupiter.api.extension.ExtensionContext: java.lang.Class getRequiredTestClass()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("#");	if $z0 != 0 goto r3 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: java.lang.String[] parseFullyQualifiedMethodName(java.lang.String)>(r2);	$r13 = specialinvoke r11.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.reflect.Method findMethod(java.lang.Class,java.lang.String)>(r1, r2);	return $r13
;block_num 2