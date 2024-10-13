(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var3860 0)
(declare-sort var1736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expected/1728408848 (var2495) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun actual/1728408848 (var2495) String)
(declare-fun var1736_min/-1112089438 (Int Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2495 var2495)
(declare-const null-String String)
(declare-const var3933 var2495) ; Statement: r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor 
(assert (not (= var3933 null-var2495)))
(declare-const var3913 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3913 null-String)))
(define-const var1234 Int 0) ; Statement: i18 = 0 
(define-const var3433 String (expected/1728408848 var3933)) ; Statement: $r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected> 
(assert true)
(define-const var3676 Int (length/-134980193 var3433)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true)
(define-const var522 Int (length/-134980193 var3913)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var246 Int (- var3676 var522)) ; Statement: $i5 = $i1 - $i0 
(define-const var1310 String (actual/1728408848 var3933)) ; Statement: $r3 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String actual> 
(assert true)
(define-const var3821 Int (length/-134980193 var1310)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int length()>() 
(assert true)
(define-const var3368 Int (length/-134980193 var3913)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var734 Int (- var3821 var3368)) ; Statement: $i4 = $i3 - $i2 
(define-const var3626 Int (var1736_min/-1112089438 var246 var734)) ; Statement: $i6 = staticinvoke <java.lang.Math: int min(int,int)>($i5, $i4) 
(define-const var2038 Int (- var3626 1)) ; Statement: i7 = $i6 - 1 
(assert true) ; Non Conditional
 ; Statement: if i18 > i7 goto $r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected> 
(assert (> var1234 var2038)) ; Cond: i18 > i7 
(define-const var1657 String (expected/1728408848 var3933)) ; Statement: $r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected> 
(define-const var2309 String (expected/1728408848 var3933)) ; Statement: $r4 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected> 
(assert true)
(define-const var829 Int (length/-134980193 var2309)) ; Statement: $i8 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var3953 Int (- var829 var1234)) ; Statement: $i9 = $i8 - i18 
(assert (and true (and (>= var3953 0) (>= (str.len var1657) var3953))))
(define-const var660 String (substring/850833817 var1657 var3953)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int)>($i9) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {expected/1728408848=([org.junit.ComparisonFailure$ComparisonCompactor], java.lang.String), length/-134980193=([java.lang.String], int), actual/1728408848=([org.junit.ComparisonFailure$ComparisonCompactor], java.lang.String), var1736_min/-1112089438=([int, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2495=org.junit.ComparisonFailure$ComparisonCompactor, var3933=r0, var3913=r2, var3860=null_type, var1234=i18, var3433=$r1, var3676=$i1, var522=$i0, var246=$i5, var1310=$r3, var3821=$i3, var3368=$i2, var734=$i4, var1736=java.lang.Math, var3626=$i6, var2038=i7, var1657=$r5, var2309=$r4, var829=$i8, var3953=$i9, var660=$r6}
; {org.junit.ComparisonFailure$ComparisonCompactor=var2495, r0=var3933, r2=var3913, null_type=var3860, i18=var1234, $r1=var3433, $i1=var3676, $i0=var522, $i5=var246, $r3=var1310, $i3=var3821, $i2=var3368, $i4=var734, java.lang.Math=var1736, $i6=var3626, i7=var2038, $r5=var1657, $r4=var2309, $i8=var829, $i9=var3953, $r6=var660}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 5,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor;	r2 := @parameter0: java.lang.String;	i18 = 0;	$r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i5 = $i1 - $i0;	$r3 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String actual>;	$i3 = virtualinvoke $r3.<java.lang.String: int length()>();	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	$i4 = $i3 - $i2;	$i6 = staticinvoke <java.lang.Math: int min(int,int)>($i5, $i4);	i7 = $i6 - 1;	if i18 > i7 goto $r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected>;	$r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected>;	$r4 = r0.<org.junit.ComparisonFailure$ComparisonCompactor: java.lang.String expected>;	$i8 = virtualinvoke $r4.<java.lang.String: int length()>();	$i9 = $i8 - i18;	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int)>($i9);	return $r6
;block_num 3