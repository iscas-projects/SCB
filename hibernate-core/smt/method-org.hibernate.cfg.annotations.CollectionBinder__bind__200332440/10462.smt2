(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2141 0)
(declare-sort var861 0)
(declare-sort var3309 0)
(declare-sort var51 0)
(declare-sort var312 0)
(declare-sort var3983 0)
(declare-sort var2291 0)
(declare-sort var2729 0)
(declare-sort var1189 0)
(declare-sort var1934 0)
(declare-sort var3065 0)
(declare-sort var1153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1189!class ClassObject)
(declare-fun propertyHolder/1550026818 (var2141) var861)
(declare-fun var861_getPersistentClass/561157946 (var861) var3309)
(declare-fun createCollection/-2049348102 (var2141 var3309) var51)
(declare-fun collection/1550026818 (var2141) var51)
(declare-fun var861_getPath/2047744202 (var861) String)
(declare-fun propertyName/1550026818 (var2141) String)
(declare-fun var312_qualify/-1563731603 (String String) String)
(declare-fun var3983_debugf/585189783 (var3983 String var2291) void)
(declare-fun cast-from-String-to-var2291 (String) var2291)
(declare-fun setRole/-853473872 (var51 String) void)
(declare-fun mappedBy/1550026818 (var2141) String)
(declare-fun setMappedByProperty/-1401446489 (var51 String) void)
(declare-fun property/1550026818 (var2141) var2729)
(declare-fun var2729_isAnnotationPresent/-1568090508 (var2729 ClassObject) Bool)
(declare-fun mapKeyPropertyName/1550026818 (var2141) String)
(declare-fun var3065-init () var3065)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3065 String) void)
(declare-fun cast-from-var3065-to-var1153 (var3065) var1153)
(declare-const null-var2141 var2141)
(declare-const var2141-LOG var3983)
(declare-const null-String String)
(declare-const var2654 var2141) ; Statement: r0 := @this: org.hibernate.cfg.annotations.CollectionBinder 
(assert (not (= var2654 null-var2141)))
(define-const var2333 var861 (propertyHolder/1550026818 var2654)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var3573 var3309 (var861_getPersistentClass/561157946 var2333)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>() 
(assert true)
(define-const var249 var51 (createCollection/-2049348102 var2654 var3573)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection createCollection(org.hibernate.mapping.PersistentClass)>($r2) 
(declare-const var2654!1 var2141)
(assert (not (= var2654!1 null-var2141)))
(assert (= (collection/1550026818 var2654!1) var249)) ; Statement: r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection collection> = $r3 
(define-const var845 var861 (propertyHolder/1550026818 var2654!1)) ; Statement: $r4 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var3863 String (var861_getPath/2047744202 var845)) ; Statement: $r6 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>() 
(define-const var944 String (propertyName/1550026818 var2654!1)) ; Statement: $r5 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName> 
(define-const var3170 String (var312_qualify/-1563731603 var3863 var944)) ; Statement: r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5) 
(define-const var438 var3983 var2141-LOG) ; Statement: $r8 = <org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var3983_debugf/585189783 var438 "Collection role: %s" (cast-from-String-to-var2291 var3170))) ; Statement: interfaceinvoke $r8.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Collection role: %s", r7) 

(declare-const var438!1 var3983)
(declare-const var3933 String)
(declare-const var3170!1 String)
(define-const var1698 var51 (collection/1550026818 var2654!1)) ; Statement: $r9 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection collection> 
(assert true)
;(assert (setRole/-853473872 var1698 var3170!1)) ; Statement: virtualinvoke $r9.<org.hibernate.mapping.Collection: void setRole(java.lang.String)>(r7) 

