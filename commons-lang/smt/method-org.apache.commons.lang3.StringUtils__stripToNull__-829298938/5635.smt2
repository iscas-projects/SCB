(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var256 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3820_strip/820136851 (String String) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var125 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var125 null-String)))
 ; Statement: if r0 != null goto r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null) 
(assert (not (= var125 null-String))) ; Cond: r0 != null 
(define-const var3412 String (var3820_strip/820136851 var125 null-String)) ; Statement: r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null) 
(assert true)
(define-const var324 Bool (isEmpty/-1285796103 var3412)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1 
(assert (not (= (ite var324 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1569 String null-String) ; Statement: $r2 = null 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3820_strip/820136851=([java.lang.String, java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var125=r0, var256=null_type, var3820=org.apache.commons.lang3.StringUtils, var3412=r1, var324=$z0, var1569=$r2}
; {r0=var125, null_type=var256, org.apache.commons.lang3.StringUtils=var3820, r1=var3412, $z0=var324, $r2=var1569}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null);	r1 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String strip(java.lang.String,java.lang.String)>(r0, null);	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r1;	$r2 = null;	goto [?= return $r2];	return $r2
;block_num 4