(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var3981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var3981) Int)
(declare-fun cast-from-var2019-to-var3981 (var2019) var3981)
(declare-fun sb/-603474257 (var2019) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var3981) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2019_isDecimalDigit/988759068 (Int) Bool)
(declare-fun restart/1783079323 (var2019 Int Int) void)
(declare-const null-var2019 var2019)
(declare-const var2790 var2019) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var2790 null-var2019)))
(define-const var51 Int (position/-1835107176 (cast-from-var2019-to-var3981 var2790))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var1669 String (sb/-603474257 var2790)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var3107 Int (length/-171891354 var1669)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var924 Int (ch0/-1835107176 (cast-from-var2019-to-var3981 var2790))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var1828 Int (cast-from-Int-to-Int var924)) ; Statement: $i27 = (int) $c2 
 ; Statement: if $i27 != 48 goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert (not (= var1828 48))) ; Cond: $i27 != 48 
(define-const var3980 Int (ch0/-1835107176 (cast-from-var2019-to-var3981 var2790))) ; Statement: $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var2155 Bool (var2019_isDecimalDigit/988759068 var3980)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean isDecimalDigit(char)>($c3) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 
(assert (= (ite var2155 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (restart/1783079323 var2790 var51 var3107)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1) 

(declare-const var2790!1 var2019)
(declare-const var51!1 Int)
(declare-const var3107!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var2019-to-var3981=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), var2019_isDecimalDigit/988759068=([char], boolean), restart/1783079323=([jdk.nashorn.internal.runtime.regexp.RegExpScanner, int, int], void)}
; {var2019=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var2790=r0, var3981=jdk.nashorn.internal.parser.Scanner, var51=i0, var1669=$r1, var3107=i1, var924=$c2, var1828=$i27, var3980=$c3, var2155=$z0}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var2019, r0=var2790, jdk.nashorn.internal.parser.Scanner=var3981, i0=var51, $r1=var1669, i1=var3107, $c2=var924, $i27=var1828, $c3=var3980, $z0=var2155}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i27 = (int) $c2;	if $i27 != 48 goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$z0 = staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean isDecimalDigit(char)>($c3);	if $z0 == 0 goto specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void restart(int,int)>(i0, i1);	return 0
;block_num 3