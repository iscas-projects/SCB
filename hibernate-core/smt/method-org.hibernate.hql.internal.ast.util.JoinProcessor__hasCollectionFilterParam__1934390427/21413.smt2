(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2727 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2727 null-String)))
(assert true)
(define-const var2445 Bool (contains/1009244746 var2727 (cast-from-String-to-String "?"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("?") 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2445 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2682 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2727=r0, var1901=null_type, var2445=$z0, var2682=$z1}
; {r0=var2727, null_type=var1901, $z0=var2445, $z1=var2682}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("?");	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3