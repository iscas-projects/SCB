(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var975 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var657) Int)
(declare-fun cast-from-var975-to-var657 (var975) var657)
(declare-fun sb/-603474257 (var975) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var657) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun restart/1783079323 (var975 Int Int) void)
(declare-const null-var975 var975)
(declare-const var3518 var975) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var3518 null-var975)))
(define-const var1249 Int (position/-1835107176 (cast-from-var975-to-var657 var3518))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var2558 String (sb/-603474257 var3518)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var3717 Int (length/-171891354 var2558)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var389 Int (ch0/-1835107176 (cast-from-var975-to-var657 var3518))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var1607 Int (cast-from-Int-to-Int var389)) ; Statement: $i5 = (int) $c2 
 ; Statement: lookupswitch($i5) {     case 42: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 43: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 63: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 123: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); } 
(assert (and (not (= var1607 123)) (and (not (= var1607 63)) (and (not (= var1607 43)) (and (not (= var1607 42)) true))))) ; Intersect: Negate: Cond: $i5 == 123   and Intersect: Negate: Cond: $i5 == 63   and Intersect: Negate: Cond: $i5 == 43   and Intersect: Negate: Cond: $i5 == 42   and Non Conditional    
(assert true)
;(assert (restart/1783079323 var3518 var1249 var3717)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 

(declare-const var3518!1 var975)
(declare-const var1249!1 Int)
(declare-const var3717!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var975-to-var657=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), restart/1783079323=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int, int], void)}
; {var975=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var3518=r0, var657=jdk.nashorn.internal.parser.Scanner, var1249=i0, var2558=$r1, var3717=i1, var389=$c2, var1607=$i5}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var975, r0=var3518, jdk.nashorn.internal.parser.Scanner=var657, i0=var1249, $r1=var2558, i1=var3717, $c2=var389, $i5=var1607}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i5 = (int) $c2;	lookupswitch($i5) {     case 42: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 43: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 63: goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     case 123: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);     default: goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1); };	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	return 0
;block_num 2