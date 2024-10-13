(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var723 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var723 null-String)))
(assert true)
(define-const var3671 Bool (contains/1009244746 var723 (cast-from-String-to-String "?"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("?") 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3671 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1577 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var723=r0, var522=null_type, var3671=$z0, var1577=$z1}
; {r0=var723, null_type=var522, $z0=var3671, $z1=var1577}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("?");	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3