(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var207 0)
(declare-sort var285 0)
(declare-sort var3834 0)
(declare-sort var2420 0)
(declare-sort var803 0)
(declare-sort var2491 0)
(declare-sort var1922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/443652580 (var207) var2491)
(declare-fun getIndex/-2136393185 (var803) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun matcher/468719934 (var2491 String) var1922)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lookingAt/-1645860844 (var1922) Bool)
(declare-fun end/-952472175 (var1922 Int) Int)
(declare-fun setIndex/-453939609 (var803 Int) void)
(declare-fun group/-653887691 (var1922 Int) String)
(declare-fun setCalendar/1778664015 (var207 var285 var3834 String) void)
(declare-const null-var207 var207)
(declare-const null-var285 var285)
(declare-const null-var3834 var3834)
(declare-const null-String String)
(declare-const null-var803 var803)
(declare-const null-Int Int)
(declare-const var2505 var207) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy 
(assert (not (= var2505 null-var207)))
(declare-const var2209 var285) ; Statement: r6 := @parameter0: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var2209 null-var285)))
(declare-const var1484 var3834) ; Statement: r7 := @parameter1: java.util.Calendar 
(assert (not (= var1484 null-var3834)))
(declare-const var3299 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3299 null-String)))
(declare-const var968 var803) ; Statement: r2 := @parameter3: java.text.ParsePosition 
(assert (not (= var968 null-var803)))
(declare-const var1967 Int) ; Statement: i5 := @parameter4: int 
(assert (not (= var1967 null-Int)))
(define-const var439 var2491 (pattern/443652580 var2505)) ; Statement: $r3 = r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern> 
(assert true)
(define-const var2974 Int (getIndex/-2136393185 var968)) ; Statement: $i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(assert (not (and true (and (>= var2974 0) (>= (str.len var3299) var2974)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/443652580=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy], java.util.regex.Pattern), getIndex/-2136393185=([java.text.ParsePosition], int), substring/850833817=([java.lang.String, int], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lookingAt/-1645860844=([java.util.regex.Matcher], boolean), end/-952472175=([java.util.regex.Matcher, int], int), setIndex/-453939609=([java.text.ParsePosition, int], void), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), setCalendar/1778664015=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy, org.apache.commons.lang3.time.FastDateParser, java.util.Calendar, java.lang.String], void)}
; {var207=org.apache.commons.lang3.time.FastDateParser$PatternStrategy, var2505=r0, var285=org.apache.commons.lang3.time.FastDateParser, var2209=r6, var3834=java.util.Calendar, var1484=r7, var3299=r1, var2420=null_type, var803=java.text.ParsePosition, var968=r2, var1967=i5, var2491=java.util.regex.Pattern, var439=$r3, var2974=$i0, var1045=$r4, var1922=java.util.regex.Matcher, var1769=r5, var3238=$z0, var1694=$i2, var3017=$i1, var2883=$i3, var1800=$r8}
; {org.apache.commons.lang3.time.FastDateParser$PatternStrategy=var207, r0=var2505, org.apache.commons.lang3.time.FastDateParser=var285, r6=var2209, java.util.Calendar=var3834, r7=var1484, r1=var3299, null_type=var2420, java.text.ParsePosition=var803, r2=var968, i5=var1967, java.util.regex.Pattern=var2491, $r3=var439, $i0=var2974, $r4=var1045, java.util.regex.Matcher=var1922, r5=var1769, $z0=var3238, $i2=var1694, $i1=var3017, $i3=var2883, $r8=var1800}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy;	r6 := @parameter0: org.apache.commons.lang3.time.FastDateParser;	r7 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r2 := @parameter3: java.text.ParsePosition;	i5 := @parameter4: int;	$r3 = r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern>;	$i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	r5 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r4);	$z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean lookingAt()>();	if $z0 != 0 goto $i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r5.<java.util.regex.Matcher: int end(int)>(1);	$i3 = $i2 + $i1;	virtualinvoke r2.<java.text.ParsePosition: void setIndex(int)>($i3);	$r8 = virtualinvoke r5.<java.util.regex.Matcher: java.lang.String group(int)>(1);	virtualinvoke r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: void setCalendar(org.apache.commons.lang3.time.FastDateParser,java.util.Calendar,java.lang.String)>(r6, r7, $r8);	return 1
;block_num 2