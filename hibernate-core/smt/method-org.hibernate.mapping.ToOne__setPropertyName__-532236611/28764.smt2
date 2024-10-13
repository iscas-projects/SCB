(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3247 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun propertyName/311090949 (var3247) String)
(declare-const null-var3247 var3247)
(declare-const null-String String)
(declare-const var3783 var3247) ; Statement: r0 := @this: org.hibernate.mapping.ToOne 
(assert (not (= var3783 null-var3247)))
(declare-const var3968 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3968 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var3968 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2503 String (intern/-1326102057 var3968)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var3783!1 var3247)
(assert (not (= var3783!1 null-var3247)))
(assert (= (propertyName/311090949 var3783!1) var2503)) ; Statement: r0.<org.hibernate.mapping.ToOne: java.lang.String propertyName> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), propertyName/311090949=([org.hibernate.mapping.ToOne], java.lang.String)}
; {var3247=org.hibernate.mapping.ToOne, var3783=r0, var3968=r1, var2736=null_type, var2503=$r2}
; {org.hibernate.mapping.ToOne=var3247, r0=var3783, r1=var3968, null_type=var2736, $r2=var2503}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.ToOne;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.ToOne: java.lang.String propertyName> = $r2;	return
;block_num 3