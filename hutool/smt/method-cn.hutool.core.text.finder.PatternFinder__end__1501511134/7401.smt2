(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var349 0)
(declare-sort var2503 0)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/72069158 (var349) var2503)
(declare-fun end/8760360 (var2503) Int)
(declare-fun endIndex/1442965859 (var2769) Int)
(declare-fun cast-from-var349-to-var2769 (var349) var2769)
(declare-fun text/1442965859 (var2769) String)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var349 var349)
(declare-const null-Int Int)
(declare-const var1116 var349) ; Statement: r0 := @this: cn.hutool.core.text.finder.PatternFinder 
(assert (not (= var1116 null-var349)))
(declare-const var2487 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var2487 null-Int)))
(define-const var584 var2503 (matcher/72069158 var1116)) ; Statement: $r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher> 
(assert true)
(define-const var2031 Int (end/8760360 var584)) ; Statement: i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>() 
(define-const var1893 Int (endIndex/1442965859 (cast-from-var349-to-var2769 var1116))) ; Statement: $i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
 ; Statement: if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
(assert (not (>= var1893 0))) ; Negate: Cond: $i1 >= 0  
(define-const var1742 String (text/1442965859 (cast-from-var349-to-var2769 var1116))) ; Statement: $r3 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text> 
(define-const var3541 Int (String_length/-667254855 var1742)) ; Statement: i5 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 > i5 goto $i8 = (int) -1 
(assert (> var2031 var3541)) ; Cond: i0 > i5 
(define-const var2728 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(define-const var3755 Int var2728) ; Statement: $i6 = $i8 
(assert true) ; Non Conditional
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/72069158=([cn.hutool.core.text.finder.PatternFinder], java.util.regex.Matcher), end/8760360=([java.util.regex.Matcher], int), endIndex/1442965859=([cn.hutool.core.text.finder.TextFinder], int), cast-from-var349-to-var2769=([cn.hutool.core.text.finder.PatternFinder], cn.hutool.core.text.finder.TextFinder), text/1442965859=([cn.hutool.core.text.finder.TextFinder], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], int)}
; {var349=cn.hutool.core.text.finder.PatternFinder, var1116=r0, var2487=i4, var2503=java.util.regex.Matcher, var584=$r1, var2031=i0, var2769=cn.hutool.core.text.finder.TextFinder, var1893=$i1, var1742=$r3, var3541=i5, var2728=$i8, var3755=$i6}
; {cn.hutool.core.text.finder.PatternFinder=var349, r0=var1116, i4=var2487, java.util.regex.Matcher=var2503, $r1=var584, i0=var2031, cn.hutool.core.text.finder.TextFinder=var2769, $i1=var1893, $r3=var1742, i5=var3541, $i8=var2728, $i6=var3755}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.finder.PatternFinder;	i4 := @parameter0: int;	$r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher>;	i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>();	$i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	$r3 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text>;	i5 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>();	goto [?= (branch)];	if i0 > i5 goto $i8 = (int) -1;	$i8 = (int) -1;	$i6 = $i8;	return $i6
;block_num 5