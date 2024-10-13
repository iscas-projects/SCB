(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort var1728 0)
(declare-sort var2427 0)
(declare-sort var2188 0)
(declare-sort var1265 0)
(declare-sort var1018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1265!class ClassObject)
(declare-const var1018!class ClassObject)
(declare-fun defaultAccess/1216992018 (var1387) var1728)
(declare-fun property/1216992018 (var1387) var2427)
(declare-fun var2427_getAnnotation/894663943 (var2427 ClassObject) var2188)
(declare-fun cast-from-var2188-to-var1265 (var2188) var1265)
(declare-fun cast-from-var2188-to-var1018 (var2188) var1018)
(declare-const null-var1387 var1387)
(declare-const var1728-DEFAULT var1728)
(declare-const null-var1265 var1265)
(declare-const null-var1018 var1018)
(declare-const var3253 var1387) ; Statement: r0 := @this: org.hibernate.cfg.PropertyInferredData 
(assert (not (= var3253 null-var1387)))
(define-const var1445 var1728 (defaultAccess/1216992018 var3253)) ; Statement: r17 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.cfg.AccessType defaultAccess> 
(define-const var3391 var1728 var1728-DEFAULT) ; Statement: r18 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(define-const var1327 var1728 var1728-DEFAULT) ; Statement: r19 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(define-const var2978 var2427 (property/1216992018 var3253)) ; Statement: $r1 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var533 var2188 (var2427_getAnnotation/894663943 var2978 var1265!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;") 
(define-const var1047 var1265 (cast-from-var2188-to-var1265 var533)) ; Statement: r3 = (org.hibernate.annotations.AccessType) $r2 
 ; Statement: if r3 == null goto $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(assert (= var1047 null-var1265)) ; Cond: r3 == null 
(define-const var1870 var2427 (property/1216992018 var3253)) ; Statement: $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var1556 var2188 (var2427_getAnnotation/894663943 var1870 var1018!class)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(define-const var1486 var1018 (cast-from-var2188-to-var1018 var1556)) ; Statement: $r16 = (javax.persistence.Access) $r5 
 ; Statement: if $r16 == null goto $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (= var1486 null-var1018)) ; Cond: $r16 == null 
(define-const var3838 var1728 var1728-DEFAULT) ; Statement: $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
 ; Statement: if r18 == $r6 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (= var3391 var3838)) ; Cond: r18 == $r6 
(define-const var993 var1728 var1728-DEFAULT) ; Statement: $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
 ; Statement: if r18 == $r20 goto $r7 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (not (= var3391 var993))) ; Negate: Cond: r18 == $r20  
(define-const var1445!1 var1728 var3391) ; Statement: r17 = r18 
 ; Statement: goto [?= return r17] 
(assert true) ; Non Conditional
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultAccess/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.cfg.AccessType), property/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.annotations.common.reflection.XProperty), var2427_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var2188-to-var1265=([java.lang.annotation.Annotation], org.hibernate.annotations.AccessType), cast-from-var2188-to-var1018=([java.lang.annotation.Annotation], javax.persistence.Access)}
; {var1387=org.hibernate.cfg.PropertyInferredData, var3253=r0, var1728=org.hibernate.cfg.AccessType, var1445=r17, var3391=r18, var1327=r19, var2427=org.hibernate.annotations.common.reflection.XProperty, var2978=$r1, var2188=java.lang.annotation.Annotation, var1265=org.hibernate.annotations.AccessType, var533=$r2, var1047=r3, var1870=$r4, var1018=javax.persistence.Access, var1556=$r5, var1486=$r16, var3838=$r6, var993=$r20}
; {org.hibernate.cfg.PropertyInferredData=var1387, r0=var3253, org.hibernate.cfg.AccessType=var1728, r17=var1445, r18=var3391, r19=var1327, org.hibernate.annotations.common.reflection.XProperty=var2427, $r1=var2978, java.lang.annotation.Annotation=var2188, org.hibernate.annotations.AccessType=var1265, $r2=var533, r3=var1047, $r4=var1870, javax.persistence.Access=var1018, $r5=var1556, $r16=var1486, $r6=var3838, $r20=var993}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cfg.PropertyInferredData;	r17 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.cfg.AccessType defaultAccess>;	r18 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	r19 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r1 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;");	r3 = (org.hibernate.annotations.AccessType) $r2;	if r3 == null goto $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r16 = (javax.persistence.Access) $r5;	if $r16 == null goto $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r18 == $r6 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r18 == $r20 goto $r7 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	r17 = r18;	goto [?= return r17];	return r17
;block_num 6