(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var613 0)
(declare-sort var920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var613) var920)
(declare-fun getCompilerVersion/-18979698 (var920) String)
(declare-const null-var613 var613)
(declare-const var1985 var613) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var1985 null-var613)))
(define-const var1269 String "javac10+") ; Statement: $r3 = "javac10+" 
(define-const var3592 var920 (attributes/-1036098043 var1985)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
(define-const var2909 String (getCompilerVersion/-18979698 var3592)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>() 
(assert true)
(define-const var3989 Bool (= var1269 var2909)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z5 = 1 
(assert (not (= (ite var3989 1 0) 0))) ; Cond: $z0 != 0 
(define-const var566 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= return $z5] 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), getCompilerVersion/-18979698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], java.lang.String)}
; {var613=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var1985=r0, var1269=$r3, var920=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var3592=$r1, var2909=$r2, var3989=$z0, var566=$z5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var613, r0=var1985, $r3=var1269, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var920, $r1=var3592, $r2=var2909, $z0=var3989, $z5=var566}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	$r3 = "javac10+";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= return $z5];	return $z5
;block_num 3