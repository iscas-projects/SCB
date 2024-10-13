(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var2850 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2850 null-String)))
(assert true)
(define-const var1797 Int (indexOf/-1037706067 var2850 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
 ; Statement: if i0 >= 1 goto $i1 = i0 + 1 
(assert (>= var1797 1)) ; Cond: i0 >= 1 
(define-const var3866 Int (+ var1797 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var3866 0) (>= (str.len var2850) var3866))))
(define-const var1678 String (substring/850833817 var2850 var3866)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2850=r0, var987=null_type, var1797=i0, var3866=$i1, var1678=$r1}
; {r0=var2850, null_type=var987, i0=var1797, $i1=var3866, $r1=var1678}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	if i0 >= 1 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 2