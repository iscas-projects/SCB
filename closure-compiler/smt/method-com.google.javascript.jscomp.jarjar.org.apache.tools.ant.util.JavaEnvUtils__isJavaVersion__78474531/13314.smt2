(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2663 0)
(declare-sort var2068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2068-javaVersion String)
(declare-const var873 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var873 null-String)))
(define-const var1337 String var2068-javaVersion) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String javaVersion> 
(assert true)
(define-const var215 Bool (= var1337 var873)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var215 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3232 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var873=r0, var2663=null_type, var2068=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var1337=$r1, var215=$z0, var3232=$z3}
; {r0=var873, null_type=var2663, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var2068, $r1=var1337, $z0=var215, $z3=var3232}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String javaVersion>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3