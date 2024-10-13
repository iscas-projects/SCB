(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2819 0)
(declare-sort var738 0)
(declare-sort var3092 0)
(declare-sort var496 0)
(declare-sort var637 0)
(declare-sort var2754 0)
(declare-sort var2706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var496-init () var496)
(declare-fun var2754-init () var2754)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var738) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1874074175 (var2754 String var2706) void)
(declare-fun cast-from-var637-to-var2706 (var637) var2706)
(declare-fun cast-from-var2754-to-var2706 (var2754) var2706)
(declare-const null-var2819 var2819)
(declare-const null-var738 var738)
(declare-const null-var3092 var3092)
(declare-const null-var637 var637)
(declare-const var240 var2819) ; Statement: r3 := @this: org.hibernate.boot.archive.internal.ExplodedArchiveDescriptor 
(assert (not (= var240 null-var2819)))
(declare-const var1360 var738) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1360 null-var738)))
(declare-const var3088 var3092) ; Statement: r9 := @parameter1: org.hibernate.boot.archive.spi.ArchiveContext 
(assert (not (= var3088 null-var3092)))
(define-const var1565 var496 var496-init) ; Statement: $r29 = new java.util.jar.JarFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2022 var637) ; Statement: $r11 := @caughtexception 
(assert (not (= var2022 null-var637)))
(define-const var2313 var2754 var2754-init) ; Statement: $r33 = new org.hibernate.boot.archive.spi.ArchiveException 
(define-const var1978 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1978)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1978!1 String)
(assert (= var1978!1 ""))
(assert true)
(define-const var3037 String (append/672562846 var1978!1 "Error accessing jar file [")) ; Statement: $r15 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing jar file [") 
(declare-const var1978!2 String)
(assert (= var1978!2 (str.++ var1978!1 "Error accessing jar file [")))
(assert true)
(define-const var3081 String (getAbsolutePath/-802773300 var1360)) ; Statement: $r14 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2601 String (append/672562846 var3037 var3081)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3037!1 String)
(assert (= var3037!1 (str.++ var3037 var3081)))
(assert true)
(define-const var524 String (append/672562846 var2601 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2601!1 String)
(assert (= var2601!1 (str.++ var2601 "]")))
(assert true)
(define-const var809 String (toString/-2075883882 var524)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1874074175 var2313 var809 (cast-from-var637-to-var2706 var2022))) ; Statement: specialinvoke $r33.<org.hibernate.boot.archive.spi.ArchiveException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r11) 

(declare-const var2313!1 var2754)
(declare-const var809!1 String)
(declare-const var2022!1 var637)
(define-const var1487 var2706 (cast-from-var2754-to-var2706 var2313!1)) ; Statement: $r35 = (java.lang.Throwable) $r33 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var496-init=([], java.util.jar.JarFile), var2754-init=([], org.hibernate.boot.archive.spi.ArchiveException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1874074175=([org.hibernate.boot.archive.spi.ArchiveException, java.lang.String, java.lang.Throwable], void), cast-from-var637-to-var2706=([java.io.IOException], java.lang.Throwable), cast-from-var2754-to-var2706=([org.hibernate.boot.archive.spi.ArchiveException], java.lang.Throwable)}
; {var2819=org.hibernate.boot.archive.internal.ExplodedArchiveDescriptor, var240=r3, var738=java.io.File, var1360=r1, var3092=org.hibernate.boot.archive.spi.ArchiveContext, var3088=r9, var496=java.util.jar.JarFile, var1565=$r29, var637=java.io.IOException, var2022=$r11, var2754=org.hibernate.boot.archive.spi.ArchiveException, var2313=$r33, var1978=$r32, var3037=$r15, var3081=$r14, var2601=$r16, var524=$r17, var809=$r18, var2706=java.lang.Throwable, var1487=$r35}
; {org.hibernate.boot.archive.internal.ExplodedArchiveDescriptor=var2819, r3=var240, java.io.File=var738, r1=var1360, org.hibernate.boot.archive.spi.ArchiveContext=var3092, r9=var3088, java.util.jar.JarFile=var496, $r29=var1565, java.io.IOException=var637, $r11=var2022, org.hibernate.boot.archive.spi.ArchiveException=var2754, $r33=var2313, $r32=var1978, $r15=var3037, $r14=var3081, $r16=var2601, $r17=var524, $r18=var809, java.lang.Throwable=var2706, $r35=var1487}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.boot.archive.internal.ExplodedArchiveDescriptor;	r1 := @parameter0: java.io.File;	r9 := @parameter1: org.hibernate.boot.archive.spi.ArchiveContext;	$r29 = new java.util.jar.JarFile;	$r11 := @caughtexception;	$r33 = new org.hibernate.boot.archive.spi.ArchiveException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing jar file [");	$r14 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.hibernate.boot.archive.spi.ArchiveException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r11);	$r35 = (java.lang.Throwable) $r33;	throw $r35
;block_num 2