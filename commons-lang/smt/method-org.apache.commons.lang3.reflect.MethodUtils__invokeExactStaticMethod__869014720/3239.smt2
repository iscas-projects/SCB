(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var367 0)
(declare-sort var575 0)
(declare-sort var1008 0)
(declare-sort var1117 0)
(declare-sort var1942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1008_nullToEmpty/627354827 ((Array Int var575)) (Array Int var575))
(declare-fun var1008_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var1942_getAccessibleMethod/841246421 (ClassObject String (Array Int ClassObject)) var1117)
(declare-fun invoke/-1759464968 (var1117 var575 (Array Int var575)) var575)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__var575__ (Array Int var575))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1117 var1117)
(declare-const null-NullType var367)
(declare-const null-var575 var575)
(declare-const var24 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var24 null-ClassObject)))
(declare-const var1125 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1125 null-String)))
(declare-const var737 (Array Int var575)) ; Statement: r12 := @parameter2: java.lang.Object[] 
(assert (not (= var737 null-__Array__Int__var575__)))
(declare-const var2676 (Array Int ClassObject)) ; Statement: r13 := @parameter3: java.lang.Class[] 
(assert (not (= var2676 null-__Array__Int__ClassObject__)))
(define-const var2824 (Array Int var575) (var1008_nullToEmpty/627354827 var737)) ; Statement: r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12) 
(define-const var3789 (Array Int ClassObject) (var1008_nullToEmpty/1403447389 var2676)) ; Statement: r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13) 
(define-const var1945 var1117 (var1942_getAccessibleMethod/841246421 var24 var1125 var3789)) ; Statement: r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15) 
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r14) 
(assert (not (= var1945 null-var1117))) ; Cond: r2 != null 
(assert true)
(define-const var531 var575 (invoke/-1759464968 var1945 null-var575 var2824)) ; Statement: $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r14) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1008_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var1008_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var1942_getAccessibleMethod/841246421=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object)}
; {var24=r0, var1125=r1, var367=null_type, var575=java.lang.Object, var737=r12, var2676=r13, var1008=org.apache.commons.lang3.ArrayUtils, var2824=r14, var3789=r15, var1117=java.lang.reflect.Method, var1942=org.apache.commons.lang3.reflect.MethodUtils, var1945=r2, var531=$r3}
; {r0=var24, r1=var1125, null_type=var367, java.lang.Object=var575, r12=var737, r13=var2676, org.apache.commons.lang3.ArrayUtils=var1008, r14=var2824, r15=var3789, java.lang.reflect.Method=var1117, org.apache.commons.lang3.reflect.MethodUtils=var1942, r2=var1945, $r3=var531}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.Object[];	r13 := @parameter3: java.lang.Class[];	r14 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r12);	r15 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r13);	r2 = staticinvoke <org.apache.commons.lang3.reflect.MethodUtils: java.lang.reflect.Method getAccessibleMethod(java.lang.Class,java.lang.String,java.lang.Class[])>(r0, r1, r15);	if r2 != null goto $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r14);	$r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(null, r14);	return $r3
;block_num 2