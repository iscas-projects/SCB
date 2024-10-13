(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3843 0)
(declare-sort var2942 0)
(declare-sort var3221 0)
(declare-sort var2076 0)
(declare-sort var179 0)
(declare-sort var2868 0)
(declare-sort var2608 0)
(declare-sort var3284 0)
(declare-sort var75 0)
(declare-sort var2384 0)
(declare-sort var3263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2608!class ClassObject)
(declare-fun getTask/1349963761 (var2076) var3221)
(declare-fun cast-from-var3843-to-var2076 (var3843) var2076)
(declare-fun getProject/416672769 (var2868) var179)
(declare-fun cast-from-var3221-to-var2868 (var3221) var2868)
(declare-fun addTaskDefinition/1394806737 (var179 String ClassObject) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3284) String)
(declare-fun cast-from-var2942-to-var3284 (var2942) var3284)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var2076 String Int) void)
(declare-fun var2384-init () var2384)
(declare-fun <init>/-191906322 (var2384 String var3263) void)
(declare-fun cast-from-var75-to-var3263 (var75) var3263)
(declare-const null-var3843 var3843)
(declare-const null-var2942 var2942)
(declare-const null-var75 var75)
(declare-const var3939 var3843) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool 
(assert (not (= var3939 null-var3843)))
(declare-const var63 var2942) ; Statement: r4 := @parameter0: java.io.File 
(assert (not (= var63 null-var2942)))
(assert true)
(define-const var2880 var3221 (getTask/1349963761 (cast-from-var3843-to-var2076 var3939))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>() 
(assert true)
(define-const var2733 var179 (getProject/416672769 (cast-from-var3221-to-var2868 var2880))) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (addTaskDefinition/1394806737 var2733 "internal_bas_generateclient" var2608!class)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addTaskDefinition(java.lang.String,java.lang.Class)>("internal_bas_generateclient", class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;") 

(declare-const var2733!1 var179)
(declare-const var1864 String)
(declare-const var1840 ClassObject)
(define-const var1082 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1082)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1082!1 String)
(assert (= var1082!1 ""))
(assert true)
(define-const var140 String (append/672562846 var1082!1 "generate client for ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("generate client for ") 
(declare-const var1082!2 String)
(assert (= var1082!2 (str.++ var1082!1 "generate client for ")))
(assert true)
(define-const var2083 String (append/-1031950772 var140 (cast-from-var2942-to-var3284 var63))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var140!1 String)
(assert (str.prefixof var140 var140!1))
(assert true)
(define-const var846 String (toString/-2075883882 var2083)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3843-to-var2076 var3939) var846 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: void log(java.lang.String,int)>($r7, 2) 

(declare-const var3939!1 var3843)
(declare-const var846!1 String)
(declare-const var1757 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1171 var75) ; Statement: $r12 := @caughtexception 
(assert (not (= var1171 null-var75)))
(define-const var1408 var2384 var2384-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var1408 "Exception while calling com.inprise.ejb.util.Verify" (cast-from-var75-to-var3263 var1171))) ; Statement: specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>("Exception while calling com.inprise.ejb.util.Verify", $r12) 

(declare-const var1408!1 var2384)
(declare-const var59 String)
(declare-const var1171!1 var75)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/1349963761=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), cast-from-var3843-to-var2076=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3221-to-var2868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), addTaskDefinition/1394806737=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.Class], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2942-to-var3284=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), var2384-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var75-to-var3263=([java.lang.Exception], java.lang.Throwable)}
; {var3843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool, var3939=r0, var2942=java.io.File, var63=r4, var3221=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2076=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2880=$r1, var179=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2868=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2733=$r2, var2608=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandGenerateClient, var1864="internal_bas_generateclient", var1840=class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;", var1082=$r3, var140=$r5, var3284=java.lang.Object, var2083=$r6, var846=$r7, var1757=2, var75=java.lang.Exception, var1171=$r12, var2384=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1408=$r13, var3263=java.lang.Throwable, var59="Exception while calling com.inprise.ejb.util.Verify"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool=var3843, r0=var3939, java.io.File=var2942, r4=var63, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3221, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2076, $r1=var2880, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var179, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2868, $r2=var2733, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandGenerateClient=var2608, "internal_bas_generateclient"=var1864, class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;"=var1840, $r3=var1082, $r5=var140, java.lang.Object=var3284, $r6=var2083, $r7=var846, 2=var1757, java.lang.Exception=var75, $r12=var1171, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2384, $r13=var1408, java.lang.Throwable=var3263, "Exception while calling com.inprise.ejb.util.Verify"=var59}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool;	r4 := @parameter0: java.io.File;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>();	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void addTaskDefinition(java.lang.String,java.lang.Class)>("internal_bas_generateclient", class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/taskdefs/optional/ejb/BorlandGenerateClient;");	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("generate client for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: void log(java.lang.String,int)>($r7, 2);	$r12 := @caughtexception;	$r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>("Exception while calling com.inprise.ejb.util.Verify", $r12);	throw $r13
;block_num 2