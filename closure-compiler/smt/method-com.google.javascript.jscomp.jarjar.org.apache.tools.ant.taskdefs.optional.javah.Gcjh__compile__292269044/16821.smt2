(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var46 0)
(declare-sort var1202 0)
(declare-sort var568 0)
(declare-sort var601 0)
(declare-sort var2347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setupGcjhCommand/621727814 (var46 var1202) var568)
(declare-fun getMessage/849299655 (var2347) String)
(declare-fun cast-from-var601-to-var2347 (var601) var2347)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var46 var46)
(declare-const null-var1202 var1202)
(declare-const null-var601 var601)
(declare-const var1927 var46) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh 
(assert (not (= var1927 null-var46)))
(declare-const var2658 var1202) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var2658 null-var1202)))
(assert true)
(define-const var3319 var568 (setupGcjhCommand/621727814 var1927 var2658)) ; Statement: r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupGcjhCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2483 var601) ; Statement: $r4 := @caughtexception 
(assert (not (= var2483 null-var601)))
(assert true)
(define-const var2081 String (getMessage/849299655 (cast-from-var601-to-var2347 var2483))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>() 
(assert true)
(define-const var1683 Bool (contains/1009244746 var2081 (cast-from-String-to-String "failed with return code"))) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (= (ite var1683 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {setupGcjhCommand/621727814=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var601-to-var2347=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var46=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh, var1927=r0, var1202=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var2658=r1, var568=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3319=r2, var601=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2483=$r4, var2347=java.lang.Throwable, var2081=$r5, var1683=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh=var46, r0=var1927, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var1202, r1=var2658, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var568, r2=var3319, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var601, $r4=var2483, java.lang.Throwable=var2347, $r5=var2081, $z0=var1683}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Gcjh: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupGcjhCommand(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah)>(r1);	$r4 := @caughtexception;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean contains(java.lang.CharSequence)>("failed with return code");	if $z0 != 0 goto return 0;	return 0
;block_num 3