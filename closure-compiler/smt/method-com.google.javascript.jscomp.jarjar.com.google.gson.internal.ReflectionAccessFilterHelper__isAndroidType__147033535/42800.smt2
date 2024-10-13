(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1221 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1221 null-String)))
(assert true)
(define-const var1112 Bool (startsWith/-1785782452 var1221 "android.")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("android.") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var1112 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2878 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1221=r0, var382=null_type, var1112=$z0, var2878=$z3}
; {r0=var1221, null_type=var382, $z0=var1112, $z3=var2878}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("android.");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3