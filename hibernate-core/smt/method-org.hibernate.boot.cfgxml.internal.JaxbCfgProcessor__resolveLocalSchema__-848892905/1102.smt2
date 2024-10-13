(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var1544 0)
(declare-sort var121 0)
(declare-sort var2750 0)
(declare-sort var3661 0)
(declare-sort var219 0)
(declare-sort var55 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classLoaderService/1180663707 (var2194) var121)
(declare-fun var121_locateResource/801932601 (var121 String) var2750)
(declare-fun var219-init () var219)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toExternalForm/431506284 (var2750) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-631119497 (var219 String String) void)
(declare-fun cast-from-var219-to-var55 (var219) var55)
(declare-const null-var2194 var2194)
(declare-const null-String String)
(declare-const null-var2750 var2750)
(declare-const null-var3661 var3661)
(declare-const var2669 var2194) ; Statement: r0 := @this: org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor 
(assert (not (= var2669 null-var2194)))
(declare-const var3046 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3046 null-String)))
(declare-const var796 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var796 null-String)))
(define-const var403 var121 (classLoaderService/1180663707 var2669)) ; Statement: $r2 = r0.<org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor: org.hibernate.boot.registry.classloading.spi.ClassLoaderService classLoaderService> 
(define-const var22 var2750 (var121_locateResource/801932601 var403 var3046)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.net.URL locateResource(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto r44 = virtualinvoke r3.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var22 null-var2750)))) ; Negate: Cond: r3 != null  
(declare-const var1506 var3661) ; Statement: $r15 := @caughtexception 
(assert (not (= var1506 null-var3661)))
(define-const var831 var219 var219-init) ; Statement: $r53 = new org.hibernate.internal.util.xml.XsdException 
(define-const var1512 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1512)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1512!1 String)
(assert (= var1512!1 ""))
(assert true)
(define-const var1398 String (append/672562846 var1512!1 "Stream error handling schema url [")) ; Statement: $r19 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [") 
(declare-const var1512!2 String)
(assert (= var1512!2 (str.++ var1512!1 "Stream error handling schema url [")))
(assert true)
(define-const var688 String (toExternalForm/431506284 var22)) ; Statement: $r18 = virtualinvoke r3.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var1899 String (append/672562846 var1398 var688)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1398!1 String)
(assert (= var1398!1 (str.++ var1398 var688)))
(assert true)
(define-const var2415 String (append/672562846 var1899 "]")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1899!1 String)
(assert (= var1899!1 (str.++ var1899 "]")))
(assert true)
(define-const var2074 String (toString/-2075883882 var2415)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-631119497 var831 var2074 var3046)) ; Statement: specialinvoke $r53.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r22, r1) 

(declare-const var831!1 var219)
(declare-const var2074!1 String)
(declare-const var3046!1 String)
(define-const var1788 var55 (cast-from-var219-to-var55 var831!1)) ; Statement: $r57 = (java.lang.Throwable) $r53 
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {classLoaderService/1180663707=([org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var121_locateResource/801932601=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.net.URL), var219-init=([], org.hibernate.internal.util.xml.XsdException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toExternalForm/431506284=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-631119497=([org.hibernate.internal.util.xml.XsdException, java.lang.String, java.lang.String], void), cast-from-var219-to-var55=([org.hibernate.internal.util.xml.XsdException], java.lang.Throwable)}
; {var2194=org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor, var2669=r0, var3046=r1, var1544=null_type, var796=r6, var121=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var403=$r2, var2750=java.net.URL, var22=r3, var3661=java.io.IOException, var1506=$r15, var219=org.hibernate.internal.util.xml.XsdException, var831=$r53, var1512=$r52, var1398=$r19, var688=$r18, var1899=$r20, var2415=$r21, var2074=$r22, var55=java.lang.Throwable, var1788=$r57}
; {org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor=var2194, r0=var2669, r1=var3046, null_type=var1544, r6=var796, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var121, $r2=var403, java.net.URL=var2750, r3=var22, java.io.IOException=var3661, $r15=var1506, org.hibernate.internal.util.xml.XsdException=var219, $r53=var831, $r52=var1512, $r19=var1398, $r18=var688, $r20=var1899, $r21=var2415, $r22=var2074, java.lang.Throwable=var55, $r57=var1788}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.boot.cfgxml.internal.JaxbCfgProcessor: org.hibernate.boot.registry.classloading.spi.ClassLoaderService classLoaderService>;	r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.net.URL locateResource(java.lang.String)>(r1);	if r3 != null goto r44 = virtualinvoke r3.<java.net.URL: java.io.InputStream openStream()>();	$r15 := @caughtexception;	$r53 = new org.hibernate.internal.util.xml.XsdException;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [");	$r18 = virtualinvoke r3.<java.net.URL: java.lang.String toExternalForm()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r53.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r22, r1);	$r57 = (java.lang.Throwable) $r53;	throw $r57
;block_num 2