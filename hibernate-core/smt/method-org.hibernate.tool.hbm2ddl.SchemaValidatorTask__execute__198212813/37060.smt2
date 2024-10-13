(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var542 0)
(declare-sort var3237 0)
(declare-sort var1666 0)
(declare-sort var3315 0)
(declare-sort var3307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3237-init () var3237)
(declare-fun var3315-init () var3315)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3307) String)
(declare-fun cast-from-var1666-to-var3307 (var1666) var3307)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1717020415 (var3315 String var3307) void)
(declare-fun cast-from-var3315-to-var3307 (var3315) var3307)
(declare-const null-var542 var542)
(declare-const null-var1666 var1666)
(declare-const var3207 var542) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var3207 null-var542)))
(define-const var253 var3237 var3237-init) ; Statement: $r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2900 var1666) ; Statement: $r19 := @caughtexception 
(assert (not (= var2900 null-var1666)))
(define-const var1611 var3315 var3315-init) ; Statement: $r31 = new org.apache.tools.ant.BuildException 
(define-const var1865 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1865)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1865!1 String)
(assert (= var1865!1 ""))
(assert true)
(define-const var2773 String (append/672562846 var1865!1 "File not found: ")) ; Statement: $r23 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not found: ") 
(declare-const var1865!2 String)
(assert (= var1865!2 (str.++ var1865!1 "File not found: ")))
(assert true)
(define-const var370 String (getMessage/849299655 (cast-from-var1666-to-var3307 var2900))) ; Statement: $r22 = virtualinvoke $r19.<java.io.FileNotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var1942 String (append/672562846 var2773 var370)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2773!1 String)
(assert (= var2773!1 (str.++ var2773 var370)))
(assert true)
(define-const var349 String (toString/-2075883882 var1942)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1717020415 var1611 var349 (cast-from-var1666-to-var3307 var2900))) ; Statement: specialinvoke $r31.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19) 

(declare-const var1611!1 var3315)
(declare-const var349!1 String)
(declare-const var2900!1 var1666)
(define-const var2314 var3307 (cast-from-var3315-to-var3307 var1611!1)) ; Statement: $r35 = (java.lang.Throwable) $r31 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var3237-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder), var3315-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1666-to-var3307=([java.io.FileNotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1717020415=([org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3315-to-var3307=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var542=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var3207=r1, var3237=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var253=$r27, var1666=java.io.FileNotFoundException, var2900=$r19, var3315=org.apache.tools.ant.BuildException, var1611=$r31, var1865=$r30, var2773=$r23, var3307=java.lang.Throwable, var370=$r22, var1942=$r24, var349=$r25, var2314=$r35}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var542, r1=var3207, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var3237, $r27=var253, java.io.FileNotFoundException=var1666, $r19=var2900, org.apache.tools.ant.BuildException=var3315, $r31=var1611, $r30=var1865, $r23=var2773, java.lang.Throwable=var3307, $r22=var370, $r24=var1942, $r25=var349, $r35=var2314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	$r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r19 := @caughtexception;	$r31 = new org.apache.tools.ant.BuildException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not found: ");	$r22 = virtualinvoke $r19.<java.io.FileNotFoundException: java.lang.String getMessage()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19);	$r35 = (java.lang.Throwable) $r31;	throw $r35
;block_num 2