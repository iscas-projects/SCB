(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var2977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var2396 var2396)
(declare-const null-String String)
(declare-const var2001 var2396) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2001 null-var2396)))
(declare-const var2496 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2496 null-String)))
(assert true)
(define-const var893 Bool (endsWith/985337093 var2496 ".jar")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".jar") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2396=java.io.File, var2001=r1, var2496=r0, var2977=null_type, var893=$z0}
; {java.io.File=var2396, r1=var2001, r0=var2496, null_type=var2977, $z0=var893}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".jar");	return $z0
;block_num 1