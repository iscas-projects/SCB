(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var33 0)
(declare-sort var678 0)
(declare-sort var2311 0)
(declare-sort var199 0)
(declare-sort var2404 0)
(declare-sort var1471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2404!class ClassObject)
(declare-const var1471!class ClassObject)
(declare-fun var678_getAnnotation/77181240 (var678 ClassObject) var199)
(declare-fun cast-from-var199-to-var2404 (var199) var2404)
(declare-fun cast-from-var199-to-var1471 (var199) var1471)
(declare-const null-var33 var33)
(declare-const null-var678 var678)
(declare-const null-var2311 var2311)
(declare-const null-var2404 var2404)
(declare-const null-var1471 var1471)
(declare-const var1064 var33) ; Statement: r6 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var1064 null-var33)))
(declare-const var3924 var678) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XAnnotatedElement 
(assert (not (= var3924 null-var678)))
(define-const var3852 var2311 null-var2311) ; Statement: r15 = null 
(define-const var1563 var2311 null-var2311) ; Statement: r16 = null 
(define-const var3377 var2311 null-var2311) ; Statement: r17 = null 
(define-const var136 var199 (var678_getAnnotation/77181240 var3924 var2404!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;") 
(define-const var550 var2404 (cast-from-var199-to-var2404 var136)) ; Statement: r2 = (org.hibernate.annotations.AccessType) $r1 
 ; Statement: if r2 == null goto $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(assert (= var550 null-var2404)) ; Cond: r2 == null 
(define-const var3042 var199 (var678_getAnnotation/77181240 var3924 var1471!class)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(define-const var735 var1471 (cast-from-var199-to-var1471 var3042)) ; Statement: $r14 = (javax.persistence.Access) $r3 
 ; Statement: if $r14 == null goto (branch) 
(assert (= var735 null-var1471)) ; Cond: $r14 == null 
 ; Statement: if r16 == null goto (branch) 
(assert (= var1563 null-var2311)) ; Cond: r16 == null 
 ; Statement: if r16 == null goto (branch) 
(assert (= var1563 null-var2311)) ; Cond: r16 == null 
 ; Statement: if r17 == null goto return r15 
(assert (= var3377 null-var2311)) ; Cond: r17 == null 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var678_getAnnotation/77181240=([org.hibernate.annotations.common.reflection.XAnnotatedElement, java.lang.Class], java.lang.annotation.Annotation), cast-from-var199-to-var2404=([java.lang.annotation.Annotation], org.hibernate.annotations.AccessType), cast-from-var199-to-var1471=([java.lang.annotation.Annotation], javax.persistence.Access)}
; {var33=org.hibernate.cfg.annotations.EntityBinder, var1064=r6, var678=org.hibernate.annotations.common.reflection.XAnnotatedElement, var3924=r0, var2311=org.hibernate.cfg.AccessType, var3852=r15, var1563=r16, var3377=r17, var199=java.lang.annotation.Annotation, var2404=org.hibernate.annotations.AccessType, var136=$r1, var550=r2, var1471=javax.persistence.Access, var3042=$r3, var735=$r14}
; {org.hibernate.cfg.annotations.EntityBinder=var33, r6=var1064, org.hibernate.annotations.common.reflection.XAnnotatedElement=var678, r0=var3924, org.hibernate.cfg.AccessType=var2311, r15=var3852, r16=var1563, r17=var3377, java.lang.annotation.Annotation=var199, org.hibernate.annotations.AccessType=var2404, $r1=var136, r2=var550, javax.persistence.Access=var1471, $r3=var3042, $r14=var735}
;seq 
;cnt {}
;stmts r6 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.annotations.common.reflection.XAnnotatedElement;	r15 = null;	r16 = null;	r17 = null;	$r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;");	r2 = (org.hibernate.annotations.AccessType) $r1;	if r2 == null goto $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r14 = (javax.persistence.Access) $r3;	if $r14 == null goto (branch);	if r16 == null goto (branch);	if r16 == null goto (branch);	if r17 == null goto return r15;	return r15
;block_num 6