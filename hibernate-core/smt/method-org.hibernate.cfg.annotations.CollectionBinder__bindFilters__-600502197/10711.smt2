(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2319 0)
(declare-sort var3344 0)
(declare-sort var2332 0)
(declare-sort var3274 0)
(declare-sort var2542 0)
(declare-sort var1582 0)
(declare-sort var3341 0)
(declare-sort var3100 0)
(declare-sort var2505 0)
(declare-sort var1994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3274!class ClassObject)
(declare-const var2542!class ClassObject)
(declare-const var1582!class ClassObject)
(declare-fun property/1550026818 (var2319) var3344)
(declare-fun var3344_getAnnotation/894663943 (var3344 ClassObject) var2332)
(declare-fun cast-from-var2332-to-var3274 (var2332) var3274)
(declare-fun cast-from-var2332-to-var2542 (var2332) var2542)
(declare-fun cast-from-var2332-to-var1582 (var2332) var1582)
(declare-fun var3341-init () var3341)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyHolder/1550026818 (var2319) var3100)
(declare-fun var3100_getPath/2047744202 (var3100) String)
(declare-fun propertyName/1550026818 (var2319) String)
(declare-fun var2505_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3341 String) void)
(declare-fun cast-from-var3341-to-var1994 (var3341) var1994)
(declare-const null-var2319 var2319)
(declare-const null-Bool Bool)
(declare-const null-var3274 var3274)
(declare-const null-var2542 var2542)
(declare-const null-var1582 var1582)
(declare-const var1836 var2319) ; Statement: r0 := @this: org.hibernate.cfg.annotations.CollectionBinder 
(assert (not (= var1836 null-var2319)))
(declare-const var603 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var603 null-Bool)))
(define-const var3103 var3344 (property/1550026818 var1836)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var485 var2332 (var3344_getAnnotation/894663943 var3103 var3274!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Filter;") 
(define-const var194 var3274 (cast-from-var2332-to-var3274 var485)) ; Statement: r3 = (org.hibernate.annotations.Filter) $r2 
 ; Statement: if r3 == null goto $r97 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property> 
(assert (= var194 null-var3274)) ; Cond: r3 == null 
(define-const var2205 var3344 (property/1550026818 var1836)) ; Statement: $r97 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var151 var2332 (var3344_getAnnotation/894663943 var2205 var2542!class)) ; Statement: $r98 = interfaceinvoke $r97.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Filters;") 
(define-const var3046 var2542 (cast-from-var2332-to-var2542 var151)) ; Statement: $r99 = (org.hibernate.annotations.Filters) $r98 
 ; Statement: if $r99 == null goto $r4 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property> 
(assert (= var3046 null-var2542)) ; Cond: $r99 == null 
(define-const var3654 var3344 (property/1550026818 var1836)) ; Statement: $r4 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var3513 var2332 (var3344_getAnnotation/894663943 var3654 var1582!class)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/FilterJoinTable;") 
(define-const var168 var1582 (cast-from-var2332-to-var1582 var3513)) ; Statement: $r68 = (org.hibernate.annotations.FilterJoinTable) $r5 
 ; Statement: if $r68 == null goto $r6 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property> 
(assert (not (= var168 null-var1582))) ; Negate: Cond: $r68 == null  
 ; Statement: if z0 == 0 goto $r112 = new org.hibernate.AnnotationException 
(assert (= (ite var603 1 0) 0)) ; Cond: z0 == 0 
(define-const var1737 var3341 var3341-init) ; Statement: $r112 = new org.hibernate.AnnotationException 
(define-const var3684 String String-init) ; Statement: $r111 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3684)) ; Statement: specialinvoke $r111.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3684!1 String)
(assert (= var3684!1 ""))
(assert true)
(define-const var3764 String (append/672562846 var3684!1 "Illegal use of @FilterJoinTable on an association without join table:")) ; Statement: $r57 = virtualinvoke $r111.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal use of @FilterJoinTable on an association without join table:") 
(declare-const var3684!2 String)
(assert (= var3684!2 (str.++ var3684!1 "Illegal use of @FilterJoinTable on an association without join table:")))
(define-const var3933 var3100 (propertyHolder/1550026818 var1836)) ; Statement: $r53 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var2344 String (var3100_getPath/2047744202 var3933)) ; Statement: $r55 = interfaceinvoke $r53.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>() 
(define-const var2165 String (propertyName/1550026818 var1836)) ; Statement: $r54 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName> 
(define-const var902 String (var2505_qualify/-1563731603 var2344 var2165)) ; Statement: $r56 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r55, $r54) 
(assert true)
(define-const var3422 String (append/672562846 var3764 var902)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var3764!1 String)
(assert (= var3764!1 (str.++ var3764 var902)))
(assert true)
(define-const var2872 String (toString/-2075883882 var3422)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var1737 var2872)) ; Statement: specialinvoke $r112.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r59) 

