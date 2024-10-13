(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2291 0)
(declare-sort var3774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var3774) Int)
(declare-fun cast-from-var2291-to-var3774 (var2291) var3774)
(declare-fun sb/-603474257 (var2291) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun classAtomNoDash/1344003762 (var2291) Bool)
(declare-fun classAtom/2085193381 (var2291) Bool)
(declare-const null-var2291 var2291)
(declare-const var976 var2291) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var976 null-var2291)))
(define-const var1204 Int (position/-1835107176 (cast-from-var2291-to-var3774 var976))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var1354 String (sb/-603474257 var976)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var2544 Int (length/-171891354 var1354)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var473 Bool (classAtomNoDash/1344003762 var976)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtomNoDash()>() 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>() 
(assert (= (ite var473 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3629 Bool (classAtom/2085193381 var976)) ; Statement: $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>() 
 ; Statement: if $z1 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 
(assert (not (= (ite var3629 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var2291-to-var3774=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), classAtomNoDash/1344003762=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean), classAtom/2085193381=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean)}
; {var2291=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var976=r0, var3774=jdk.nashorn.internal.parser.Scanner, var1204=i0, var1354=$r1, var2544=i1, var473=$z0, var3629=$z1}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var2291, r0=var976, jdk.nashorn.internal.parser.Scanner=var3774, i0=var1204, $r1=var1354, i1=var2544, $z0=var473, $z1=var3629}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtomNoDash()>();	if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>();	$z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>();	if $z1 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	return 1
;block_num 3