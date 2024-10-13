(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var767 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var767 null-String)))
(declare-const var2347 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2347 null-Int)))
(define-const var2478 Int (cast-from-Int-to-Int var2347)) ; Statement: $i2 = (int) c0 
(assert true)
(define-const var50 Int (indexOf/-1037706067 var767 var2478)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>($i2) 
(define-const var2203 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 != $i4 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (= var50 var2203))) ; Cond: i1 != $i4 
(assert (and true (and (>= 0 0) (>= (str.len var767) var50) (>= var50 0))))
(define-const var214 String (substring/-1240304868 var767 0 var50)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var767=r0, var1927=null_type, var2347=c0, var2478=$i2, var50=i1, var2203=$i4, var214=$r1}
; {r0=var767, null_type=var1927, c0=var2347, $i2=var2478, i1=var50, $i4=var2203, $r1=var214}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$i2 = (int) c0;	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>($i2);	$i4 = (int) -1;	if i1 != $i4 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	return $r1
;block_num 2