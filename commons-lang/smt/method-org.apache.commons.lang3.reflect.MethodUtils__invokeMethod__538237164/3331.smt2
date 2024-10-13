(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2294 0)
(declare-sort var495 0)
(declare-sort var564 0)
(declare-sort var1572 0)
(declare-sort var2493 0)
(declare-sort var909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var564_requireNonNull/1378936425 (var2294 String) var2294)
(declare-fun var1572_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var1572_nullToEmpty/627354827 ((Array Int var2294)) (Array Int var2294))
(declare-fun getClass/1258963082 (var2294) ClassObject)
(declare-fun var909_getMatchingAccessibleMethod/856695000 (ClassObject String (Array Int ClassObject)) var2493)
(declare-fun var909_toVarArgs/306330370 (var2493 (Array Int var2294)) (Array Int var2294))
(declare-fun invoke/-1759464968 (var2493 var2294 (Array Int var2294)) var2294)
(declare-const null-var2294 var2294)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-__Array__Int__var2294__ (Array Int var2294))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var2493 var2493)
(declare-const var2416 var2294) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2416 null-var2294)))
(declare-const var1754 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1754 null-Bool)))
(declare-const var768 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var768 null-String)))
(declare-const var3944 (Array Int var2294)) ; Statement: r12 := @parameter3: java.lang.Object[] 
(assert (not (= var3944 null-__Array__Int__var2294__)))
(declare-const var2063 (Array Int ClassObject)) ; Statement: r13 := @parameter4: java.lang.Class[] 
(assert (not (= var2063 null-__Array__Int__ClassObject__)))
;(assert (var564_requireNonNull/1378936425 var2416 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var2416!1 var2294)
(declare-const var2066 String)
(define-const var3537 (Array Int ClassObject) (var1572_nullToEmpty/1403447389 var2063)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var2164 (Array Int var2294) (var1572_nullToEmpty/627354827 var3944)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(assert true)
(define-const var1715 ClassObject (getClass/1258963082 var2416!1)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if z0 == 0 goto r16 = "No such accessible method: " 
(assert (= (ite var1754 1 0) 0)) ; Cond: z0 == 0 
(define-const var3838 String "No such accessible method: ") ; Statement: r16 = "No such accessible method: " 
(define-const var2665 var2493 (var909_getMatchingAccessibleMethod/856695000 var1715 var768 var3537)) ; Statement: r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14) 
(assert true) ; Non Conditional
 ; Statement: if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15) 
(assert (not (= var2665 null-var2493))) ; Cond: r17 != null 
(define-const var2527 (Array Int var2294) (var909_toVarArgs/306330370 var2665 var2164)) ; Statement: r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15) 
(assert true)
(define-const var2070 var2294 (invoke/-1759464968 var2665 var2416!1 var2527)) ; Statement: $r3 = virtualinvoke r17.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r18) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var564_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), var1572_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var1572_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), var909_getMatchingAccessibleMethod/856695000=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var909_toVarArgs/306330370=([java.lang.reflect.Method, java.lang.Object[]], java.lang.Object[]), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object)}
; {var2294=java.lang.Object, var2416=r0, var1754=z0, var768=r2, var495=null_type, var3944=r12, var2063=r13, var564=java.util.Objects, var2066="object", var1572=org.apache.commons.lang3.ArrayUtils, var3537=r14, var2164=r15, var1715=r1, var3838=r16, var2493=java.lang.reflect.Method, var909=org.apache.commons.lang3.reflect.MethodUtils, var2665=r17, var2527=r18, var2070=$r3}
; {java.lang.Object=var2294, r0=var2416, z0=var1754, r2=var768, null_type=var495, r12=var3944, r13=var2063, java.util.Objects=var564, "object"=var2066, org.apache.commons.lang3.ArrayUtils=var1572, r14=var3537, r15=var2164, r1=var1715, r16=var3838, java.lang.reflect.Method=var2493, org.apache.commons.lang3.reflect.MethodUtils=var909, r17=var2665, r18=var2527, $r3=var2070}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	z0 := @parameter1: boolean;	r2 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.Object[];	r13 := @parameter4: java.lang.Class[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if z0 == 0 goto r16 = "No such accessible method: ";	r16 = "No such accessible method: ";	r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14);	if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15);	r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15);	$r3 = virtualinvoke r17.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r18);	return $r3
;block_num 4