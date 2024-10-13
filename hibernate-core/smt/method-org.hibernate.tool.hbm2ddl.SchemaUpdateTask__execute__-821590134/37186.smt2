(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3972 0)
(declare-sort var3297 0)
(declare-sort var2310 0)
(declare-sort var2293 0)
(declare-sort var1222 0)
(declare-sort var2563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/1770548091 (var3297 String) void)
(declare-fun cast-from-var3972-to-var3297 (var3972) var3297)
(declare-fun var2310-init () var2310)
(declare-fun var1222-init () var1222)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2563) String)
(declare-fun cast-from-var2293-to-var2563 (var2293) var2563)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1717020415 (var1222 String var2563) void)
(declare-fun cast-from-var1222-to-var2563 (var1222) var2563)
(declare-const null-var3972 var3972)
(declare-const null-var2293 var2293)
(declare-const var1731 var3972) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask 
(assert (not (= var1731 null-var3972)))
(assert true)
;(assert (log/1770548091 (cast-from-var3972-to-var3297 var1731) "Running Hibernate Core SchemaUpdate.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.") 

(declare-const var1731!1 var3972)
(declare-const var2153 String)
(assert true)
;(assert (log/1770548091 (cast-from-var3972-to-var3297 var1731!1) "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.") 

(declare-const var1731!2 var3972)
(declare-const var725 String)
(define-const var227 var2310 var2310-init) ; Statement: $r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3366 var2293) ; Statement: $r16 := @caughtexception 
(assert (not (= var3366 null-var2293)))
(define-const var39 var1222 var1222-init) ; Statement: $r40 = new org.apache.tools.ant.BuildException 
(define-const var1159 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1159)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1159!1 String)
(assert (= var1159!1 ""))
(assert true)
(define-const var2436 String (append/672562846 var1159!1 "IOException : ")) ; Statement: $r20 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException : ") 
(declare-const var1159!2 String)
(assert (= var1159!2 (str.++ var1159!1 "IOException : ")))
(assert true)
(define-const var881 String (getMessage/849299655 (cast-from-var2293-to-var2563 var3366))) ; Statement: $r19 = virtualinvoke $r16.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2954 String (append/672562846 var2436 var881)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2436!1 String)
(assert (= var2436!1 (str.++ var2436 var881)))
(assert true)
(define-const var2736 String (toString/-2075883882 var2954)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1717020415 var39 var2736 (cast-from-var2293-to-var2563 var3366))) ; Statement: specialinvoke $r40.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16) 

(declare-const var39!1 var1222)
(declare-const var2736!1 String)
(declare-const var3366!1 var2293)
(define-const var1418 var2563 (cast-from-var1222-to-var2563 var39!1)) ; Statement: $r43 = (java.lang.Throwable) $r40 
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {log/1770548091=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String], void), cast-from-var3972-to-var3297=([org.hibernate.tool.hbm2ddl.SchemaUpdateTask], org.apache.tools.ant.taskdefs.MatchingTask), var2310-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder), var1222-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2293-to-var2563=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1717020415=([org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1222-to-var2563=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var3972=org.hibernate.tool.hbm2ddl.SchemaUpdateTask, var1731=r0, var3297=org.apache.tools.ant.taskdefs.MatchingTask, var2153="Running Hibernate Core SchemaUpdate.", var725="This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.", var2310=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var227=$r34, var2293=java.io.IOException, var3366=$r16, var1222=org.apache.tools.ant.BuildException, var39=$r40, var1159=$r39, var2436=$r20, var2563=java.lang.Throwable, var881=$r19, var2954=$r21, var2736=$r22, var1418=$r43}
; {org.hibernate.tool.hbm2ddl.SchemaUpdateTask=var3972, r0=var1731, org.apache.tools.ant.taskdefs.MatchingTask=var3297, "Running Hibernate Core SchemaUpdate."=var2153, "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org."=var725, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var2310, $r34=var227, java.io.IOException=var2293, $r16=var3366, org.apache.tools.ant.BuildException=var1222, $r40=var39, $r39=var1159, $r20=var2436, java.lang.Throwable=var2563, $r19=var881, $r21=var2954, $r22=var2736, $r43=var1418}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask;	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.");	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.");	$r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r16 := @caughtexception;	$r40 = new org.apache.tools.ant.BuildException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException : ");	$r19 = virtualinvoke $r16.<java.io.IOException: java.lang.String getMessage()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r16);	$r43 = (java.lang.Throwable) $r40;	throw $r43
;block_num 2