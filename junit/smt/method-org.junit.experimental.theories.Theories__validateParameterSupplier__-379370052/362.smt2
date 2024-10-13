(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort var3094 0)
(declare-sort var1300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConstructors/-1160885883 (ClassObject) (Array Int var1300))
(declare-fun getLength-Arr-var1300-1 ((Array Int var1300)) Int)
(declare-fun getParameterTypes/938597008 (var1300) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-const null-var3405 var3405)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3094 var3094)
(declare-const var1754 var3405) ; Statement: r20 := @this: org.junit.experimental.theories.Theories 
(assert (not (= var1754 null-var3405)))
(declare-const var2913 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2913 null-ClassObject)))
(declare-const var1477 var3094) ; Statement: r5 := @parameter1: java.util.List 
(assert (not (= var1477 null-var3094)))
(assert true)
(define-const var612 (Array Int var1300) (getConstructors/-1160885883 var2913)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>() 
(define-const var3299 Int (getLength-Arr-var1300-1 var612)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 == 1 goto $r2 = r1[0] 
(assert (= var3299 1)) ; Cond: $i0 == 1 
(define-const var3828 var1300 (select var612 0)) ; Statement: $r2 = r1[0] 
(assert true)
(define-const var2176 (Array Int ClassObject) (getParameterTypes/938597008 var3828)) ; Statement: r3 = virtualinvoke $r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>() 
(define-const var3266 Int (getLength-Arr-ClassObject-1 var2176)) ; Statement: $i1 = lengthof r3 
 ; Statement: if $i1 == 0 goto return 
(assert (= var3266 0)) ; Cond: $i1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getConstructors/-1160885883=([java.lang.Class], java.lang.reflect.Constructor[]), getLength-Arr-var1300-1=([java.lang.reflect.Constructor[]], int), getParameterTypes/938597008=([java.lang.reflect.Constructor], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int)}
; {var3405=org.junit.experimental.theories.Theories, var1754=r20, var2913=r0, var3094=java.util.List, var1477=r5, var1300=java.lang.reflect.Constructor, var612=r1, var3299=$i0, var3828=$r2, var2176=r3, var3266=$i1}
; {org.junit.experimental.theories.Theories=var3405, r20=var1754, r0=var2913, java.util.List=var3094, r5=var1477, java.lang.reflect.Constructor=var1300, r1=var612, $i0=var3299, $r2=var3828, r3=var2176, $i1=var3266}
;seq 
;cnt {}
;stmts r20 := @this: org.junit.experimental.theories.Theories;	r0 := @parameter0: java.lang.Class;	r5 := @parameter1: java.util.List;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>();	$i0 = lengthof r1;	if $i0 == 1 goto $r2 = r1[0];	$r2 = r1[0];	r3 = virtualinvoke $r2.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r3;	if $i1 == 0 goto return;	return
;block_num 3