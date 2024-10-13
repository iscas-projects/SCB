(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var827 0)
(declare-sort var3793 0)
(declare-sort var2661 0)
(declare-sort var1714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/72069158 (var827) var3793)
(declare-fun end/8760360 (var3793) Int)
(declare-fun endIndex/1442965859 (var2661) Int)
(declare-fun cast-from-var827-to-var2661 (var827) var2661)
(declare-fun text/1442965859 (var2661) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1714_min/-1112089438 (Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var827 var827)
(declare-const null-Int Int)
(declare-const var1462 var827) ; Statement: r0 := @this: cn.hutool.core.text.finder.PatternFinder 
(assert (not (= var1462 null-var827)))
(declare-const var2283 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var2283 null-Int)))
(define-const var2402 var3793 (matcher/72069158 var1462)) ; Statement: $r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher> 
(assert true)
(define-const var895 Int (end/8760360 var2402)) ; Statement: i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>() 
(define-const var1968 Int (endIndex/1442965859 (cast-from-var827-to-var2661 var1462))) ; Statement: $i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
 ; Statement: if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
(assert (>= var1968 0)) ; Cond: $i1 >= 0 
(define-const var2818 Int (endIndex/1442965859 (cast-from-var827-to-var2661 var1462))) ; Statement: $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
(define-const var2049 String (text/1442965859 (cast-from-var827-to-var2661 var1462))) ; Statement: $r2 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text> 
(define-const var2135 Int (String_length/-667254855 var2049)) ; Statement: $i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
(define-const var3588 Int (var1714_min/-1112089438 var2818 var2135)) ; Statement: i5 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i3) 
(assert true) ; Non Conditional
 ; Statement: if i0 > i5 goto $i8 = (int) -1 
(assert (> var895 var3588)) ; Cond: i0 > i5 
(define-const var1576 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
(define-const var2904 Int var1576) ; Statement: $i6 = $i8 
(assert true) ; Non Conditional
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/72069158=([cn.hutool.core.text.finder.PatternFinder], java.util.regex.Matcher), end/8760360=([java.util.regex.Matcher], int), endIndex/1442965859=([cn.hutool.core.text.finder.TextFinder], int), cast-from-var827-to-var2661=([cn.hutool.core.text.finder.PatternFinder], cn.hutool.core.text.finder.TextFinder), text/1442965859=([cn.hutool.core.text.finder.TextFinder], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var1714_min/-1112089438=([int, int], int), cast-from-Int-to-Int=([int], int)}
; {var827=cn.hutool.core.text.finder.PatternFinder, var1462=r0, var2283=i4, var3793=java.util.regex.Matcher, var2402=$r1, var895=i0, var2661=cn.hutool.core.text.finder.TextFinder, var1968=$i1, var2818=$i2, var2049=$r2, var2135=$i3, var1714=java.lang.Math, var3588=i5, var1576=$i8, var2904=$i6}
; {cn.hutool.core.text.finder.PatternFinder=var827, r0=var1462, i4=var2283, java.util.regex.Matcher=var3793, $r1=var2402, i0=var895, cn.hutool.core.text.finder.TextFinder=var2661, $i1=var1968, $i2=var2818, $r2=var2049, $i3=var2135, java.lang.Math=var1714, i5=var3588, $i8=var1576, $i6=var2904}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.finder.PatternFinder;	i4 := @parameter0: int;	$r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher>;	i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>();	$i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	$i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	$r2 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text>;	$i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	i5 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i3);	if i0 > i5 goto $i8 = (int) -1;	$i8 = (int) -1;	$i6 = $i8;	return $i6
;block_num 5