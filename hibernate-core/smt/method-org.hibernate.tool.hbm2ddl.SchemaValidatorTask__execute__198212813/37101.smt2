(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3642 0)
(declare-sort var74 0)
(declare-sort var3462 0)
(declare-sort var2165 0)
(declare-sort var2838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var74-init () var74)
(declare-fun var2165-init () var2165)
(declare-fun <init>/-236214372 (var2165 var2838) void)
(declare-fun cast-from-var3462-to-var2838 (var3462) var2838)
(declare-fun cast-from-var2165-to-var2838 (var2165) var2838)
(declare-const null-var3642 var3642)
(declare-const null-var3462 var3462)
(declare-const var2355 var3642) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var2355 null-var3642)))
(define-const var1959 var74 var74-init) ; Statement: $r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2321 var3462) ; Statement: $r9 := @caughtexception 
(assert (not (= var2321 null-var3462)))
(define-const var1732 var2165 var2165-init) ; Statement: $r34 = new org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-236214372 var1732 (cast-from-var3462-to-var2838 var2321))) ; Statement: specialinvoke $r34.<org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r9) 

(declare-const var1732!1 var2165)
(declare-const var2321!1 var3462)
(define-const var3122 var2838 (cast-from-var2165-to-var2838 var1732!1)) ; Statement: $r37 = (java.lang.Throwable) $r34 
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var74-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder), var2165-init=([], org.apache.tools.ant.BuildException), <init>/-236214372=([org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var3462-to-var2838=([java.lang.Exception], java.lang.Throwable), cast-from-var2165-to-var2838=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var3642=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var2355=r1, var74=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var1959=$r27, var3462=java.lang.Exception, var2321=$r9, var2165=org.apache.tools.ant.BuildException, var1732=$r34, var2838=java.lang.Throwable, var3122=$r37}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var3642, r1=var2355, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var74, $r27=var1959, java.lang.Exception=var3462, $r9=var2321, org.apache.tools.ant.BuildException=var2165, $r34=var1732, java.lang.Throwable=var2838, $r37=var3122}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	$r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r9 := @caughtexception;	$r34 = new org.apache.tools.ant.BuildException;	specialinvoke $r34.<org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r9);	$r37 = (java.lang.Throwable) $r34;	throw $r37
;block_num 2