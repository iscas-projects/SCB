(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2700 0)
(declare-sort var3258 0)
(declare-sort var2497 0)
(declare-sort var642 0)
(declare-sort var3363 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3363-init () var3363)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3363 String var1383) void)
(declare-fun cast-from-var642-to-var1383 (var642) var1383)
(declare-fun cast-from-var3363-to-var1383 (var3363) var1383)
(declare-const null-var2700 var2700)
(declare-const null-String String)
(declare-const null-var2497 var2497)
(declare-const null-var642 var642)
(declare-const var594 var2700) ; Statement: r11 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var594 null-var2700)))
(declare-const var1314 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1314 null-String)))
(declare-const var2646 var2497) ; Statement: r0 := @parameter1: org.hibernate.boot.registry.classloading.spi.ClassLoaderService 
(assert (not (= var2646 null-var2497)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2242 var642) ; Statement: $r4 := @caughtexception 
(assert (not (= var2242 null-var642)))
(define-const var1446 var3363 var3363-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var2231 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2231)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2231!1 String)
(assert (= var2231!1 ""))
(assert true)
(define-const var2955 String (append/672562846 var2231!1 "Could not instantiate requested listener [")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate requested listener [") 
(declare-const var2231!2 String)
(assert (= var2231!2 (str.++ var2231!1 "Could not instantiate requested listener [")))
(assert true)
(define-const var278 String (append/672562846 var2955 var1314)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2955!1 String)
(assert (= var2955!1 (str.++ var2955 var1314)))
(assert true)
(define-const var3748 String (append/672562846 var278 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var278!1 String)
(assert (= var278!1 (str.++ var278 "]")))
(assert true)
(define-const var2788 String (toString/-2075883882 var3748)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var1446 var2788 (cast-from-var642-to-var1383 var2242))) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var1446!1 var3363)
(declare-const var2788!1 String)
(declare-const var2242!1 var642)
(define-const var3914 var1383 (cast-from-var3363-to-var1383 var1446!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3363-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var642-to-var1383=([java.lang.Exception], java.lang.Throwable), cast-from-var3363-to-var1383=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2700=org.hibernate.boot.internal.MetadataImpl, var594=r11, var1314=r1, var3258=null_type, var2497=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var2646=r0, var642=java.lang.Exception, var2242=$r4, var3363=org.hibernate.HibernateException, var1446=$r13, var2231=$r12, var2955=$r7, var278=$r8, var3748=$r9, var2788=$r10, var1383=java.lang.Throwable, var3914=$r14}
; {org.hibernate.boot.internal.MetadataImpl=var2700, r11=var594, r1=var1314, null_type=var3258, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var2497, r0=var2646, java.lang.Exception=var642, $r4=var2242, org.hibernate.HibernateException=var3363, $r13=var1446, $r12=var2231, $r7=var2955, $r8=var278, $r9=var3748, $r10=var2788, java.lang.Throwable=var1383, $r14=var3914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.boot.internal.MetadataImpl;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.boot.registry.classloading.spi.ClassLoaderService;	$r4 := @caughtexception;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate requested listener [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2