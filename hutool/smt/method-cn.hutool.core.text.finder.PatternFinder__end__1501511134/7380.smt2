(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3977 0)
(declare-sort var3647 0)
(declare-sort var2914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/72069158 (var3977) var3647)
(declare-fun end/8760360 (var3647) Int)
(declare-fun endIndex/1442965859 (var2914) Int)
(declare-fun cast-from-var3977-to-var2914 (var3977) var2914)
(declare-fun text/1442965859 (var2914) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3977 var3977)
(declare-const null-Int Int)
(declare-const var3805 var3977) ; Statement: r0 := @this: cn.hutool.core.text.finder.PatternFinder 
(assert (not (= var3805 null-var3977)))
(declare-const var1695 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var1695 null-Int)))
(define-const var2793 var3647 (matcher/72069158 var3805)) ; Statement: $r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher> 
(assert true)
(define-const var2443 Int (end/8760360 var2793)) ; Statement: i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>() 
(define-const var2582 Int (endIndex/1442965859 (cast-from-var3977-to-var2914 var3805))) ; Statement: $i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
 ; Statement: if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
(assert (not (>= var2582 0))) ; Negate: Cond: $i1 >= 0  
(define-const var2148 String (text/1442965859 (cast-from-var3977-to-var2914 var3805))) ; Statement: $r3 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text> 
(define-const var1957 Int (String_length/-667254855 var2148)) ; Statement: i5 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 > i5 goto $i8 = (int) -1 
(assert (not (> var2443 var1957))) ; Negate: Cond: i0 > i5  
(define-const var1630 Int var2443) ; Statement: $i6 = i0 
 ; Statement: goto [?= return $i6] 
(assert true) ; Non Conditional
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/72069158=([cn.hutool.core.text.finder.PatternFinder], java.util.regex.Matcher), end/8760360=([java.util.regex.Matcher], int), endIndex/1442965859=([cn.hutool.core.text.finder.TextFinder], int), cast-from-var3977-to-var2914=([cn.hutool.core.text.finder.PatternFinder], cn.hutool.core.text.finder.TextFinder), text/1442965859=([cn.hutool.core.text.finder.TextFinder], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var3977=cn.hutool.core.text.finder.PatternFinder, var3805=r0, var1695=i4, var3647=java.util.regex.Matcher, var2793=$r1, var2443=i0, var2914=cn.hutool.core.text.finder.TextFinder, var2582=$i1, var2148=$r3, var1957=i5, var1630=$i6}
; {cn.hutool.core.text.finder.PatternFinder=var3977, r0=var3805, i4=var1695, java.util.regex.Matcher=var3647, $r1=var2793, i0=var2443, cn.hutool.core.text.finder.TextFinder=var2914, $i1=var2582, $r3=var2148, i5=var1957, $i6=var1630}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.finder.PatternFinder;	i4 := @parameter0: int;	$r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher>;	i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>();	$i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	$r3 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text>;	i5 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>();	goto [?= (branch)];	if i0 > i5 goto $i8 = (int) -1;	$i6 = i0;	goto [?= return $i6];	return $i6
;block_num 5