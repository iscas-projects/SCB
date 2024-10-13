(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var539 0)
(declare-sort var972 0)
(declare-sort var1142 0)
(declare-sort var2742 0)
(declare-sort var234 0)
(declare-sort var1234 0)
(declare-sort var2848 0)
(declare-sort var3911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1142) String)
(declare-fun cast-from-var972-to-var1142 (var972) var1142)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var2742 String Int) void)
(declare-fun cast-from-var539-to-var2742 (var539) var2742)
(declare-fun var234-init () var234)
(declare-fun var2848-init () var2848)
(declare-fun <init>/-191906322 (var2848 String var3911) void)
(declare-fun cast-from-var1234-to-var3911 (var1234) var3911)
(declare-const null-var539 var539)
(declare-const null-var972 var972)
(declare-const null-var1234 var1234)
(declare-const var1249 var539) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool 
(assert (not (= var1249 null-var539)))
(declare-const var1401 var972) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var1401 null-var972)))
(define-const var909 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var909)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var909!1 String)
(assert (= var909!1 ""))
(assert true)
(define-const var2575 String (append/672562846 var909!1 "verify BES ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("verify BES ") 
(declare-const var909!2 String)
(assert (= var909!2 (str.++ var909!1 "verify BES ")))
(assert true)
(define-const var458 String (append/-1031950772 var2575 (cast-from-var972-to-var1142 var1401))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2575!1 String)
(assert (str.prefixof var2575 var2575!1))
(assert true)
(define-const var768 String (toString/-2075883882 var458)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var539-to-var2742 var1249) var768 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: void log(java.lang.String,int)>($r5, 2) 

(declare-const var1249!1 var539)
(declare-const var768!1 String)
(declare-const var1036 Int)
(define-const var3585 var234 var234-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3800 var1234) ; Statement: $r19 := @caughtexception 
(assert (not (= var3800 null-var1234)))
(define-const var3363 var2848 var2848-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var3363 "Exception while calling generateclient Details: " (cast-from-var1234-to-var3911 var3800))) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>("Exception while calling generateclient Details: ", $r19) 

(declare-const var3363!1 var2848)
(declare-const var1014 String)
(declare-const var3800!1 var1234)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var972-to-var1142=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), cast-from-var539-to-var2742=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), var234-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask), var2848-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1234-to-var3911=([java.lang.Exception], java.lang.Throwable)}
; {var539=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool, var1249=r0, var972=java.io.File, var1401=r2, var909=$r1, var2575=$r3, var1142=java.lang.Object, var458=$r4, var768=$r5, var2742=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1036=2, var234=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var3585=$r6, var1234=java.lang.Exception, var3800=$r19, var2848=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3363=$r20, var3911=java.lang.Throwable, var1014="Exception while calling generateclient Details: "}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool=var539, r0=var1249, java.io.File=var972, r2=var1401, $r1=var909, $r3=var2575, java.lang.Object=var1142, $r4=var458, $r5=var768, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2742, 2=var1036, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var234, $r6=var3585, java.lang.Exception=var1234, $r19=var3800, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2848, $r20=var3363, java.lang.Throwable=var3911, "Exception while calling generateclient Details: "=var1014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool;	r2 := @parameter0: java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("verify BES ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: void log(java.lang.String,int)>($r5, 2);	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	$r19 := @caughtexception;	$r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>("Exception while calling generateclient Details: ", $r19);	throw $r20
;block_num 2