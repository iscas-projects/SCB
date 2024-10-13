(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2969 0)
(declare-sort var390 0)
(declare-sort var3318 0)
(declare-sort var332 0)
(declare-sort var1978 0)
(declare-sort var580 0)
(declare-sort var2400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/-1805135672 (var2969) var580)
(declare-fun getIndex/-2136393185 (var1978) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun matcher/468719934 (var580 String) var2400)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lookingAt/-1645860844 (var2400) Bool)
(declare-fun end/-952472175 (var2400 Int) Int)
(declare-fun setIndex/-453939609 (var1978 Int) void)
(declare-fun group/-653887691 (var2400 Int) String)
(declare-fun setCalendar/2061766403 (var2969 var390 var3318 String) void)
(declare-const null-var2969 var2969)
(declare-const null-var390 var390)
(declare-const null-var3318 var3318)
(declare-const null-String String)
(declare-const null-var1978 var1978)
(declare-const null-Int Int)
(declare-const var1237 var2969) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$PatternStrategy 
(assert (not (= var1237 null-var2969)))
(declare-const var3010 var390) ; Statement: r6 := @parameter0: cn.hutool.core.date.format.FastDateParser 
(assert (not (= var3010 null-var390)))
(declare-const var2471 var3318) ; Statement: r7 := @parameter1: java.util.Calendar 
(assert (not (= var2471 null-var3318)))
(declare-const var558 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var558 null-String)))
(declare-const var788 var1978) ; Statement: r2 := @parameter3: java.text.ParsePosition 
(assert (not (= var788 null-var1978)))
(declare-const var1905 Int) ; Statement: i5 := @parameter4: int 
(assert (not (= var1905 null-Int)))
(define-const var350 var580 (pattern/-1805135672 var1237)) ; Statement: $r3 = r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern> 
(assert true)
(define-const var2718 Int (getIndex/-2136393185 var788)) ; Statement: $i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(assert (and true (and (>= var2718 0) (>= (str.len var558) var2718))))
(define-const var3249 String (substring/850833817 var558 var2718)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0) 
(assert true)
(define-const var1017 var2400 (matcher/468719934 var350 (cast-from-String-to-String var3249))) ; Statement: r5 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r4) 
(assert true)
(define-const var2973 Bool (lookingAt/-1645860844 var1017)) ; Statement: $z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean lookingAt()>() 
 ; Statement: if $z0 != 0 goto $i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(assert (not (= (ite var2973 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1381 Int (getIndex/-2136393185 var788)) ; Statement: $i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var30 Int (end/-952472175 var1017 1)) ; Statement: $i1 = virtualinvoke r5.<java.util.regex.Matcher: int end(int)>(1) 
(define-const var3370 Int (+ var1381 var30)) ; Statement: $i3 = $i2 + $i1 
(assert true)
;(assert (setIndex/-453939609 var788 var3370)) ; Statement: virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i3) 

(declare-const var788!1 var1978)
(declare-const var3370!1 Int)
(assert true)
(define-const var3876 String (group/-653887691 var1017 1)) ; Statement: $r8 = virtualinvoke r5.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(assert true)
;(assert (setCalendar/2061766403 var1237 var3010 var2471 var3876)) ; Statement: virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void setCalendar(cn.hutool.core.date.format.FastDateParser,java.util.Calendar,java.lang.String)>(r6, r7, $r8) 

(declare-const var1237!1 var2969)
(declare-const var3010!1 var390)
(declare-const var2471!1 var3318)
(declare-const var3876!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/-1805135672=([cn.hutool.core.date.format.FastDateParser$PatternStrategy], java.util.regex.Pattern), getIndex/-2136393185=([java.text.ParsePosition], int), substring/850833817=([java.lang.String, int], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lookingAt/-1645860844=([java.util.regex.Matcher], boolean), end/-952472175=([java.util.regex.Matcher, int], int), setIndex/-453939609=([java.text.ParsePosition, int], void), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), setCalendar/2061766403=([cn.hutool.core.date.format.FastDateParser$PatternStrategy, cn.hutool.core.date.format.FastDateParser, java.util.Calendar, java.lang.String], void)}
; {var2969=cn.hutool.core.date.format.FastDateParser$PatternStrategy, var1237=r0, var390=cn.hutool.core.date.format.FastDateParser, var3010=r6, var3318=java.util.Calendar, var2471=r7, var558=r1, var332=null_type, var1978=java.text.ParsePosition, var788=r2, var1905=i5, var580=java.util.regex.Pattern, var350=$r3, var2718=$i0, var3249=$r4, var2400=java.util.regex.Matcher, var1017=r5, var2973=$z0, var1381=$i2, var30=$i1, var3370=$i3, var3876=$r8}
; {cn.hutool.core.date.format.FastDateParser$PatternStrategy=var2969, r0=var1237, cn.hutool.core.date.format.FastDateParser=var390, r6=var3010, java.util.Calendar=var3318, r7=var2471, r1=var558, null_type=var332, java.text.ParsePosition=var1978, r2=var788, i5=var1905, java.util.regex.Pattern=var580, $r3=var350, $i0=var2718, $r4=var3249, java.util.regex.Matcher=var2400, r5=var1017, $z0=var2973, $i2=var1381, $i1=var30, $i3=var3370, $r8=var3876}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$PatternStrategy;	r6 := @parameter0: cn.hutool.core.date.format.FastDateParser;	r7 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r2 := @parameter3: java.text.ParsePosition;	i5 := @parameter4: int;	$r3 = r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern>;	$i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	r5 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r4);	$z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean lookingAt()>();	if $z0 != 0 goto $i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r5.<java.util.regex.Matcher: int end(int)>(1);	$i3 = $i2 + $i1;	virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i3);	$r8 = virtualinvoke r5.<java.util.regex.Matcher: java.lang.String group(int)>(1);	virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void setCalendar(cn.hutool.core.date.format.FastDateParser,java.util.Calendar,java.lang.String)>(r6, r7, $r8);	return 1
;block_num 2