(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3710 0)
(declare-sort var2934 0)
(declare-sort var2598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3710 var3710)
(declare-const null-var2934 var2934)
(declare-const null-String String)
(declare-const var1418 var3710) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var1418 null-var3710)))
(declare-const var330 var2934) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var330 null-var2934)))
(declare-const var391 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var391 null-String)))
(assert true)
(define-const var852 Bool (endsWith/985337093 var391 ".java")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".java") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var852 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2460 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3710=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var1418=r1, var2934=java.io.File, var330=r2, var391=r0, var2598=null_type, var852=$z0, var2460=$z3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var3710, r1=var1418, java.io.File=var2934, r2=var330, r0=var391, null_type=var2598, $z0=var852, $z3=var2460}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r2 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".java");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3