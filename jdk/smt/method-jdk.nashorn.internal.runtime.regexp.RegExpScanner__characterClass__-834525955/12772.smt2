(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var781 0)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var208) Int)
(declare-fun cast-from-var781-to-var208 (var781) var208)
(declare-fun sb/-603474257 (var781) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var208) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun restart/1783079323 (var781 Int Int) void)
(declare-const null-var781 var781)
(declare-const var2003 var781) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var2003 null-var781)))
(define-const var950 Int (position/-1835107176 (cast-from-var781-to-var208 var2003))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var158 String (sb/-603474257 var2003)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var1318 Int (length/-171891354 var158)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var2561 Int (ch0/-1835107176 (cast-from-var781-to-var208 var2003))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var3819 Int (cast-from-Int-to-Int var2561)) ; Statement: $i13 = (int) $c2 
 ; Statement: if $i13 != 91 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 
(assert (not (= var3819 91))) ; Cond: $i13 != 91 
(assert true)
;(assert (restart/1783079323 var2003 var950 var1318)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 

(declare-const var2003!1 var781)
(declare-const var950!1 Int)
(declare-const var1318!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var781-to-var208=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), restart/1783079323=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int, int], void)}
; {var781=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var2003=r0, var208=jdk.nashorn.internal.parser.Scanner, var950=i0, var158=$r1, var1318=i1, var2561=$c2, var3819=$i13}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var781, r0=var2003, jdk.nashorn.internal.parser.Scanner=var208, i0=var950, $r1=var158, i1=var1318, $c2=var2561, $i13=var3819}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i13 = (int) $c2;	if $i13 != 91 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	return 0
;block_num 2