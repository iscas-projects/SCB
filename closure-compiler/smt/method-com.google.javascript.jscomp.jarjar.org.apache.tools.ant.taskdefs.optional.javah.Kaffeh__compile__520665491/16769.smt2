(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1865 0)
(declare-sort var3452 0)
(declare-sort var3451 0)
(declare-sort var2800 0)
(declare-sort var3892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setupKaffehCommand/1242448388 (var1865 var3452) var3451)
(declare-fun getMessage/849299655 (var3892) String)
(declare-fun cast-from-var2800-to-var3892 (var2800) var3892)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1865 var1865)
(declare-const null-var3452 var3452)
(declare-const null-var2800 var2800)
(declare-const var1578 var1865) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh 
(assert (not (= var1578 null-var1865)))
(declare-const var1533 var3452) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var1533 null-var3452)))
(assert true)
(define-const var2513 var3451 (setupKaffehCommand/1242448388 var1578 var1533)) ; Statement: r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupKaffehCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2243 var2800) ; Statement: $r4 := @caughtexception 
(assert (not (= var2243 null-var2800)))
(assert true)
(define-const var2593 String (getMessage/849299655 (cast-from-var2800-to-var3892 var2243))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>() 
(assert true)
(define-const var1510 Bool (contains/1009244746 var2593 (cast-from-String-to-String "failed with return code"))) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (not (= (ite var1510 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {setupKaffehCommand/1242448388=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2800-to-var3892=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1865=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh, var1578=r0, var3452=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var1533=r1, var3451=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2513=r2, var2800=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2243=$r4, var3892=java.lang.Throwable, var2593=$r5, var1510=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh=var1865, r0=var1578, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var3452, r1=var1533, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var3451, r2=var2513, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2800, $r4=var2243, java.lang.Throwable=var3892, $r5=var2593, $z0=var1510}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupKaffehCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1);	$r4 := @caughtexception;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code");	if $z0 != 0 goto return 0;	throw $r4
;block_num 3