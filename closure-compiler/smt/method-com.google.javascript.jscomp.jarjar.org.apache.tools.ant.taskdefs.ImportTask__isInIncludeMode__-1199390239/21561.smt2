(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1505 0)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskType/1957558293 (var406) String)
(declare-fun cast-from-var1505-to-var406 (var1505) var406)
(declare-const null-var1505 var1505)
(declare-const var2654 var1505) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ImportTask 
(assert (not (= var2654 null-var1505)))
(define-const var2137 String "include") ; Statement: $r2 = "include" 
(assert true)
(define-const var736 String (getTaskType/1957558293 (cast-from-var1505-to-var406 var2654))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ImportTask: java.lang.String getTaskType()>() 
(assert true)
(define-const var1425 Bool (= var2137 var736)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1505-to-var406=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ImportTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1505=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ImportTask, var2654=r0, var2137=$r2, var406=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var736=$r1, var1425=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ImportTask=var1505, r0=var2654, $r2=var2137, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var406, $r1=var736, $z0=var1425}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ImportTask;	$r2 = "include";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ImportTask: java.lang.String getTaskType()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1