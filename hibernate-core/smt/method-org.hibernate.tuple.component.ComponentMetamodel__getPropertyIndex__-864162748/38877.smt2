(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1279 0)
(declare-sort var360 0)
(declare-sort var2002 0)
(declare-sort var1519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyIndexes/744999620 (var1279) var2002)
(declare-fun var2002_get/1088891777 (var2002 var1519) var1519)
(declare-fun cast-from-String-to-var1519 (String) var1519)
(declare-fun cast-from-var1519-to-Int (var1519) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-var1279 var1279)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var417 var1279) ; Statement: r0 := @this: org.hibernate.tuple.component.ComponentMetamodel 
(assert (not (= var417 null-var1279)))
(declare-const var578 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var578 null-String)))
(define-const var1586 var2002 (propertyIndexes/744999620 var417)) ; Statement: $r2 = r0.<org.hibernate.tuple.component.ComponentMetamodel: java.util.Map propertyIndexes> 
(define-const var3427 var1519 (var2002_get/1088891777 var1586 (cast-from-String-to-var1519 var578))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3098 Int (cast-from-var1519-to-Int var3427)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (= var3098 null-Int))) ; Cond: r4 != null 
(assert true)
(define-const var2850 Int (intValue/-1815674922 var3098)) ; Statement: $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyIndexes/744999620=([org.hibernate.tuple.component.ComponentMetamodel], java.util.Map), var2002_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1519=([java.lang.String], java.lang.Object), cast-from-var1519-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var1279=org.hibernate.tuple.component.ComponentMetamodel, var417=r0, var578=r1, var360=null_type, var2002=java.util.Map, var1586=$r2, var1519=java.lang.Object, var3427=$r3, var3098=r4, var2850=$i0}
; {org.hibernate.tuple.component.ComponentMetamodel=var1279, r0=var417, r1=var578, null_type=var360, java.util.Map=var2002, $r2=var1586, java.lang.Object=var1519, $r3=var3427, r4=var3098, $i0=var2850}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tuple.component.ComponentMetamodel;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.tuple.component.ComponentMetamodel: java.util.Map propertyIndexes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	return $i0
;block_num 2