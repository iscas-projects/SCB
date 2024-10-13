(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3136 0)
(declare-sort var656 0)
(declare-sort var3351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1455265211 (var656) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3351-init () var3351)
(declare-fun <init>/1864341934 (var3351 String) void)
(declare-const null-var3136 var3136)
(declare-const null-var656 var656)
(declare-const var3022 var3136) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt 
(assert (not (= var3022 null-var3136)))
(declare-const var2358 var656) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement 
(assert (not (= var2358 null-var656)))
(assert true)
(define-const var3391 String (getName/1455265211 var2358)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement: java.lang.String getName()>() 
(assert true)
(define-const var3792 Bool (isEmpty/-1285796103 var3391)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: java.util.List targets> 
(assert (not (= (ite var3792 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var821 var3351 var3351-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var821 "target name must not be empty")) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("target name must not be empty") 

(declare-const var821!1 var3351)
(declare-const var2518 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1455265211=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var3351-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3136=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt, var3022=r2, var656=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement, var2358=r0, var3391=$r1, var3792=$z0, var3351=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var821=$r4, var2518="target name must not be empty"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt=var3136, r2=var3022, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement=var656, r0=var2358, $r1=var3391, $z0=var3792, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3351, $r4=var821, "target name must not be empty"=var2518}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$TargetElement: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SubAnt: java.util.List targets>;	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("target name must not be empty");	throw $r4
;block_num 2