(declare-const var1737!1 var3341)
(declare-const var2872!1 String)
(define-const var1146 var1994 (cast-from-var3341-to-var1994 var1737!1)) ; Statement: $r117 = (java.lang.Throwable) $r112 
 ; Statement: throw $r117 
(check-sat)
(get-model)
(get-unsat-core)
; {property/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.annotations.common.reflection.XProperty), var3344_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var2332-to-var3274=([java.lang.annotation.Annotation], org.hibernate.annotations.Filter), cast-from-var2332-to-var2542=([java.lang.annotation.Annotation], org.hibernate.annotations.Filters), cast-from-var2332-to-var1582=([java.lang.annotation.Annotation], org.hibernate.annotations.FilterJoinTable), var3341-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyHolder/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.cfg.PropertyHolder), var3100_getPath/2047744202=([org.hibernate.cfg.PropertyHolder], java.lang.String), propertyName/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], java.lang.String), var2505_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3341-to-var1994=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2319=org.hibernate.cfg.annotations.CollectionBinder, var1836=r0, var603=z0, var3344=org.hibernate.annotations.common.reflection.XProperty, var3103=$r1, var2332=java.lang.annotation.Annotation, var3274=org.hibernate.annotations.Filter, var485=$r2, var194=r3, var2205=$r97, var2542=org.hibernate.annotations.Filters, var151=$r98, var3046=$r99, var3654=$r4, var1582=org.hibernate.annotations.FilterJoinTable, var3513=$r5, var168=$r68, var3341=org.hibernate.AnnotationException, var1737=$r112, var3684=$r111, var3764=$r57, var3100=org.hibernate.cfg.PropertyHolder, var3933=$r53, var2344=$r55, var2165=$r54, var2505=org.hibernate.internal.util.StringHelper, var902=$r56, var3422=$r58, var2872=$r59, var1994=java.lang.Throwable, var1146=$r117}
; {org.hibernate.cfg.annotations.CollectionBinder=var2319, r0=var1836, z0=var603, org.hibernate.annotations.common.reflection.XProperty=var3344, $r1=var3103, java.lang.annotation.Annotation=var2332, org.hibernate.annotations.Filter=var3274, $r2=var485, r3=var194, $r97=var2205, org.hibernate.annotations.Filters=var2542, $r98=var151, $r99=var3046, $r4=var3654, org.hibernate.annotations.FilterJoinTable=var1582, $r5=var3513, $r68=var168, org.hibernate.AnnotationException=var3341, $r112=var1737, $r111=var3684, $r57=var3764, org.hibernate.cfg.PropertyHolder=var3100, $r53=var3933, $r55=var2344, $r54=var2165, org.hibernate.internal.util.StringHelper=var2505, $r56=var902, $r58=var3422, $r59=var2872, java.lang.Throwable=var1994, $r117=var1146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.CollectionBinder;	z0 := @parameter0: boolean;	$r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property>;	$r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Filter;");	r3 = (org.hibernate.annotations.Filter) $r2;	if r3 == null goto $r97 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property>;	$r97 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property>;	$r98 = interfaceinvoke $r97.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Filters;");	$r99 = (org.hibernate.annotations.Filters) $r98;	if $r99 == null goto $r4 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property>;	$r4 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property>;	$r5 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/FilterJoinTable;");	$r68 = (org.hibernate.annotations.FilterJoinTable) $r5;	if $r68 == null goto $r6 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property>;	if z0 == 0 goto $r112 = new org.hibernate.AnnotationException;	$r112 = new org.hibernate.AnnotationException;	$r111 = new java.lang.StringBuilder;	specialinvoke $r111.<java.lang.StringBuilder: void <init>()>();	$r57 = virtualinvoke $r111.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal use of @FilterJoinTable on an association without join table:");	$r53 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r55 = interfaceinvoke $r53.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>();	$r54 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName>;	$r56 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r55, $r54);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r112.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r59);	$r117 = (java.lang.Throwable) $r112;	throw $r117
;block_num 5