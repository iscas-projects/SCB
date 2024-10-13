(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2621 0)
(declare-sort var403 0)
(declare-sort var186 0)
(declare-sort var3649 0)
(declare-sort var1685 0)
(declare-sort var3563 0)
(declare-sort var3762 0)
(declare-sort var662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var186) var403)
(declare-fun cast-from-var2621-to-var186 (var2621) var186)
(declare-fun log/456963423 (var3649 String Int) void)
(declare-fun cast-from-var403-to-var3649 (var403) var3649)
(declare-fun setupJavacCommand/1111077838 (var186 Bool) var1685)
(declare-fun var3563-init () var3563)
(declare-fun cast-from-var3762-to-var662 (var3762) var662)
(declare-const null-var2621 var2621)
(declare-const null-var3762 var3762)
(declare-const var1349 var2621) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12 
(assert (not (= var1349 null-var2621)))
(define-const var2006 var403 (attributes/-1036098043 (cast-from-var2621-to-var186 var1349))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
;(assert (log/456963423 (cast-from-var403-to-var3649 var2006) "Using classic compiler" 3)) ; Statement: virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>("Using classic compiler", 3) 

(declare-const var2006!1 var403)
(declare-const var552 String)
(declare-const var3874 Int)
(assert true)
(define-const var2614 var1685 (setupJavacCommand/1111077838 (cast-from-var2621-to-var186 var1349) (ite (= 1 1) true false))) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupJavacCommand(boolean)>(1) 
(define-const var3941 var3563 var3563-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var210 var3762) ; Statement: $r14 := @caughtexception 
(assert (not (= var210 null-var3762)))
(define-const var2801 Bool false) ; Statement: $z1 = $r14 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
 ; Statement: if $z1 == 0 goto $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= (ite var2801 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var311 var662 (cast-from-var3762-to-var662 var210)) ; Statement: $r17 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException) $r14 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), cast-from-var2621-to-var186=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var403-to-var3649=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setupJavacCommand/1111077838=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, boolean], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), var3563-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream), cast-from-var3762-to-var662=([java.lang.Exception], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException)}
; {var2621=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12, var1349=r0, var403=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var186=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var2006=$r1, var3649=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var552="Using classic compiler", var3874=3, var1685=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2614=r2, var3563=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream, var3941=$r3, var3762=java.lang.Exception, var210=$r14, var2801=$z1, var662=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var311=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12=var2621, r0=var1349, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var403, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var186, $r1=var2006, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3649, "Using classic compiler"=var552, 3=var3874, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1685, r2=var2614, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream=var3563, $r3=var3941, java.lang.Exception=var3762, $r14=var210, $z1=var2801, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var662, $r17=var311}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: void log(java.lang.String,int)>("Using classic compiler", 3);	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Javac12: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupJavacCommand(boolean)>(1);	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream;	$r14 := @caughtexception;	$z1 = $r14 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	if $z1 == 0 goto $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r17 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException) $r14;	throw $r17
;block_num 3