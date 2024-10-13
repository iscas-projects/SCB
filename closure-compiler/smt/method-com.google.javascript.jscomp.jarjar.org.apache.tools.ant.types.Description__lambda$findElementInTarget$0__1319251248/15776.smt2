(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var2650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskName/237633316 (var2650) String)
(declare-const null-String String)
(declare-const null-var2650 var2650)
(declare-const var3788 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3788 null-String)))
(declare-const var3941 var2650) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var3941 null-var2650)))
(assert true)
(define-const var2078 String (getTaskName/237633316 var3941)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: java.lang.String getTaskName()>() 
(assert true)
(define-const var3599 Bool (= var3788 var2078)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String)}
; {var3788=r0, var1131=null_type, var2650=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3941=r1, var2078=$r2, var3599=$z0}
; {r0=var3788, null_type=var1131, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2650, r1=var3941, $r2=var2078, $z0=var3599}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: java.lang.String getTaskName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1