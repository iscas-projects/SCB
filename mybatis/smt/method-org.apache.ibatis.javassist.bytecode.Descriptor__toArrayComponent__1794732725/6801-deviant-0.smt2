(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var733 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var733 null-String)))
(declare-const var1725 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1725 null-Int)))
(assert (not (and true (and (>= var1725 0) (>= (str.len var733) var1725)))))
(check-sat)
(get-model)
(get-unsat-core)
; {substring/850833817=([java.lang.String, int], java.lang.String)}
; {var733=r0, var2273=null_type, var1725=i0, var3698=$r1}
; {r0=var733, null_type=var2273, i0=var1725, $r1=var3698}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0);	return $r1
;block_num 1