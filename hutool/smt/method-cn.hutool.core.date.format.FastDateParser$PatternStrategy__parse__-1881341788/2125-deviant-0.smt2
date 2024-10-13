(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var958 0)
(declare-sort var227 0)
(declare-sort var72 0)
(declare-sort var1080 0)
(declare-sort var2458 0)
(declare-sort var1599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/-1805135672 (var150) var2458)
(declare-fun getIndex/-2136393185 (var1080) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun matcher/468719934 (var2458 String) var1599)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lookingAt/-1645860844 (var1599) Bool)
(declare-fun setErrorIndex/-1773443795 (var1080 Int) void)
(declare-const null-var150 var150)
(declare-const null-var958 var958)
(declare-const null-var227 var227)
(declare-const null-String String)
(declare-const null-var1080 var1080)
(declare-const null-Int Int)
(declare-const var667 var150) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$PatternStrategy 
(assert (not (= var667 null-var150)))
(declare-const var3581 var958) ; Statement: r6 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var3581 null-var958)))
(declare-const var427 var227) ; Statement: r7 := @parameter1: java.util.Calendar 
(assert (not (= var427 null-var227)))
(declare-const var2654 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2654 null-String)))
(declare-const var353 var1080) ; Statement: r2 := @parameter3: java.text.ParsePosition 
(assert (not (= var353 null-var1080)))
(declare-const var2819 Int) ; Statement: i5 := @parameter4: int 
(assert (not (= var2819 null-Int)))
(define-const var2273 var2458 (pattern/-1805135672 var667)) ; Statement: $r3 = r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern> 
(assert true)
(define-const var2843 Int (getIndex/-2136393185 var353)) ; Statement: $i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(assert (not (and true (and (>= var2843 0) (>= (str.len var2654) var2843)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/-1805135672=([cn.hutool.core.date.format.FastDateParser$PatternStrategy], java.util.regex.Pattern), getIndex/-2136393185=([java.text.ParsePosition], int), substring/850833817=([java.lang.String, int], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lookingAt/-1645860844=([java.util.regex.Matcher], boolean), setErrorIndex/-1773443795=([java.text.ParsePosition, int], void)}
; {var150=cn.hutool.core.date.format.FastDateParser$PatternStrategy, var667=r0, var958=cn.hutool.core.date.format.FastDateParser, var3581=r6, var227=java.util.Calendar, var427=r7, var2654=r1, var72=null_type, var1080=java.text.ParsePosition, var353=r2, var2819=i5, var2458=java.util.regex.Pattern, var2273=$r3, var2843=$i0, var3240=$r4, var1599=java.util.regex.Matcher, var3792=r5, var2135=$z0, var1848=$i4}
; {cn.hutool.core.date.format.FastDateParser$PatternStrategy=var150, r0=var667, cn.hutool.core.date.format.FastDateParser=var958, r6=var3581, java.util.Calendar=var227, r7=var427, r1=var2654, null_type=var72, java.text.ParsePosition=var1080, r2=var353, i5=var2819, java.util.regex.Pattern=var2458, $r3=var2273, $i0=var2843, $r4=var3240, java.util.regex.Matcher=var1599, r5=var3792, $z0=var2135, $i4=var1848}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$PatternStrategy;	r6 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r7 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r2 := @parameter3: java.text.ParsePosition;	i5 := @parameter4: int;	$r3 = r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern>;	$i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	r5 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r4);	$z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean lookingAt()>();	if $z0 != 0 goto $i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i4 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	virtualinvoke r2.<java.text.ParsePosition: void setErrorIndex(int)>($i4);	return 0
;block_num 2