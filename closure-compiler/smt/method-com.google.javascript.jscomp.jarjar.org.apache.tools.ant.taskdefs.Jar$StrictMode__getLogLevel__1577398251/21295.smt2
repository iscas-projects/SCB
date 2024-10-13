(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort var162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var162) String)
(declare-fun cast-from-var3792-to-var162 (var3792) var162)
(declare-const null-var3792 var3792)
(declare-const var3291 var3792) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode 
(assert (not (= var3291 null-var3792)))
(define-const var1056 String "ignore") ; Statement: $r2 = "ignore" 
(assert true)
(define-const var2989 String (getValue/-1445752687 (cast-from-var3792-to-var162 var3291))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode: java.lang.String getValue()>() 
(assert true)
(define-const var886 Bool (= var1056 var2989)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b0 = 1 
(assert (not (= (ite var886 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3697 Int 3) ; Statement: $b0 = 3 
 ; Statement: goto [?= return $b0] 
(assert true) ; Non Conditional
 ; Statement: return $b0 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3792-to-var162=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute)}
; {var3792=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode, var3291=r0, var1056=$r2, var162=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2989=$r1, var886=$z0, var3697=$b0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode=var3792, r0=var3291, $r2=var1056, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var162, $r1=var2989, $z0=var886, $b0=var3697}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode;	$r2 = "ignore";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode: java.lang.String getValue()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b0 = 1;	$b0 = 3;	goto [?= return $b0];	return $b0
;block_num 3