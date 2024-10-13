(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var387 0)
(declare-sort var3877 0)
(declare-sort var1212 0)
(declare-sort var1836 0)
(declare-sort var3832 0)
(declare-sort var989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/1770548091 (var3877 String) void)
(declare-fun cast-from-var387-to-var3877 (var387) var3877)
(declare-fun var1212-init () var1212)
(declare-fun var3832-init () var3832)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var989) String)
(declare-fun cast-from-var1836-to-var989 (var1836) var989)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1717020415 (var3832 String var989) void)
(declare-fun cast-from-var3832-to-var989 (var3832) var989)
(declare-const null-var387 var387)
(declare-const null-var1836 var1836)
(declare-const var3978 var387) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask 
(assert (not (= var3978 null-var387)))
(assert true)
;(assert (log/1770548091 (cast-from-var387-to-var3877 var3978) "Running Hibernate Core SchemaUpdate.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.") 

(declare-const var3978!1 var387)
(declare-const var1804 String)
(assert true)
;(assert (log/1770548091 (cast-from-var387-to-var3877 var3978!1) "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.") 

(declare-const var3978!2 var387)
(declare-const var1064 String)
(define-const var1143 var1212 var1212-init) ; Statement: $r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2243 var1836) ; Statement: $r23 := @caughtexception 
(assert (not (= var2243 null-var1836)))
(define-const var2887 var3832 var3832-init) ; Statement: $r38 = new org.apache.tools.ant.BuildException 
(define-const var3363 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3363)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3363!1 String)
(assert (= var3363!1 ""))
(assert true)
(define-const var2652 String (append/672562846 var3363!1 "File not found: ")) ; Statement: $r27 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not found: ") 
(declare-const var3363!2 String)
(assert (= var3363!2 (str.++ var3363!1 "File not found: ")))
(assert true)
(define-const var1600 String (getMessage/849299655 (cast-from-var1836-to-var989 var2243))) ; Statement: $r26 = virtualinvoke $r23.<java.io.FileNotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var3989 String (append/672562846 var2652 var1600)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2652!1 String)
(assert (= var2652!1 (str.++ var2652 var1600)))
(assert true)
(define-const var2163 String (toString/-2075883882 var3989)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1717020415 var2887 var2163 (cast-from-var1836-to-var989 var2243))) ; Statement: specialinvoke $r38.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r29, $r23) 

(declare-const var2887!1 var3832)
(declare-const var2163!1 String)
(declare-const var2243!1 var1836)
(define-const var2768 var989 (cast-from-var3832-to-var989 var2887!1)) ; Statement: $r42 = (java.lang.Throwable) $r38 
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {log/1770548091=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String], void), cast-from-var387-to-var3877=([org.hibernate.tool.hbm2ddl.SchemaUpdateTask], org.apache.tools.ant.taskdefs.MatchingTask), var1212-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder), var3832-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1836-to-var989=([java.io.FileNotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1717020415=([org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3832-to-var989=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var387=org.hibernate.tool.hbm2ddl.SchemaUpdateTask, var3978=r0, var3877=org.apache.tools.ant.taskdefs.MatchingTask, var1804="Running Hibernate Core SchemaUpdate.", var1064="This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.", var1212=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var1143=$r34, var1836=java.io.FileNotFoundException, var2243=$r23, var3832=org.apache.tools.ant.BuildException, var2887=$r38, var3363=$r37, var2652=$r27, var989=java.lang.Throwable, var1600=$r26, var3989=$r28, var2163=$r29, var2768=$r42}
; {org.hibernate.tool.hbm2ddl.SchemaUpdateTask=var387, r0=var3978, org.apache.tools.ant.taskdefs.MatchingTask=var3877, "Running Hibernate Core SchemaUpdate."=var1804, "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org."=var1064, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var1212, $r34=var1143, java.io.FileNotFoundException=var1836, $r23=var2243, org.apache.tools.ant.BuildException=var3832, $r38=var2887, $r37=var3363, $r27=var2652, java.lang.Throwable=var989, $r26=var1600, $r28=var3989, $r29=var2163, $r42=var2768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask;	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.");	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.");	$r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r23 := @caughtexception;	$r38 = new org.apache.tools.ant.BuildException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not found: ");	$r26 = virtualinvoke $r23.<java.io.FileNotFoundException: java.lang.String getMessage()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r38.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r29, $r23);	$r42 = (java.lang.Throwable) $r38;	throw $r42
;block_num 2