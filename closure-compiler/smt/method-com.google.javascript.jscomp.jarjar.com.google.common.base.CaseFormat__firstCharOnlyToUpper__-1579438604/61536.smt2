(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var1820 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1820 null-String)))
(assert true)
(define-const var864 Bool (isEmpty/-1285796103 var1820)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var864 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2784 String var1820) ; Statement: $r6 = r0 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1820=r0, var615=null_type, var864=$z0, var2784=$r6}
; {r0=var1820, null_type=var615, $z0=var864, $r6=var2784}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r6 = r0;	goto [?= return $r6];	return $r6
;block_num 3