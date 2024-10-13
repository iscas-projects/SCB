(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const var598 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var598 null-ClassObject)))
(declare-const var3760 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3760 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String toString()>() 
(assert (not (= (ite var3760 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var920 String (getName/-1958580599 var598)) ; Statement: r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3664 Int (lastIndexOf/-1292097097 var920 46)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3811 Int (+ var3664 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var3811 0) (>= (str.len var920) var3811)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var598=r0, var3760=z0, var920=r2, var3664=$i0, var3811=$i1, var836=$r3}
; {r0=var598, z0=var3760, r2=var920, $i0=var3664, $i1=var3811, $r3=var836}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	z0 := @parameter1: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String toString()>();	r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i1 = $i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	return $r3
;block_num 2