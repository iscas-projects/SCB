(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2951 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2951 null-String)))
(define-const var2412 String " \n\r\f\t") ; Statement: $r1 = " \n\r\f\t" 
(assert true)
(define-const var1621 Bool (contains/1009244746 var2412 (cast-from-String-to-String var2951))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2951=r0, var1020=null_type, var2412=$r1, var1621=$z0}
; {r0=var2951, null_type=var1020, $r1=var2412, $z0=var1621}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = " \n\r\f\t";	$z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0);	return $z0
;block_num 1