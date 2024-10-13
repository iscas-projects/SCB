(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var586 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var586 null-String)))
(assert true)
(define-const var1908 Int (indexOf/-1037706067 var586 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var1535 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto return r0 
(assert (not (= var1908 var1535))) ; Negate: Cond: i0 == $i2  
(assert (not (and true (and (>= 0 0) (>= (str.len var586) var1908) (>= var1908 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var586=r0, var758=null_type, var1908=i0, var1535=$i2, var1733=$r1}
; {r0=var586, null_type=var758, i0=var1908, $i2=var1535, $r1=var1733}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 == $i2 goto return r0;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r1
;block_num 2