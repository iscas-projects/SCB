(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var3685 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3685 null-String)))
(assert true)
(define-const var1685 Bool (startsWith/-1785782452 var3685 "MSG_EXTERNAL_")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("MSG_EXTERNAL_") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1685 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3685=r0, var3602=null_type, var1685=$z0}
; {r0=var3685, null_type=var3602, $z0=var1685}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("MSG_EXTERNAL_");	if $z0 == 0 goto return null;	return null
;block_num 2