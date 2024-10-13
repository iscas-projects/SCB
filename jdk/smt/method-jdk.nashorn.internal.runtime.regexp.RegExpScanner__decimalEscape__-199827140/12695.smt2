(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var559 0)
(declare-sort var2387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var2387) Int)
(declare-fun cast-from-var559-to-var2387 (var559) var2387)
(declare-fun sb/-603474257 (var559) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun ch0/-1835107176 (var2387) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ch1/-1835107176 (var2387) Int)
(declare-fun var559_isOctalDigit/-1665996714 (Int) Bool)
(declare-fun skip/-1145984187 (var2387 Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var559 var559)
(declare-const var982 var559) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var982 null-var559)))
(define-const var744 Int (position/-1835107176 (cast-from-var559-to-var2387 var982))) ; Statement: i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position> 
(define-const var2864 String (sb/-603474257 var982)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var1043 Int (length/-171891354 var2864)) ; Statement: i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var3923 Int (ch0/-1835107176 (cast-from-var559-to-var2387 var982))) ; Statement: $c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var228 Int (cast-from-Int-to-Int var3923)) ; Statement: $i27 = (int) $c2 
 ; Statement: if $i27 != 48 goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert (not (not (= var228 48)))) ; Negate: Cond: $i27 != 48  
(define-const var880 Int (ch1/-1835107176 (cast-from-var559-to-var2387 var982))) ; Statement: $c24 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1> 
(define-const var3837 Bool (var559_isOctalDigit/-1665996714 var880)) ; Statement: $z6 = staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean isOctalDigit(char)>($c24) 
 ; Statement: if $z6 != 0 goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert (not (not (= (ite var3837 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(assert true)
;(assert (skip/-1145984187 (cast-from-var559-to-var2387 var982) 1)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(1) 

(declare-const var982!1 var559)
(declare-const var3772 Int)
(define-const var258 String (sb/-603474257 var982!1)) ; Statement: $r21 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var258 "\u0000")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u0000") 
(declare-const var258!1 String)
(assert (= var258!1 (str.++ var258 "\u0000")))
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var559-to-var2387=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-Int-to-Int=([char], int), ch1/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), var559_isOctalDigit/-1665996714=([char], boolean), skip/-1145984187=([jdk.nashorn.internal.parser.Scanner, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var559=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var982=r0, var2387=jdk.nashorn.internal.parser.Scanner, var744=i0, var2864=$r1, var1043=i1, var3923=$c2, var228=$i27, var880=$c24, var3837=$z6, var3772=1, var258=$r21}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var559, r0=var982, jdk.nashorn.internal.parser.Scanner=var2387, i0=var744, $r1=var2864, i1=var1043, $c2=var3923, $i27=var228, $c24=var880, $z6=var3837, 1=var3772, $r21=var258}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int position>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$c2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i27 = (int) $c2;	if $i27 != 48 goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$c24 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch1>;	$z6 = staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean isOctalDigit(char)>($c24);	if $z6 != 0 goto $c3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(1);	$r21 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u0000");	return 1
;block_num 3