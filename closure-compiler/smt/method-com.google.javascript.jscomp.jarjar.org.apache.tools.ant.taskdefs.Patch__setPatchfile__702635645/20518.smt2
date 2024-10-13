(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var583 0)
(declare-sort var2655 0)
(declare-sort var1047 0)
(declare-sort var2935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2655) Bool)
(declare-fun cmd/561449068 (var583) var1047)
(declare-fun createArgument/-916843187 (var1047) var2935)
(declare-fun setValue/2115864135 (var2935 String) void)
(declare-fun setFile/-1751234205 (var2935 var2655) void)
(declare-fun havePatchfile/561449068 (var583) Bool)
(declare-const null-var583 var583)
(declare-const null-var2655 var2655)
(declare-const var2225 var583) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch 
(assert (not (= var2225 null-var583)))
(declare-const var1643 var2655) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1643 null-var2655)))
(assert true)
(define-const var2907 Bool (exists/1072868559 var1643)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert (not (= (ite var2907 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2446 var1047 (cmd/561449068 var2225)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert true)
(define-const var78 var2935 (createArgument/-916843187 var2446)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert true)
;(assert (setValue/2115864135 var78 "-i")) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>("-i") 

(declare-const var78!1 var2935)
(declare-const var1019 String)
(define-const var1039 var1047 (cmd/561449068 var2225)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert true)
(define-const var3587 var2935 (createArgument/-916843187 var1039)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert true)
;(assert (setFile/-1751234205 var3587 var1643)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setFile(java.io.File)>(r0) 

(declare-const var3587!1 var2935)
(declare-const var1643!1 var2655)
(declare-const var2225!1 var583)
(assert (not (= var2225!1 null-var583)))
(assert (= (havePatchfile/561449068 var2225!1) (ite (= 1 1) true false))) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: boolean havePatchfile> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), cmd/561449068=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), setFile/-1751234205=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.io.File], void), havePatchfile/561449068=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch], boolean)}
; {var583=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch, var2225=r1, var2655=java.io.File, var1643=r0, var2907=$z0, var1047=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2446=$r2, var2935=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var78=$r3, var1019="-i", var1039=$r4, var3587=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch=var583, r1=var2225, java.io.File=var2655, r0=var1643, $z0=var2907, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var1047, $r2=var2446, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var2935, $r3=var78, "-i"=var1019, $r4=var1039, $r5=var3587}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>("-i");	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setFile(java.io.File)>(r0);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Patch: boolean havePatchfile> = 1;	return
;block_num 2