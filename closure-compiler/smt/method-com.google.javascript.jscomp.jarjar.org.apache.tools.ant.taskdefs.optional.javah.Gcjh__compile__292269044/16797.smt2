(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var131 0)
(declare-sort var2109 0)
(declare-sort var1878 0)
(declare-sort var2789 0)
(declare-sort var1045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setupGcjhCommand/621727814 (var131 var2109) var1878)
(declare-fun getMessage/849299655 (var1045) String)
(declare-fun cast-from-var2789-to-var1045 (var2789) var1045)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var131 var131)
(declare-const null-var2109 var2109)
(declare-const null-var2789 var2789)
(declare-const var247 var131) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh 
(assert (not (= var247 null-var131)))
(declare-const var2577 var2109) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var2577 null-var2109)))
(assert true)
(define-const var2022 var1878 (setupGcjhCommand/621727814 var247 var2577)) ; Statement: r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupGcjhCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var707 var2789) ; Statement: $r4 := @caughtexception 
(assert (not (= var707 null-var2789)))
(assert true)
(define-const var3966 String (getMessage/849299655 (cast-from-var2789-to-var1045 var707))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>() 
(assert true)
(define-const var55 Bool (contains/1009244746 var3966 (cast-from-String-to-String "failed with return code"))) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (not (= (ite var55 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {setupGcjhCommand/621727814=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2789-to-var1045=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var131=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh, var247=r0, var2109=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var2577=r1, var1878=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2022=r2, var2789=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var707=$r4, var1045=java.lang.Throwable, var3966=$r5, var55=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh=var131, r0=var247, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var2109, r1=var2577, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1878, r2=var2022, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2789, $r4=var707, java.lang.Throwable=var1045, $r5=var3966, $z0=var55}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupGcjhCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1);	$r4 := @caughtexception;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code");	if $z0 != 0 goto return 0;	throw $r4
;block_num 3