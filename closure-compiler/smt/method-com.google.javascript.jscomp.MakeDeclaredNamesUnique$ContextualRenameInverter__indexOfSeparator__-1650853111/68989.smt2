(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-const null-String String)
(declare-const var3313 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3313 null-String)))
(assert true)
(define-const var586 Int (lastIndexOf/-618837785 var3313 "$jscomp$")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("$jscomp$") 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int)}
; {var3313=r0, var2061=null_type, var586=$i0}
; {r0=var3313, null_type=var2061, $i0=var586}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("$jscomp$");	return $i0
;block_num 1