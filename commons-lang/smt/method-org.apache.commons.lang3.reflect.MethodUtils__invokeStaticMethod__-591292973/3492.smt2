(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort var2183 0)
(declare-sort var3208 0)
(declare-sort var1969 0)
(declare-sort var869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3208_nullToEmpty/627354827 ((Array Int var2183)) (Array Int var2183))
(declare-fun var3208_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var869_getMatchingAccessibleMethod/856695000 (ClassObject String (Array Int ClassObject)) var1969)
(declare-fun var869_toVarArgs/306330370 (var1969 (Array Int var2183)) (Array Int var2183))
(declare-fun invoke/-1759464968 (var1969 var2183 (Array Int var2183)) var2183)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__var2183__ (Array Int var2183))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1969 var1969)
(declare-const null-NullType var1055)
(declare-const null-var2183 var2183)
(declare-const var3578 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3578 null-ClassObject)))
(declare-const var3053 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3053 null-String)))
(declare-const var658 (Array Int var2183)) ; Statement: r12 := @parameter2: java.lang.Object[] 
(assert (not (= var658 null-__Array__Int__var2183__)))
(declare-const var2150 (Array Int ClassObject)) ; Statement: r13 := @parameter3: java.lang.Class[] 
(assert (not (= var2150 null-__Array__Int__ClassObject__)))
(define-const var1521 (Array Int var2183) (var3208_nullToEmpty/627354827 var658)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(define-const var1275 (Array Int ClassObject) (var3208_nullToEmpty/1403447389 var2150)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var948 var1969 (var869_getMatchingAccessibleMethod/856695000 var3578 var3053 var1275)) ; Statement: r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15) 
 ; Statement: if r2 != null goto r16 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r2, r14) 
(assert (not (= var948 null-var1969))) ; Cond: r2 != null 
(define-const var2660 (Array Int var2183) (var869_toVarArgs/306330370 var948 var1521)) ; Statement: r16 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r2, r14) 
(assert true)
(define-const var2352 var2183 (invoke/-1759464968 var948 null-var2183 var2660)) ; Statement: $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r16) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3208_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var3208_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var869_getMatchingAccessibleMethod/856695000=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), var869_toVarArgs/306330370=([java.lang.reflect.Method, java.lang.Object[]], java.lang.Object[]), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object)}
; {var3578=r0, var3053=r1, var1055=null_type, var2183=java.lang.Object, var658=r12, var2150=r13, var3208=org.apache.commons.lang3.ArrayUtils, var1521=r14, var1275=r15, var1969=java.lang.reflect.Method, var869=org.apache.commons.lang3.reflect.MethodUtils, var948=r2, var2660=r16, var2352=$r3}
; {r0=var3578, r1=var3053, null_type=var1055, java.lang.Object=var2183, r12=var658, r13=var2150, org.apache.commons.lang3.ArrayUtils=var3208, r14=var1521, r15=var1275, java.lang.reflect.Method=var1969, org.apache.commons.lang3.reflect.MethodUtils=var869, r2=var948, r16=var2660, $r3=var2352}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.Object[];	r13 := @parameter3: java.lang.Class[];	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getMatchingAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15);	if r2 != null goto r16 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r2, r14);	r16 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.Object[] toVarArgs(java.lang.reflect.Method,java.lang.Object[])>(r2, r14);	$r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r16);	return $r3
;block_num 2