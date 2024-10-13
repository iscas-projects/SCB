(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var269 0)
(declare-sort var3443 0)
(declare-sort var3379 0)
(declare-sort var3824 0)
(declare-sort var190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3824-init () var3824)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3824 String var190) void)
(declare-fun cast-from-var3379-to-var190 (var3379) var190)
(declare-fun cast-from-var3824-to-var190 (var3824) var190)
(declare-const null-var898 var898)
(declare-const null-String String)
(declare-const null-var3443 var3443)
(declare-const null-var3379 var3379)
(declare-const var34 var898) ; Statement: r12 := @this: org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractorInitiator 
(assert (not (= var34 null-var898)))
(declare-const var1377 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1377 null-String)))
(declare-const var534 var3443) ; Statement: r0 := @parameter1: org.hibernate.boot.registry.classloading.spi.ClassLoaderService 
(assert (not (= var534 null-var3443)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1589 var3379) ; Statement: $r5 := @caughtexception 
(assert (not (= var1589 null-var3379)))
(define-const var2729 var3824 var3824-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var2915 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2915)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2915!1 String)
(assert (= var2915!1 ""))
(assert true)
(define-const var1158 String (append/672562846 var2915!1 "Could not instantiate import sql command extractor [")) ; Statement: $r8 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate import sql command extractor [") 
(declare-const var2915!2 String)
(assert (= var2915!2 (str.++ var2915!1 "Could not instantiate import sql command extractor [")))
(assert true)
(define-const var1832 String (append/672562846 var1158 var1377)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1158!1 String)
(assert (= var1158!1 (str.++ var1158 var1377)))
(assert true)
(define-const var205 String (append/672562846 var1832 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1832!1 String)
(assert (= var1832!1 (str.++ var1832 "]")))
(assert true)
(define-const var1032 String (toString/-2075883882 var205)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2729 var1032 (cast-from-var3379-to-var190 var1589))) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var2729!1 var3824)
(declare-const var1032!1 String)
(declare-const var1589!1 var3379)
(define-const var3669 var190 (cast-from-var3824-to-var190 var2729!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3824-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3379-to-var190=([java.lang.Exception], java.lang.Throwable), cast-from-var3824-to-var190=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var898=org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractorInitiator, var34=r12, var1377=r1, var269=null_type, var3443=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var534=r0, var3379=java.lang.Exception, var1589=$r5, var3824=org.hibernate.HibernateException, var2729=$r14, var2915=$r13, var1158=$r8, var1832=$r9, var205=$r10, var1032=$r11, var190=java.lang.Throwable, var3669=$r15}
; {org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractorInitiator=var898, r12=var34, r1=var1377, null_type=var269, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var3443, r0=var534, java.lang.Exception=var3379, $r5=var1589, org.hibernate.HibernateException=var3824, $r14=var2729, $r13=var2915, $r8=var1158, $r9=var1832, $r10=var205, $r11=var1032, java.lang.Throwable=var190, $r15=var3669}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.tool.hbm2ddl.ImportSqlCommandExtractorInitiator;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.boot.registry.classloading.spi.ClassLoaderService;	$r5 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate import sql command extractor [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2