(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2442 0)
(declare-sort var1605 0)
(declare-sort var2020 0)
(declare-sort var3056 0)
(declare-sort var2116 0)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2116!class ClassObject)
(declare-const var1916!class ClassObject)
(declare-fun defaultAccess/1216992018 (var2442) var1605)
(declare-fun property/1216992018 (var2442) var2020)
(declare-fun var2020_getAnnotation/894663943 (var2020 ClassObject) var3056)
(declare-fun cast-from-var3056-to-var2116 (var3056) var2116)
(declare-fun cast-from-var3056-to-var1916 (var3056) var1916)
(declare-const null-var2442 var2442)
(declare-const var1605-DEFAULT var1605)
(declare-const null-var2116 var2116)
(declare-const null-var1916 var1916)
(declare-const var188 var2442) ; Statement: r0 := @this: org.hibernate.cfg.PropertyInferredData 
(assert (not (= var188 null-var2442)))
(define-const var2898 var1605 (defaultAccess/1216992018 var188)) ; Statement: r17 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.cfg.AccessType defaultAccess> 
(define-const var2698 var1605 var1605-DEFAULT) ; Statement: r18 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(define-const var2878 var1605 var1605-DEFAULT) ; Statement: r19 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(define-const var1703 var2020 (property/1216992018 var188)) ; Statement: $r1 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var2360 var3056 (var2020_getAnnotation/894663943 var1703 var2116!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;") 
(define-const var105 var2116 (cast-from-var3056-to-var2116 var2360)) ; Statement: r3 = (org.hibernate.annotations.AccessType) $r2 
 ; Statement: if r3 == null goto $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(assert (= var105 null-var2116)) ; Cond: r3 == null 
(define-const var1884 var2020 (property/1216992018 var188)) ; Statement: $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var3580 var3056 (var2020_getAnnotation/894663943 var1884 var1916!class)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(define-const var705 var1916 (cast-from-var3056-to-var1916 var3580)) ; Statement: $r16 = (javax.persistence.Access) $r5 
 ; Statement: if $r16 == null goto $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (= var705 null-var1916)) ; Cond: $r16 == null 
(define-const var3892 var1605 var1605-DEFAULT) ; Statement: $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
 ; Statement: if r18 == $r6 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (= var2698 var3892)) ; Cond: r18 == $r6 
(define-const var1255 var1605 var1605-DEFAULT) ; Statement: $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
 ; Statement: if r18 == $r20 goto $r7 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
(assert (= var2698 var1255)) ; Cond: r18 == $r20 
(define-const var2117 var1605 var1605-DEFAULT) ; Statement: $r7 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT> 
 ; Statement: if r19 == $r7 goto return r17 
(assert (= var2878 var2117)) ; Cond: r19 == $r7 
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultAccess/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.cfg.AccessType), property/1216992018=([org.hibernate.cfg.PropertyInferredData], org.hibernate.annotations.common.reflection.XProperty), var2020_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3056-to-var2116=([java.lang.annotation.Annotation], org.hibernate.annotations.AccessType), cast-from-var3056-to-var1916=([java.lang.annotation.Annotation], javax.persistence.Access)}
; {var2442=org.hibernate.cfg.PropertyInferredData, var188=r0, var1605=org.hibernate.cfg.AccessType, var2898=r17, var2698=r18, var2878=r19, var2020=org.hibernate.annotations.common.reflection.XProperty, var1703=$r1, var3056=java.lang.annotation.Annotation, var2116=org.hibernate.annotations.AccessType, var2360=$r2, var105=r3, var1884=$r4, var1916=javax.persistence.Access, var3580=$r5, var705=$r16, var3892=$r6, var1255=$r20, var2117=$r7}
; {org.hibernate.cfg.PropertyInferredData=var2442, r0=var188, org.hibernate.cfg.AccessType=var1605, r17=var2898, r18=var2698, r19=var2878, org.hibernate.annotations.common.reflection.XProperty=var2020, $r1=var1703, java.lang.annotation.Annotation=var3056, org.hibernate.annotations.AccessType=var2116, $r2=var2360, r3=var105, $r4=var1884, javax.persistence.Access=var1916, $r5=var3580, $r16=var705, $r6=var3892, $r20=var1255, $r7=var2117}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cfg.PropertyInferredData;	r17 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.cfg.AccessType defaultAccess>;	r18 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	r19 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r1 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;");	r3 = (org.hibernate.annotations.AccessType) $r2;	if r3 == null goto $r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r4 = r0.<org.hibernate.cfg.PropertyInferredData: org.hibernate.annotations.common.reflection.XProperty property>;	$r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r16 = (javax.persistence.Access) $r5;	if $r16 == null goto $r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r6 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r18 == $r6 goto $r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r20 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r18 == $r20 goto $r7 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	$r7 = <org.hibernate.cfg.AccessType: org.hibernate.cfg.AccessType DEFAULT>;	if r19 == $r7 goto return r17;	return r17
;block_num 6