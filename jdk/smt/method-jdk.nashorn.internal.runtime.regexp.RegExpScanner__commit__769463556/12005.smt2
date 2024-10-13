(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3428 0)
(declare-sort var3022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-603474257 (var3428) String)
(declare-fun ch0/-1835107176 (var3022) Int)
(declare-fun cast-from-var3428-to-var3022 (var3428) var3022)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ch1/-1835107176 (var3022) Int)
(declare-fun skip/-1145984187 (var3022 Int) void)
(declare-const null-var3428 var3428)
(declare-const null-Int Int)
(declare-const var1714 var3428) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var1714 null-var3428)))
(declare-const var745 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var745 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; } 
(assert (and (= var745 2) (and (not (= var745 1)) true))) ; Intersect: Cond: i0 == 2  and Intersect: Negate: Cond: i0 == 1   and Non Conditional  
(define-const var3193 String (sb/-603474257 var1714)) ; Statement: $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(define-const var573 Int (ch0/-1835107176 (cast-from-var3428-to-var3022 var1714))) ; Statement: $c4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert true)
;(assert (append/-1166366385 var3193 var573)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4) 
(declare-const var3193!1 String)
(assert (str.prefixof var3193 var3193!1))
(define-const var751 String (sb/-603474257 var1714)) ; Statement: $r5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(define-const var1109 Int (ch1/-1835107176 (cast-from-var3428-to-var3022 var1714))) ; Statement: $c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1> 
(assert true)
;(assert (append/-1166366385 var751 var1109)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5) 
(declare-const var751!1 String)
(assert (str.prefixof var751 var751!1))
(assert true)
;(assert (skip/-1145984187 (cast-from-var3428-to-var3022 var1714) 2)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(2) 

(declare-const var1714!1 var3428)
(declare-const var1023 Int)
 ; Statement: goto [?= return 1] 
(assert true) ; Non Conditional
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-var3428-to-var3022=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ch1/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), skip/-1145984187=([jdk.nashorn.internal.parser.Scanner, int], void)}
; {var3428=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var1714=r0, var745=i0, var3193=$r4, var3022=jdk.nashorn.internal.parser.Scanner, var573=$c4, var751=$r5, var1109=$c5, var1023=2}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var3428, r0=var1714, i0=var745, $r4=var3193, jdk.nashorn.internal.parser.Scanner=var3022, $c4=var573, $r5=var751, $c5=var1109, 2=var1023}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; };	$r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$c4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4);	$r5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5);	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(2);	goto [?= return 1];	return 1
;block_num 3