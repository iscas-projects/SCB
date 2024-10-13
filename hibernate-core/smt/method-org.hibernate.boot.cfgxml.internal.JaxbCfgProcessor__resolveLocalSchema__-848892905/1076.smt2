(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3160 0)
(declare-sort var145 0)
(declare-sort var1363 0)
(declare-sort var2600 0)
(declare-sort var2209 0)
(declare-sort var3010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classLoaderService/1180663707 (var3160) var1363)
(declare-fun var1363_locateResource/801932601 (var1363 String) var2600)
(declare-fun var2209-init () var2209)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-631119497 (var2209 String String) void)
(declare-fun cast-from-var2209-to-var3010 (var2209) var3010)
(declare-const null-var3160 var3160)
(declare-const null-String String)
(declare-const null-var2600 var2600)
(declare-const var3138 var3160) ; Statement: r0 := @this: org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor 
(assert (not (= var3138 null-var3160)))
(declare-const var3618 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3618 null-String)))
(declare-const var3383 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3383 null-String)))
(define-const var1453 var1363 (classLoaderService/1180663707 var3138)) ; Statement: $r2 = r0.<org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor: org.hibernate.boot.registry.classloading.spi.ClassLoaderService classLoaderService> 
(define-const var3255 var2600 (var1363_locateResource/801932601 var1453 var3618)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.net.URL locateResource(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto r44 = virtualinvoke r3.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var3255 null-var2600)))) ; Negate: Cond: r3 != null  
(define-const var3955 var2209 var2209-init) ; Statement: $r46 = new org.hibernate.internal.util.xml.XsdException 
(define-const var3758 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3758)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3758!1 String)
(assert (= var3758!1 ""))
(assert true)
(define-const var459 String (append/672562846 var3758!1 "Unable to locate schema [")) ; Statement: $r11 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [") 
(declare-const var3758!2 String)
(assert (= var3758!2 (str.++ var3758!1 "Unable to locate schema [")))
(assert true)
(define-const var1928 String (append/672562846 var459 var3618)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var459!1 String)
(assert (= var459!1 (str.++ var459 var3618)))
(assert true)
(define-const var2541 String (append/672562846 var1928 "] via classpath")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath") 
(declare-const var1928!1 String)
(assert (= var1928!1 (str.++ var1928 "] via classpath")))
(assert true)
(define-const var3664 String (toString/-2075883882 var2541)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-631119497 var3955 var3664 var3618)) ; Statement: specialinvoke $r46.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r14, r1) 

(declare-const var3955!1 var2209)
(declare-const var3664!1 String)
(declare-const var3618!1 String)
(define-const var2958 var3010 (cast-from-var2209-to-var3010 var3955!1)) ; Statement: $r54 = (java.lang.Throwable) $r46 
 ; Statement: throw $r54 
(check-sat)
(get-model)
(get-unsat-core)
; {classLoaderService/1180663707=([org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var1363_locateResource/801932601=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.net.URL), var2209-init=([], org.hibernate.internal.util.xml.XsdException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-631119497=([org.hibernate.internal.util.xml.XsdException, java.lang.String, java.lang.String], void), cast-from-var2209-to-var3010=([org.hibernate.internal.util.xml.XsdException], java.lang.Throwable)}
; {var3160=org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor, var3138=r0, var3618=r1, var145=null_type, var3383=r6, var1363=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var1453=$r2, var2600=java.net.URL, var3255=r3, var2209=org.hibernate.internal.util.xml.XsdException, var3955=$r46, var3758=$r45, var459=$r11, var1928=$r12, var2541=$r13, var3664=$r14, var3010=java.lang.Throwable, var2958=$r54}
; {org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor=var3160, r0=var3138, r1=var3618, null_type=var145, r6=var3383, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var1363, $r2=var1453, java.net.URL=var2600, r3=var3255, org.hibernate.internal.util.xml.XsdException=var2209, $r46=var3955, $r45=var3758, $r11=var459, $r12=var1928, $r13=var2541, $r14=var3664, java.lang.Throwable=var3010, $r54=var2958}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor: org.hibernate.boot.registry.classloading.spi.ClassLoaderService classLoaderService>;	r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.net.URL locateResource(java.lang.String)>(r1);	if r3 != null goto r44 = virtualinvoke r3.<java.net.URL: java.io.InputStream openStream()>();	$r46 = new org.hibernate.internal.util.xml.XsdException;	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r46.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r14, r1);	$r54 = (java.lang.Throwable) $r46;	throw $r54
;block_num 2