(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3093 0)
(declare-sort var679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3093 var3093)
(declare-const null-String String)
(declare-const var1971 var3093) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1971 null-var3093)))
(declare-const var2085 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2085 null-String)))
(assert true)
(define-const var2741 Bool (isEmpty/-1285796103 var2085)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2741 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3093=com.google.javascript.rhino.Node, var1971=r1, var2085=r0, var679=null_type, var2741=$z0}
; {com.google.javascript.rhino.Node=var3093, r1=var1971, r0=var2085, null_type=var679, $z0=var2741}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2