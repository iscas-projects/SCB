(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var439 0)
(declare-sort var1089 0)
(declare-sort var1250 0)
(declare-sort var2624 0)
(declare-sort var2501 0)
(declare-sort var780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1250!class ClassObject)
(declare-fun var439_getProperty/258823597 (String) String)
(declare-fun var1089-init () var1089)
(declare-fun <init>/1412888755 (var1089) void)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2501-init () var2501)
(declare-fun <init>/-198444851 (var2501 var780) void)
(declare-fun cast-from-var2624-to-var780 (var2624) var780)
(declare-const null-var2624 var2624)
(define-const var2918 String "true") ; Statement: $r1 = "true" 
(define-const var739 String (var439_getProperty/258823597 "ant.project-helper-repo.debug")) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.project-helper-repo.debug") 
(assert true)
(define-const var1906 Bool (= var2918 var739)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>($r0) 
(define-const var126 Bool var1906) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG> = $z0 
(define-const var3584 var1089 var1089-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository 
(assert true)
;(assert (<init>/1412888755 var3584)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: void <init>()>() 

(declare-const var3584!1 var1089)
(define-const var643 var1089 var3584!1) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository instance> = $r2 
(define-const var2183 ClassObject var1250!class) ; Statement: $r4 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/helper/ProjectHelper2;" 
(define-const var3105 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r3 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2516 var2624) ; Statement: $r6 := @caughtexception 
(assert (not (= var2516 null-var2624)))
(define-const var1761 var2501 var2501-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-198444851 var1761 (cast-from-var2624-to-var780 var2516))) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r6) 

(declare-const var1761!1 var2501)
(declare-const var2516!1 var2624)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var439_getProperty/258823597=([java.lang.String], java.lang.String), var1089-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository), <init>/1412888755=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository], void), arr-ClassObject-init=([], java.lang.Class[]), var2501-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-198444851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var2624-to-var780=([java.lang.Exception], java.lang.Throwable)}
; {var2918=$r1, var439=java.lang.System, var739=$r0, var1906=$z0, var126=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG>, var1089=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, var3584=$r2, var643=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository instance>, var1250=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var2183=$r4, var3105=$r3, var2624=java.lang.Exception, var2516=$r6, var2501=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1761=$r7, var780=java.lang.Throwable}
; {$r1=var2918, java.lang.System=var439, $r0=var739, $z0=var1906, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG>=var126, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository=var1089, $r2=var3584, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository instance>=var643, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var1250, $r4=var2183, $r3=var3105, java.lang.Exception=var2624, $r6=var2516, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2501, $r7=var1761, java.lang.Throwable=var780}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r1 = "true";	$r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.project-helper-repo.debug");	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>($r0);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG> = $z0;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: void <init>()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository instance> = $r2;	$r4 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/helper/ProjectHelper2;";	$r3 = newarray (java.lang.Class)[0];	$r6 := @caughtexception;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r6);	throw $r7
;block_num 2