(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1031 0)
(declare-sort var1730 0)
(declare-sort var3302 0)
(declare-sort var3934 0)
(declare-sort var2875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3934-init () var3934)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/804823840 (var3934 String var2875) void)
(declare-fun cast-from-var3302-to-var2875 (var3302) var2875)
(declare-fun cast-from-var3934-to-var2875 (var3934) var2875)
(declare-const null-var1031 var1031)
(declare-const null-String String)
(declare-const null-var3302 var3302)
(declare-const var1901 var1031) ; Statement: r1 := @this: org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl 
(assert (not (= var1901 null-var1031)))
(declare-const var2239 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2239 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1328 var3302) ; Statement: $r4 := @caughtexception 
(assert (not (= var1328 null-var3302)))
(define-const var412 var3934 var3934-init) ; Statement: $r21 = new org.hibernate.boot.registry.classloading.spi.ClassLoadingException 
(define-const var1767 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1767)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1767!1 String)
(assert (= var1767!1 ""))
(assert true)
(define-const var1317 String (append/672562846 var1767!1 "Unable to load class [")) ; Statement: $r7 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load class [") 
(declare-const var1767!2 String)
(assert (= var1767!2 (str.++ var1767!1 "Unable to load class [")))
(assert true)
(define-const var2651 String (append/672562846 var1317 var2239)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1317!1 String)
(assert (= var1317!1 (str.++ var1317 var2239)))
(assert true)
(define-const var775 String (append/672562846 var2651 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2651!1 String)
(assert (= var2651!1 (str.++ var2651 "]")))
(assert true)
(define-const var791 String (toString/-2075883882 var775)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/804823840 var412 var791 (cast-from-var3302-to-var2875 var1328))) ; Statement: specialinvoke $r21.<org.hibernate.boot.registry.classloading.spi.ClassLoadingException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var412!1 var3934)
(declare-const var791!1 String)
(declare-const var1328!1 var3302)
(define-const var249 var2875 (cast-from-var3934-to-var2875 var412!1)) ; Statement: $r23 = (java.lang.Throwable) $r21 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var3934-init=([], org.hibernate.boot.registry.classloading.spi.ClassLoadingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/804823840=([org.hibernate.boot.registry.classloading.spi.ClassLoadingException, java.lang.String, java.lang.Throwable], void), cast-from-var3302-to-var2875=([java.lang.LinkageError], java.lang.Throwable), cast-from-var3934-to-var2875=([org.hibernate.boot.registry.classloading.spi.ClassLoadingException], java.lang.Throwable)}
; {var1031=org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl, var1901=r1, var2239=r0, var1730=null_type, var3302=java.lang.LinkageError, var1328=$r4, var3934=org.hibernate.boot.registry.classloading.spi.ClassLoadingException, var412=$r21, var1767=$r20, var1317=$r7, var2651=$r8, var775=$r9, var791=$r10, var2875=java.lang.Throwable, var249=$r23}
; {org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl=var1031, r1=var1901, r0=var2239, null_type=var1730, java.lang.LinkageError=var3302, $r4=var1328, org.hibernate.boot.registry.classloading.spi.ClassLoadingException=var3934, $r21=var412, $r20=var1767, $r7=var1317, $r8=var2651, $r9=var775, $r10=var791, java.lang.Throwable=var2875, $r23=var249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl;	r0 := @parameter0: java.lang.String;	$r4 := @caughtexception;	$r21 = new org.hibernate.boot.registry.classloading.spi.ClassLoadingException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load class [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.boot.registry.classloading.spi.ClassLoadingException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	$r23 = (java.lang.Throwable) $r21;	throw $r23
;block_num 2