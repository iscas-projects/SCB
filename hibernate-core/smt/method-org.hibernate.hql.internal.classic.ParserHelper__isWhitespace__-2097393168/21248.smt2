(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2532 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2532 null-String)))
(define-const var1402 String " \n\r\f\t") ; Statement: $r1 = " \n\r\f\t" 
(assert true)
(define-const var421 Bool (contains/1009244746 var1402 (cast-from-String-to-String var2532))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2532=r0, var631=null_type, var1402=$r1, var421=$z0}
; {r0=var2532, null_type=var631, $r1=var1402, $z0=var421}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = " \n\r\f\t";	$z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0);	return $z0
;block_num 1