(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var367 0)
(declare-sort var1551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var367 var367)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var388 var367) ; Statement: r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm 
(assert (not (= var388 null-var367)))
(declare-const var690 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var690 null-String)))
(declare-const var3124 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3124 null-Int)))
(define-const var1283 Int (+ var3124 1)) ; Statement: $i2 = i0 + 1 
(assert true)
(define-const var3675 Int (length/-134980193 var690)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i2 >= $i1 goto $z1 = 1 
(assert (>= var1283 var3675)) ; Cond: $i2 >= $i1 
(define-const var342 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var367=freemarker.core.DefaultTruncateBuiltinAlgorithm, var388=r1, var690=r0, var1551=null_type, var3124=i0, var1283=$i2, var3675=$i1, var342=$z1}
; {freemarker.core.DefaultTruncateBuiltinAlgorithm=var367, r1=var388, r0=var690, null_type=var1551, i0=var3124, $i2=var1283, $i1=var3675, $z1=var342}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i2 = i0 + 1;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i2 >= $i1 goto $z1 = 1;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3