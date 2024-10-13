(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var865 0)
(declare-sort var1178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1178_strip/820136851 (String String) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var763 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var763 null-String)))
 ; Statement: if r0 != null goto r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null) 
(assert (not (= var763 null-String))) ; Cond: r0 != null 
(define-const var120 String (var1178_strip/820136851 var763 null-String)) ; Statement: r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null) 
(assert true)
(define-const var2637 Bool (isEmpty/-1285796103 var120)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1 
(assert (= (ite var2637 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3713 String var120) ; Statement: $r2 = r1 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1178_strip/820136851=([java.lang.String, java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var763=r0, var865=null_type, var1178=org.apache.commons.lang3.StringUtils, var120=r1, var2637=$z0, var3713=$r2}
; {r0=var763, null_type=var865, org.apache.commons.lang3.StringUtils=var1178, r1=var120, $z0=var2637, $r2=var3713}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null);	r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null);	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r1;	$r2 = r1;	return $r2
;block_num 4