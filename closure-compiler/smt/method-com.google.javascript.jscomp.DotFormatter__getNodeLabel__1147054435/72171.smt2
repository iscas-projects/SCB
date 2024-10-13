(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var1153) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1153 var1153)
(declare-const var1760 var1153) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1760 null-var1153)))
(assert true)
(define-const var959 String (getString/-897720134 var1760)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1823 Int (length/-134980193 var959)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 10 goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (<= var1823 10)) ; Cond: $i0 <= 10 
(assert true)
(define-const var3300 Bool (isEmpty/-1285796103 var959)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return r1 
(assert (not (= (ite var3300 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), length/-134980193=([java.lang.String], int), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1153=com.google.javascript.rhino.Node, var1760=r0, var959=r1, var1823=$i0, var3300=$z0}
; {com.google.javascript.rhino.Node=var1153, r0=var1760, r1=var959, $i0=var1823, $z0=var3300}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 10 goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return r1;	return r1
;block_num 3