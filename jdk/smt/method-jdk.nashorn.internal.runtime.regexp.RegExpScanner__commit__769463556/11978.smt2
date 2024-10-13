(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3820 0)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-603474257 (var3820) String)
(declare-fun ch0/-1835107176 (var519) Int)
(declare-fun cast-from-var3820-to-var519 (var3820) var519)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun skip/-1145984187 (var519 Int) void)
(declare-const null-var3820 var3820)
(declare-const null-Int Int)
(declare-const var2416 var3820) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var2416 null-var3820)))
(declare-const var2025 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2025 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; } 
(assert (and (= var2025 1) true)) ; Intersect: Cond: i0 == 1  and Non Conditional 
(define-const var3602 String (sb/-603474257 var2416)) ; Statement: $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(define-const var760 Int (ch0/-1835107176 (cast-from-var3820-to-var519 var2416))) ; Statement: $c6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert true)
;(assert (append/-1166366385 var3602 var760)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var3602!1 String)
(assert (str.prefixof var3602 var3602!1))
(assert true)
;(assert (skip/-1145984187 (cast-from-var3820-to-var519 var2416) 1)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(1) 

(declare-const var2416!1 var3820)
(declare-const var2951 Int)
 ; Statement: goto [?= return 1] 
(assert true) ; Non Conditional
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-var3820-to-var519=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), skip/-1145984187=([jdk.nashorn.internal.parser.Scanner, int], void)}
; {var3820=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var2416=r0, var2025=i0, var3602=$r6, var519=jdk.nashorn.internal.parser.Scanner, var760=$c6, var2951=1}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var3820, r0=var2416, i0=var2025, $r6=var3602, jdk.nashorn.internal.parser.Scanner=var519, $c6=var760, 1=var2951}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; };	$r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$c6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(1);	goto [?= return 1];	return 1
;block_num 3