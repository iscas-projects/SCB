(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3235 0)
(declare-sort var87 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var87) Bool)
(declare-fun getString/-897720134 (var87) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3235 var3235)
(declare-const null-var87 var87)
(declare-const var1190 var3235) ; Statement: r2 := @this: com.google.javascript.jscomp.parsing.TypeTransformationParser 
(assert (not (= var1190 null-var3235)))
(declare-const var194 var87) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var194 null-var87)))
(assert true)
(define-const var3059 Bool (isName/-1249361959 var194)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (= (ite var3059 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3096 String (getString/-897720134 var194)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var590 Bool (isEmpty/-1285796103 var3096)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto return 1 
(assert (= (ite var590 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3235=com.google.javascript.jscomp.parsing.TypeTransformationParser, var1190=r2, var87=com.google.javascript.rhino.Node, var194=r0, var3059=$z0, var3096=$r1, var590=$z1}
; {com.google.javascript.jscomp.parsing.TypeTransformationParser=var3235, r2=var1190, com.google.javascript.rhino.Node=var87, r0=var194, $z0=var3059, $r1=var3096, $z1=var590}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.parsing.TypeTransformationParser;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 != 0 goto $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto return 1;	return 1
;block_num 3