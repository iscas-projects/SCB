(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3561 0)
(declare-sort var3975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var3561) var3975)
(declare-fun getCompilerVersion/-18979698 (var3975) String)
(declare-const null-var3561 var3561)
(declare-const var2192 var3561) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var2192 null-var3561)))
(define-const var1840 String "javac1.2") ; Statement: $r3 = "javac1.2" 
(define-const var182 var3975 (attributes/-1036098043 var2192)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
(define-const var3746 String (getCompilerVersion/-18979698 var182)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>() 
(assert true)
(define-const var2534 Bool (= var1840 var3746)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2534 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2895 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), getCompilerVersion/-18979698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], java.lang.String)}
; {var3561=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var2192=r0, var1840=$r3, var3975=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var182=$r1, var3746=$r2, var2534=$z0, var2895=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var3561, r0=var2192, $r3=var1840, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var3975, $r1=var182, $r2=var3746, $z0=var2534, $z2=var2895}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	$r3 = "javac1.2";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3