(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3452 0)
(declare-sort var135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3452 var3452)
(declare-const null-String String)
(declare-const var3390 var3452) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter 
(assert (not (= var3390 null-var3452)))
(declare-const var787 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var787 null-String)))
(define-const var1243 String "1.1") ; Statement: $r1 = "1.1" 
(assert true)
(define-const var1238 Bool (= var1243 var787)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r4 = "1.3" 
(assert (not (= (ite var1238 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2668 String "1.3") ; Statement: $r4 = "1.3" 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3452=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter, var3390=r3, var787=r0, var135=null_type, var1243=$r1, var1238=$z0, var2668=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter=var3452, r3=var3390, r0=var787, null_type=var135, $r1=var1243, $z0=var1238, $r4=var2668}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.DefaultCompilerAdapter;	r0 := @parameter0: java.lang.String;	$r1 = "1.1";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $r4 = "1.3";	$r4 = "1.3";	goto [?= return $r4];	return $r4
;block_num 3