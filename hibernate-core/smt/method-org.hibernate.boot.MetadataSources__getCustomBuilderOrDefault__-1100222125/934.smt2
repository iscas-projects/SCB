(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var642 0)
(declare-sort var3892 0)
(declare-sort var628 0)
(declare-sort var3774 0)
(declare-sort var1241 0)
(declare-sort var2742 0)
(declare-sort var3158 0)
(declare-sort var1471 0)
(declare-sort var210 0)
(declare-sort var164 0)
(declare-sort var1282 0)
(declare-sort var1507 0)
(declare-sort var2070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1241!class ClassObject)
(declare-const var3158!class ClassObject)
(declare-fun serviceRegistry/-1484980525 (var642) var628)
(declare-fun var628_getService/-972330729 (var628 ClassObject) var3774)
(declare-fun cast-from-var3774-to-var1241 (var3774) var1241)
(declare-fun var1241_loadJavaServices/1345510484 (var1241 ClassObject) var2742)
(declare-fun var2742_iterator/-1617794947 (var2742) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var164_size/-959786421 (var164) Int)
(declare-fun cast-from-var210-to-var164 (var210) var164)
(declare-fun var1282-init () var1282)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/1594745010 (String var1507) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var210-to-var1507 (var210) var1507)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1282 String) void)
(declare-fun cast-from-var1282-to-var2070 (var1282) var2070)
(declare-const null-var642 var642)
(declare-const null-var3892 var3892)
(declare-const null-var1471 var1471)
(declare-const null-var210 var210)
(declare-const var2453 var642) ; Statement: r0 := @this: org.hibernate.boot.MetadataSources 
(assert (not (= var2453 null-var642)))
(declare-const var2313 var3892) ; Statement: r6 := @parameter0: org.hibernate.boot.internal.MetadataBuilderImpl 
(assert (not (= var2313 null-var3892)))
(define-const var72 var628 (serviceRegistry/-1484980525 var2453)) ; Statement: $r1 = r0.<org.hibernate.boot.MetadataSources: org.hibernate.service.ServiceRegistry serviceRegistry> 
(define-const var650 var3774 (var628_getService/-972330729 var72 var1241!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var896 var1241 (cast-from-var3774-to-var1241 var650)) ; Statement: r3 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r2 
(define-const var2011 var2742 (var1241_loadJavaServices/1345510484 var896 var3158!class)) ; Statement: r4 = interfaceinvoke r3.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/MetadataBuilderFactory;") 
(define-const var2803 var1471 null-var1471) ; Statement: r19 = null 
(define-const var924 var210 null-var210) ; Statement: r20 = null 
(define-const var2173 Iterator (var2742_iterator/-1617794947 var2011)) ; Statement: r5 = interfaceinvoke r4.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var102 Bool (Iterator_hasNext/-1669924200 var2173)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var102 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r20 == null goto (branch) 
(assert (not (= var924 null-var210))) ; Negate: Cond: r20 == null  
(define-const var1494 Int (var164_size/-959786421 (cast-from-var210-to-var164 var924))) ; Statement: $i0 = interfaceinvoke r20.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 1 goto (branch) 
(assert (not (<= var1494 1))) ; Negate: Cond: $i0 <= 1  
(define-const var1827 var1282 var1282-init) ; Statement: $r24 = new org.hibernate.HibernateException 
(define-const var2876 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2876)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2876!1 String)
(assert (= var2876!1 ""))
(assert true)
(define-const var995 String (append/672562846 var2876!1 "Multiple active MetadataBuilder definitions were discovered : ")) ; Statement: $r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple active MetadataBuilder definitions were discovered : ") 
(declare-const var2876!2 String)
(assert (= var2876!2 (str.++ var2876!1 "Multiple active MetadataBuilder definitions were discovered : ")))
(define-const var307 String (String_join/1594745010 (cast-from-String-to-String ", ") (cast-from-var210-to-var1507 var924))) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r20) 
(assert true)
(define-const var1000 String (append/672562846 var995 var307)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var995!1 String)
(assert (= var995!1 (str.++ var995 var307)))
(assert true)
(define-const var2988 String (toString/-2075883882 var1000)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1827 var2988)) ; Statement: specialinvoke $r24.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var1827!1 var1282)
(declare-const var2988!1 String)
(define-const var985 var2070 (cast-from-var1282-to-var2070 var1827!1)) ; Statement: $r25 = (java.lang.Throwable) $r24 
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {serviceRegistry/-1484980525=([org.hibernate.boot.MetadataSources], org.hibernate.service.ServiceRegistry), var628_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var3774-to-var1241=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var1241_loadJavaServices/1345510484=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.Class], java.util.Collection), var2742_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var164_size/-959786421=([java.util.List], int), cast-from-var210-to-var164=([java.util.ArrayList], java.util.List), var1282-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var210-to-var1507=([java.util.ArrayList], java.lang.Iterable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1282-to-var2070=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var642=org.hibernate.boot.MetadataSources, var2453=r0, var3892=org.hibernate.boot.internal.MetadataBuilderImpl, var2313=r6, var628=org.hibernate.service.ServiceRegistry, var72=$r1, var3774=org.hibernate.service.Service, var1241=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var650=$r2, var896=r3, var2742=java.util.Collection, var3158=org.hibernate.boot.spi.MetadataBuilderFactory, var2011=r4, var1471=org.hibernate.boot.spi.MetadataBuilderImplementor, var2803=r19, var210=java.util.ArrayList, var924=r20, var2173=r5, var102=$z0, var164=java.util.List, var1494=$i0, var1282=org.hibernate.HibernateException, var1827=$r24, var2876=$r23, var995=$r10, var1507=java.lang.Iterable, var307=$r9, var1000=$r11, var2988=$r12, var2070=java.lang.Throwable, var985=$r25}
; {org.hibernate.boot.MetadataSources=var642, r0=var2453, org.hibernate.boot.internal.MetadataBuilderImpl=var3892, r6=var2313, org.hibernate.service.ServiceRegistry=var628, $r1=var72, org.hibernate.service.Service=var3774, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var1241, $r2=var650, r3=var896, java.util.Collection=var2742, org.hibernate.boot.spi.MetadataBuilderFactory=var3158, r4=var2011, org.hibernate.boot.spi.MetadataBuilderImplementor=var1471, r19=var2803, java.util.ArrayList=var210, r20=var924, r5=var2173, $z0=var102, java.util.List=var164, $i0=var1494, org.hibernate.HibernateException=var1282, $r24=var1827, $r23=var2876, $r10=var995, java.lang.Iterable=var1507, $r9=var307, $r11=var1000, $r12=var2988, java.lang.Throwable=var2070, $r25=var985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.MetadataSources;	r6 := @parameter0: org.hibernate.boot.internal.MetadataBuilderImpl;	$r1 = r0.<org.hibernate.boot.MetadataSources: org.hibernate.service.ServiceRegistry serviceRegistry>;	$r2 = interfaceinvoke $r1.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r3 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r2;	r4 = interfaceinvoke r3.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/MetadataBuilderFactory;");	r19 = null;	r20 = null;	r5 = interfaceinvoke r4.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r20 == null goto (branch);	$i0 = interfaceinvoke r20.<java.util.List: int size()>();	if $i0 <= 1 goto (branch);	$r24 = new org.hibernate.HibernateException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple active MetadataBuilder definitions were discovered : ");	$r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r20);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r25 = (java.lang.Throwable) $r24;	throw $r25
;block_num 5