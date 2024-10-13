(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var3921 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3921 null-String)))
(assert true)
(define-const var806 Bool (startsWith/-1785782452 var3921 "hibernate.event.listener")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.event.listener") 
 ; Statement: if $z0 == 0 goto $r1 = null 
(assert (= (ite var806 1 0) 0)) ; Cond: $z0 == 0 
(define-const var540 String null-String) ; Statement: $r1 = null 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3921=r0, var2483=null_type, var806=$z0, var540=$r1}
; {r0=var3921, null_type=var2483, $z0=var806, $r1=var540}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.event.listener");	if $z0 == 0 goto $r1 = null;	$r1 = null;	return $r1
;block_num 3