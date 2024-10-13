(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1376 0)
(declare-sort var1315 0)
(declare-sort var421 0)
(declare-sort var755 0)
(declare-sort var3968 0)
(declare-sort var2692 0)
(declare-sort var2478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var421!class ClassObject)
(declare-const var755!class ClassObject)
(declare-fun jpaOrderBy/1550026818 (var1376) var421)
(declare-fun sqlOrderBy/1550026818 (var1376) var755)
(declare-fun var3968-init () var3968)
(declare-fun arr-var2692-init () (Array Int var2692))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2692 (String) var2692)
(declare-fun safeCollectionRole/865872709 (var1376) String)
(declare-fun String_format/1339386452 (String (Array Int var2692)) String)
(declare-fun <init>/609117640 (var3968 String) void)
(declare-fun cast-from-var3968-to-var2478 (var3968) var2478)
(declare-const null-var1376 var1376)
(declare-const null-var1315 var1315)
(declare-const null-ClassObject ClassObject)
(declare-const null-var421 var421)
(declare-const null-var755 var755)
(declare-const null-__Array__Int__var2692__ (Array Int var2692))
(declare-const var679 var1376) ; Statement: r0 := @this: org.hibernate.cfg.annotations.CollectionBinder 
(assert (not (= var679 null-var1376)))
(declare-const var201 var1315) ; Statement: r4 := @parameter0: org.hibernate.mapping.Collection 
(assert (not (= var201 null-var1315)))
(define-const var3883 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var902 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var95 ClassObject null-ClassObject) ; Statement: r51 = null 
(define-const var3226 var421 (jpaOrderBy/1550026818 var679)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: javax.persistence.OrderBy jpaOrderBy> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cfg.annotations.CollectionBinder: javax.persistence.OrderBy jpaOrderBy> 
(assert (not (= var3226 null-var421))) ; Cond: $r1 != null 
(define-const var2714 var421 (jpaOrderBy/1550026818 var679)) ; Statement: $r2 = r0.<org.hibernate.cfg.annotations.CollectionBinder: javax.persistence.OrderBy jpaOrderBy> 
 ; Statement: if $r2 == null goto z0 = 1 
(assert (not (= var2714 null-var421))) ; Negate: Cond: $r2 == null  
(define-const var2157 var755 (sqlOrderBy/1550026818 var679)) ; Statement: $r15 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.OrderBy sqlOrderBy> 
 ; Statement: if $r15 == null goto z0 = 1 
(assert (not (= var2157 null-var755))) ; Negate: Cond: $r15 == null  
(define-const var3630 var3968 var3968-init) ; Statement: $r52 = new org.hibernate.AnnotationException 
(define-const var2755 (Array Int var2692) arr-var2692-init) ; Statement: $r17 = newarray (java.lang.Object)[3] 
(define-const var1749 ClassObject var421!class) ; Statement: $r18 = class "Ljavax/persistence/OrderBy;" 
(assert true)
(define-const var3876 String (getName/-1958580599 var1749)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2755!1 (Array Int var2692))
(assert (not (= var2755!1 null-__Array__Int__var2692__)))
(assert (= (select var2755!1 0) (cast-from-String-to-var2692 var3876))) ; Statement: $r17[0] = $r19 
(define-const var3771 ClassObject var755!class) ; Statement: $r20 = class "Lorg/hibernate/annotations/OrderBy;" 
(assert true)
(define-const var2981 String (getName/-1958580599 var3771)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2755!2 (Array Int var2692))
(assert (not (= var2755!2 null-__Array__Int__var2692__)))
(assert (= (select var2755!2 1) (cast-from-String-to-var2692 var2981))) ; Statement: $r17[1] = $r21 
(assert true)
(define-const var2790 String (safeCollectionRole/865872709 var679)) ; Statement: $r22 = specialinvoke r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String safeCollectionRole()>() 
(declare-const var2755!3 (Array Int var2692))
(assert (not (= var2755!3 null-__Array__Int__var2692__)))
(assert (= (select var2755!3 2) (cast-from-String-to-var2692 var2790))) ; Statement: $r17[2] = $r22 
(define-const var2677 String (String_format/1339386452 "Illegal combination of @%s and @%s on %s" var2755!3)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal combination of @%s and @%s on %s", $r17) 
(assert true)
;(assert (<init>/609117640 var3630 var2677)) ; Statement: specialinvoke $r52.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r23) 

(declare-const var3630!1 var3968)
(declare-const var2677!1 String)
(define-const var2582 var2478 (cast-from-var3968-to-var2478 var3630!1)) ; Statement: $r58 = (java.lang.Throwable) $r52 
 ; Statement: throw $r58 
(check-sat)
(get-model)
(get-unsat-core)
; {jpaOrderBy/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], javax.persistence.OrderBy), sqlOrderBy/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.annotations.OrderBy), var3968-init=([], org.hibernate.AnnotationException), arr-var2692-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2692=([java.lang.String], java.lang.Object), safeCollectionRole/865872709=([org.hibernate.cfg.annotations.CollectionBinder], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3968-to-var2478=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var1376=org.hibernate.cfg.annotations.CollectionBinder, var679=r0, var1315=org.hibernate.mapping.Collection, var201=r4, var3883=z0, var902=z1, var95=r51, var421=javax.persistence.OrderBy, var3226=$r1, var2714=$r2, var755=org.hibernate.annotations.OrderBy, var2157=$r15, var3968=org.hibernate.AnnotationException, var3630=$r52, var2692=java.lang.Object, var2755=$r17, var1749=$r18, var3876=$r19, var3771=$r20, var2981=$r21, var2790=$r22, var2677=$r23, var2478=java.lang.Throwable, var2582=$r58}
; {org.hibernate.cfg.annotations.CollectionBinder=var1376, r0=var679, org.hibernate.mapping.Collection=var1315, r4=var201, z0=var3883, z1=var902, r51=var95, javax.persistence.OrderBy=var421, $r1=var3226, $r2=var2714, org.hibernate.annotations.OrderBy=var755, $r15=var2157, org.hibernate.AnnotationException=var3968, $r52=var3630, java.lang.Object=var2692, $r17=var2755, $r18=var1749, $r19=var3876, $r20=var3771, $r21=var2981, $r22=var2790, $r23=var2677, java.lang.Throwable=var2478, $r58=var2582}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.CollectionBinder;	r4 := @parameter0: org.hibernate.mapping.Collection;	z0 = 0;	z1 = 0;	r51 = null;	$r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: javax.persistence.OrderBy jpaOrderBy>;	if $r1 != null goto $r2 = r0.<org.hibernate.cfg.annotations.CollectionBinder: javax.persistence.OrderBy jpaOrderBy>;	$r2 = r0.<org.hibernate.cfg.annotations.CollectionBinder: javax.persistence.OrderBy jpaOrderBy>;	if $r2 == null goto z0 = 1;	$r15 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.OrderBy sqlOrderBy>;	if $r15 == null goto z0 = 1;	$r52 = new org.hibernate.AnnotationException;	$r17 = newarray (java.lang.Object)[3];	$r18 = class "Ljavax/persistence/OrderBy;";	$r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>();	$r17[0] = $r19;	$r20 = class "Lorg/hibernate/annotations/OrderBy;";	$r21 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>();	$r17[1] = $r21;	$r22 = specialinvoke r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String safeCollectionRole()>();	$r17[2] = $r22;	$r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Illegal combination of @%s and @%s on %s", $r17);	specialinvoke $r52.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r23);	$r58 = (java.lang.Throwable) $r52;	throw $r58
;block_num 4