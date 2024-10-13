(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var729 0)
(declare-sort var390 0)
(declare-sort var481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-const null-var729 var729)
(declare-const null-var390 var390)
(declare-const null-String String)
(declare-const var2389 var729) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter 
(assert (not (= var2389 null-var729)))
(declare-const var3896 var390) ; Statement: r7 := @parameter0: java.io.File 
(assert (not (= var3896 null-var390)))
(declare-const var3935 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3935 null-String)))
(assert true)
(define-const var2348 Int (lastIndexOf/-1292097097 var3935 46)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(assert true)
(define-const var2597 Int (lastIndexOf/-618837785 var3935 ".class")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".class") 
 ; Statement: if $i1 != $i0 goto $z0 = 0 
(assert (not (= var2348 var2597))) ; Cond: $i1 != $i0 
(define-const var470 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int)}
; {var729=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter, var2389=r2, var390=java.io.File, var3896=r7, var3935=r0, var481=null_type, var2348=$i1, var2597=$i0, var470=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter=var729, r2=var2389, java.io.File=var390, r7=var3896, r0=var3935, null_type=var481, $i1=var2348, $i0=var2597, $z0=var470}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter;	r7 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".class");	if $i1 != $i0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3