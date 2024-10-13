(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3682 0)
(declare-sort var2657 0)
(declare-sort var2557 0)
(declare-sort var2948 0)
(declare-sort var2009 0)
(declare-sort var1172 0)
(declare-sort var2765 0)
(declare-sort var2584 0)
(declare-sort var255 0)
(declare-sort var1479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var2557) var2657)
(declare-fun cast-from-var3682-to-var2557 (var3682) var2557)
(declare-fun log/456963423 (var2948 String Int) void)
(declare-fun cast-from-var2657-to-var2948 (var2657) var2948)
(declare-fun setupJavacCommand/1111077838 (var2557 Bool) var2009)
(declare-fun var1172-init () var1172)
(declare-fun var2584-init () var2584)
(declare-fun location/-1036098043 (var2557) var255)
(declare-fun <init>/1933136886 (var2584 String var1479 var255) void)
(declare-fun cast-from-var2765-to-var1479 (var2765) var1479)
(declare-const null-var3682 var3682)
(declare-const null-var2765 var2765)
(declare-const var1848 var3682) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12 
(assert (not (= var1848 null-var3682)))
(define-const var1246 var2657 (attributes/-1036098043 (cast-from-var3682-to-var2557 var1848))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
;(assert (log/456963423 (cast-from-var2657-to-var2948 var1246) "Using classic compiler" 3)) ; Statement: virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>("Using classic compiler", 3) 

(declare-const var1246!1 var2657)
(declare-const var2570 String)
(declare-const var1697 Int)
(assert true)
(define-const var2248 var2009 (setupJavacCommand/1111077838 (cast-from-var3682-to-var2557 var1848) (ite (= 1 1) true false))) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupJavacCommand(boolean)>(1) 
(define-const var1102 var1172 var1172-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var672 var2765) ; Statement: $r14 := @caughtexception 
(assert (not (= var672 null-var2765)))
(define-const var952 Bool false) ; Statement: $z1 = $r14 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
 ; Statement: if $z1 == 0 goto $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= (ite var952 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3181 var2584 var2584-init) ; Statement: $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1656 var255 (location/-1036098043 (cast-from-var3682-to-var2557 var1848))) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location> 
(assert true)
;(assert (<init>/1933136886 var3181 "Error starting classic compiler: " (cast-from-var2765-to-var1479 var672) var1656)) ; Statement: specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("Error starting classic compiler: ", $r14, $r16) 

(declare-const var3181!1 var2584)
(declare-const var3828 String)
(declare-const var672!1 var2765)
(declare-const var1656!1 var255)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), cast-from-var3682-to-var2557=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2657-to-var2948=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setupJavacCommand/1111077838=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, boolean], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), var1172-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream), var2584-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), location/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var2765-to-var1479=([java.lang.Exception], java.lang.Throwable)}
; {var3682=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12, var1848=r0, var2657=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var2557=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var1246=$r1, var2948=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2570="Using classic compiler", var1697=3, var2009=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2248=r2, var1172=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream, var1102=$r3, var2765=java.lang.Exception, var672=$r14, var952=$z1, var2584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3181=$r15, var255=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1656=$r16, var1479=java.lang.Throwable, var3828="Error starting classic compiler: "}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12=var3682, r0=var1848, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var2657, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var2557, $r1=var1246, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2948, "Using classic compiler"=var2570, 3=var1697, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2009, r2=var2248, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream=var1172, $r3=var1102, java.lang.Exception=var2765, $r14=var672, $z1=var952, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2584, $r15=var3181, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var255, $r16=var1656, java.lang.Throwable=var1479, "Error starting classic compiler: "=var3828}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>("Using classic compiler", 3);	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupJavacCommand(boolean)>(1);	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream;	$r14 := @caughtexception;	$z1 = $r14 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	if $z1 == 0 goto $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location>;	specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("Error starting classic compiler: ", $r14, $r16);	throw $r15
;block_num 3