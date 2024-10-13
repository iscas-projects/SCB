(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var1315 var1315)
(declare-const null-ClassObject ClassObject)
(declare-const var174 var1315) ; Statement: r4 := @this: org.junit.internal.ComparisonCriteria 
(assert (not (= var174 null-var1315)))
(declare-const var2850 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2850 null-ClassObject)))
(assert true)
(define-const var3025 ClassObject (getComponentType/1960034130 var2850)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert true)
(define-const var752 Bool (isArray/1369458484 var3025)) ; Statement: $z0 = virtualinvoke r1.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert (= (ite var752 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3251 String (getName/-1958580599 var3025)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getComponentType/1960034130=([java.lang.Class], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var1315=org.junit.internal.ComparisonCriteria, var174=r4, var2850=r0, var3025=r1, var752=$z0, var3251=$r2}
; {org.junit.internal.ComparisonCriteria=var1315, r4=var174, r0=var2850, r1=var3025, $z0=var752, $r2=var3251}
;seq 
;cnt {}
;stmts r4 := @this: org.junit.internal.ComparisonCriteria;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>();	$z0 = virtualinvoke r1.<java.lang.Class: boolean isArray()>();	if $z0 == 0 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	return $r2
;block_num 2