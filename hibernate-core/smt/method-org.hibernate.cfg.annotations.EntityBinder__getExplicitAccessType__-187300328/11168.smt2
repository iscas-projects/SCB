(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2220 0)
(declare-sort var72 0)
(declare-sort var2477 0)
(declare-sort var197 0)
(declare-sort var2271 0)
(declare-sort var587 0)
(declare-sort var3410 0)
(declare-sort var3497 0)
(declare-sort var3481 0)
(declare-sort var195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2271!class ClassObject)
(declare-const var587!class ClassObject)
(declare-fun var72_getAnnotation/77181240 (var72 ClassObject) var197)
(declare-fun cast-from-var197-to-var2271 (var197) var2271)
(declare-fun cast-from-var197-to-var587 (var197) var587)
(declare-fun var3410-init () var3410)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun annotatedClass/-1293733177 (var2220) var3497)
(declare-fun toString/-522406933 (var3481) String)
(declare-fun cast-from-var3497-to-var3481 (var3497) var3481)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3410 String) void)
(declare-fun cast-from-var3410-to-var195 (var3410) var195)
(declare-const null-var2220 var2220)
(declare-const null-var72 var72)
(declare-const null-var2477 var2477)
(declare-const null-var2271 var2271)
(declare-const null-var587 var587)
(declare-const var2498 var2220) ; Statement: r6 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var2498 null-var2220)))
(declare-const var1097 var72) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XAnnotatedElement 
(assert (not (= var1097 null-var72)))
(define-const var3393 var2477 null-var2477) ; Statement: r15 = null 
(define-const var3679 var2477 null-var2477) ; Statement: r16 = null 
(define-const var2507 var2477 null-var2477) ; Statement: r17 = null 
(define-const var2953 var197 (var72_getAnnotation/77181240 var1097 var2271!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;") 
(define-const var1683 var2271 (cast-from-var197-to-var2271 var2953)) ; Statement: r2 = (org.hibernate.annotations.AccessType) $r1 
 ; Statement: if r2 == null goto $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(assert (= var1683 null-var2271)) ; Cond: r2 == null 
(define-const var1380 var197 (var72_getAnnotation/77181240 var1097 var587!class)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;") 
(define-const var2736 var587 (cast-from-var197-to-var587 var1380)) ; Statement: $r14 = (javax.persistence.Access) $r3 
 ; Statement: if $r14 == null goto (branch) 
(assert (= var2736 null-var587)) ; Cond: $r14 == null 
 ; Statement: if r16 == null goto (branch) 
(assert (not (= var3679 null-var2477))) ; Negate: Cond: r16 == null  
 ; Statement: if r17 == null goto (branch) 
(assert (not (= var2507 null-var2477))) ; Negate: Cond: r17 == null  
 ; Statement: if r16 == r17 goto (branch) 
(assert (not (= var3679 var2507))) ; Negate: Cond: r16 == r17  
(define-const var1689 var3410 var3410-init) ; Statement: $r19 = new org.hibernate.MappingException 
(define-const var3420 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3420)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3420!1 String)
(assert (= var3420!1 ""))
(assert true)
(define-const var1321 String (append/672562846 var3420!1 "Found @Access and @AccessType with conflicting values on a property in class ")) ; Statement: $r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found @Access and @AccessType with conflicting values on a property in class ") 
(declare-const var3420!2 String)
(assert (= var3420!2 (str.++ var3420!1 "Found @Access and @AccessType with conflicting values on a property in class ")))
(define-const var384 var3497 (annotatedClass/-1293733177 var2498)) ; Statement: $r7 = r6.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(assert true)
(define-const var731 String (toString/-522406933 (cast-from-var3497-to-var3481 var384))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3312 String (append/672562846 var1321 var731)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1321!1 String)
(assert (= var1321!1 (str.++ var1321 var731)))
(assert true)
(define-const var2002 String (toString/-2075883882 var3312)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1689 var2002)) ; Statement: specialinvoke $r19.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11) 

(declare-const var1689!1 var3410)
(declare-const var2002!1 String)
(define-const var1355 var195 (cast-from-var3410-to-var195 var1689!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var72_getAnnotation/77181240=([org.hibernate.annotations.common.reflection.XAnnotatedElement, java.lang.Class], java.lang.annotation.Annotation), cast-from-var197-to-var2271=([java.lang.annotation.Annotation], org.hibernate.annotations.AccessType), cast-from-var197-to-var587=([java.lang.annotation.Annotation], javax.persistence.Access), var3410-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), annotatedClass/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.annotations.common.reflection.XClass), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3497-to-var3481=([org.hibernate.annotations.common.reflection.XClass], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3410-to-var195=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2220=org.hibernate.cfg.annotations.EntityBinder, var2498=r6, var72=org.hibernate.annotations.common.reflection.XAnnotatedElement, var1097=r0, var2477=org.hibernate.cfg.AccessType, var3393=r15, var3679=r16, var2507=r17, var197=java.lang.annotation.Annotation, var2271=org.hibernate.annotations.AccessType, var2953=$r1, var1683=r2, var587=javax.persistence.Access, var1380=$r3, var2736=$r14, var3410=org.hibernate.MappingException, var1689=$r19, var3420=$r18, var1321=$r9, var3497=org.hibernate.annotations.common.reflection.XClass, var384=$r7, var3481=java.lang.Object, var731=$r8, var3312=$r10, var2002=$r11, var195=java.lang.Throwable, var1355=$r20}
; {org.hibernate.cfg.annotations.EntityBinder=var2220, r6=var2498, org.hibernate.annotations.common.reflection.XAnnotatedElement=var72, r0=var1097, org.hibernate.cfg.AccessType=var2477, r15=var3393, r16=var3679, r17=var2507, java.lang.annotation.Annotation=var197, org.hibernate.annotations.AccessType=var2271, $r1=var2953, r2=var1683, javax.persistence.Access=var587, $r3=var1380, $r14=var2736, org.hibernate.MappingException=var3410, $r19=var1689, $r18=var3420, $r9=var1321, org.hibernate.annotations.common.reflection.XClass=var3497, $r7=var384, java.lang.Object=var3481, $r8=var731, $r10=var3312, $r11=var2002, java.lang.Throwable=var195, $r20=var1355}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.annotations.common.reflection.XAnnotatedElement;	r15 = null;	r16 = null;	r17 = null;	$r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AccessType;");	r2 = (org.hibernate.annotations.AccessType) $r1;	if r2 == null goto $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XAnnotatedElement: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Access;");	$r14 = (javax.persistence.Access) $r3;	if $r14 == null goto (branch);	if r16 == null goto (branch);	if r17 == null goto (branch);	if r16 == r17 goto (branch);	$r19 = new org.hibernate.MappingException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found @Access and @AccessType with conflicting values on a property in class ");	$r7 = r6.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 6