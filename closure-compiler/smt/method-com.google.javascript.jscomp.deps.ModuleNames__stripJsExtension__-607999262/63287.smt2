(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var3040 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3040 null-String)))
(assert true)
(define-const var3339 Bool (endsWith/985337093 var3040 ".js")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(".js") 
 ; Statement: if $z0 == 0 goto return r2 
(assert (= (ite var3339 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3040=r2, var164=null_type, var3339=$z0}
; {r2=var3040, null_type=var164, $z0=var3339}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(".js");	if $z0 == 0 goto return r2;	return r2
;block_num 2