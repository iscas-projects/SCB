(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2669 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun line/-459107486 (var2669) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun task/-459107486 (var2669) var1441)
(declare-fun msgOutputLevel/-459107486 (var2669) Int)
(declare-fun log/456963423 (var1441 String Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-const null-var2669 var2669)
(declare-const var70 var2669) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream 
(assert (not (= var70 null-var2669)))
(define-const var1112 String (line/-459107486 var70)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line> 
(assert true)
(define-const var2625 String (toString/-222306083 var1112)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2655 var1441 (task/-459107486 var70)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task> 
(define-const var2926 Int (msgOutputLevel/-459107486 var70)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: int msgOutputLevel> 
(assert true)
;(assert (log/456963423 var2655 var2625 var2926)) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>(r2, $i0) 

(declare-const var2655!1 var1441)
(declare-const var2625!1 String)
(declare-const var2926!1 Int)
(define-const var2241 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2241)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2241!1 String)
(declare-const var70!1 var2669)
(assert (not (= var70!1 null-var2669)))
(assert (= (line/-459107486 var70!1) var2241!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {line/-459107486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), task/-459107486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), msgOutputLevel/-459107486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], int), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void)}
; {var2669=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream, var70=r0, var1112=$r1, var2625=r2, var1441=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2655=$r3, var2926=$i0, var2241=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream=var2669, r0=var70, $r1=var1112, r2=var2625, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1441, $r3=var2655, $i0=var2926, $r4=var2241}
;seq <java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line>;	r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: int msgOutputLevel>;	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>(r2, $i0);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line> = $r4;	return
;block_num 1