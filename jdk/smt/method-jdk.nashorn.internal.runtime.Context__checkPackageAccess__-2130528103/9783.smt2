(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort var894 0)
(declare-sort var831 0)
(declare-sort var473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var831_requireNonNull/-961817614 (var473) var473)
(declare-fun cast-from-var1436-to-var473 (var1436) var473)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1436 var1436)
(declare-const null-String String)
(declare-const var1592 var1436) ; Statement: r0 := @parameter0: java.lang.SecurityManager 
(assert (not (= var1592 null-var1436)))
(declare-const var3463 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3463 null-String)))
;(assert (var831_requireNonNull/-961817614 (cast-from-var1436-to-var473 var1592))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var1592!1 var1436)
(assert true)
(define-const var191 Int (lastIndexOf/-1292097097 var3463 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1891 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto return 
(assert (= var191 var1891)) ; Cond: i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var831_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var1436-to-var473=([java.lang.SecurityManager], java.lang.Object), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1436=java.lang.SecurityManager, var1592=r0, var3463=r1, var894=null_type, var831=java.util.Objects, var473=java.lang.Object, var191=i0, var1891=$i2}
; {java.lang.SecurityManager=var1436, r0=var1592, r1=var3463, null_type=var894, java.util.Objects=var831, java.lang.Object=var473, i0=var191, $i2=var1891}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.SecurityManager;	r1 := @parameter1: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = (int) -1;	if i0 == $i2 goto return;	return
;block_num 2