(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2546 0)
(declare-sort var1662 0)
(declare-sort var3243 0)
(declare-sort var2349 0)
(declare-sort var3781 0)
(declare-sort var85 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3243-init () var3243)
(declare-fun var3781-init () var3781)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var1662) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2086324338 (var3781 String var85) void)
(declare-fun cast-from-var2349-to-var85 (var2349) var85)
(declare-fun cast-from-var3781-to-var85 (var3781) var85)
(declare-const null-var2546 var2546)
(declare-const null-var1662 var1662)
(declare-const null-var2349 var2349)
(declare-const var260 var2546) ; Statement: r30 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader 
(assert (not (= var260 null-var2546)))
(declare-const var2398 var1662) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2398 null-var1662)))
(define-const var11 var3243 var3243-init) ; Statement: $r31 = new java.io.FileInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3937 var2349) ; Statement: $r3 := @caughtexception 
(assert (not (= var3937 null-var2349)))
(define-const var1357 var3781 var3781-init) ; Statement: $r36 = new org.hibernate.internal.util.config.ConfigurationException 
(define-const var2816 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2816)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2816!1 String)
(assert (= var2816!1 ""))
(assert true)
(define-const var3631 String (append/672562846 var2816!1 "Unable locate specified properties file [")) ; Statement: $r7 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable locate specified properties file [") 
(declare-const var2816!2 String)
(assert (= var2816!2 (str.++ var2816!1 "Unable locate specified properties file [")))
(assert true)
(define-const var3736 String (getAbsolutePath/-802773300 var2398)) ; Statement: $r6 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3791 String (append/672562846 var3631 var3736)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3631!1 String)
(assert (= var3631!1 (str.++ var3631 var3736)))
(assert true)
(define-const var2948 String (append/672562846 var3791 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3791!1 String)
(assert (= var3791!1 (str.++ var3791 "]")))
(assert true)
(define-const var2897 String (toString/-2075883882 var2948)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2086324338 var1357 var2897 (cast-from-var2349-to-var85 var3937))) ; Statement: specialinvoke $r36.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var1357!1 var3781)
(declare-const var2897!1 String)
(declare-const var3937!1 var2349)
(define-const var770 var85 (cast-from-var3781-to-var85 var1357!1)) ; Statement: $r38 = (java.lang.Throwable) $r36 
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {var3243-init=([], java.io.FileInputStream), var3781-init=([], org.hibernate.internal.util.config.ConfigurationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2086324338=([org.hibernate.internal.util.config.ConfigurationException, java.lang.String, java.lang.Throwable], void), cast-from-var2349-to-var85=([java.io.FileNotFoundException], java.lang.Throwable), cast-from-var3781-to-var85=([org.hibernate.internal.util.config.ConfigurationException], java.lang.Throwable)}
; {var2546=org.hibernate.boot.cfgxml.internal.ConfigLoader, var260=r30, var1662=java.io.File, var2398=r1, var3243=java.io.FileInputStream, var11=$r31, var2349=java.io.FileNotFoundException, var3937=$r3, var3781=org.hibernate.internal.util.config.ConfigurationException, var1357=$r36, var2816=$r35, var3631=$r7, var3736=$r6, var3791=$r8, var2948=$r9, var2897=$r10, var85=java.lang.Throwable, var770=$r38}
; {org.hibernate.boot.cfgxml.internal.ConfigLoader=var2546, r30=var260, java.io.File=var1662, r1=var2398, java.io.FileInputStream=var3243, $r31=var11, java.io.FileNotFoundException=var2349, $r3=var3937, org.hibernate.internal.util.config.ConfigurationException=var3781, $r36=var1357, $r35=var2816, $r7=var3631, $r6=var3736, $r8=var3791, $r9=var2948, $r10=var2897, java.lang.Throwable=var85, $r38=var770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r30 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader;	r1 := @parameter0: java.io.File;	$r31 = new java.io.FileInputStream;	$r3 := @caughtexception;	$r36 = new org.hibernate.internal.util.config.ConfigurationException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable locate specified properties file [");	$r6 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	$r38 = (java.lang.Throwable) $r36;	throw $r38
;block_num 2