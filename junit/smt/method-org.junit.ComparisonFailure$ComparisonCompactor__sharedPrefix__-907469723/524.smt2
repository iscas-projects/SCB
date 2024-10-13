(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1113 0)
(declare-sort var3340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expected/1728408848 (var1113) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun actual/1728408848 (var1113) String)
(declare-fun var3340_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1113 var1113)
(declare-const var3410 var1113) ; Statement: r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor 
(assert (not (= var3410 null-var1113)))
(define-const var3447 String (expected/1728408848 var3410)) ; Statement: $r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected> 
(assert true)
(define-const var2591 Int (length/-134980193 var3447)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1663 String (actual/1728408848 var3410)) ; Statement: $r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String actual> 
(assert true)
(define-const var1500 Int (length/-134980193 var1663)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var3775 Int (var3340_min/-1112089438 var2591 var1500)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var3677 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i2 goto $r3 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected> 
(assert (>= var3677 var3775)) ; Cond: i5 >= i2 
(define-const var2375 String (expected/1728408848 var3410)) ; Statement: $r3 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected> 
(assert (and true (and (>= 0 0) (>= (str.len var2375) var3775) (>= var3775 0))))
(define-const var1645 String (substring/-1240304868 var2375 0 var3775)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {expected/1728408848=([org.junit.ComparisonFailure$ComparisonCompactor], java.lang.String), length/-134980193=([java.lang.String], int), actual/1728408848=([org.junit.ComparisonFailure$ComparisonCompactor], java.lang.String), var3340_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1113=org.junit.ComparisonFailure$ComparisonCompactor, var3410=r0, var3447=$r1, var2591=$i1, var1663=$r2, var1500=$i0, var3340=java.lang.Math, var3775=i2, var3677=i5, var2375=$r3, var1645=$r4}
; {org.junit.ComparisonFailure$ComparisonCompactor=var1113, r0=var3410, $r1=var3447, $i1=var2591, $r2=var1663, $i0=var1500, java.lang.Math=var3340, i2=var3775, i5=var3677, $r3=var2375, $r4=var1645}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor;	$r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String actual>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	i5 = 0;	if i5 >= i2 goto $r3 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected>;	$r3 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	return $r4
;block_num 3