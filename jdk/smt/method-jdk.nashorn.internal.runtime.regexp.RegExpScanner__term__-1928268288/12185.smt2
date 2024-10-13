(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var630 0)
(declare-sort var553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var553) Int)
(declare-fun cast-from-var630-to-var553 (var630) var553)
(declare-fun sb/-603474257 (var630) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun assertion/-1614100500 (var630) Bool)
(declare-const null-var630 var630)
(declare-const var1818 var630) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var1818 null-var630)))
(define-const var2519 Int (position/-1835107176 (cast-from-var630-to-var553 var1818))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var248 String (sb/-603474257 var1818)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var48 Int (length/-171891354 var248)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var3021 Bool (assertion/-1614100500 var1818)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean assertion()>() 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean atom()>() 
(assert (not (= (ite var3021 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var630-to-var553=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), assertion/-1614100500=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean)}
; {var630=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var1818=r0, var553=jdk.nashorn.internal.parser.Scanner, var2519=i0, var248=$r1, var48=i1, var3021=$z0}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var630, r0=var1818, jdk.nashorn.internal.parser.Scanner=var553, i0=var2519, $r1=var248, i1=var48, $z0=var3021}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean assertion()>();	if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean atom()>();	return 1
;block_num 2