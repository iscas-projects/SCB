(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var325 0)
(declare-sort var1714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var1714) Int)
(declare-fun cast-from-var325-to-var1714 (var325) var1714)
(declare-fun reset/84691649 (var1714 Int) void)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun atEOF/1769913070 (var1714) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var325 var325)
(declare-const null-Int Int)
(declare-const var1301 var325) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Lexer 
(assert (not (= var1301 null-var325)))
(declare-const var2719 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2719 null-Int)))
(declare-const var611 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var611 null-Int)))
(define-const var3076 Int (position/-1835107176 (cast-from-var325-to-var1714 var1301))) ; Statement: i0 = r0.<jdk.nashorn.internal.parser.Lexer: int position> 
(define-const var915 Int (+ var2719 var611)) ; Statement: i3 = i1 + i2 
(assert true)
;(assert (reset/84691649 (cast-from-var325-to-var1714 var1301) var2719)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i1) 

(declare-const var1301!1 var325)
(declare-const var2719!1 Int)
(define-const var3398 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3398 var611)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>(i2) 

(declare-const var3398!1 String)
(declare-const var611!1 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var3378 Bool (atEOF/1769913070 (cast-from-var325-to-var1714 var1301!1))) ; Statement: $z2 = virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: boolean atEOF()>() 
 ; Statement: if $z2 != 0 goto virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0) 
(assert (not (= (ite var3378 1 0) 0))) ; Cond: $z2 != 0 
(assert true)
;(assert (reset/84691649 (cast-from-var325-to-var1714 var1301!1) var3076)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0) 

(declare-const var1301!2 var325)
(declare-const var3076!1 Int)
(assert true)
(define-const var2949 String (toString/-2075883882 var3398!1)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var325-to-var1714=([jdk.nashorn.internal.parser.Lexer], jdk.nashorn.internal.parser.Scanner), reset/84691649=([jdk.nashorn.internal.parser.Scanner, int], void), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), atEOF/1769913070=([jdk.nashorn.internal.parser.Scanner], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var325=jdk.nashorn.internal.parser.Lexer, var1301=r0, var2719=i1, var611=i2, var1714=jdk.nashorn.internal.parser.Scanner, var3076=i0, var915=i3, var3398=$r4, var3378=$z2, var2949=$r3}
; {jdk.nashorn.internal.parser.Lexer=var325, r0=var1301, i1=var2719, i2=var611, jdk.nashorn.internal.parser.Scanner=var1714, i0=var3076, i3=var915, $r4=var3398, $z2=var3378, $r3=var2949}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Lexer;	i1 := @parameter0: int;	i2 := @parameter1: int;	i0 = r0.<jdk.nashorn.internal.parser.Lexer: int position>;	i3 = i1 + i2;	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i1);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>(i2);	$z2 = virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: boolean atEOF()>();	if $z2 != 0 goto virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0);	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0);	$r3 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3