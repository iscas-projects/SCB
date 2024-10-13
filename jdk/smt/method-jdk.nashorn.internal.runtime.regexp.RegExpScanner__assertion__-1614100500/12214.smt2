(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3719 0)
(declare-sort var1262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var1262) Int)
(declare-fun cast-from-var3719-to-var1262 (var3719) var1262)
(declare-fun sb/-603474257 (var3719) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var1262) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun commit/769463556 (var3719 Int) Bool)
(declare-const null-var3719 var3719)
(declare-const var97 var3719) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var97 null-var3719)))
(define-const var1320 Int (position/-1835107176 (cast-from-var3719-to-var1262 var97))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var3020 String (sb/-603474257 var97)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var2332 Int (length/-171891354 var3020)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var2869 Int (ch0/-1835107176 (cast-from-var3719-to-var1262 var97))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var1595 Int (cast-from-Int-to-Int var2869)) ; Statement: $i17 = (int) $c2 
 ; Statement: lookupswitch($i17) {     case 36: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 40: goto $c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 92: goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 94: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); } 
(assert (and (= var1595 36) true)) ; Intersect: Cond: $i17 == 36  and Non Conditional 
(assert true)
(define-const var3154 Bool (commit/769463556 var97 1)) ; Statement: $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1) 
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var3719-to-var1262=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), commit/769463556=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int], boolean)}
; {var3719=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var97=r0, var1262=jdk.nashorn.internal.parser.Scanner, var1320=i0, var3020=$r1, var2332=i1, var2869=$c2, var1595=$i17, var3154=$z3}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var3719, r0=var97, jdk.nashorn.internal.parser.Scanner=var1262, i0=var1320, $r1=var3020, i1=var2332, $c2=var2869, $i17=var1595, $z3=var3154}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i17 = (int) $c2;	lookupswitch($i17) {     case 36: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 40: goto $c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 92: goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 94: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); };	$z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);	return $z3
;block_num 2