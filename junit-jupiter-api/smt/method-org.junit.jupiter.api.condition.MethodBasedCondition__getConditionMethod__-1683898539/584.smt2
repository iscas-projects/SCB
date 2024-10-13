(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var2992 0)
(declare-sort var945 0)
(declare-sort var3579 0)
(declare-sort var1994 0)
(declare-sort var2014 0)
(declare-sort var3166 0)
(declare-sort var2623 0)
(declare-sort var710 0)
(declare-sort var872 0)
(declare-sort var90 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var945_getRequiredTestClass/1377074048 (var945) ClassObject)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3579_parseFullyQualifiedMethodName/-2103261489 (String) (Array Int String))
(declare-fun var2014_getClassLoader/-1552686516 (ClassObject) var1994)
(declare-fun var3579_tryToLoadClass/-1173131758 (String var1994) var3166)
(declare-fun var710_bootstrap$/-349893278 (String) var2623)
(declare-fun getOrThrow/-1701487377 (var3166 var2623) var872)
(declare-fun cast-from-var872-to-ClassObject (var872) ClassObject)
(declare-fun findMethod/-1663568989 (var2592 ClassObject String) var90)
(declare-const null-var2592 var2592)
(declare-const null-String String)
(declare-const null-var945 var945)
(declare-const var830 var2592) ; Statement: r11 := @this: org.junit.jupiter.api.condition.MethodBasedCondition 
(assert (not (= var830 null-var2592)))
(declare-const var108 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var108 null-String)))
(declare-const var983 var945) ; Statement: r0 := @parameter1: org.junit.jupiter.api.extension.ExtensionContext 
(assert (not (= var983 null-var945)))
(define-const var3270 ClassObject (var945_getRequiredTestClass/1377074048 var983)) ; Statement: r1 = interfaceinvoke r0.<org.junit.jupiter.api.extension.ExtensionContext: java.lang.Class getRequiredTestClass()>() 
(assert true)
(define-const var1034 Bool (contains/1009244746 var108 (cast-from-String-to-String "#"))) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("#") 
 ; Statement: if $z0 != 0 goto r3 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: java.lang.String[] parseFullyQualifiedMethodName(java.lang.String)>(r2) 
