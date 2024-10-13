(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1199 0)
(declare-sort var2682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-603474257 (var1199) String)
(declare-fun ch0/-1835107176 (var2682) Int)
(declare-fun cast-from-var1199-to-var2682 (var1199) var2682)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ch1/-1835107176 (var2682) Int)
(declare-fun ch2/-1835107176 (var2682) Int)
(declare-fun skip/-1145984187 (var2682 Int) void)
(declare-const null-var1199 var1199)
(declare-const null-Int Int)
(declare-const var984 var1199) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var984 null-var1199)))
(declare-const var2648 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2648 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; } 
(assert (and (= var2648 3) (and (not (= var2648 2)) (and (not (= var2648 1)) true)))) ; Intersect: Cond: i0 == 3  and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional   
(define-const var3068 String (sb/-603474257 var984)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(define-const var2011 Int (ch0/-1835107176 (cast-from-var1199-to-var2682 var984))) ; Statement: $c1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert true)
;(assert (append/-1166366385 var3068 var2011)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3068!1 String)
(assert (str.prefixof var3068 var3068!1))
(define-const var80 String (sb/-603474257 var984)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(define-const var9 Int (ch1/-1835107176 (cast-from-var1199-to-var2682 var984))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1> 
(assert true)
;(assert (append/-1166366385 var80 var9)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var80!1 String)
(assert (str.prefixof var80 var80!1))
(define-const var1228 String (sb/-603474257 var984)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(define-const var3137 Int (ch2/-1835107176 (cast-from-var1199-to-var2682 var984))) ; Statement: $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch2> 
(assert true)
;(assert (append/-1166366385 var1228 var3137)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var1228!1 String)
(assert (str.prefixof var1228 var1228!1))
(assert true)
;(assert (skip/-1145984187 (cast-from-var1199-to-var2682 var984) 3)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(3) 

(declare-const var984!1 var1199)
(declare-const var2921 Int)
 ; Statement: goto [?= return 1] 
(assert true) ; Non Conditional
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-var1199-to-var2682=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ch1/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), ch2/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), skip/-1145984187=([jdk.nashorn.internal.parser.Scanner, int], void)}
; {var1199=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var984=r0, var2648=i0, var3068=$r1, var2682=jdk.nashorn.internal.parser.Scanner, var2011=$c1, var80=$r2, var9=$c2, var1228=$r3, var3137=$c3, var2921=3}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var1199, r0=var984, i0=var2648, $r1=var3068, jdk.nashorn.internal.parser.Scanner=var2682, $c1=var2011, $r2=var80, $c2=var9, $r3=var1228, $c3=var3137, 3=var2921}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; };	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$c1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch2>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(3);	goto [?= return 1];	return 1
;block_num 3