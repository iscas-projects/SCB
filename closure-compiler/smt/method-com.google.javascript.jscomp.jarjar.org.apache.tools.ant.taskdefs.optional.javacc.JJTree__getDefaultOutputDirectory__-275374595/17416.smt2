(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1061 0)
(declare-sort var3206 0)
(declare-sort var2549 0)
(declare-sort var3051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/416672769 (var2549) var3206)
(declare-fun cast-from-var1061-to-var2549 (var1061) var2549)
(declare-fun getBaseDir/-1460223445 (var3206) var3051)
(declare-fun getAbsolutePath/-802773300 (var3051) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var1061 var1061)
(declare-const var827 var1061) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree 
(assert (not (= var827 null-var1061)))
(assert true)
(define-const var431 var3206 (getProject/416672769 (cast-from-var1061-to-var2549 var827))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var1515 var3051 (getBaseDir/-1460223445 var431)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File getBaseDir()>() 
(assert true)
(define-const var729 String (getAbsolutePath/-802773300 var1515)) ; Statement: $r3 = virtualinvoke $r2.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3852 String (replace/1524665721 var729 92 47)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1061-to-var2549=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getBaseDir/-1460223445=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.io.File), getAbsolutePath/-802773300=([java.io.File], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1061=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree, var827=r0, var3206=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2549=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var431=$r1, var3051=java.io.File, var1515=$r2, var729=$r3, var3852=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree=var1061, r0=var827, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3206, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2549, $r1=var431, java.io.File=var3051, $r2=var1515, $r3=var729, $r4=var3852}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File getBaseDir()>();	$r3 = virtualinvoke $r2.<java.io.File: java.lang.String getAbsolutePath()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	return $r4
;block_num 1