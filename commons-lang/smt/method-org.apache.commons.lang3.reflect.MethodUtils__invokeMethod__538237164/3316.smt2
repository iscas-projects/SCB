(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3281 0)
(declare-sort var611 0)
(declare-sort var3800 0)
(declare-sort var600 0)
(declare-sort var89 0)
(declare-sort var650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3800_requireNonNull/1378936425 (var3281 String) var3281)
(declare-fun var600_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var600_nullToEmpty/627354827 ((Array Int var3281)) (Array Int var3281))
(declare-fun getClass/1258963082 (var3281) ClassObject)
(declare-fun var650_getMatchingMethod/737181742 (ClassObject String (Array Int ClassObject)) var89)
(declare-fun var650_toVarArgs/306330370 (var89 (Array Int var3281)) (Array Int var3281))
(declare-fun invoke/-1759464968 (var89 var3281 (Array Int var3281)) var3281)
(declare-const null-var3281 var3281)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-__Array__Int__var3281__ (Array Int var3281))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var89 var89)
(declare-const var262 var3281) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var262 null-var3281)))
(declare-const var2928 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2928 null-Bool)))
(declare-const var3357 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3357 null-String)))
(declare-const var2868 (Array Int var3281)) ; Statement: r12 := @parameter3: java.lang.Object[] 
(assert (not (= var2868 null-__Array__Int__var3281__)))
(declare-const var1898 (Array Int ClassObject)) ; Statement: r13 := @parameter4: java.lang.Class[] 
(assert (not (= var1898 null-__Array__Int__ClassObject__)))
;(assert (var3800_requireNonNull/1378936425 var262 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var262!1 var3281)
(declare-const var2926 String)
(define-const var2417 (Array Int ClassObject) (var600_nullToEmpty/1403447389 var1898)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var2122 (Array Int var3281) (var600_nullToEmpty/627354827 var2868)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(assert true)
(define-const var1335 ClassObject (getClass/1258963082 var262!1)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if z0 == 0 goto r16 = "No such accessible method: " 
(assert (not (= (ite var2928 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var820 String "No such method: ") ; Statement: r16 = "No such method: " 
(define-const var3423 var89 (var650_getMatchingMethod/737181742 var1335 var3357 var2417)) ; Statement: r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14) 
 ; Statement: if r17 == null goto (branch) 
(assert (= var3423 null-var89)) ; Cond: r17 == null 
 ; Statement: if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15) 
(assert (not (= var3423 null-var89))) ; Cond: r17 != null 
(define-const var206 (Array Int var3281) (var650_toVarArgs/306330370 var3423 var2122)) ; Statement: r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15) 
(assert true)
(define-const var3244 var3281 (invoke/-1759464968 var3423 var262!1 var206)) ; Statement: $r3 = virtualinvoke r17.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r18) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3800_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), var600_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var600_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), var650_getMatchingMethod/737181742=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var650_toVarArgs/306330370=([java.lang.reflect.Method, java.lang.Object[]], java.lang.Object[]), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object)}
; {var3281=java.lang.Object, var262=r0, var2928=z0, var3357=r2, var611=null_type, var2868=r12, var1898=r13, var3800=java.util.Objects, var2926="object", var600=org.apache.commons.lang3.ArrayUtils, var2417=r14, var2122=r15, var1335=r1, var820=r16, var89=java.lang.reflect.Method, var650=org.apache.commons.lang3.reflect.MethodUtils, var3423=r17, var206=r18, var3244=$r3}
; {java.lang.Object=var3281, r0=var262, z0=var2928, r2=var3357, null_type=var611, r12=var2868, r13=var1898, java.util.Objects=var3800, "object"=var2926, org.apache.commons.lang3.ArrayUtils=var600, r14=var2417, r15=var2122, r1=var1335, r16=var820, java.lang.reflect.Method=var89, org.apache.commons.lang3.reflect.MethodUtils=var650, r17=var3423, r18=var206, $r3=var3244}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	z0 := @parameter1: boolean;	r2 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.Object[];	r13 := @parameter4: java.lang.Class[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if z0 == 0 goto r16 = "No such accessible method: ";	r16 = "No such method: ";	r17 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r1, r2, r14);	if r17 == null goto (branch);	if r17 != null goto r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15);	r18 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r17, r15);	$r3 = virtualinvoke r17.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, r18);	return $r3
;block_num 4