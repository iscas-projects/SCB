(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var3477 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3477 null-String)))
(assert true)
(define-const var247 Bool (contains/1009244746 var3477 (cast-from-String-to-String " "))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(" ") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var247 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3477=r0, var1204=null_type, var247=$z0}
; {r0=var3477, null_type=var1204, $z0=var247}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(" ");	if $z0 == 0 goto return r0;	return r0
;block_num 2