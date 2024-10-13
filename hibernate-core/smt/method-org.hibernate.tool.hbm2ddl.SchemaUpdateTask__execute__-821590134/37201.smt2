(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2725 0)
(declare-sort var3029 0)
(declare-sort var2927 0)
(declare-sort var2050 0)
(declare-sort var1573 0)
(declare-sort var1100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/1770548091 (var3029 String) void)
(declare-fun cast-from-var2725-to-var3029 (var2725) var3029)
(declare-fun var2927-init () var2927)
(declare-fun var1573-init () var1573)
(declare-fun <init>/-236214372 (var1573 var1100) void)
(declare-fun cast-from-var2050-to-var1100 (var2050) var1100)
(declare-fun cast-from-var1573-to-var1100 (var1573) var1100)
(declare-const null-var2725 var2725)
(declare-const null-var2050 var2050)
(declare-const var2865 var2725) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask 
(assert (not (= var2865 null-var2725)))
(assert true)
;(assert (log/1770548091 (cast-from-var2725-to-var3029 var2865) "Running Hibernate Core SchemaUpdate.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.") 

(declare-const var2865!1 var2725)
(declare-const var1053 String)
(assert true)
;(assert (log/1770548091 (cast-from-var2725-to-var3029 var2865!1) "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.") 

(declare-const var2865!2 var2725)
(declare-const var2440 String)
(define-const var421 var2927 var2927-init) ; Statement: $r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2950 var2050) ; Statement: $r13 := @caughtexception 
(assert (not (= var2950 null-var2050)))
(define-const var584 var1573 var1573-init) ; Statement: $r41 = new org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-236214372 var584 (cast-from-var2050-to-var1100 var2950))) ; Statement: specialinvoke $r41.<org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r13) 

(declare-const var584!1 var1573)
(declare-const var2950!1 var2050)
(define-const var655 var1100 (cast-from-var1573-to-var1100 var584!1)) ; Statement: $r44 = (java.lang.Throwable) $r41 
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {log/1770548091=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String], void), cast-from-var2725-to-var3029=([org.hibernate.tool.hbm2ddl.SchemaUpdateTask], org.apache.tools.ant.taskdefs.MatchingTask), var2927-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder), var1573-init=([], org.apache.tools.ant.BuildException), <init>/-236214372=([org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var2050-to-var1100=([java.lang.Exception], java.lang.Throwable), cast-from-var1573-to-var1100=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var2725=org.hibernate.tool.hbm2ddl.SchemaUpdateTask, var2865=r0, var3029=org.apache.tools.ant.taskdefs.MatchingTask, var1053="Running Hibernate Core SchemaUpdate.", var2440="This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.", var2927=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var421=$r34, var2050=java.lang.Exception, var2950=$r13, var1573=org.apache.tools.ant.BuildException, var584=$r41, var1100=java.lang.Throwable, var655=$r44}
; {org.hibernate.tool.hbm2ddl.SchemaUpdateTask=var2725, r0=var2865, org.apache.tools.ant.taskdefs.MatchingTask=var3029, "Running Hibernate Core SchemaUpdate."=var1053, "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org."=var2440, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var2927, $r34=var421, java.lang.Exception=var2050, $r13=var2950, org.apache.tools.ant.BuildException=var1573, $r41=var584, java.lang.Throwable=var1100, $r44=var655}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask;	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.");	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.");	$r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r13 := @caughtexception;	$r41 = new org.apache.tools.ant.BuildException;	specialinvoke $r41.<org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r13);	$r44 = (java.lang.Throwable) $r41;	throw $r44
;block_num 2