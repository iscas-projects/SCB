(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3368 0)
(declare-sort var364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var3368) var364)
(declare-fun getCompilerVersion/-18979698 (var364) String)
(declare-const null-var3368 var3368)
(declare-const var3587 var3368) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var3587 null-var3368)))
(define-const var690 String "javac1.1") ; Statement: $r3 = "javac1.1" 
(define-const var3586 var364 (attributes/-1036098043 var3587)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
(define-const var3278 String (getCompilerVersion/-18979698 var3586)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>() 
(assert true)
(define-const var2576 Bool (= var690 var3278)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2576 1 0) 0))) ; Cond: $z0 != 0 
(define-const var125 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), getCompilerVersion/-18979698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], java.lang.String)}
; {var3368=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var3587=r0, var690=$r3, var364=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var3586=$r1, var3278=$r2, var2576=$z0, var125=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var3368, r0=var3587, $r3=var690, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var364, $r1=var3586, $r2=var3278, $z0=var2576, $z2=var125}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	$r3 = "javac1.1";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3