(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3207 0)
(declare-sort var672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const null-var672 var672)
(declare-const var1477 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1477 null-String)))
 ; Statement: if r0 == null goto return 0 
(assert (not (= var1477 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2090 Bool (isEmpty/-1285796103 var1477)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>(r0) 
(assert (not (= (ite var2090 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var867 var672) ; Statement: $r1 := @caughtexception 
(assert (not (= var867 null-var672)))
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1477=r0, var3207=null_type, var2090=$z0, var672=java.time.format.DateTimeParseException, var867=$r1}
; {r0=var1477, null_type=var3207, $z0=var2090, java.time.format.DateTimeParseException=var672, $r1=var867}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 == null goto return 0;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto staticinvoke <java.time.Duration: java.time.Duration parse(java.lang.CharSequence)>(r0);	$r1 := @caughtexception;	return 0
;block_num 3