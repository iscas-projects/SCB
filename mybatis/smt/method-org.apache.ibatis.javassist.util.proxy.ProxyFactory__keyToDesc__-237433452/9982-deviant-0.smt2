(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1862 0)
(declare-sort var784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const null-var784 var784)
(declare-const var1739 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1739 null-String)))
(declare-const var2906 var784) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2906 null-var784)))
(assert true)
(define-const var2217 Int (indexOf/-1037706067 var1739 58)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
(define-const var3369 Int (+ var2217 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var3369 0) (>= (str.len var1739) var3369)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1739=r0, var1862=null_type, var784=java.lang.reflect.Method, var2906=r2, var2217=$i0, var3369=$i1, var3416=$r1}
; {r0=var1739, null_type=var1862, java.lang.reflect.Method=var784, r2=var2906, $i0=var2217, $i1=var3369, $r1=var3416}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.reflect.Method;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	$i1 = $i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r1
;block_num 1