(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2707 0)
(declare-sort var1184 0)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var1184) (Array Int Int))
(declare-fun eqpref/-707396533 (var1184 (Array Int Int)) Bool)
(declare-fun name/2073447641 (var1184) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun mPref/-281370018 (var2707) var1184)
(declare-fun pair/-1800420241 (var2707 var1184) var1184)
(declare-fun mElm/-281370018 (var2707) var1184)
(declare-fun list/2073447641 (var1184) var1184)
(declare-fun value/2073447641 (var1184) String)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-fun num/2073447641 (var1184) Int)
(declare-const null-var2707 var2707)
(declare-const null-var1184 var1184)
(declare-const null-String String)
(declare-const var2707-XMLNS (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var748 var2707) ; Statement: r4 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var748 null-var2707)))
(declare-const var2801 var1184) ; Statement: r0 := @parameter0: jdk.internal.util.xml.impl.Pair 
(assert (not (= var2801 null-var1184)))
(declare-const var1423 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1423 null-String)))
(define-const var2129 (Array Int Int) (chars/2073447641 var2801)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var2867 Int (select var2129 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS> 
(assert (not (= var2867 0))) ; Cond: $c0 != 0 
(define-const var255 (Array Int Int) var2707-XMLNS) ; Statement: $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS> 
(assert true)
(define-const var2103 Bool (eqpref/-707396533 var2801 var255)) ; Statement: $z0 = virtualinvoke r0.<jdk.internal.util.xml.impl.Pair: boolean eqpref(char[])>($r2) 
 ; Statement: if $z0 != 1 goto return 0 
(assert (not (not (= (ite var2103 1 0) 1)))) ; Negate: Cond: $z0 != 1  
(define-const var558 String (name/2073447641 var2801)) ; Statement: $r3 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name> 
(assert true)
(define-const var92 Int (length/-134980193 var558)) ; Statement: i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var3360 var1184 (mPref/-281370018 var748)) ; Statement: $r5 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(assert true)
(define-const var1711 var1184 (pair/-1800420241 var748 var3360)) ; Statement: $r6 = virtualinvoke r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>($r5) 
(declare-const var748!1 var2707)
(assert (not (= var748!1 null-var2707)))
(assert (= (mPref/-281370018 var748!1) var1711)) ; Statement: r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> = $r6 
(define-const var89 var1184 (mPref/-281370018 var748!1)) ; Statement: $r8 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(define-const var2624 var1184 (mElm/-281370018 var748!1)) ; Statement: $r7 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm> 
(declare-const var89!1 var1184)
(assert (not (= var89!1 null-var1184)))
(assert (= (list/2073447641 var89!1) var2624)) ; Statement: $r8.<jdk.internal.util.xml.impl.Pair: jdk.internal.util.xml.impl.Pair list> = $r7 
(define-const var2889 var1184 (mPref/-281370018 var748!1)) ; Statement: $r10 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(declare-const var2889!1 var1184)
(assert (not (= var2889!1 null-var1184)))
(assert (= (value/2073447641 var2889!1) var1423)) ; Statement: $r10.<jdk.internal.util.xml.impl.Pair: java.lang.String value> = r9 
(define-const var1850 var1184 (mPref/-281370018 var748!1)) ; Statement: $r12 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(define-const var3764 String (name/2073447641 var2801)) ; Statement: $r11 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name> 
(declare-const var1850!1 var1184)
(assert (not (= var1850!1 null-var1184)))
(assert (= (name/2073447641 var1850!1) var3764)) ; Statement: $r12.<jdk.internal.util.xml.impl.Pair: java.lang.String name> = $r11 
(define-const var3712 var1184 (mPref/-281370018 var748!1)) ; Statement: $r14 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(define-const var2480 Int (+ var92 1)) ; Statement: $i2 = i1 + 1 
(define-const var1941 (Array Int Int) arr-Int-init) ; Statement: $r13 = newarray (char)[$i2] 
(declare-const var3712!1 var1184)
(assert (not (= var3712!1 null-var1184)))
(assert (= (chars/2073447641 var3712!1) var1941)) ; Statement: $r14.<jdk.internal.util.xml.impl.Pair: char[] chars> = $r13 
(define-const var3973 var1184 (mPref/-281370018 var748!1)) ; Statement: $r15 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(define-const var1298 (Array Int Int) (chars/2073447641 var3973)) ; Statement: $r16 = $r15.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var1234 Int (+ var92 1)) ; Statement: $i3 = i1 + 1 
(define-const var3727 Int (cast-from-Int-to-Int var1234)) ; Statement: $c4 = (char) $i3 
(declare-const var1298!1 (Array Int Int))
(assert (not (= var1298!1 null-__Array__Int__Int__)))
(assert (= (select var1298!1 0) var3727)) ; Statement: $r16[0] = $c4 
(define-const var746 String (name/2073447641 var2801)) ; Statement: $r19 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name> 
(define-const var2871 var1184 (mPref/-281370018 var748!1)) ; Statement: $r17 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(define-const var3543 (Array Int Int) (chars/2073447641 var2871)) ; Statement: $r18 = $r17.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(assert true)
;(assert (getChars/1306883398 var746 0 var92 var3543 1)) ; Statement: virtualinvoke $r19.<java.lang.String: void getChars(int,int,char[],int)>(0, i1, $r18, 1) 

