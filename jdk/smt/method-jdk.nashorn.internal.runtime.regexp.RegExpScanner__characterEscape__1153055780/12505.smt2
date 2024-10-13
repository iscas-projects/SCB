(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var201 0)
(declare-sort var3111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var3111) Int)
(declare-fun cast-from-var201-to-var3111 (var201) var3111)
(declare-fun sb/-603474257 (var201) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun controlEscape/-734389072 (var201) Bool)
(declare-const null-var201 var201)
(declare-const var1664 var201) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var1664 null-var201)))
(define-const var1267 Int (position/-1835107176 (cast-from-var201-to-var3111 var1664))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var856 String (sb/-603474257 var1664)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var3085 Int (length/-171891354 var856)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var3393 Bool (controlEscape/-734389072 var1664)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean controlEscape()>() 
 ; Statement: if $z0 == 0 goto $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert (not (= (ite var3393 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var201-to-var3111=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), controlEscape/-734389072=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean)}
; {var201=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var1664=r0, var3111=jdk.nashorn.internal.parser.Scanner, var1267=i0, var856=$r1, var3085=i1, var3393=$z0}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var201, r0=var1664, jdk.nashorn.internal.parser.Scanner=var3111, i0=var1267, $r1=var856, i1=var3085, $z0=var3393}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean controlEscape()>();	if $z0 == 0 goto $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	return 1
;block_num 2