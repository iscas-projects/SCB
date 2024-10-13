(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var723 0)
(declare-sort var3076 0)
(declare-sort var1412 0)
(declare-sort var3653 0)
(declare-sort var2869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setupKaffehCommand/1242448388 (var723 var3076) var1412)
(declare-fun getMessage/849299655 (var2869) String)
(declare-fun cast-from-var3653-to-var2869 (var3653) var2869)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var723 var723)
(declare-const null-var3076 var3076)
(declare-const null-var3653 var3653)
(declare-const var2307 var723) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh 
(assert (not (= var2307 null-var723)))
(declare-const var3595 var3076) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var3595 null-var3076)))
(assert true)
(define-const var2138 var1412 (setupKaffehCommand/1242448388 var2307 var3595)) ; Statement: r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupKaffehCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3332 var3653) ; Statement: $r4 := @caughtexception 
(assert (not (= var3332 null-var3653)))
(assert true)
(define-const var3285 String (getMessage/849299655 (cast-from-var3653-to-var2869 var3332))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>() 
(assert true)
(define-const var3552 Bool (contains/1009244746 var3285 (cast-from-String-to-String "failed with return code"))) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (= (ite var3552 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {setupKaffehCommand/1242448388=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3653-to-var2869=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var723=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh, var2307=r0, var3076=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var3595=r1, var1412=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2138=r2, var3653=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3332=$r4, var2869=java.lang.Throwable, var3285=$r5, var3552=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh=var723, r0=var2307, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var3076, r1=var3595, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1412, r2=var2138, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3653, $r4=var3332, java.lang.Throwable=var2869, $r5=var3285, $z0=var3552}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupKaffehCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1);	$r4 := @caughtexception;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code");	if $z0 != 0 goto return 0;	return 0
;block_num 3