(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var396 0)
(declare-sort var1197 0)
(declare-sort var1860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1860-init () var1860)
(declare-fun <init>/1864341934 (var1860 String) void)
(declare-const null-var396 var396)
(declare-const null-String String)
(declare-const var1420 var396) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant 
(assert (not (= var1420 null-var396)))
(declare-const var1423 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1423 null-String)))
(assert true)
(define-const var3275 Bool (isEmpty/-1285796103 var1423)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: java.util.List targets> 
(assert (not (= (ite var3275 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1709 var1860 var1860-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var1709 "target attribute must not be empty")) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("target attribute must not be empty") 

(declare-const var1709!1 var1860)
(declare-const var1104 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var1860-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant, var1420=r1, var1423=r0, var1197=null_type, var3275=$z0, var1860=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1709=$r3, var1104="target attribute must not be empty"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant=var396, r1=var1420, r0=var1423, null_type=var1197, $z0=var3275, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1860, $r3=var1709, "target attribute must not be empty"=var1104}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant: java.util.List targets>;	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("target attribute must not be empty");	throw $r3
;block_num 2