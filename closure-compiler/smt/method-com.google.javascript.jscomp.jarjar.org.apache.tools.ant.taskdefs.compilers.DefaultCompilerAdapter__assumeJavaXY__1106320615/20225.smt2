(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var538 0)
(declare-sort var8 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1036098043 (var3547) var8)
(declare-fun getCompilerVersion/-18979698 (var8) String)
(declare-const null-var3547 var3547)
(declare-const null-String String)
(declare-const var1782 var3547) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var1782 null-var3547)))
(declare-const var3151 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3151 null-String)))
(declare-const var1379 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1379 null-String)))
(define-const var2331 var8 (attributes/-1036098043 var1782)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes> 
(assert true)
(define-const var1571 String (getCompilerVersion/-18979698 var2331)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>() 
(assert true)
(define-const var3081 Bool (= var3151 var1571)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $z5 = 1 
(assert (not (= (ite var3081 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3296 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= return $z5] 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1036098043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac), getCompilerVersion/-18979698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac], java.lang.String)}
; {var3547=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var1782=r0, var3151=r3, var538=null_type, var1379=r4, var8=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var2331=$r1, var1571=r2, var3081=$z0, var3296=$z5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var3547, r0=var1782, r3=var3151, null_type=var538, r4=var1379, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var8, $r1=var2331, r2=var1571, $z0=var3081, $z5=var3296}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac attributes>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.lang.String getCompilerVersion()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= return $z5];	return $z5
;block_num 3