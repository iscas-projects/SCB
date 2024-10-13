(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1648 0)
(declare-sort var810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ch0/-1835107176 (var810) Int)
(declare-fun cast-from-var1648-to-var810 (var1648) var810)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun sb/-603474257 (var1648) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun var1648_unicode/282183728 (Int String) void)
(declare-fun skip/-1145984187 (var810 Int) void)
(declare-const null-var1648 var1648)
(declare-const var3280 var1648) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var3280 null-var1648)))
(define-const var600 Int (ch0/-1835107176 (cast-from-var1648-to-var810 var3280))) ; Statement: $c0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var2418 Int (cast-from-Int-to-Int var600)) ; Statement: $i10 = (int) $c0 
 ; Statement: if $i10 < 65 goto $c1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(assert (not (< var2418 65))) ; Negate: Cond: $i10 < 65  
(define-const var3518 Int (ch0/-1835107176 (cast-from-var1648-to-var810 var3280))) ; Statement: $c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var2297 Int (cast-from-Int-to-Int var3518)) ; Statement: $i11 = (int) $c5 
 ; Statement: if $i11 <= 90 goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert (<= var2297 90)) ; Cond: $i11 <= 90 
(define-const var1136 String (sb/-603474257 var3280)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(define-const var3794 String (sb/-603474257 var3280)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
(define-const var642 Int (length/-171891354 var3794)) ; Statement: $i6 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
(define-const var2457 Int (- var642 1)) ; Statement: $i7 = $i6 - 1 
(assert true)
;(assert (setLength/1276735992 var1136 var2457)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>($i7) 

(declare-const var1136!1 String)
(declare-const var2457!1 Int)
(define-const var2569 Int (ch0/-1835107176 (cast-from-var1648-to-var810 var3280))) ; Statement: $c8 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0> 
(define-const var344 Int (cast-from-Int-to-Int var2569)) ; Statement: $i15 = (int) $c8 
(define-const var1255 Int (mod var344 32)) ; Statement: $i9 = $i15 % 32 
(define-const var765 String (sb/-603474257 var3280)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
;(assert (var1648_unicode/282183728 var1255 var765)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: void unicode(int,java.lang.StringBuilder)>($i9, $r3) 

(declare-const var1255!1 Int)
(declare-const var765!1 String)
(assert true)
;(assert (skip/-1145984187 (cast-from-var1648-to-var810 var3280) 1)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(1) 

(declare-const var3280!1 var1648)
(declare-const var3624 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {ch0/-1835107176=([jdk.nashorn.internal.parser.Scanner], char), cast-from-var1648-to-var810=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), cast-from-Int-to-Int=([char], int), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), setLength/1276735992=([java.lang.StringBuilder, int], void), var1648_unicode/282183728=([int, java.lang.StringBuilder], void), skip/-1145984187=([jdk.nashorn.internal.parser.Scanner, int], void)}
; {var1648=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var3280=r0, var810=jdk.nashorn.internal.parser.Scanner, var600=$c0, var2418=$i10, var3518=$c5, var2297=$i11, var1136=$r1, var3794=$r2, var642=$i6, var2457=$i7, var2569=$c8, var344=$i15, var1255=$i9, var765=$r3, var3624=1}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var1648, r0=var3280, jdk.nashorn.internal.parser.Scanner=var810, $c0=var600, $i10=var2418, $c5=var3518, $i11=var2297, $r1=var1136, $r2=var3794, $i6=var642, $i7=var2457, $c8=var2569, $i15=var344, $i9=var1255, $r3=var765, 1=var3624}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	$c0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i10 = (int) $c0;	if $i10 < 65 goto $c1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$c5 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i11 = (int) $c5;	if $i11 <= 90 goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$r2 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	$i6 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	$i7 = $i6 - 1;	virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>($i7);	$c8 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: char ch0>;	$i15 = (int) $c8;	$i9 = $i15 % 32;	$r3 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: void unicode(int,java.lang.StringBuilder)>($i9, $r3);	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void skip(int)>(1);	return 1
;block_num 3