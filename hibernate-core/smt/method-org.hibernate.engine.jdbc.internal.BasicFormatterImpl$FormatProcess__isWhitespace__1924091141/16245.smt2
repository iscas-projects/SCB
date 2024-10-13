(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var1008 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1008 null-String)))
(define-const var688 String " \n\r\f\t") ; Statement: $r1 = " \n\r\f\t" 
(assert true)
(define-const var683 Bool (contains/1009244746 var688 (cast-from-String-to-String var1008))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1008=r0, var3763=null_type, var688=$r1, var683=$z0}
; {r0=var1008, null_type=var3763, $r1=var688, $z0=var683}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = " \n\r\f\t";	$z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0);	return $z0
;block_num 1