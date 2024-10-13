(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2819 0)
(declare-sort var793 0)
(declare-sort var1061 0)
(declare-sort var3964 0)
(declare-sort var1491 0)
(declare-sort var294 0)
(declare-sort var36 0)
(declare-sort var2686 0)
(declare-sort var197 0)
(declare-sort var1183 0)
(declare-sort var2853 0)
(declare-sort var809 0)
(declare-sort var3168 0)
(declare-sort var2590 0)
(declare-sort var456 0)
(declare-sort var1403 0)
(declare-sort var3711 0)
(declare-sort var931 0)
(declare-sort var3421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1183!class ClassObject)
(declare-fun var3964_getScanEnvironment/276473023 (var3964) var294)
(declare-fun var3964_getServiceRegistry/2003421144 (var3964) var36)
(declare-fun var197_getService/-972330729 (var197 ClassObject) var2686)
(declare-fun cast-from-var36-to-var197 (var36) var197)
(declare-fun cast-from-var2686-to-var1183 (var2686) var1183)
(declare-fun var2853-init () var2853)
(declare-fun <init>/451842749 (var2853) void)
(declare-fun var294_getExplicitlyListedMappingFiles/-2058525005 (var294) var809)
(declare-fun var1061_getLocatedMappingFiles/1932759821 (var1061) var3168)
(declare-fun var3168_iterator/1911472585 (var3168) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var2853-to-var3168 (var2853) var3168)
(declare-fun Iterator_next/-1124697587 (Iterator) var2590)
(declare-fun cast-from-var2590-to-String (var2590) String)
(declare-fun var1183_locateResource/801932601 (var1183 String) var456)
(declare-fun var1403-init () var1403)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3711-init () var3711)
(declare-fun <init>/2046847377 (var3711 var931 String) void)
(declare-fun <init>/235758574 (var1403 String var3711) void)
(declare-fun cast-from-var1403-to-var3421 (var1403) var3421)
(declare-const null-var2819 var2819)
(declare-const null-var793 var793)
(declare-const null-var1061 var1061)
(declare-const null-var3964 var3964)
(declare-const null-var1491 var1491)
(declare-const null-var809 var809)
(declare-const null-var456 var456)
(declare-const var931-RESOURCE var931)
(declare-const var1976 var2819) ; Statement: r55 := @this: org.hibernate.boot.model.process.internal.ScanningCoordinator 
(assert (not (= var1976 null-var2819)))
(declare-const var2927 var793) ; Statement: r26 := @parameter0: org.hibernate.boot.model.process.internal.ManagedResourcesImpl 
(assert (not (= var2927 null-var793)))
(declare-const var1722 var1061) ; Statement: r10 := @parameter1: org.hibernate.boot.archive.scan.spi.ScanResult 
(assert (not (= var1722 null-var1061)))
(declare-const var1156 var3964) ; Statement: r0 := @parameter2: org.hibernate.boot.spi.BootstrapContext 
(assert (not (= var1156 null-var3964)))
(declare-const var1617 var1491) ; Statement: r7 := @parameter3: org.hibernate.boot.spi.XmlMappingBinderAccess 
(assert (not (= var1617 null-var1491)))
(define-const var3445 var294 (var3964_getScanEnvironment/276473023 var1156)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.archive.scan.spi.ScanEnvironment getScanEnvironment()>() 
(define-const var2461 var36 (var3964_getServiceRegistry/2003421144 var1156)) ; Statement: r2 = interfaceinvoke r0.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var3707 var2686 (var197_getService/-972330729 (cast-from-var36-to-var197 var2461) var1183!class)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var3017 var1183 (cast-from-var2686-to-var1183 var3707)) ; Statement: r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r3 
(define-const var3980 var2853 var2853-init) ; Statement: $r70 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var3980)) ; Statement: specialinvoke $r70.<java.util.HashSet: void <init>()>() 

(declare-const var3980!1 var2853)
(define-const var3741 var809 (var294_getExplicitlyListedMappingFiles/-2058525005 var3445)) ; Statement: r6 = interfaceinvoke r1.<org.hibernate.boot.archive.scan.spi.ScanEnvironment: java.util.List getExplicitlyListedMappingFiles()>() 
 ; Statement: if r6 == null goto (branch) 
(assert (= var3741 null-var809)) ; Cond: r6 == null 
 ; Statement: if r7 == null goto $r8 = interfaceinvoke r1.<org.hibernate.boot.archive.scan.spi.ScanEnvironment: java.util.List getExplicitlyListedClassNames()>() 
