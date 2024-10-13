(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2394 0)
(declare-sort var603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-601631167 (var603) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2394 var2394)
(declare-const null-var603 var603)
(declare-const var2091 var2394) ; Statement: r4 := @this: jdk.nashorn.internal.ir.Block$1 
(assert (not (= var2091 null-var2394)))
(declare-const var909 var603) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var909 null-var603)))
(declare-const var2648 var603) ; Statement: r1 := @parameter1: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var2648 null-var603)))
(assert true)
(define-const var3473 String (getName/-601631167 var909)) ; Statement: $r3 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(assert true)
(define-const var1369 String (getName/-601631167 var2648)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(assert true)
(define-const var3575 Int (compareTo/1411385946 var3473 var1369)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3473 var1369)) (this<=other (str.<= var3473 var1369)) (compareRes (compareTo/1411385946 var3473 var1369))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-601631167=([jdk.nashorn.internal.ir.Symbol], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2394=jdk.nashorn.internal.ir.Block$1, var2091=r4, var603=jdk.nashorn.internal.ir.Symbol, var909=r0, var2648=r1, var3473=$r3, var1369=$r2, var3575=$i0}
; {jdk.nashorn.internal.ir.Block$1=var2394, r4=var2091, jdk.nashorn.internal.ir.Symbol=var603, r0=var909, r1=var2648, $r3=var3473, $r2=var1369, $i0=var3575}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.ir.Block$1;	r0 := @parameter0: jdk.nashorn.internal.ir.Symbol;	r1 := @parameter1: jdk.nashorn.internal.ir.Symbol;	$r3 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1