(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3127 0)
(declare-sort var3587 0)
(declare-sort var2954 0)
(declare-sort var2491 0)
(declare-sort var1359 0)
(declare-sort var2351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2954_requireNonNull/1378936425 (var3127 String) var3127)
(declare-fun var2491_nullToEmpty/627354827 ((Array Int var3127)) (Array Int var3127))
(declare-fun var2491_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun getClass/1258963082 (var3127) ClassObject)
(declare-fun var2351_getAccessibleMethod/841246421 (ClassObject String (Array Int ClassObject)) var1359)
(declare-fun invoke/-1759464968 (var1359 var3127 (Array Int var3127)) var3127)
(declare-const null-var3127 var3127)
(declare-const null-String String)
(declare-const null-__Array__Int__var3127__ (Array Int var3127))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1359 var1359)
(declare-const var3700 var3127) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3700 null-var3127)))
(declare-const var1456 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1456 null-String)))
(declare-const var498 (Array Int var3127)) ; Statement: r13 := @parameter2: java.lang.Object[] 
(assert (not (= var498 null-__Array__Int__var3127__)))
(declare-const var1977 (Array Int ClassObject)) ; Statement: r14 := @parameter3: java.lang.Class[] 
(assert (not (= var1977 null-__Array__Int__ClassObject__)))
;(assert (var2954_requireNonNull/1378936425 var3700 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var3700!1 var3127)
(declare-const var965 String)
(define-const var1635 (Array Int var3127) (var2491_nullToEmpty/627354827 var498)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r13) 
(define-const var2850 (Array Int ClassObject) (var2491_nullToEmpty/1403447389 var1977)) ; Statement: r16 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r14) 
(assert true)
(define-const var3679 ClassObject (getClass/1258963082 var3700!1)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var3069 var1359 (var2351_getAccessibleMethod/841246421 var3679 var1456 var2850)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r16) 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r15) 
(assert (not (= var3069 null-var1359))) ; Cond: r3 != null 
(assert true)
(define-const var3988 var3127 (invoke/-1759464968 var3069 var3700!1 var1635)) ; Statement: $r4 = virtualinvoke r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r15) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2954_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), var2491_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var2491_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), getClass/1258963082=([java.lang.Object], java.lang.Class), var2351_getAccessibleMethod/841246421=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object)}
; {var3127=java.lang.Object, var3700=r0, var1456=r2, var3587=null_type, var498=r13, var1977=r14, var2954=java.util.Objects, var965="object", var2491=org.apache.commons.lang3.ArrayUtils, var1635=r15, var2850=r16, var3679=r1, var1359=java.lang.reflect.Method, var2351=org.apache.commons.lang3.reflect.MethodUtils, var3069=r3, var3988=$r4}
; {java.lang.Object=var3127, r0=var3700, r2=var1456, null_type=var3587, r13=var498, r14=var1977, java.util.Objects=var2954, "object"=var965, org.apache.commons.lang3.ArrayUtils=var2491, r15=var1635, r16=var2850, r1=var3679, java.lang.reflect.Method=var1359, org.apache.commons.lang3.reflect.MethodUtils=var2351, r3=var3069, $r4=var3988}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.Object[];	r14 := @parameter3: java.lang.Class[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r13);	r16 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r14);	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r3 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r16);	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r15);	$r4 = virtualinvoke r3.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r15);	return $r4
;block_num 2