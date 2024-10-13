(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var573 0)
(declare-sort var733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var733) Int)
(declare-fun cast-from-var573-to-var733 (var573) var733)
(declare-fun sb/-603474257 (var573) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var733) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var573 var573)
(declare-const null-Int Int)
(declare-const var1765 var573) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var1765 null-var573)))
(declare-const var381 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var381 null-Int)))
(declare-const var2552 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var2552 null-Int)))
(define-const var1308 Int (position/-1835107176 (cast-from-var573-to-var733 var1765))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var99 String (sb/-603474257 var1765)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var2277 Int (length/-171891354 var99)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var746 Int (ch0/-1835107176 (cast-from-var573-to-var733 var1765))) ; Statement: $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var2388 Int (cast-from-Int-to-Int var746)) ; Statement: $i9 = (int) $c3 
(define-const var2488 Int (cast-from-Int-to-Int var381)) ; Statement: $i10 = (int) c2 
 ; Statement: if $i9 == $i10 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1) 
(assert (not (= var2388 var2488))) ; Negate: Cond: $i9 == $i10  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var573-to-var733=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int)}
; {var573=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var1765=r0, var381=c2, var2552=i4, var733=jdk.nashorn.internal.parser.Scanner, var1308=i0, var99=$r1, var2277=i1, var746=$c3, var2388=$i9, var2488=$i10}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var573, r0=var1765, c2=var381, i4=var2552, jdk.nashorn.internal.parser.Scanner=var733, i0=var1308, $r1=var99, i1=var2277, $c3=var746, $i9=var2388, $i10=var2488}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	c2 := @parameter0: char;	i4 := @parameter1: int;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i9 = (int) $c3;	$i10 = (int) c2;	if $i9 == $i10 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean commit(int)>(1);	return 0
;block_num 2