(assert (not (= var1617 null-var1491))) ; Negate: Cond: r7 == null  
(define-const var2439 var3168 (var1061_getLocatedMappingFiles/1932759821 var1722)) ; Statement: $r40 = interfaceinvoke r10.<org.hibernate.boot.archive.scan.spi.ScanResult: java.util.Set getLocatedMappingFiles()>() 
(define-const var2850 Iterator (var3168_iterator/1911472585 var2439)) ; Statement: r56 = interfaceinvoke $r40.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2278 Bool (Iterator_hasNext/-1669924200 var2850)) ; Statement: $z1 = interfaceinvoke r56.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto r58 = interfaceinvoke $r70.<java.util.Set: java.util.Iterator iterator()>() 
(assert (= (ite var2278 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2090 Iterator (var3168_iterator/1911472585 (cast-from-var2853-to-var3168 var3980!1))) ; Statement: r58 = interfaceinvoke $r70.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2864 Bool (Iterator_hasNext/-1669924200 var2090)) ; Statement: $z2 = interfaceinvoke r58.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $r8 = interfaceinvoke r1.<org.hibernate.boot.archive.scan.spi.ScanEnvironment: java.util.List getExplicitlyListedClassNames()>() 
(assert (not (= (ite var2864 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3871 var2590 (Iterator_next/-1124697587 var2090)) ; Statement: $r41 = interfaceinvoke r58.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2090!1 Iterator)
(define-const var3661 String (cast-from-var2590-to-String var3871)) ; Statement: r59 = (java.lang.String) $r41 
(define-const var2497 var456 (var1183_locateResource/801932601 var3017 var3661)) ; Statement: r60 = interfaceinvoke r4.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.net.URL locateResource(java.lang.String)>(r59) 
 ; Statement: if r60 != null goto $r74 = new org.hibernate.boot.archive.internal.UrlInputStreamAccess 
(assert (not (not (= var2497 null-var456)))) ; Negate: Cond: r60 != null  
(define-const var909 var1403 var1403-init) ; Statement: $r73 = new org.hibernate.boot.MappingException 
(define-const var2291 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2291)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2291!1 String)
(assert (= var2291!1 ""))
(assert true)
(define-const var112 String (append/672562846 var2291!1 "Unable to resolve explicitly named mapping-file : ")) ; Statement: $r46 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve explicitly named mapping-file : ") 
(declare-const var2291!2 String)
(assert (= var2291!2 (str.++ var2291!1 "Unable to resolve explicitly named mapping-file : ")))
(assert true)
(define-const var2493 String (append/672562846 var112 var3661)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r59) 
(declare-const var112!1 String)
(assert (= var112!1 (str.++ var112 var3661)))
(assert true)
(define-const var1261 String (toString/-2075883882 var2493)) ; Statement: $r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var517 var3711 var3711-init) ; Statement: $r72 = new org.hibernate.boot.jaxb.Origin 
(define-const var193 var931 var931-RESOURCE) ; Statement: $r49 = <org.hibernate.boot.jaxb.SourceType: org.hibernate.boot.jaxb.SourceType RESOURCE> 
(assert true)
;(assert (<init>/2046847377 var517 var193 var3661)) ; Statement: specialinvoke $r72.<org.hibernate.boot.jaxb.Origin: void <init>(org.hibernate.boot.jaxb.SourceType,java.lang.String)>($r49, r59) 

(declare-const var517!1 var3711)
(declare-const var193!1 var931)
(declare-const var3661!1 String)
(assert true)
;(assert (<init>/235758574 var909 var1261 var517!1)) ; Statement: specialinvoke $r73.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r50, $r72) 

(declare-const var909!1 var1403)
(declare-const var1261!1 String)
(declare-const var517!2 var3711)
(define-const var1510 var3421 (cast-from-var1403-to-var3421 var909!1)) ; Statement: $r79 = (java.lang.Throwable) $r73 
 ; Statement: throw $r79 
