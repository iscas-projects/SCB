(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var1275 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1275 null-String)))
(assert true) ; Non Conditional
(assert true)
(define-const var356 Bool (contains/1009244746 var1275 (cast-from-String-to-String "\u005c"))) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean contains(java.lang.CharSequence)>("\\") 
 ; Statement: if $z0 == 0 goto return r3 
(assert (= (ite var356 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1275=r3, var717=null_type, var356=$z0}
; {r3=var1275, null_type=var717, $z0=var356}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @parameter0: java.lang.String;	$z0 = virtualinvoke r3.<java.lang.String: boolean contains(java.lang.CharSequence)>("\\");	if $z0 == 0 goto return r3;	return r3
;block_num 3