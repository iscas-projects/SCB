(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var514 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var514 null-String)))
(assert true)
(define-const var294 Bool (startsWith/-1785782452 var514 "hibernate.event.listener")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.event.listener") 
 ; Statement: if $z0 == 0 goto $r1 = null 
(assert (not (= (ite var294 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2838 String "hibernate.event.listener") ; Statement: $r1 = "hibernate.event.listener" 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var514=r0, var566=null_type, var294=$z0, var2838=$r1}
; {r0=var514, null_type=var566, $z0=var294, $r1=var2838}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.event.listener");	if $z0 == 0 goto $r1 = null;	$r1 = "hibernate.event.listener";	goto [?= return $r1];	return $r1
;block_num 3