(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3037 0)
(declare-sort var2586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var2586) Int)
(declare-fun cast-from-var3037-to-var2586 (var3037) var2586)
(declare-fun sb/-603474257 (var3037) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var2586) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun restart/1783079323 (var3037 Int Int) void)
(declare-const null-var3037 var3037)
(declare-const var612 var3037) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var612 null-var3037)))
(define-const var3777 Int (position/-1835107176 (cast-from-var3037-to-var2586 var612))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var879 String (sb/-603474257 var612)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var2185 Int (length/-171891354 var879)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var3580 Int (ch0/-1835107176 (cast-from-var3037-to-var2586 var612))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var1333 Int (cast-from-Int-to-Int var3580)) ; Statement: $i17 = (int) $c2 
 ; Statement: lookupswitch($i17) {     case 36: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 40: goto $c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 92: goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 94: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); } 
(assert (and (not (= var1333 94)) (and (not (= var1333 92)) (and (not (= var1333 40)) (and (not (= var1333 36)) true))))) ; Intersect: Negate: Cond: $i17 == 94   and Intersect: Negate: Cond: $i17 == 92   and Intersect: Negate: Cond: $i17 == 40   and Intersect: Negate: Cond: $i17 == 36   and Non Conditional    
(assert true)
;(assert (restart/1783079323 var612 var3777 var2185)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 

(declare-const var612!1 var3037)
(declare-const var3777!1 Int)
(declare-const var2185!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var3037-to-var2586=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), restart/1783079323=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int, int], void)}
; {var3037=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var612=r0, var2586=jdk.nashorn.internal.parser.Scanner, var3777=i0, var879=$r1, var2185=i1, var3580=$c2, var1333=$i17}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var3037, r0=var612, jdk.nashorn.internal.parser.Scanner=var2586, i0=var3777, $r1=var879, i1=var2185, $c2=var3580, $i17=var1333}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i17 = (int) $c2;	lookupswitch($i17) {     case 36: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 40: goto $c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 92: goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;     case 94: goto $z3 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); };	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	return 0
;block_num 2