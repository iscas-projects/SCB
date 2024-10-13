(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var495 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2775_isQuoted/462235606 (String) Bool)
(declare-const null-String String)
(declare-const var2747 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2747 null-String)))
(define-const var2261 Bool (var2775_isQuoted/462235606 var2747)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (= (ite var2261 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3144 String var2747) ; Statement: $r1 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2775_isQuoted/462235606=([java.lang.String], boolean)}
; {var2747=r0, var495=null_type, var2775=org.hibernate.internal.util.StringHelper, var2261=$z0, var3144=$r1}
; {r0=var2747, null_type=var495, org.hibernate.internal.util.StringHelper=var2775, $z0=var2261, $r1=var3144}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = r0;	$r1 = r0;	return $r1
;block_num 3