(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var180) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var180 var180)
(declare-const var3270 var180) ; Statement: r2 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3270 null-var180)))
(declare-const var2144 var180) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2144 null-var180)))
(assert true)
(define-const var3754 String (getString/-897720134 var2144)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var737 Bool (isEmpty/-1285796103 var3754)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var737 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var180=com.google.javascript.rhino.Node, var3270=r2, var2144=r0, var3754=$r1, var737=$z0}
; {com.google.javascript.rhino.Node=var180, r2=var3270, r0=var2144, $r1=var3754, $z0=var737}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2