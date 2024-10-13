(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3061 0)
(declare-sort var1713 0)
(declare-sort var3203 0)
(declare-sort var790 0)
(declare-sort var821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var790-init () var790)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/804823840 (var790 String var821) void)
(declare-fun cast-from-var3203-to-var821 (var3203) var821)
(declare-fun cast-from-var790-to-var821 (var790) var821)
(declare-const null-var3061 var3061)
(declare-const null-String String)
(declare-const null-var3203 var3203)
(declare-const var314 var3061) ; Statement: r1 := @this: org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl 
(assert (not (= var314 null-var3061)))
(declare-const var2741 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2741 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2600 var3203) ; Statement: $r11 := @caughtexception 
(assert (not (= var2600 null-var3203)))
(define-const var750 var790 var790-init) ; Statement: $r19 = new org.hibernate.boot.registry.classloading.spi.ClassLoadingException 
(define-const var3245 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3245)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3245!1 String)
(assert (= var3245!1 ""))
(assert true)
(define-const var2952 String (append/672562846 var3245!1 "Unable to load class [")) ; Statement: $r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load class [") 
(declare-const var3245!2 String)
(assert (= var3245!2 (str.++ var3245!1 "Unable to load class [")))
(assert true)
(define-const var535 String (append/672562846 var2952 var2741)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2952!1 String)
(assert (= var2952!1 (str.++ var2952 var2741)))
(assert true)
(define-const var3636 String (append/672562846 var535 "]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var535!1 String)
(assert (= var535!1 (str.++ var535 "]")))
(assert true)
(define-const var3934 String (toString/-2075883882 var3636)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/804823840 var750 var3934 (cast-from-var3203-to-var821 var2600))) ; Statement: specialinvoke $r19.<org.hibernate.boot.registry.classloading.spi.ClassLoadingException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11) 

(declare-const var750!1 var790)
(declare-const var3934!1 String)
(declare-const var2600!1 var3203)
(define-const var2460 var821 (cast-from-var790-to-var821 var750!1)) ; Statement: $r22 = (java.lang.Throwable) $r19 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var790-init=([], org.hibernate.boot.registry.classloading.spi.ClassLoadingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/804823840=([org.hibernate.boot.registry.classloading.spi.ClassLoadingException, java.lang.String, java.lang.Throwable], void), cast-from-var3203-to-var821=([java.lang.Exception], java.lang.Throwable), cast-from-var790-to-var821=([org.hibernate.boot.registry.classloading.spi.ClassLoadingException], java.lang.Throwable)}
; {var3061=org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl, var314=r1, var2741=r0, var1713=null_type, var3203=java.lang.Exception, var2600=$r11, var790=org.hibernate.boot.registry.classloading.spi.ClassLoadingException, var750=$r19, var3245=$r18, var2952=$r14, var535=$r15, var3636=$r16, var3934=$r17, var821=java.lang.Throwable, var2460=$r22}
; {org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl=var3061, r1=var314, r0=var2741, null_type=var1713, java.lang.Exception=var3203, $r11=var2600, org.hibernate.boot.registry.classloading.spi.ClassLoadingException=var790, $r19=var750, $r18=var3245, $r14=var2952, $r15=var535, $r16=var3636, $r17=var3934, java.lang.Throwable=var821, $r22=var2460}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl;	r0 := @parameter0: java.lang.String;	$r11 := @caughtexception;	$r19 = new org.hibernate.boot.registry.classloading.spi.ClassLoadingException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load class [");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.boot.registry.classloading.spi.ClassLoadingException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11);	$r22 = (java.lang.Throwable) $r19;	throw $r22
;block_num 2