(assert (not (= (ite var1034 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3673 (Array Int String) (var3579_parseFullyQualifiedMethodName/-2103261489 var108)) ; Statement: r3 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: java.lang.String[] parseFullyQualifiedMethodName(java.lang.String)>(r2) 
(define-const var632 String (select var3673 0)) ; Statement: r4 = r3[0] 
(define-const var333 String (select var3673 1)) ; Statement: r5 = r3[1] 
(define-const var841 var1994 (var2014_getClassLoader/-1552686516 var3270)) ; Statement: r6 = staticinvoke <org.junit.platform.commons.util.ClassLoaderUtils: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1) 
(define-const var2690 var3166 (var3579_tryToLoadClass/-1173131758 var632 var841)) ; Statement: $r8 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: org.junit.platform.commons.function.Try tryToLoadClass(java.lang.String,java.lang.ClassLoader)>(r4, r6) 
(define-const var1816 var2623 (var710_bootstrap$/-349893278 var632)) ; Statement: $r7 = staticinvoke <org.junit.jupiter.api.condition.MethodBasedCondition$lambda_getConditionMethod_3__85: java.util.function.Function bootstrap$(java.lang.String)>(r4) 
(assert true)
(define-const var1134 var872 (getOrThrow/-1701487377 var2690 var1816)) ; Statement: $r9 = virtualinvoke $r8.<org.junit.platform.commons.function.Try: java.lang.Object getOrThrow(java.util.function.Function)>($r7) 
(define-const var96 ClassObject (cast-from-var872-to-ClassObject var1134)) ; Statement: r10 = (java.lang.Class) $r9 
(assert true)
(define-const var3790 var90 (findMethod/-1663568989 var830 var96 var333)) ; Statement: $r12 = specialinvoke r11.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.reflect.Method findMethod(java.lang.Class,java.lang.String)>(r10, r5) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var945_getRequiredTestClass/1377074048=([org.junit.jupiter.api.extension.ExtensionContext], java.lang.Class), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3579_parseFullyQualifiedMethodName/-2103261489=([java.lang.String], java.lang.String[]), var2014_getClassLoader/-1552686516=([java.lang.Class], java.lang.ClassLoader), var3579_tryToLoadClass/-1173131758=([java.lang.String, java.lang.ClassLoader], org.junit.platform.commons.function.Try), var710_bootstrap$/-349893278=([java.lang.String], java.util.function.Function), getOrThrow/-1701487377=([org.junit.platform.commons.function.Try, java.util.function.Function], java.lang.Object), cast-from-var872-to-ClassObject=([java.lang.Object], java.lang.Class), findMethod/-1663568989=([org.junit.jupiter.api.condition.MethodBasedCondition, java.lang.Class, java.lang.String], java.lang.reflect.Method)}
; {var2592=org.junit.jupiter.api.condition.MethodBasedCondition, var830=r11, var108=r2, var2992=null_type, var945=org.junit.jupiter.api.extension.ExtensionContext, var983=r0, var3270=r1, var1034=$z0, var3579=org.junit.platform.commons.util.ReflectionUtils, var3673=r3, var632=r4, var333=r5, var1994=java.lang.ClassLoader, var2014=org.junit.platform.commons.util.ClassLoaderUtils, var841=r6, var3166=org.junit.platform.commons.function.Try, var2690=$r8, var2623=java.util.function.Function, var710=org.junit.jupiter.api.condition.MethodBasedCondition$lambda_getConditionMethod_3__85, var1816=$r7, var872=java.lang.Object, var1134=$r9, var96=r10, var90=java.lang.reflect.Method, var3790=$r12}
; {org.junit.jupiter.api.condition.MethodBasedCondition=var2592, r11=var830, r2=var108, null_type=var2992, org.junit.jupiter.api.extension.ExtensionContext=var945, r0=var983, r1=var3270, $z0=var1034, org.junit.platform.commons.util.ReflectionUtils=var3579, r3=var3673, r4=var632, r5=var333, java.lang.ClassLoader=var1994, org.junit.platform.commons.util.ClassLoaderUtils=var2014, r6=var841, org.junit.platform.commons.function.Try=var3166, $r8=var2690, java.util.function.Function=var2623, org.junit.jupiter.api.condition.MethodBasedCondition$lambda_getConditionMethod_3__85=var710, $r7=var1816, java.lang.Object=var872, $r9=var1134, r10=var96, java.lang.reflect.Method=var90, $r12=var3790}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r11 := @this: org.junit.jupiter.api.condition.MethodBasedCondition;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.junit.jupiter.api.extension.ExtensionContext;	r1 = interfaceinvoke r0.<org.junit.jupiter.api.extension.ExtensionContext: java.lang.Class getRequiredTestClass()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("#");	if $z0 != 0 goto r3 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: java.lang.String[] parseFullyQualifiedMethodName(java.lang.String)>(r2);	r3 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: java.lang.String[] parseFullyQualifiedMethodName(java.lang.String)>(r2);	r4 = r3[0];	r5 = r3[1];	r6 = staticinvoke <org.junit.platform.commons.util.ClassLoaderUtils: java.lang.ClassLoader getClassLoader(java.lang.Class)>(r1);	$r8 = staticinvoke <org.junit.platform.commons.util.ReflectionUtils: org.junit.platform.commons.function.Try tryToLoadClass(java.lang.String,java.lang.ClassLoader)>(r4, r6);	$r7 = staticinvoke <org.junit.jupiter.api.condition.MethodBasedCondition$lambda_getConditionMethod_3__85: java.util.function.Function bootstrap$(java.lang.String)>(r4);	$r9 = virtualinvoke $r8.<org.junit.platform.commons.function.Try: java.lang.Object getOrThrow(java.util.function.Function)>($r7);	r10 = (java.lang.Class) $r9;	$r12 = specialinvoke r11.<org.junit.jupiter.api.condition.MethodBasedCondition: java.lang.reflect.Method findMethod(java.lang.Class,java.lang.String)>(r10, r5);	return $r12
;block_num 2