(declare-const var746!1 String)
(declare-const var3054 Int)
(declare-const var92!1 Int)
(declare-const var3543!1 (Array Int Int))
(declare-const var3361 Int)
(define-const var1369 var1184 (mElm/-281370018 var748!1)) ; Statement: $r20 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm> 
(define-const var1047 Int (num/2073447641 var1369)) ; Statement: $i5 = $r20.<jdk.internal.util.xml.impl.Pair: int num> 
(define-const var3572 Int (+ var1047 1)) ; Statement: $i6 = $i5 + 1 
(declare-const var1369!1 var1184)
(assert (not (= var1369!1 null-var1184)))
(assert (= (num/2073447641 var1369!1) var3572)) ; Statement: $r20.<jdk.internal.util.xml.impl.Pair: int num> = $i6 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), eqpref/-707396533=([jdk.internal.util.xml.impl.Pair, char[]], boolean), name/2073447641=([jdk.internal.util.xml.impl.Pair], java.lang.String), length/-134980193=([java.lang.String], int), mPref/-281370018=([jdk.internal.util.xml.impl.Parser], jdk.internal.util.xml.impl.Pair), pair/-1800420241=([jdk.internal.util.xml.impl.Parser, jdk.internal.util.xml.impl.Pair], jdk.internal.util.xml.impl.Pair), mElm/-281370018=([jdk.internal.util.xml.impl.Parser], jdk.internal.util.xml.impl.Pair), list/2073447641=([jdk.internal.util.xml.impl.Pair], jdk.internal.util.xml.impl.Pair), value/2073447641=([jdk.internal.util.xml.impl.Pair], java.lang.String), arr-Int-init=([], char[]), cast-from-Int-to-Int=([int], char), getChars/1306883398=([java.lang.String, int, int, char[], int], void), num/2073447641=([jdk.internal.util.xml.impl.Pair], int)}
; {var2707=jdk.internal.util.xml.impl.Parser, var748=r4, var1184=jdk.internal.util.xml.impl.Pair, var2801=r0, var1423=r9, var1126=null_type, var2129=$r1, var2867=$c0, var255=$r2, var2103=$z0, var558=$r3, var92=i1, var3360=$r5, var1711=$r6, var89=$r8, var2624=$r7, var2889=$r10, var1850=$r12, var3764=$r11, var3712=$r14, var2480=$i2, var1941=$r13, var3973=$r15, var1298=$r16, var1234=$i3, var3727=$c4, var746=$r19, var2871=$r17, var3543=$r18, var3054=0, var3361=1, var1369=$r20, var1047=$i5, var3572=$i6}
; {jdk.internal.util.xml.impl.Parser=var2707, r4=var748, jdk.internal.util.xml.impl.Pair=var1184, r0=var2801, r9=var1423, null_type=var1126, $r1=var2129, $c0=var2867, $r2=var255, $z0=var2103, $r3=var558, i1=var92, $r5=var3360, $r6=var1711, $r8=var89, $r7=var2624, $r10=var2889, $r12=var1850, $r11=var3764, $r14=var3712, $i2=var2480, $r13=var1941, $r15=var3973, $r16=var1298, $i3=var1234, $c4=var3727, $r19=var746, $r17=var2871, $r18=var3543, 0=var3054, 1=var3361, $r20=var1369, $i5=var1047, $i6=var3572}
;seq <java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r4 := @this: jdk.internal.util.xml.impl.Parser;	r0 := @parameter0: jdk.internal.util.xml.impl.Pair;	r9 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS>;	$r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS>;	$z0 = virtualinvoke r0.<jdk.internal.util.xml.impl.Pair: boolean eqpref(char[])>($r2);	if $z0 != 1 goto return 0;	$r3 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name>;	i1 = virtualinvoke $r3.<java.lang.String: int length()>();	$r5 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r6 = virtualinvoke r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>($r5);	r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> = $r6;	$r8 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r7 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm>;	$r8.<jdk.internal.util.xml.impl.Pair: jdk.internal.util.xml.impl.Pair list> = $r7;	$r10 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r10.<jdk.internal.util.xml.impl.Pair: java.lang.String value> = r9;	$r12 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r11 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name>;	$r12.<jdk.internal.util.xml.impl.Pair: java.lang.String name> = $r11;	$r14 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$i2 = i1 + 1;	$r13 = newarray (char)[$i2];	$r14.<jdk.internal.util.xml.impl.Pair: char[] chars> = $r13;	$r15 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r16 = $r15.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$i3 = i1 + 1;	$c4 = (char) $i3;	$r16[0] = $c4;	$r19 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name>;	$r17 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r18 = $r17.<jdk.internal.util.xml.impl.Pair: char[] chars>;	virtualinvoke $r19.<java.lang.String: void getChars(int,int,char[],int)>(0, i1, $r18, 1);	$r20 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm>;	$i5 = $r20.<jdk.internal.util.xml.impl.Pair: int num>;	$i6 = $i5 + 1;	$r20.<jdk.internal.util.xml.impl.Pair: int num> = $i6;	return 1
;block_num 3