(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1072 0)
(declare-sort var3839 0)
(declare-sort var1457 0)
(declare-sort var873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/1770548091 (var3839 String) void)
(declare-fun cast-from-var1072-to-var3839 (var1072) var3839)
(declare-fun var1457-init () var1457)
(declare-const null-var1072 var1072)
(declare-const null-var873 var873)
(declare-const var791 var1072) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask 
(assert (not (= var791 null-var1072)))
(assert true)
;(assert (log/1770548091 (cast-from-var1072-to-var3839 var791) "Running Hibernate Core SchemaUpdate.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.") 

(declare-const var791!1 var1072)
(declare-const var3385 String)
(assert true)
;(assert (log/1770548091 (cast-from-var1072-to-var3839 var791!1) "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.")) ; Statement: virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.") 

(declare-const var791!2 var1072)
(declare-const var3898 String)
(define-const var3088 var1457 var1457-init) ; Statement: $r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3582 var873) ; Statement: $r15 := @caughtexception 
(assert (not (= var3582 null-var873)))
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {log/1770548091=([org.apache.tools.ant.taskdefs.MatchingTask, java.lang.String], void), cast-from-var1072-to-var3839=([org.hibernate.tool.hbm2ddl.SchemaUpdateTask], org.apache.tools.ant.taskdefs.MatchingTask), var1457-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder)}
; {var1072=org.hibernate.tool.hbm2ddl.SchemaUpdateTask, var791=r0, var3839=org.apache.tools.ant.taskdefs.MatchingTask, var3385="Running Hibernate Core SchemaUpdate.", var3898="This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.", var1457=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var3088=$r34, var873=java.lang.Throwable, var3582=$r15}
; {org.hibernate.tool.hbm2ddl.SchemaUpdateTask=var1072, r0=var791, org.apache.tools.ant.taskdefs.MatchingTask=var3839, "Running Hibernate Core SchemaUpdate."=var3385, "This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org."=var3898, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var1457, $r34=var3088, java.lang.Throwable=var873, $r15=var3582}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask;	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("Running Hibernate Core SchemaUpdate.");	virtualinvoke r0.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: void log(java.lang.String)>("This is an Ant task supporting only mapping files, if you want to use annotations see http://tools.hibernate.org.");	$r34 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r15 := @caughtexception;	throw $r15
;block_num 2