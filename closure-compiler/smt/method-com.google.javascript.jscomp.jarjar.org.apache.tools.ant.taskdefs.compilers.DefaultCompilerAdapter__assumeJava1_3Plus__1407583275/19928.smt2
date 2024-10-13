(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort var1425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var2795) var1425)
(declare-fun getCompilerVersion/-18979698 (var1425) String)
(declare-const null-var2795 var2795)
(declare-const var2859 var2795) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var2859 null-var2795)))
(define-const var3769 String "javac1.3") ; Statement: $r3 = "javac1.3" 
(define-const var769 var1425 (attributes/-1036098043 var2859)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
(define-const var1740 String (getCompilerVersion/-18979698 var769)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>() 
(assert true)
(define-const var2825 Bool (= var3769 var1740)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2825 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1338 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), getCompilerVersion/-18979698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], java.lang.String)}
; {var2795=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var2859=r0, var3769=$r3, var1425=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var769=$r1, var1740=$r2, var2825=$z0, var1338=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var2795, r0=var2859, $r3=var3769, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var1425, $r1=var769, $r2=var1740, $z0=var2825, $z2=var1338}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	$r3 = "javac1.3";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3