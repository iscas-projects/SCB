(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1336 0)
(declare-sort var3843 0)
(declare-sort var1491 0)
(declare-sort var3611 0)
(declare-sort var1703 0)
(declare-sort var3555 0)
(declare-sort var152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskType/1957558293 (var3843) String)
(declare-fun cast-from-var1336-to-var3843 (var1336) var3843)
(declare-fun getProject/416672769 (var3611) var1491)
(declare-fun cast-from-var1336-to-var3611 (var1336) var3611)
(declare-fun getReference/-1489021156 (var1491 String) var1703)
(declare-fun cast-from-var1703-to-var3555 (var1703) var3555)
(declare-fun var152-init () var152)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var152 String) void)
(declare-const null-var1336 var1336)
(declare-const null-var3555 var3555)
(declare-const var3805 var1336) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase 
(assert (not (= var3805 null-var1336)))
(assert true)
(define-const var3943 String (getTaskType/1957558293 (cast-from-var1336-to-var3843 var3805))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase: java.lang.String getTaskType()>() 
(assert true)
(define-const var232 var1491 (getProject/416672769 (cast-from-var1336-to-var3611 var3805))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var169 var1703 (getReference/-1489021156 var232 "org.apache.ant.scriptrepo")) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.Object getReference(java.lang.String)>("org.apache.ant.scriptrepo") 
(define-const var1273 var3555 (cast-from-var1703-to-var3555 var169)) ; Statement: r4 = (java.util.Map) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase: java.lang.String getTaskType()>() 
(assert (not (not (= var1273 null-var3555)))) ; Negate: Cond: r4 != null  
(define-const var2918 var152 var152-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var492 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var492)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var492!1 String)
(assert (= var492!1 ""))
(assert true)
(define-const var3254 String (append/672562846 var492!1 "Script repository not found for ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Script repository not found for ") 
(declare-const var492!2 String)
(assert (= var492!2 (str.++ var492!1 "Script repository not found for ")))
(assert true)
(define-const var641 String (append/672562846 var3254 var3943)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3254!1 String)
(assert (= var3254!1 (str.++ var3254 var3943)))
(assert true)
(define-const var2855 String (toString/-2075883882 var641)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2918 var2855)) ; Statement: specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r17) 

(declare-const var2918!1 var152)
(declare-const var2855!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1336-to-var3843=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1336-to-var3611=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getReference/-1489021156=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.Object), cast-from-var1703-to-var3555=([java.lang.Object], java.util.Map), var152-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1336=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase, var3805=r0, var3843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3943=r1, var1491=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3611=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var232=$r2, var1703=java.lang.Object, var169=$r3, var3555=java.util.Map, var1273=r4, var152=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2918=$r13, var492=$r14, var3254=$r15, var641=$r16, var2855=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase=var1336, r0=var3805, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3843, r1=var3943, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1491, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3611, $r2=var232, java.lang.Object=var1703, $r3=var169, java.util.Map=var3555, r4=var1273, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var152, $r13=var2918, $r14=var492, $r15=var3254, $r16=var641, $r17=var2855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase: java.lang.String getTaskType()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.Object getReference(java.lang.String)>("org.apache.ant.scriptrepo");	r4 = (java.util.Map) $r3;	if r4 != null goto $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase: java.lang.String getTaskType()>();	$r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Script repository not found for ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r17);	throw $r13
;block_num 2