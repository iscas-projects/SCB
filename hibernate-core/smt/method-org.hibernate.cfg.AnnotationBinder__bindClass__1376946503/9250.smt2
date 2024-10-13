(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2048 0)
(declare-sort var3917 0)
(declare-sort var3172 0)
(declare-sort var1037 0)
(declare-sort var872 0)
(declare-sort var2402 0)
(declare-sort var2812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1037!class ClassObject)
(declare-const var872!class ClassObject)
(declare-fun var2048_isAnnotationPresent/-1550355511 (var2048 ClassObject) Bool)
(declare-fun var2402-init () var2402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2048_getName/2109553381 (var2048) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var2402 String) void)
(declare-fun cast-from-var2402-to-var2812 (var2402) var2812)
(declare-const null-var2048 var2048)
(declare-const null-var3917 var3917)
(declare-const null-var3172 var3172)
(declare-const var502 var2048) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var502 null-var2048)))
(declare-const var1984 var3917) ; Statement: r1 := @parameter1: java.util.Map 
(assert (not (= var1984 null-var3917)))
(declare-const var624 var3172) ; Statement: r2 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var624 null-var3172)))
(define-const var2279 Bool (var2048_isAnnotationPresent/-1550355511 var502 var1037!class)) ; Statement: $z0 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Entity;") 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Inheritance;") 
(assert (not (= (ite var2279 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2010 Bool (var2048_isAnnotationPresent/-1550355511 var502 var872!class)) ; Statement: $z22 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/MappedSuperclass;") 
 ; Statement: if $z22 == 0 goto $z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Inheritance;") 
(assert (not (= (ite var2010 1 0) 0))) ; Negate: Cond: $z22 == 0  
(define-const var2492 var2402 var2402-init) ; Statement: $r137 = new org.hibernate.AnnotationException 
(define-const var304 String String-init) ; Statement: $r136 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var304)) ; Statement: specialinvoke $r136.<java.lang.StringBuilder: void <init>()>() 
(declare-const var304!1 String)
(assert (= var304!1 ""))
(assert true)
(define-const var3022 String (append/672562846 var304!1 "An entity cannot be annotated with both @Entity and @MappedSuperclass: ")) ; Statement: $r90 = virtualinvoke $r136.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An entity cannot be annotated with both @Entity and @MappedSuperclass: ") 
(declare-const var304!2 String)
(assert (= var304!2 (str.++ var304!1 "An entity cannot be annotated with both @Entity and @MappedSuperclass: ")))
(define-const var3608 String (var2048_getName/2109553381 var502)) ; Statement: $r89 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>() 
(assert true)
(define-const var2787 String (append/672562846 var3022 var3608)) ; Statement: $r91 = virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r89) 
(declare-const var3022!1 String)
(assert (= var3022!1 (str.++ var3022 var3608)))
(assert true)
(define-const var61 String (toString/-2075883882 var2787)) ; Statement: $r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2492 var61)) ; Statement: specialinvoke $r137.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r92) 

(declare-const var2492!1 var2402)
(declare-const var61!1 String)
(define-const var1717 var2812 (cast-from-var2402-to-var2812 var2492!1)) ; Statement: $r146 = (java.lang.Throwable) $r137 
 ; Statement: throw $r146 
(check-sat)
(get-model)
(get-unsat-core)
; {var2048_isAnnotationPresent/-1550355511=([org.hibernate.annotations.common.reflection.XClass, java.lang.Class], boolean), var2402-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2048_getName/2109553381=([org.hibernate.annotations.common.reflection.XClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var2402-to-var2812=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2048=org.hibernate.annotations.common.reflection.XClass, var502=r0, var3917=java.util.Map, var1984=r1, var3172=org.hibernate.boot.spi.MetadataBuildingContext, var624=r2, var1037=javax.persistence.Entity, var2279=$z0, var872=javax.persistence.MappedSuperclass, var2010=$z22, var2402=org.hibernate.AnnotationException, var2492=$r137, var304=$r136, var3022=$r90, var3608=$r89, var2787=$r91, var61=$r92, var2812=java.lang.Throwable, var1717=$r146}
; {org.hibernate.annotations.common.reflection.XClass=var2048, r0=var502, java.util.Map=var3917, r1=var1984, org.hibernate.boot.spi.MetadataBuildingContext=var3172, r2=var624, javax.persistence.Entity=var1037, $z0=var2279, javax.persistence.MappedSuperclass=var872, $z22=var2010, org.hibernate.AnnotationException=var2402, $r137=var2492, $r136=var304, $r90=var3022, $r89=var3608, $r91=var2787, $r92=var61, java.lang.Throwable=var2812, $r146=var1717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass;	r1 := @parameter1: java.util.Map;	r2 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext;	$z0 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Entity;");	if $z0 == 0 goto $z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Inheritance;");	$z22 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/MappedSuperclass;");	if $z22 == 0 goto $z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Inheritance;");	$r137 = new org.hibernate.AnnotationException;	$r136 = new java.lang.StringBuilder;	specialinvoke $r136.<java.lang.StringBuilder: void <init>()>();	$r90 = virtualinvoke $r136.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An entity cannot be annotated with both @Entity and @MappedSuperclass: ");	$r89 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>();	$r91 = virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r89);	$r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r137.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r92);	$r146 = (java.lang.Throwable) $r137;	throw $r146
;block_num 3