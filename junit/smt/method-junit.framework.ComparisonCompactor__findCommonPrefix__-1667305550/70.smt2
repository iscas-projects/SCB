(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var237 0)
(declare-sort var2271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fPrefix/748987693 (var237) Int)
(declare-fun fExpected/748987693 (var237) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun fActual/748987693 (var237) String)
(declare-fun var2271_min/-1112089438 (Int Int) Int)
(declare-const null-var237 var237)
(declare-const var2385 var237) ; Statement: r0 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var2385 null-var237)))
(declare-const var2385!1 var237)
(assert (not (= var2385!1 null-var237)))
(assert (= (fPrefix/748987693 var2385!1) 0)) ; Statement: r0.<junit.framework.ComparisonCompactor: int fPrefix> = 0 
(define-const var2513 String (fExpected/748987693 var2385!1)) ; Statement: $r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var1203 Int (length/-134980193 var2513)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3613 String (fActual/748987693 var2385!1)) ; Statement: $r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fActual> 
(assert true)
(define-const var3662 Int (length/-134980193 var3613)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2072 Int (var2271_min/-1112089438 var1203 var3662)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(assert true) ; Non Conditional
(define-const var3257 Int (fPrefix/748987693 var2385!1)) ; Statement: $i3 = r0.<junit.framework.ComparisonCompactor: int fPrefix> 
 ; Statement: if $i3 >= i2 goto return 
(assert (>= var3257 var2072)) ; Cond: $i3 >= i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {fPrefix/748987693=([junit.framework.ComparisonCompactor], int), fExpected/748987693=([junit.framework.ComparisonCompactor], java.lang.String), length/-134980193=([java.lang.String], int), fActual/748987693=([junit.framework.ComparisonCompactor], java.lang.String), var2271_min/-1112089438=([int, int], int)}
; {var237=junit.framework.ComparisonCompactor, var2385=r0, var2513=$r1, var1203=$i1, var3613=$r2, var3662=$i0, var2271=java.lang.Math, var2072=i2, var3257=$i3}
; {junit.framework.ComparisonCompactor=var237, r0=var2385, $r1=var2513, $i1=var1203, $r2=var3613, $i0=var3662, java.lang.Math=var2271, i2=var2072, $i3=var3257}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: junit.framework.ComparisonCompactor;	r0.<junit.framework.ComparisonCompactor: int fPrefix> = 0;	$r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fActual>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	$i3 = r0.<junit.framework.ComparisonCompactor: int fPrefix>;	if $i3 >= i2 goto return;	return
;block_num 3