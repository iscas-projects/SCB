(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3648 0)
(declare-sort var2695 0)
(declare-sort var3331 0)
(declare-sort var812 0)
(declare-sort var807 0)
(declare-sort var3578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var807-init () var807)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/335245530 (var807 String var3578) void)
(declare-fun cast-from-var812-to-var3578 (var812) var3578)
(declare-fun cast-from-var807-to-var3578 (var807) var3578)
(declare-const null-var3648 var3648)
(declare-const null-String String)
(declare-const null-var3331 var3331)
(declare-const null-var812 var812)
(declare-const var3536 var3648) ; Statement: r11 := @this: org.hibernate.tool.schema.internal.SchemaCreatorImpl 
(assert (not (= var3536 null-var3648)))
(declare-const var2949 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2949 null-String)))
(declare-const var3678 var3331) ; Statement: r0 := @parameter1: org.hibernate.boot.registry.classloading.spi.ClassLoaderService 
(assert (not (= var3678 null-var3331)))
(declare-const var2451 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2451 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2834 var812) ; Statement: $r5 := @caughtexception 
(assert (not (= var2834 null-var812)))
(define-const var1773 var807 var807-init) ; Statement: $r15 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var1914 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1914)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1914!1 String)
(assert (= var1914!1 ""))
(assert true)
(define-const var3164 String (append/672562846 var1914!1 "Error resolving legacy import resource : ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving legacy import resource : ") 
(declare-const var1914!2 String)
(assert (= var1914!2 (str.++ var1914!1 "Error resolving legacy import resource : ")))
(assert true)
(define-const var1322 String (append/672562846 var3164 var2949)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3164!1 String)
(assert (= var3164!1 (str.++ var3164 var2949)))
(assert true)
(define-const var2267 String (toString/-2075883882 var1322)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/335245530 var1773 var2267 (cast-from-var812-to-var3578 var2834))) ; Statement: specialinvoke $r15.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5) 

(declare-const var1773!1 var807)
(declare-const var2267!1 String)
(declare-const var2834!1 var812)
(define-const var325 var3578 (cast-from-var807-to-var3578 var1773!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var807-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/335245530=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String, java.lang.Throwable], void), cast-from-var812-to-var3578=([java.lang.Exception], java.lang.Throwable), cast-from-var807-to-var3578=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var3648=org.hibernate.tool.schema.internal.SchemaCreatorImpl, var3536=r11, var2949=r1, var2695=null_type, var3331=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var3678=r0, var2451=r3, var812=java.lang.Exception, var2834=$r5, var807=org.hibernate.tool.schema.spi.SchemaManagementException, var1773=$r15, var1914=$r14, var3164=$r8, var1322=$r9, var2267=$r10, var3578=java.lang.Throwable, var325=$r16}
; {org.hibernate.tool.schema.internal.SchemaCreatorImpl=var3648, r11=var3536, r1=var2949, null_type=var2695, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var3331, r0=var3678, r3=var2451, java.lang.Exception=var812, $r5=var2834, org.hibernate.tool.schema.spi.SchemaManagementException=var807, $r15=var1773, $r14=var1914, $r8=var3164, $r9=var1322, $r10=var2267, java.lang.Throwable=var3578, $r16=var325}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.tool.schema.internal.SchemaCreatorImpl;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.boot.registry.classloading.spi.ClassLoaderService;	r3 := @parameter2: java.lang.String;	$r5 := @caughtexception;	$r15 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving legacy import resource : ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2