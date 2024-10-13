(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-const null-String String)
(declare-const var798 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var798 null-String)))
(assert true)
(define-const var596 (Array Int Int) (getBytes/1068683673 var798)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: byte[] getBytes()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[])}
; {var798=r0, var2258=null_type, var596=$r1}
; {r0=var798, null_type=var2258, $r1=var596}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: byte[] getBytes()>();	return $r1
;block_num 1