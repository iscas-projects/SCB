(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2554 0)
(declare-sort var1730 0)
(declare-sort var3293 0)
(declare-sort var1601 0)
(declare-sort var2999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1177653502 (var3293) void)
(declare-fun cast-from-var2554-to-var3293 (var2554) var3293)
(declare-fun println/1773605060 (var1601 String) void)
(declare-fun task/-459107486 (var2554) var1730)
(declare-fun msgOutputLevel/-459107486 (var2554) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun line/-459107486 (var2554) String)
(declare-const null-var2554 var2554)
(declare-const null-var1730 var1730)
(declare-const null-Int Int)
(declare-const var2999-err var1601)
(declare-const var2454 var2554) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream 
(assert (not (= var2454 null-var2554)))
(declare-const var2845 var1730) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var2845 null-var1730)))
(declare-const var913 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var913 null-Int)))
(assert true)
;(assert (<init>/1177653502 (cast-from-var2554-to-var3293 var2454))) ; Statement: specialinvoke r0.<java.io.OutputStream: void <init>()>() 

(declare-const var2454!1 var2554)
(define-const var3561 var1601 var2999-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var3561 "As of Ant 1.2 released in October 2000, the TaskOutputStream class")) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>("As of Ant 1.2 released in October 2000, the TaskOutputStream class") 

(declare-const var3561!1 var1601)
(declare-const var3625 String)
(define-const var178 var1601 var2999-err) ; Statement: $r2 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var178 "is considered to be dead code by the Ant developers and is unmaintained.")) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>("is considered to be dead code by the Ant developers and is unmaintained.") 

(declare-const var178!1 var1601)
(declare-const var2336 String)
(define-const var387 var1601 var2999-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var387 "Don\u0027t use it!")) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>("Don\'t use it!") 

(declare-const var387!1 var1601)
(declare-const var1891 String)
(declare-const var2454!2 var2554)
(assert (not (= var2454!2 null-var2554)))
(assert (= (task/-459107486 var2454!2) var2845)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task> = r4 
(declare-const var2454!3 var2554)
(assert (not (= var2454!3 null-var2554)))
(assert (= (msgOutputLevel/-459107486 var2454!3) var913)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: int msgOutputLevel> = i0 
(define-const var940 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var940)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var940!1 String)
(declare-const var2454!4 var2554)
(assert (not (= var2454!4 null-var2554)))
(assert (= (line/-459107486 var2454!4) var940!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1177653502=([java.io.OutputStream], void), cast-from-var2554-to-var3293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], java.io.OutputStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), task/-459107486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), msgOutputLevel/-459107486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), line/-459107486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream], java.lang.StringBuffer)}
; {var2554=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream, var2454=r0, var1730=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2845=r4, var913=i0, var3293=java.io.OutputStream, var1601=java.io.PrintStream, var2999=java.lang.System, var3561=$r1, var3625="As of Ant 1.2 released in October 2000, the TaskOutputStream class", var178=$r2, var2336="is considered to be dead code by the Ant developers and is unmaintained.", var387=$r3, var1891="Don\'t use it!", var940=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream=var2554, r0=var2454, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1730, r4=var2845, i0=var913, java.io.OutputStream=var3293, java.io.PrintStream=var1601, java.lang.System=var2999, $r1=var3561, "As of Ant 1.2 released in October 2000, the TaskOutputStream class"=var3625, $r2=var178, "is considered to be dead code by the Ant developers and is unmaintained."=var2336, $r3=var387, "Don\'t use it!"=var1891, $r5=var940}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream;	r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	i0 := @parameter1: int;	specialinvoke r0.<java.io.OutputStream: void <init>()>();	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>("As of Ant 1.2 released in October 2000, the TaskOutputStream class");	$r2 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r2.<java.io.PrintStream: void println(java.lang.String)>("is considered to be dead code by the Ant developers and is unmaintained.");	$r3 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>("Don\'t use it!");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task task> = r4;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: int msgOutputLevel> = i0;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.TaskOutputStream: java.lang.StringBuffer line> = $r5;	return
;block_num 1