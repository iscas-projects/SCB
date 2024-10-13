(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3957 0)
(declare-sort var1983 0)
(declare-sort var3943 0)
(declare-sort var1571 0)
(declare-sort var1032 0)
(declare-sort var1807 0)
(declare-sort var872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/443652580 (var3957) var1807)
(declare-fun getIndex/-2136393185 (var1032) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun matcher/468719934 (var1807 String) var872)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lookingAt/-1645860844 (var872) Bool)
(declare-fun setErrorIndex/-1773443795 (var1032 Int) void)
(declare-const null-var3957 var3957)
(declare-const null-var1983 var1983)
(declare-const null-var3943 var3943)
(declare-const null-String String)
(declare-const null-var1032 var1032)
(declare-const null-Int Int)
(declare-const var1967 var3957) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy 
(assert (not (= var1967 null-var3957)))
(declare-const var3456 var1983) ; Statement: r6 := @parameter0: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var3456 null-var1983)))
(declare-const var2782 var3943) ; Statement: r7 := @parameter1: java.util.Calendar 
(assert (not (= var2782 null-var3943)))
(declare-const var3623 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3623 null-String)))
(declare-const var1947 var1032) ; Statement: r2 := @parameter3: java.text.ParsePosition 
(assert (not (= var1947 null-var1032)))
(declare-const var2177 Int) ; Statement: i5 := @parameter4: int 
(assert (not (= var2177 null-Int)))
(define-const var486 var1807 (pattern/443652580 var1967)) ; Statement: $r3 = r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern> 
(assert true)
(define-const var105 Int (getIndex/-2136393185 var1947)) ; Statement: $i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(assert (not (and true (and (>= var105 0) (>= (str.len var3623) var105)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/443652580=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy], java.util.regex.Pattern), getIndex/-2136393185=([java.text.ParsePosition], int), substring/850833817=([java.lang.String, int], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lookingAt/-1645860844=([java.util.regex.Matcher], boolean), setErrorIndex/-1773443795=([java.text.ParsePosition, int], void)}
; {var3957=org.apache.commons.lang3.time.FastDateParser$PatternStrategy, var1967=r0, var1983=org.apache.commons.lang3.time.FastDateParser, var3456=r6, var3943=java.util.Calendar, var2782=r7, var3623=r1, var1571=null_type, var1032=java.text.ParsePosition, var1947=r2, var2177=i5, var1807=java.util.regex.Pattern, var486=$r3, var105=$i0, var1783=$r4, var872=java.util.regex.Matcher, var2406=r5, var182=$z0, var3243=$i4}
; {org.apache.commons.lang3.time.FastDateParser$PatternStrategy=var3957, r0=var1967, org.apache.commons.lang3.time.FastDateParser=var1983, r6=var3456, java.util.Calendar=var3943, r7=var2782, r1=var3623, null_type=var1571, java.text.ParsePosition=var1032, r2=var1947, i5=var2177, java.util.regex.Pattern=var1807, $r3=var486, $i0=var105, $r4=var1783, java.util.regex.Matcher=var872, r5=var2406, $z0=var182, $i4=var3243}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy;	r6 := @parameter0: org.apache.commons.lang3.time.FastDateParser;	r7 := @parameter1: java.util.Calendar;	r1 := @parameter2: java.lang.String;	r2 := @parameter3: java.text.ParsePosition;	i5 := @parameter4: int;	$r3 = r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: java.util.regex.Pattern pattern>;	$i0 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	r5 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r4);	$z0 = virtualinvoke r5.<java.util.regex.Matcher: boolean lookingAt()>();	if $z0 != 0 goto $i2 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$i4 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	virtualinvoke r2.<java.text.ParsePosition: void setErrorIndex(int)>($i4);	return 0
;block_num 2