(declare-const var1698!1 var51)
(declare-const var3170!2 String)
(define-const var2745 var51 (collection/1550026818 var2654!1)) ; Statement: $r11 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection collection> 
(define-const var1825 String (mappedBy/1550026818 var2654!1)) ; Statement: $r10 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String mappedBy> 
(assert true)
;(assert (setMappedByProperty/-1401446489 var2745 var1825)) ; Statement: virtualinvoke $r11.<org.hibernate.mapping.Collection: void setMappedByProperty(java.lang.String)>($r10) 

(declare-const var2745!1 var51)
(declare-const var1825!1 String)
(define-const var1785 var2729 (property/1550026818 var2654!1)) ; Statement: $r12 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var992 Bool (var2729_isAnnotationPresent/-1568090508 var1785 var1189!class)) ; Statement: $z0 = interfaceinvoke $r12.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/MapKeyColumn;") 
 ; Statement: if $z0 == 0 goto $r13 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(assert (not (= (ite var992 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3939 String (mapKeyPropertyName/1550026818 var2654!1)) ; Statement: $r125 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String mapKeyPropertyName> 
 ; Statement: if $r125 == null goto $r13 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(assert (not (= var3939 null-String))) ; Negate: Cond: $r125 == null  
(define-const var1529 var3065 var3065-init) ; Statement: $r167 = new org.hibernate.AnnotationException 
(define-const var2691 String String-init) ; Statement: $r166 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2691)) ; Statement: specialinvoke $r166.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2691!1 String)
(assert (= var2691!1 ""))
(assert true)
(define-const var3200 String (append/672562846 var2691!1 "Cannot mix @javax.persistence.MapKey and @MapKeyColumn or @org.hibernate.annotations.MapKey on the same collection: ")) ; Statement: $r133 = virtualinvoke $r166.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot mix @javax.persistence.MapKey and @MapKeyColumn or @org.hibernate.annotations.MapKey on the same collection: ") 
(declare-const var2691!2 String)
(assert (= var2691!2 (str.++ var2691!1 "Cannot mix @javax.persistence.MapKey and @MapKeyColumn or @org.hibernate.annotations.MapKey on the same collection: ")))
(define-const var2048 var861 (propertyHolder/1550026818 var2654!1)) ; Statement: $r129 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var858 String (var861_getPath/2047744202 var2048)) ; Statement: $r131 = interfaceinvoke $r129.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>() 
(define-const var649 String (propertyName/1550026818 var2654!1)) ; Statement: $r130 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName> 
(define-const var977 String (var312_qualify/-1563731603 var858 var649)) ; Statement: $r132 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r131, $r130) 
(assert true)
(define-const var2352 String (append/672562846 var3200 var977)) ; Statement: $r134 = virtualinvoke $r133.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r132) 
(declare-const var3200!1 String)
(assert (= var3200!1 (str.++ var3200 var977)))
(assert true)
(define-const var3208 String (toString/-2075883882 var2352)) ; Statement: $r135 = virtualinvoke $r134.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var1529 var3208)) ; Statement: specialinvoke $r167.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r135) 

