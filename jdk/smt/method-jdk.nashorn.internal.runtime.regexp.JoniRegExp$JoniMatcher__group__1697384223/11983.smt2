(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1736 0)
(declare-sort var3555 0)
(declare-sort var1247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun joniMatcher/840625469 (var1736) var3555)
(declare-fun getRegion/-1636796189 (var3555) var1247)
(declare-fun input/840625469 (var1736) String)
(declare-fun beg/-207103108 (var1247) (Array Int Int))
(declare-fun end/-207103108 (var1247) (Array Int Int))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1736 var1736)
(declare-const null-Int Int)
(declare-const var2714 var1736) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher 
(assert (not (= var2714 null-var1736)))
(declare-const var3437 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3437 null-Int)))
 ; Statement: if i0 != 0 goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> 
(assert (not (= var3437 0))) ; Cond: i0 != 0 
(define-const var2596 var3555 (joniMatcher/840625469 var2714)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> 
(assert true)
(define-const var1707 var1247 (getRegion/-1636796189 var2596)) ; Statement: r2 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: jdk.nashorn.internal.runtime.regexp.joni.Region getRegion()>() 
(define-const var3309 String (input/840625469 var2714)) ; Statement: $r5 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input> 
(define-const var3645 (Array Int Int) (beg/-207103108 var1707)) ; Statement: $r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.Region: int[] beg> 
(define-const var32 Int (select var3645 var3437)) ; Statement: $i2 = $r3[i0] 
(define-const var2699 (Array Int Int) (end/-207103108 var1707)) ; Statement: $r4 = r2.<jdk.nashorn.internal.runtime.regexp.joni.Region: int[] end> 
(define-const var323 Int (select var2699 var3437)) ; Statement: $i1 = $r4[i0] 
(assert (and true (and (>= var32 0) (>= (str.len var3309) var323) (>= var323 var32))))
(define-const var2645 String (substring/-1240304868 var3309 var32 var323)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>($i2, $i1) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {joniMatcher/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], jdk.nashorn.internal.runtime.regexp.joni.Matcher), getRegion/-1636796189=([jdk.nashorn.internal.runtime.regexp.joni.Matcher], jdk.nashorn.internal.runtime.regexp.joni.Region), input/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], java.lang.String), beg/-207103108=([jdk.nashorn.internal.runtime.regexp.joni.Region], int[]), end/-207103108=([jdk.nashorn.internal.runtime.regexp.joni.Region], int[]), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1736=jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher, var2714=r0, var3437=i0, var3555=jdk.nashorn.internal.runtime.regexp.joni.Matcher, var2596=$r1, var1247=jdk.nashorn.internal.runtime.regexp.joni.Region, var1707=r2, var3309=$r5, var3645=$r3, var32=$i2, var2699=$r4, var323=$i1, var2645=$r6}
; {jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher=var1736, r0=var2714, i0=var3437, jdk.nashorn.internal.runtime.regexp.joni.Matcher=var3555, $r1=var2596, jdk.nashorn.internal.runtime.regexp.joni.Region=var1247, r2=var1707, $r5=var3309, $r3=var3645, $i2=var32, $r4=var2699, $i1=var323, $r6=var2645}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher;	i0 := @parameter0: int;	if i0 != 0 goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher>;	r2 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: jdk.nashorn.internal.runtime.regexp.joni.Region getRegion()>();	$r5 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input>;	$r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.Region: int[] beg>;	$i2 = $r3[i0];	$r4 = r2.<jdk.nashorn.internal.runtime.regexp.joni.Region: int[] end>;	$i1 = $r4[i0];	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>($i2, $i1);	return $r6
;block_num 2