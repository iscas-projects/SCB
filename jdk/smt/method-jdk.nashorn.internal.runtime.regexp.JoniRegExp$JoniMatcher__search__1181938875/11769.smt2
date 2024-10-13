(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2612 0)
(declare-sort var1265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun joniMatcher/840625469 (var2612) var1265)
(declare-fun input/840625469 (var2612) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun search/-1673674873 (var1265 Int Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2612 var2612)
(declare-const null-Int Int)
(declare-const var3669 var2612) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher 
(assert (not (= var3669 null-var2612)))
(declare-const var1524 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1524 null-Int)))
(define-const var2324 var1265 (joniMatcher/840625469 var3669)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> 
(define-const var734 String (input/840625469 var3669)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input> 
(assert true)
(define-const var2261 Int (length/-134980193 var734)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true)
(define-const var1078 Int (search/-1673674873 var2324 var1524 var2261 0)) ; Statement: $i2 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int search(int,int,int)>(i0, $i1, 0) 
(define-const var884 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 <= $i4 goto $z0 = 0 
(assert (not (<= var1078 var884))) ; Negate: Cond: $i2 <= $i4  
(define-const var3666 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {joniMatcher/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], jdk.nashorn.internal.runtime.regexp.joni.Matcher), input/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], java.lang.String), length/-134980193=([java.lang.String], int), search/-1673674873=([jdk.nashorn.internal.runtime.regexp.joni.Matcher, int, int, int], int), cast-from-Int-to-Int=([int], int)}
; {var2612=jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher, var3669=r0, var1524=i0, var1265=jdk.nashorn.internal.runtime.regexp.joni.Matcher, var2324=$r2, var734=$r1, var2261=$i1, var1078=$i2, var884=$i4, var3666=$z0}
; {jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher=var2612, r0=var3669, i0=var1524, jdk.nashorn.internal.runtime.regexp.joni.Matcher=var1265, $r2=var2324, $r1=var734, $i1=var2261, $i2=var1078, $i4=var884, $z0=var3666}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher;	i0 := @parameter0: int;	$r2 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i2 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int search(int,int,int)>(i0, $i1, 0);	$i4 = (int) -1;	if $i2 <= $i4 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3