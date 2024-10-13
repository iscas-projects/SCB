(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var245 0)
(declare-sort var3374 0)
(declare-sort var1260 0)
(declare-sort var2092 0)
(declare-sort var267 0)
(declare-sort var1210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var267!class ClassObject)
(declare-const var1210!class ClassObject)
(declare-fun var3374_getAnnotation/77181240 (var3374 ClassObject) var2092)
(declare-fun cast-from-var2092-to-var267 (var2092) var267)
(declare-fun cast-from-var2092-to-var1210 (var2092) var1210)
(declare-const null-var245 var245)
(declare-const null-var3374 var3374)
(declare-const null-var1260 var1260)
(declare-const null-var267 var267)
(declare-const null-var1210 var1210)
(declare-const var3750 var245) ; Statement: r6 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var3750 null-var245)))
(declare-const var1572 var3374) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XAnnotatedElement 
(assert (not (= var1572 null-var3374)))
(define-const var3304 var1260 null-var1260) ; Statement: r15 = null 
(define-const var2848 var1260 null-var1260) ; Statement: r16 = null 
(define-const var1157 var1260 null-var1260) ; Statement: r17 = null 
(define-const var3818 var2092 (var3374_getAnnotation/77181240 var1572 var267!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;") 
(define-const var161 var267 (cast-from-var2092-to-var267 var3818)) ; Statement: r2 = (org.hibernate.annotations.AccessType) $r1 
 ; Statement: if r2 == null goto $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(assert (= var161 null-var267)) ; Cond: r2 == null 
(define-const var3289 var2092 (var3374_getAnnotation/77181240 var1572 var1210!class)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(define-const var2234 var1210 (cast-from-var2092-to-var1210 var3289)) ; Statement: $r14 = (javax.persistence.Access) $r3 
 ; Statement: if $r14 == null goto (branch) 
(assert (= var2234 null-var1210)) ; Cond: $r14 == null 
 ; Statement: if r16 == null goto (branch) 
(assert (= var2848 null-var1260)) ; Cond: r16 == null 
 ; Statement: if r16 == null goto (branch) 
(assert (not (= var2848 null-var1260))) ; Negate: Cond: r16 == null  
(define-const var3304!1 var1260 var2848) ; Statement: r15 = r16 
 ; Statement: goto [?= return r15] 
(assert true) ; Non Conditional
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3374_getAnnotation/77181240=([org.hibernate.annotations.common.reflection.XAnnotatedElement, java.lang.Class], java.lang.annotation.Annotation), cast-from-var2092-to-var267=([java.lang.annotation.Annotation], org.hibernate.annotations.AccessType), cast-from-var2092-to-var1210=([java.lang.annotation.Annotation], javax.persistence.Access)}
; {var245=org.hibernate.cfg.annotations.EntityBinder, var3750=r6, var3374=org.hibernate.annotations.common.reflection.XAnnotatedElement, var1572=r0, var1260=org.hibernate.cfg.AccessType, var3304=r15, var2848=r16, var1157=r17, var2092=java.lang.annotation.Annotation, var267=org.hibernate.annotations.AccessType, var3818=$r1, var161=r2, var1210=javax.persistence.Access, var3289=$r3, var2234=$r14}
; {org.hibernate.cfg.annotations.EntityBinder=var245, r6=var3750, org.hibernate.annotations.common.reflection.XAnnotatedElement=var3374, r0=var1572, org.hibernate.cfg.AccessType=var1260, r15=var3304, r16=var2848, r17=var1157, java.lang.annotation.Annotation=var2092, org.hibernate.annotations.AccessType=var267, $r1=var3818, r2=var161, javax.persistence.Access=var1210, $r3=var3289, $r14=var2234}
;seq 
;cnt {}
;stmts r6 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.annotations.common.reflection.XAnnotatedElement;	r15 = null;	r16 = null;	r17 = null;	$r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;");	r2 = (org.hibernate.annotations.AccessType) $r1;	if r2 == null goto $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r14 = (javax.persistence.Access) $r3;	if $r14 == null goto (branch);	if r16 == null goto (branch);	if r16 == null goto (branch);	r15 = r16;	goto [?= return r15];	return r15
;block_num 6