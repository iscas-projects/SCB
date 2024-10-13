(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1285 0)
(declare-sort var3885 0)
(declare-sort var1074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dir/-951898754 (var1285) var1074)
(declare-fun isDirectory/-2122094196 (var1074) Bool)
(declare-fun setWorkingDirectory/1420652384 (var3885 var1074) void)
(declare-const null-var1285 var1285)
(declare-const null-var3885 var3885)
(declare-const null-var1074 var1074)
(declare-const var642 var1285) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java 
(assert (not (= var642 null-var1285)))
(declare-const var2213 var3885) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute 
(assert (not (= var2213 null-var3885)))
(define-const var1033 var1074 (dir/-951898754 var642)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert (not (= var1033 null-var1074))) ; Cond: $r1 != null 
(define-const var789 var1074 (dir/-951898754 var642)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert true)
(define-const var2491 Bool (isDirectory/-2122094196 var789)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert (not (= (ite var2491 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1412 var1074 (dir/-951898754 var642)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir> 
(assert true)
;(assert (setWorkingDirectory/1420652384 var2213 var1412)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: void setWorkingDirectory(java.io.File)>($r4) 

(declare-const var2213!1 var3885)
(declare-const var1412!1 var1074)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {dir/-951898754=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java], java.io.File), isDirectory/-2122094196=([java.io.File], boolean), setWorkingDirectory/1420652384=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, java.io.File], void)}
; {var1285=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java, var642=r0, var3885=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var2213=r3, var1074=java.io.File, var1033=$r1, var789=$r2, var2491=$z0, var1412=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java=var1285, r0=var642, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var3885, r3=var2213, java.io.File=var1074, $r1=var1033, $r2=var789, $z0=var2491, $r4=var1412}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	$z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>();	if $z0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Java: java.io.File dir>;	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: void setWorkingDirectory(java.io.File)>($r4);	return
;block_num 3