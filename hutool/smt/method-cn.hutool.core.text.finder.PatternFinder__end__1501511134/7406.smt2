(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3540 0)
(declare-sort var1904 0)
(declare-sort var1696 0)
(declare-sort var3821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/72069158 (var3540) var1904)
(declare-fun end/8760360 (var1904) Int)
(declare-fun endIndex/1442965859 (var1696) Int)
(declare-fun cast-from-var3540-to-var1696 (var3540) var1696)
(declare-fun text/1442965859 (var1696) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3821_min/-1112089438 (Int Int) Int)
(declare-const null-var3540 var3540)
(declare-const null-Int Int)
(declare-const var2522 var3540) ; Statement: r0 := @this: cn.hutool.core.text.finder.PatternFinder 
(assert (not (= var2522 null-var3540)))
(declare-const var175 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var175 null-Int)))
(define-const var700 var1904 (matcher/72069158 var2522)) ; Statement: $r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher> 
(assert true)
(define-const var1970 Int (end/8760360 var700)) ; Statement: i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>() 
(define-const var3949 Int (endIndex/1442965859 (cast-from-var3540-to-var1696 var2522))) ; Statement: $i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
 ; Statement: if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
(assert (>= var3949 0)) ; Cond: $i1 >= 0 
(define-const var981 Int (endIndex/1442965859 (cast-from-var3540-to-var1696 var2522))) ; Statement: $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex> 
(define-const var3683 String (text/1442965859 (cast-from-var3540-to-var1696 var2522))) ; Statement: $r2 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text> 
(define-const var2573 Int (String_length/-667254855 var3683)) ; Statement: $i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
(define-const var2788 Int (var3821_min/-1112089438 var981 var2573)) ; Statement: i5 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i3) 
(assert true) ; Non Conditional
 ; Statement: if i0 > i5 goto $i8 = (int) -1 
(assert (not (> var1970 var2788))) ; Negate: Cond: i0 > i5  
(define-const var2919 Int var1970) ; Statement: $i6 = i0 
 ; Statement: goto [?= return $i6] 
(assert true) ; Non Conditional
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/72069158=([cn.hutool.core.text.finder.PatternFinder], java.util.regex.Matcher), end/8760360=([java.util.regex.Matcher], int), endIndex/1442965859=([cn.hutool.core.text.finder.TextFinder], int), cast-from-var3540-to-var1696=([cn.hutool.core.text.finder.PatternFinder], cn.hutool.core.text.finder.TextFinder), text/1442965859=([cn.hutool.core.text.finder.TextFinder], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var3821_min/-1112089438=([int, int], int)}
; {var3540=cn.hutool.core.text.finder.PatternFinder, var2522=r0, var175=i4, var1904=java.util.regex.Matcher, var700=$r1, var1970=i0, var1696=cn.hutool.core.text.finder.TextFinder, var3949=$i1, var981=$i2, var3683=$r2, var2573=$i3, var3821=java.lang.Math, var2788=i5, var2919=$i6}
; {cn.hutool.core.text.finder.PatternFinder=var3540, r0=var2522, i4=var175, java.util.regex.Matcher=var1904, $r1=var700, i0=var1970, cn.hutool.core.text.finder.TextFinder=var1696, $i1=var3949, $i2=var981, $r2=var3683, $i3=var2573, java.lang.Math=var3821, i5=var2788, $i6=var2919}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.finder.PatternFinder;	i4 := @parameter0: int;	$r1 = r0.<cn.hutool.core.text.finder.PatternFinder: java.util.regex.Matcher matcher>;	i0 = virtualinvoke $r1.<java.util.regex.Matcher: int end()>();	$i1 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	if $i1 >= 0 goto $i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	$i2 = r0.<cn.hutool.core.text.finder.PatternFinder: int endIndex>;	$r2 = r0.<cn.hutool.core.text.finder.PatternFinder: java.lang.CharSequence text>;	$i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	i5 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i3);	if i0 > i5 goto $i8 = (int) -1;	$i6 = i0;	goto [?= return $i6];	return $i6
;block_num 5