(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2181 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var985) Int)
(declare-fun cast-from-var2181-to-var985 (var2181) var985)
(declare-fun sb/-603474257 (var2181) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun classAtomNoDash/1344003762 (var2181) Bool)
(declare-fun classAtom/2085193381 (var2181) Bool)
(declare-fun restart/1783079323 (var2181 Int Int) void)
(declare-const null-var2181 var2181)
(declare-const var2808 var2181) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var2808 null-var2181)))
(define-const var1888 Int (position/-1835107176 (cast-from-var2181-to-var985 var2808))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var3207 String (sb/-603474257 var2808)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var2058 Int (length/-171891354 var3207)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var3850 Bool (classAtomNoDash/1344003762 var2808)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtomNoDash()>() 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>() 
(assert (= (ite var3850 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1712 Bool (classAtom/2085193381 var2808)) ; Statement: $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>() 
 ; Statement: if $z1 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 
(assert (= (ite var1712 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (restart/1783079323 var2808 var1888 var2058)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 

(declare-const var2808!1 var2181)
(declare-const var1888!1 Int)
(declare-const var2058!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var2181-to-var985=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), classAtomNoDash/1344003762=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean), classAtom/2085193381=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean), restart/1783079323=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int, int], void)}
; {var2181=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var2808=r0, var985=jdk.nashorn.internal.parser.Scanner, var1888=i0, var3207=$r1, var2058=i1, var3850=$z0, var1712=$z1}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var2181, r0=var2808, jdk.nashorn.internal.parser.Scanner=var985, i0=var1888, $r1=var3207, i1=var2058, $z0=var3850, $z1=var1712}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtomNoDash()>();	if $z0 == 0 goto $z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>();	$z1 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>();	if $z1 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	return 0
;block_num 3