(check-sat)
(get-model)
(get-unsat-core)
; {var3964_getScanEnvironment/276473023=([org.hibernate.boot.spi.BootstrapContext], org.hibernate.boot.archive.scan.spi.ScanEnvironment), var3964_getServiceRegistry/2003421144=([org.hibernate.boot.spi.BootstrapContext], org.hibernate.boot.registry.StandardServiceRegistry), var197_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var36-to-var197=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var2686-to-var1183=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var2853-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), var294_getExplicitlyListedMappingFiles/-2058525005=([org.hibernate.boot.archive.scan.spi.ScanEnvironment], java.util.List), var1061_getLocatedMappingFiles/1932759821=([org.hibernate.boot.archive.scan.spi.ScanResult], java.util.Set), var3168_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var2853-to-var3168=([java.util.HashSet], java.util.Set), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2590-to-String=([java.lang.Object], java.lang.String), var1183_locateResource/801932601=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.net.URL), var1403-init=([], org.hibernate.boot.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3711-init=([], org.hibernate.boot.jaxb.Origin), <init>/2046847377=([org.hibernate.boot.jaxb.Origin, org.hibernate.boot.jaxb.SourceType, java.lang.String], void), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1403-to-var3421=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var2819=org.hibernate.boot.model.process.internal.ScanningCoordinator, var1976=r55, var793=org.hibernate.boot.model.process.internal.ManagedResourcesImpl, var2927=r26, var1061=org.hibernate.boot.archive.scan.spi.ScanResult, var1722=r10, var3964=org.hibernate.boot.spi.BootstrapContext, var1156=r0, var1491=org.hibernate.boot.spi.XmlMappingBinderAccess, var1617=r7, var294=org.hibernate.boot.archive.scan.spi.ScanEnvironment, var3445=r1, var36=org.hibernate.boot.registry.StandardServiceRegistry, var2461=r2, var2686=org.hibernate.service.Service, var197=org.hibernate.service.ServiceRegistry, var1183=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var3707=$r3, var3017=r4, var2853=java.util.HashSet, var3980=$r70, var809=java.util.List, var3741=r6, var3168=java.util.Set, var2439=$r40, var2850=r56, var2278=$z1, var2090=r58, var2864=$z2, var2590=java.lang.Object, var3871=$r41, var3661=r59, var456=java.net.URL, var2497=r60, var1403=org.hibernate.boot.MappingException, var909=$r73, var2291=$r71, var112=$r46, var2493=$r47, var1261=$r50, var3711=org.hibernate.boot.jaxb.Origin, var517=$r72, var931=org.hibernate.boot.jaxb.SourceType, var193=$r49, var3421=java.lang.Throwable, var1510=$r79}
; {org.hibernate.boot.model.process.internal.ScanningCoordinator=var2819, r55=var1976, org.hibernate.boot.model.process.internal.ManagedResourcesImpl=var793, r26=var2927, org.hibernate.boot.archive.scan.spi.ScanResult=var1061, r10=var1722, org.hibernate.boot.spi.BootstrapContext=var3964, r0=var1156, org.hibernate.boot.spi.XmlMappingBinderAccess=var1491, r7=var1617, org.hibernate.boot.archive.scan.spi.ScanEnvironment=var294, r1=var3445, org.hibernate.boot.registry.StandardServiceRegistry=var36, r2=var2461, org.hibernate.service.Service=var2686, org.hibernate.service.ServiceRegistry=var197, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var1183, $r3=var3707, r4=var3017, java.util.HashSet=var2853, $r70=var3980, java.util.List=var809, r6=var3741, java.util.Set=var3168, $r40=var2439, r56=var2850, $z1=var2278, r58=var2090, $z2=var2864, java.lang.Object=var2590, $r41=var3871, r59=var3661, java.net.URL=var456, r60=var2497, org.hibernate.boot.MappingException=var1403, $r73=var909, $r71=var2291, $r46=var112, $r47=var2493, $r50=var1261, org.hibernate.boot.jaxb.Origin=var3711, $r72=var517, org.hibernate.boot.jaxb.SourceType=var931, $r49=var193, java.lang.Throwable=var3421, $r79=var1510}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r55 := @this: org.hibernate.boot.model.process.internal.ScanningCoordinator;	r26 := @parameter0: org.hibernate.boot.model.process.internal.ManagedResourcesImpl;	r10 := @parameter1: org.hibernate.boot.archive.scan.spi.ScanResult;	r0 := @parameter2: org.hibernate.boot.spi.BootstrapContext;	r7 := @parameter3: org.hibernate.boot.spi.XmlMappingBinderAccess;	r1 = interfaceinvoke r0.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.archive.scan.spi.ScanEnvironment getScanEnvironment()>();	r2 = interfaceinvoke r0.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r3;	$r70 = new java.util.HashSet;	specialinvoke $r70.<java.util.HashSet: void <init>()>();	r6 = interfaceinvoke r1.<org.hibernate.boot.archive.scan.spi.ScanEnvironment: java.util.List getExplicitlyListedMappingFiles()>();	if r6 == null goto (branch);	if r7 == null goto $r8 = interfaceinvoke r1.<org.hibernate.boot.archive.scan.spi.ScanEnvironment: java.util.List getExplicitlyListedClassNames()>();	$r40 = interfaceinvoke r10.<org.hibernate.boot.archive.scan.spi.ScanResult: java.util.Set getLocatedMappingFiles()>();	r56 = interfaceinvoke $r40.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r56.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto r58 = interfaceinvoke $r70.<java.util.Set: java.util.Iterator iterator()>();	r58 = interfaceinvoke $r70.<java.util.Set: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r58.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $r8 = interfaceinvoke r1.<org.hibernate.boot.archive.scan.spi.ScanEnvironment: java.util.List getExplicitlyListedClassNames()>();	$r41 = interfaceinvoke r58.<java.util.Iterator: java.lang.Object next()>();	r59 = (java.lang.String) $r41;	r60 = interfaceinvoke r4.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.net.URL locateResource(java.lang.String)>(r59);	if r60 != null goto $r74 = new org.hibernate.boot.archive.internal.UrlInputStreamAccess;	$r73 = new org.hibernate.boot.MappingException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r46 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve explicitly named mapping-file : ");	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r59);	$r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new org.hibernate.boot.jaxb.Origin;	$r49 = <org.hibernate.boot.jaxb.SourceType: org.hibernate.boot.jaxb.SourceType RESOURCE>;	specialinvoke $r72.<org.hibernate.boot.jaxb.Origin: void <init>(org.hibernate.boot.jaxb.SourceType,java.lang.String)>($r49, r59);	specialinvoke $r73.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r50, $r72);	$r79 = (java.lang.Throwable) $r73;	throw $r79
;block_num 8