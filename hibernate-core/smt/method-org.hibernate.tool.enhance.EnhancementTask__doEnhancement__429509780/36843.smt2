(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3011 0)
(declare-sort var548 0)
(declare-sort var358 0)
(declare-sort var953 0)
(declare-sort var2322 0)
(declare-sort var655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1128186653 (var548) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun failOnError/626267489 (var3011) Bool)
(declare-fun var2322-init () var2322)
(declare-fun <init>/1717020415 (var2322 String var655) void)
(declare-fun cast-from-var953-to-var655 (var953) var655)
(declare-fun cast-from-var2322-to-var655 (var2322) var655)
(declare-const null-var3011 var3011)
(declare-const null-var548 var548)
(declare-const null-var358 var358)
(declare-const null-var953 var953)
(declare-const var2372 var3011) ; Statement: r1 := @this: org.hibernate.tool.enhance.EnhancementTask 
(assert (not (= var2372 null-var3011)))
(declare-const var1307 var548) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1307 null-var548)))
(declare-const var3949 var358) ; Statement: r10 := @parameter1: org.hibernate.bytecode.enhance.spi.Enhancer 
(assert (not (= var3949 null-var358)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1118 var953) ; Statement: $r13 := @caughtexception 
(assert (not (= var1118 null-var953)))
(define-const var2207 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2207)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2207!1 String)
(assert (= var2207!1 ""))
(assert true)
(define-const var3807 String (append/672562846 var2207!1 "Unable to enhance class: ")) ; Statement: $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to enhance class: ") 
(declare-const var2207!2 String)
(assert (= var2207!2 (str.++ var2207!1 "Unable to enhance class: ")))
(assert true)
(define-const var1510 String (getName/1128186653 var1307)) ; Statement: $r15 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1371 String (append/672562846 var3807 var1510)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3807!1 String)
(assert (= var3807!1 (str.++ var3807 var1510)))
(assert true)
(define-const var413 String (toString/-2075883882 var1371)) ; Statement: r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3930 Bool (failOnError/626267489 var2372)) ; Statement: $z0 = r1.<org.hibernate.tool.enhance.EnhancementTask: boolean failOnError> 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<org.hibernate.tool.enhance.EnhancementTask: void log(java.lang.String,java.lang.Throwable,int)>(r21, $r13, 1) 
(assert (not (= (ite var3930 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2939 var2322 var2322-init) ; Statement: $r25 = new org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1717020415 var2939 var413 (cast-from-var953-to-var655 var1118))) ; Statement: specialinvoke $r25.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r21, $r13) 

(declare-const var2939!1 var2322)
(declare-const var413!1 String)
(declare-const var1118!1 var953)
(define-const var1696 var655 (cast-from-var2322-to-var655 var2939!1)) ; Statement: $r26 = (java.lang.Throwable) $r25 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1128186653=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), failOnError/626267489=([org.hibernate.tool.enhance.EnhancementTask], boolean), var2322-init=([], org.apache.tools.ant.BuildException), <init>/1717020415=([org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var953-to-var655=([java.lang.Exception], java.lang.Throwable), cast-from-var2322-to-var655=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var3011=org.hibernate.tool.enhance.EnhancementTask, var2372=r1, var548=java.io.File, var1307=r0, var358=org.hibernate.bytecode.enhance.spi.Enhancer, var3949=r10, var953=java.lang.Exception, var1118=$r13, var2207=$r24, var3807=$r16, var1510=$r15, var1371=$r17, var413=r21, var3930=$z0, var2322=org.apache.tools.ant.BuildException, var2939=$r25, var655=java.lang.Throwable, var1696=$r26}
; {org.hibernate.tool.enhance.EnhancementTask=var3011, r1=var2372, java.io.File=var548, r0=var1307, org.hibernate.bytecode.enhance.spi.Enhancer=var358, r10=var3949, java.lang.Exception=var953, $r13=var1118, $r24=var2207, $r16=var3807, $r15=var1510, $r17=var1371, r21=var413, $z0=var3930, org.apache.tools.ant.BuildException=var2322, $r25=var2939, java.lang.Throwable=var655, $r26=var1696}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.enhance.EnhancementTask;	r0 := @parameter0: java.io.File;	r10 := @parameter1: org.hibernate.bytecode.enhance.spi.Enhancer;	$r13 := @caughtexception;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to enhance class: ");	$r15 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = r1.<org.hibernate.tool.enhance.EnhancementTask: boolean failOnError>;	if $z0 == 0 goto virtualinvoke r1.<org.hibernate.tool.enhance.EnhancementTask: void log(java.lang.String,java.lang.Throwable,int)>(r21, $r13, 1);	$r25 = new org.apache.tools.ant.BuildException;	specialinvoke $r25.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r21, $r13);	$r26 = (java.lang.Throwable) $r25;	throw $r26
;block_num 3