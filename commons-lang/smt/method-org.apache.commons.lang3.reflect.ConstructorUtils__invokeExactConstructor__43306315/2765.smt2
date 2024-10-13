(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1090 0)
(declare-sort var2100 0)
(declare-sort var1529 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2100_nullToEmpty/627354827 ((Array Int var1090)) (Array Int var1090))
(declare-fun var2100_nullToEmpty/1403447389 ((Array Int ClassObject)) (Array Int ClassObject))
(declare-fun var2209_getAccessibleConstructor/-450938597 (ClassObject (Array Int ClassObject)) var1529)
(declare-fun newInstance/-156294837 (var1529 (Array Int var1090)) var1090)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var1090__ (Array Int var1090))
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1529 var1529)
(declare-const var2549 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2549 null-ClassObject)))
(declare-const var2164 (Array Int var1090)) ; Statement: r9 := @parameter1: java.lang.Object[] 
(assert (not (= var2164 null-__Array__Int__var1090__)))
(declare-const var2386 (Array Int ClassObject)) ; Statement: r10 := @parameter2: java.lang.Class[] 
(assert (not (= var2386 null-__Array__Int__ClassObject__)))
(define-const var639 (Array Int var1090) (var2100_nullToEmpty/627354827 var2164)) ; Statement: r11 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r9) 
(define-const var2301 (Array Int ClassObject) (var2100_nullToEmpty/1403447389 var2386)) ; Statement: r12 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r10) 
(define-const var3714 var1529 (var2209_getAccessibleConstructor/-450938597 var2549 var2301)) ; Statement: r1 = staticinvoke <org.apache.commons.lang3.reflect.ConstructorUtils: java.lang.reflect.Constructor getAccessibleConstructor(java.lang.Class,java.lang.Class[])>(r0, r12) 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r11) 
(assert (not (= var3714 null-var1529))) ; Cond: r1 != null 
(assert true)
(define-const var435 var1090 (newInstance/-156294837 var3714 var639)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r11) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2100_nullToEmpty/627354827=([java.lang.Object[]], java.lang.Object[]), var2100_nullToEmpty/1403447389=([java.lang.Class[]], java.lang.Class[]), var2209_getAccessibleConstructor/-450938597=([java.lang.Class, java.lang.Class[]], java.lang.reflect.Constructor), newInstance/-156294837=([java.lang.reflect.Constructor, java.lang.Object[]], java.lang.Object)}
; {var2549=r0, var1090=java.lang.Object, var2164=r9, var2386=r10, var2100=org.apache.commons.lang3.ArrayUtils, var639=r11, var2301=r12, var1529=java.lang.reflect.Constructor, var2209=org.apache.commons.lang3.reflect.ConstructorUtils, var3714=r1, var435=$r2}
; {r0=var2549, java.lang.Object=var1090, r9=var2164, r10=var2386, org.apache.commons.lang3.ArrayUtils=var2100, r11=var639, r12=var2301, java.lang.reflect.Constructor=var1529, org.apache.commons.lang3.reflect.ConstructorUtils=var2209, r1=var3714, $r2=var435}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r9 := @parameter1: java.lang.Object[];	r10 := @parameter2: java.lang.Class[];	r11 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Object[] nullToEmpty(java.lang.Object[])>(r9);	r12 = staticinvoke <org.apache.commons.lang3.ArrayUtils: java.lang.Class[] nullToEmpty(java.lang.Class[])>(r10);	r1 = staticinvoke <org.apache.commons.lang3.reflect.ConstructorUtils: java.lang.reflect.Constructor getAccessibleConstructor(java.lang.Class,java.lang.Class[])>(r0, r12);	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r11);	$r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r11);	return $r2
;block_num 2