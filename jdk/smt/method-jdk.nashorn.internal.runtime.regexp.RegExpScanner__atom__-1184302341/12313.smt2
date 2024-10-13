(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3541 0)
(declare-sort var968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var968) Int)
(declare-fun cast-from-var3541-to-var968 (var3541) var968)
(declare-fun sb/-603474257 (var3541) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun patternCharacter/512537427 (var3541) Bool)
(declare-const null-var3541 var3541)
(declare-const var1262 var3541) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var1262 null-var3541)))
(define-const var444 Int (position/-1835107176 (cast-from-var3541-to-var968 var1262))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var2349 String (sb/-603474257 var1262)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var2014 Int (length/-171891354 var2349)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var1391 Bool (patternCharacter/512537427 var1262)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean patternCharacter()>() 
 ; Statement: if $z0 == 0 goto $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert (not (= (ite var1391 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var3541-to-var968=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), patternCharacter/512537427=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean)}
; {var3541=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var1262=r0, var968=jdk.nashorn.internal.parser.Scanner, var444=i0, var2349=$r1, var2014=i1, var1391=$z0}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var3541, r0=var1262, jdk.nashorn.internal.parser.Scanner=var968, i0=var444, $r1=var2349, i1=var2014, $z0=var1391}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean patternCharacter()>();	if $z0 == 0 goto $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	return 1
;block_num 2