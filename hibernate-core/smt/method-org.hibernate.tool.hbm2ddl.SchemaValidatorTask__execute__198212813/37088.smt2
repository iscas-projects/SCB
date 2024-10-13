(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3784 0)
(declare-sort var1363 0)
(declare-sort var3375 0)
(declare-sort var500 0)
(declare-sort var2125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1363-init () var1363)
(declare-fun var500-init () var500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2125) String)
(declare-fun cast-from-var3375-to-var2125 (var3375) var2125)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1717020415 (var500 String var2125) void)
(declare-fun cast-from-var500-to-var2125 (var500) var2125)
(declare-const null-var3784 var3784)
(declare-const null-var3375 var3375)
(declare-const var2918 var3784) ; Statement: r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask 
(assert (not (= var2918 null-var3784)))
(define-const var3982 var1363 var1363-init) ; Statement: $r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1886 var3375) ; Statement: $r12 := @caughtexception 
(assert (not (= var1886 null-var3375)))
(define-const var1465 var500 var500-init) ; Statement: $r33 = new org.apache.tools.ant.BuildException 
(define-const var2142 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2142)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2142!1 String)
(assert (= var2142!1 ""))
(assert true)
(define-const var1368 String (append/672562846 var2142!1 "IOException : ")) ; Statement: $r16 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException : ") 
(declare-const var2142!2 String)
(assert (= var2142!2 (str.++ var2142!1 "IOException : ")))
(assert true)
(define-const var2100 String (getMessage/849299655 (cast-from-var3375-to-var2125 var1886))) ; Statement: $r15 = virtualinvoke $r12.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2562 String (append/672562846 var1368 var2100)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1368!1 String)
(assert (= var1368!1 (str.++ var1368 var2100)))
(assert true)
(define-const var937 String (toString/-2075883882 var2562)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1717020415 var1465 var937 (cast-from-var3375-to-var2125 var1886))) ; Statement: specialinvoke $r33.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var1465!1 var500)
(declare-const var937!1 String)
(declare-const var1886!1 var3375)
(define-const var1689 var2125 (cast-from-var500-to-var2125 var1465!1)) ; Statement: $r36 = (java.lang.Throwable) $r33 
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {var1363-init=([], org.hibernate.boot.registry.StandardServiceRegistryBuilder), var500-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3375-to-var2125=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1717020415=([org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var500-to-var2125=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var3784=org.hibernate.tool.hbm2ddl.SchemaValidatorTask, var2918=r1, var1363=org.hibernate.boot.registry.StandardServiceRegistryBuilder, var3982=$r27, var3375=java.io.IOException, var1886=$r12, var500=org.apache.tools.ant.BuildException, var1465=$r33, var2142=$r32, var1368=$r16, var2125=java.lang.Throwable, var2100=$r15, var2562=$r17, var937=$r18, var1689=$r36}
; {org.hibernate.tool.hbm2ddl.SchemaValidatorTask=var3784, r1=var2918, org.hibernate.boot.registry.StandardServiceRegistryBuilder=var1363, $r27=var3982, java.io.IOException=var3375, $r12=var1886, org.apache.tools.ant.BuildException=var500, $r33=var1465, $r32=var2142, $r16=var1368, java.lang.Throwable=var2125, $r15=var2100, $r17=var2562, $r18=var937, $r36=var1689}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.hbm2ddl.SchemaValidatorTask;	$r27 = new org.hibernate.boot.registry.StandardServiceRegistryBuilder;	$r12 := @caughtexception;	$r33 = new org.apache.tools.ant.BuildException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException : ");	$r15 = virtualinvoke $r12.<java.io.IOException: java.lang.String getMessage()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	$r36 = (java.lang.Throwable) $r33;	throw $r36
;block_num 2