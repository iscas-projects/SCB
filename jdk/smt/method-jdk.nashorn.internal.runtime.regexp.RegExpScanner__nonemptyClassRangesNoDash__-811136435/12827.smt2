(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2165 0)
(declare-sort var1262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var1262) Int)
(declare-fun cast-from-var2165-to-var1262 (var2165) var1262)
(declare-fun sb/-603474257 (var2165) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun classAtomNoDash/1344003762 (var2165) Bool)
(declare-fun ch0/-1835107176 (var1262) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun nonemptyClassRangesNoDash/-811136435 (var2165) Bool)
(declare-const null-var2165 var2165)
(declare-const var2801 var2165) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var2801 null-var2165)))
(define-const var3593 Int (position/-1835107176 (cast-from-var2165-to-var1262 var2801))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var418 String (sb/-603474257 var2801)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var2879 Int (length/-171891354 var418)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var1059 Bool (classAtomNoDash/1344003762 var2801)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtomNoDash()>() 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>() 
(assert (not (= (ite var1059 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3205 Int (ch0/-1835107176 (cast-from-var2165-to-var1262 var2801))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var3327 Int (cast-from-Int-to-Int var3205)) ; Statement: $i3 = (int) $c2 
 ; Statement: if $i3 != 45 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean nonemptyClassRangesNoDash()>() 
(assert (not (= var3327 45))) ; Cond: $i3 != 45 
(assert true)
;(assert (nonemptyClassRangesNoDash/-811136435 var2801)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean nonemptyClassRangesNoDash()>() 

(declare-const var2801!1 var2165)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var2165-to-var1262=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), classAtomNoDash/1344003762=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), nonemptyClassRangesNoDash/-811136435=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean)}
; {var2165=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var2801=r0, var1262=jdk.nashorn.internal.parser.Scanner, var3593=i0, var418=$r1, var2879=i1, var1059=$z0, var3205=$c2, var3327=$i3}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var2165, r0=var2801, jdk.nashorn.internal.parser.Scanner=var1262, i0=var3593, $r1=var418, i1=var2879, $z0=var1059, $c2=var3205, $i3=var3327}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtomNoDash()>();	if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i3 = (int) $c2;	if $i3 != 45 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean nonemptyClassRangesNoDash()>();	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean nonemptyClassRangesNoDash()>();	return 1
;block_num 3