(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var1686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskType/1957558293 (var1686) String)
(declare-fun cast-from-var2396-to-var1686 (var2396) var1686)
(declare-const null-var2396 var2396)
(declare-const var777 var2396) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var777 null-var2396)))
(define-const var1292 String "javadoc2") ; Statement: $r2 = "javadoc2" 
(assert true)
(define-const var1051 String (getTaskType/1957558293 (cast-from-var2396-to-var1686 var777))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String getTaskType()>() 
(assert true)
(define-const var3572 Bool (= var1292 var1051)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3572 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var2396-to-var1686=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var777=r0, var1292=$r2, var1686=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1051=$r1, var3572=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var2396, r0=var777, $r2=var1292, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1686, $r1=var1051, $z0=var3572}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	$r2 = "javadoc2";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: java.lang.String getTaskType()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto return;	return
;block_num 2