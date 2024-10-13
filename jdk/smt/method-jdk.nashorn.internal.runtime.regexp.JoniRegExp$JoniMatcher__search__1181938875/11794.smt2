(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1230 0)
(declare-sort var2939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun joniMatcher/840625469 (var1230) var2939)
(declare-fun input/840625469 (var1230) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun search/-1673674873 (var2939 Int Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1230 var1230)
(declare-const null-Int Int)
(declare-const var2628 var1230) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher 
(assert (not (= var2628 null-var1230)))
(declare-const var892 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var892 null-Int)))
(define-const var2097 var2939 (joniMatcher/840625469 var2628)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> 
(define-const var936 String (input/840625469 var2628)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input> 
(assert true)
(define-const var897 Int (length/-134980193 var936)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true)
(define-const var1427 Int (search/-1673674873 var2097 var892 var897 0)) ; Statement: $i2 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int search(int,int,int)>(i0, $i1, 0) 
(define-const var366 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 <= $i4 goto $z0 = 0 
(assert (<= var1427 var366)) ; Cond: $i2 <= $i4 
(define-const var2247 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {joniMatcher/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], jdk.nashorn.internal.runtime.regexp.joni.Matcher), input/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], java.lang.String), length/-134980193=([java.lang.String], int), search/-1673674873=([jdk.nashorn.internal.runtime.regexp.joni.Matcher, int, int, int], int), cast-from-Int-to-Int=([int], int)}
; {var1230=jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher, var2628=r0, var892=i0, var2939=jdk.nashorn.internal.runtime.regexp.joni.Matcher, var2097=$r2, var936=$r1, var897=$i1, var1427=$i2, var366=$i4, var2247=$z0}
; {jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher=var1230, r0=var2628, i0=var892, jdk.nashorn.internal.runtime.regexp.joni.Matcher=var2939, $r2=var2097, $r1=var936, $i1=var897, $i2=var1427, $i4=var366, $z0=var2247}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher;	i0 := @parameter0: int;	$r2 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i2 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int search(int,int,int)>(i0, $i1, 0);	$i4 = (int) -1;	if $i2 <= $i4 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3