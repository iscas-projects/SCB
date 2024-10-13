(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var3882 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3882 null-String)))
(assert true)
(define-const var144 Bool (startsWith/-1785782452 var3882 "module$")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("module$") 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var144 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var346 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3882=r0, var596=null_type, var144=$z0, var346=$z1}
; {r0=var3882, null_type=var596, $z0=var144, $z1=var346}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("module$");	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3