(declare-const var1529!1 var3065)
(declare-const var3208!1 String)
(define-const var2173 var1153 (cast-from-var3065-to-var1153 var1529!1)) ; Statement: $r175 = (java.lang.Throwable) $r167 
 ; Statement: throw $r175 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyHolder/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.cfg.PropertyHolder), var861_getPersistentClass/561157946=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.PersistentClass), createCollection/-2049348102=([org.hibernate.cfg.annotations.CollectionBinder, org.hibernate.mapping.PersistentClass], org.hibernate.mapping.Collection), collection/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.mapping.Collection), var861_getPath/2047744202=([org.hibernate.cfg.PropertyHolder], java.lang.String), propertyName/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], java.lang.String), var312_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), var3983_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var2291=([java.lang.String], java.lang.Object), setRole/-853473872=([org.hibernate.mapping.Collection, java.lang.String], void), mappedBy/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], java.lang.String), setMappedByProperty/-1401446489=([org.hibernate.mapping.Collection, java.lang.String], void), property/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.annotations.common.reflection.XProperty), var2729_isAnnotationPresent/-1568090508=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], boolean), mapKeyPropertyName/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], java.lang.String), var3065-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3065-to-var1153=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2141=org.hibernate.cfg.annotations.CollectionBinder, var2654=r0, var861=org.hibernate.cfg.PropertyHolder, var2333=$r1, var3309=org.hibernate.mapping.PersistentClass, var3573=$r2, var51=org.hibernate.mapping.Collection, var249=$r3, var845=$r4, var3863=$r6, var944=$r5, var312=org.hibernate.internal.util.StringHelper, var3170=r7, var3983=org.hibernate.internal.CoreMessageLogger, var438=$r8, var2291=java.lang.Object, var3933="Collection role: %s", var1698=$r9, var2745=$r11, var1825=$r10, var2729=org.hibernate.annotations.common.reflection.XProperty, var1785=$r12, var1189=javax.persistence.MapKeyColumn, var992=$z0, var3939=$r125, var1934=null_type, var3065=org.hibernate.AnnotationException, var1529=$r167, var2691=$r166, var3200=$r133, var2048=$r129, var858=$r131, var649=$r130, var977=$r132, var2352=$r134, var3208=$r135, var1153=java.lang.Throwable, var2173=$r175}
; {org.hibernate.cfg.annotations.CollectionBinder=var2141, r0=var2654, org.hibernate.cfg.PropertyHolder=var861, $r1=var2333, org.hibernate.mapping.PersistentClass=var3309, $r2=var3573, org.hibernate.mapping.Collection=var51, $r3=var249, $r4=var845, $r6=var3863, $r5=var944, org.hibernate.internal.util.StringHelper=var312, r7=var3170, org.hibernate.internal.CoreMessageLogger=var3983, $r8=var438, java.lang.Object=var2291, "Collection role: %s"=var3933, $r9=var1698, $r11=var2745, $r10=var1825, org.hibernate.annotations.common.reflection.XProperty=var2729, $r12=var1785, javax.persistence.MapKeyColumn=var1189, $z0=var992, $r125=var3939, null_type=var1934, org.hibernate.AnnotationException=var3065, $r167=var1529, $r166=var2691, $r133=var3200, $r129=var2048, $r131=var858, $r130=var649, $r132=var977, $r134=var2352, $r135=var3208, java.lang.Throwable=var1153, $r175=var2173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.CollectionBinder;	$r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r2 = interfaceinvoke $r1.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>();	$r3 = virtualinvoke r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection createCollection(org.hibernate.mapping.PersistentClass)>($r2);	r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection collection> = $r3;	$r4 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r6 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>();	$r5 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName>;	r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5);	$r8 = <org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r8.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Collection role: %s", r7);	$r9 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection collection>;	virtualinvoke $r9.<org.hibernate.mapping.Collection: void setRole(java.lang.String)>(r7);	$r11 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.mapping.Collection collection>;	$r10 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String mappedBy>;	virtualinvoke $r11.<org.hibernate.mapping.Collection: void setMappedByProperty(java.lang.String)>($r10);	$r12 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.annotations.common.reflection.XProperty property>;	$z0 = interfaceinvoke $r12.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/MapKeyColumn;");	if $z0 == 0 goto $r13 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r125 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String mapKeyPropertyName>;	if $r125 == null goto $r13 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r167 = new org.hibernate.AnnotationException;	$r166 = new java.lang.StringBuilder;	specialinvoke $r166.<java.lang.StringBuilder: void <init>()>();	$r133 = virtualinvoke $r166.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot mix @javax.persistence.MapKey and @MapKeyColumn or @org.hibernate.annotations.MapKey on the same collection: ");	$r129 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r131 = interfaceinvoke $r129.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>();	$r130 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName>;	$r132 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r131, $r130);	$r134 = virtualinvoke $r133.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r132);	$r135 = virtualinvoke $r134.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r167.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r135);	$r175 = (java.lang.Throwable) $r167;	throw $r175
;block_num 3