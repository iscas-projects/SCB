(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1081 0)
(declare-sort var1113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var1113) String)
(declare-fun cast-from-var1081-to-var1113 (var1081) var1113)
(declare-const null-var1081 var1081)
(declare-const var1528 var1081) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode 
(assert (not (= var1528 null-var1081)))
(define-const var1292 String "ignore") ; Statement: $r2 = "ignore" 
(assert true)
(define-const var2229 String (getValue/-1445752687 (cast-from-var1081-to-var1113 var1528))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode: java.lang.String getValue()>() 
(assert true)
(define-const var1480 Bool (= var1292 var2229)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b0 = 1 
(assert (= (ite var1480 1 0) 0)) ; Cond: $z0 == 0 
(define-const var310 Int 1) ; Statement: $b0 = 1 
(assert true) ; Non Conditional
 ; Statement: return $b0 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var1081-to-var1113=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute)}
; {var1081=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode, var1528=r0, var1292=$r2, var1113=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2229=$r1, var1480=$z0, var310=$b0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode=var1081, r0=var1528, $r2=var1292, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1113, $r1=var2229, $z0=var1480, $b0=var310}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode;	$r2 = "ignore";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar$StrictMode: java.lang.String getValue()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b0 = 1;	$b0 = 1;	return $b0
;block_num 3