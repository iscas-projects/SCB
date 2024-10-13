(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var46 0)
(declare-sort var254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var254) Int)
(declare-fun cast-from-var46-to-var254 (var46) var254)
(declare-fun sb/-603474257 (var46) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var254) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun commit/769463556 (var46 Int) Bool)
(declare-const null-var46 var46)
(declare-const var839 var46) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var839 null-var46)))
(define-const var3394 Int (position/-1835107176 (cast-from-var46-to-var254 var839))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var580 String (sb/-603474257 var839)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var3553 Int (length/-171891354 var580)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var2965 Int (ch0/-1835107176 (cast-from-var46-to-var254 var839))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var1379 Int (cast-from-Int-to-Int var2965)) ; Statement: $i5 = (int) $c2 
 ; Statement: lookupswitch($i5) {     case 42: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 43: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 63: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 123: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); } 
(assert (and (= var1379 42) true)) ; Intersect: Cond: $i5 == 42  and Non Conditional 
(assert true)
(define-const var237 Bool (commit/769463556 var839 1)) ; Statement: $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var46-to-var254=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), commit/769463556=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int], boolean)}
; {var46=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var839=r0, var254=jdk.nashorn.internal.parser.Scanner, var3394=i0, var580=$r1, var3553=i1, var2965=$c2, var1379=$i5, var237=$z1}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var46, r0=var839, jdk.nashorn.internal.parser.Scanner=var254, i0=var3394, $r1=var580, i1=var3553, $c2=var2965, $i5=var1379, $z1=var237}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i5 = (int) $c2;	lookupswitch($i5) {     case 42: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 43: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 63: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 123: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); };	$z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);	return $z1
;block_num 2