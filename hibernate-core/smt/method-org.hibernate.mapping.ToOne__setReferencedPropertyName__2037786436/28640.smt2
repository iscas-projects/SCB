(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2528 0)
(declare-sort var1179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun referencedPropertyName/311090949 (var2528) String)
(declare-const null-var2528 var2528)
(declare-const null-String String)
(declare-const var903 var2528) ; Statement: r0 := @this: org.hibernate.mapping.ToOne 
(assert (not (= var903 null-var2528)))
(declare-const var565 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var565 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var565 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var831 String (intern/-1326102057 var565)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var903!1 var2528)
(assert (not (= var903!1 null-var2528)))
(assert (= (referencedPropertyName/311090949 var903!1) var831)) ; Statement: r0.<org.hibernate.mapping.ToOne: java.lang.String referencedPropertyName> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), referencedPropertyName/311090949=([org.hibernate.mapping.ToOne], java.lang.String)}
; {var2528=org.hibernate.mapping.ToOne, var903=r0, var565=r1, var1179=null_type, var831=$r2}
; {org.hibernate.mapping.ToOne=var2528, r0=var903, r1=var565, null_type=var1179, $r2=var831}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.ToOne;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.ToOne: java.lang.String referencedPropertyName> = $r2;	return
;block_num 3