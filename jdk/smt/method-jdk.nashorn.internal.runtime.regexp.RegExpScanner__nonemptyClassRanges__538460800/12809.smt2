(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var328 0)
(declare-sort var2318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var2318) Int)
(declare-fun cast-from-var328-to-var2318 (var328) var2318)
(declare-fun sb/-603474257 (var328) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun classAtom/2085193381 (var328) Bool)
(declare-fun restart/1783079323 (var328 Int Int) void)
(declare-const null-var328 var328)
(declare-const var3880 var328) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var3880 null-var328)))
(define-const var2980 Int (position/-1835107176 (cast-from-var328-to-var2318 var3880))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var94 String (sb/-603474257 var3880)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var1912 Int (length/-171891354 var94)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var3731 Bool (classAtom/2085193381 var3880)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>() 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 
(assert (= (ite var3731 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (restart/1783079323 var3880 var2980 var1912)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 

(declare-const var3880!1 var328)
(declare-const var2980!1 Int)
(declare-const var1912!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var328-to-var2318=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), classAtom/2085193381=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean), restart/1783079323=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int, int], void)}
; {var328=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var3880=r0, var2318=jdk.nashorn.internal.parser.Scanner, var2980=i0, var94=$r1, var1912=i1, var3731=$z0}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var328, r0=var3880, jdk.nashorn.internal.parser.Scanner=var2318, i0=var2980, $r1=var94, i1=var1912, $z0=var3731}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$z0 = specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean classAtom()>();	if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	return 0
;block_num 2