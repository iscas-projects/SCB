(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var928 0)
(declare-sort var2456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/840625469 (var928) String)
(declare-fun joniMatcher/840625469 (var928) var2456)
(declare-fun getBegin/-413377587 (var2456) Int)
(declare-fun getEnd/-187948901 (var2456) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var928 var928)
(declare-const var570 var928) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher 
(assert (not (= var570 null-var928)))
(define-const var1848 String (input/840625469 var570)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input> 
(define-const var2470 var2456 (joniMatcher/840625469 var570)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> 
(assert true)
(define-const var2220 Int (getBegin/-413377587 var2470)) ; Statement: $i1 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int getBegin()>() 
(define-const var445 var2456 (joniMatcher/840625469 var570)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher> 
(assert true)
(define-const var2861 Int (getEnd/-187948901 var445)) ; Statement: $i0 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int getEnd()>() 
(assert (and true (and (>= var2220 0) (>= (str.len var1848) var2861) (>= var2861 var2220))))
(define-const var3876 String (substring/-1240304868 var1848 var2220 var2861)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i1, $i0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {input/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], java.lang.String), joniMatcher/840625469=([jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher], jdk.nashorn.internal.runtime.regexp.joni.Matcher), getBegin/-413377587=([jdk.nashorn.internal.runtime.regexp.joni.Matcher], int), getEnd/-187948901=([jdk.nashorn.internal.runtime.regexp.joni.Matcher], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var928=jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher, var570=r0, var1848=$r2, var2456=jdk.nashorn.internal.runtime.regexp.joni.Matcher, var2470=$r1, var2220=$i1, var445=$r3, var2861=$i0, var3876=$r4}
; {jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher=var928, r0=var570, $r2=var1848, jdk.nashorn.internal.runtime.regexp.joni.Matcher=var2456, $r1=var2470, $i1=var2220, $r3=var445, $i0=var2861, $r4=var3876}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher;	$r2 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: java.lang.String input>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher>;	$i1 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int getBegin()>();	$r3 = r0.<jdk.nashorn.internal.runtime.regexp.JoniRegExp$JoniMatcher: jdk.nashorn.internal.runtime.regexp.joni.Matcher joniMatcher>;	$i0 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.regexp.joni.Matcher: int getEnd()>();	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i1, $i0);	return $r4
;block_num 1