(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun write/654681022 (var3065 String) void)
(declare-const null-String String)
(declare-const null-var3065 var3065)
(declare-const var647 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var647 null-String)))
(declare-const var2420 var3065) ; Statement: r1 := @parameter1: java.io.Writer 
(assert (not (= var2420 null-var3065)))
 ; Statement: if r0 == null goto return 
(assert (not (= var647 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1798 String (toString/-222306083 var647)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (write/654681022 var2420 var1798)) ; Statement: virtualinvoke r1.<java.io.Writer: void write(java.lang.String)>($r2) 

(declare-const var2420!1 var3065)
(declare-const var1798!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-222306083=([java.lang.StringBuffer], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void)}
; {var647=r0, var3065=java.io.Writer, var2420=r1, var1798=$r2}
; {r0=var647, java.io.Writer=var3065, r1=var2420, $r2=var1798}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.StringBuffer;	r1 := @parameter1: java.io.Writer;	if r0 == null goto return;	$r2 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r1.<java.io.Writer: void write(java.lang.String)>($r2);	return
;block_num 3