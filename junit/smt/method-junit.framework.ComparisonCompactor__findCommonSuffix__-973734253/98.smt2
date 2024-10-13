(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2234 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fExpected/748987693 (var2234) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun fActual/748987693 (var2234) String)
(declare-fun fPrefix/748987693 (var2234) Int)
(declare-fun fSuffix/748987693 (var2234) Int)
(declare-const null-var2234 var2234)
(declare-const var334 var2234) ; Statement: r0 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var334 null-var2234)))
(define-const var2675 String (fExpected/748987693 var334)) ; Statement: $r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var1613 Int (length/-134980193 var2675)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3985 Int (- var1613 1)) ; Statement: i6 = $i0 - 1 
(define-const var2494 String (fActual/748987693 var334)) ; Statement: $r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fActual> 
(assert true)
(define-const var661 Int (length/-134980193 var2494)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var978 Int (- var661 1)) ; Statement: i7 = $i1 - 1 
(assert true) ; Non Conditional
(define-const var1709 Int (fPrefix/748987693 var334)) ; Statement: $i2 = r0.<junit.framework.ComparisonCompactor: int fPrefix> 
 ; Statement: if i7 < $i2 goto $r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert (< var978 var1709)) ; Cond: i7 < $i2 
(define-const var3783 String (fExpected/748987693 var334)) ; Statement: $r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(assert true)
(define-const var979 Int (length/-134980193 var3783)) ; Statement: $i8 = virtualinvoke $r5.<java.lang.String: int length()>() 
(define-const var3279 Int (- var979 var3985)) ; Statement: $i9 = $i8 - i6 
(declare-const var334!1 var2234)
(assert (not (= var334!1 null-var2234)))
(assert (= (fSuffix/748987693 var334!1) var3279)) ; Statement: r0.<junit.framework.ComparisonCompactor: int fSuffix> = $i9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {fExpected/748987693=([junit.framework.ComparisonCompactor], java.lang.String), length/-134980193=([java.lang.String], int), fActual/748987693=([junit.framework.ComparisonCompactor], java.lang.String), fPrefix/748987693=([junit.framework.ComparisonCompactor], int), fSuffix/748987693=([junit.framework.ComparisonCompactor], int)}
; {var2234=junit.framework.ComparisonCompactor, var334=r0, var2675=$r1, var1613=$i0, var3985=i6, var2494=$r2, var661=$i1, var978=i7, var1709=$i2, var3783=$r5, var979=$i8, var3279=$i9}
; {junit.framework.ComparisonCompactor=var2234, r0=var334, $r1=var2675, $i0=var1613, i6=var3985, $r2=var2494, $i1=var661, i7=var978, $i2=var1709, $r5=var3783, $i8=var979, $i9=var3279}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 3}
;stmts r0 := @this: junit.framework.ComparisonCompactor;	$r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i6 = $i0 - 1;	$r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fActual>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	i7 = $i1 - 1;	$i2 = r0.<junit.framework.ComparisonCompactor: int fPrefix>;	if i7 < $i2 goto $r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$r5 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$i8 = virtualinvoke $r5.<java.lang.String: int length()>();	$i9 = $i8 - i6;	r0.<junit.framework.ComparisonCompactor: int fSuffix> = $i9;	return
;block_num 3