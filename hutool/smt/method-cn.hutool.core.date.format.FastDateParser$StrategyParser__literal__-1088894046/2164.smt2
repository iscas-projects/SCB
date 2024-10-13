(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2945 0)
(declare-sort var2272 0)
(declare-sort var1335 0)
(declare-sort var3371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentIdx/-1094847699 (var2945) Int)
(declare-fun this$0/-1094847699 (var2945) var2272)
(declare-fun pattern/63795614 (var1335) String)
(declare-fun cast-from-var2272-to-var1335 (var2272) var1335)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3371-init () var3371)
(declare-fun <init>/875830710 (var3371 String) void)
(declare-const null-var2945 var2945)
(declare-const var2068 var2945) ; Statement: r1 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser 
(assert (not (= var2068 null-var2945)))
(define-const var3710 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var617 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var617)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var617!1 String)
(assert (= var617!1 ""))
(assert true) ; Non Conditional
(define-const var193 Int (currentIdx/-1094847699 var2068)) ; Statement: $i9 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> 
(define-const var2 var2272 (this$0/-1094847699 var2068)) ; Statement: $r11 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0> 
(define-const var3592 String (pattern/63795614 (cast-from-var2272-to-var1335 var2))) ; Statement: $r12 = $r11.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern> 
(assert true)
(define-const var260 Int (length/-134980193 var3592)) ; Statement: $i10 = virtualinvoke $r12.<java.lang.String: int length()>() 
 ; Statement: if $i9 >= $i10 goto (branch) 
(assert (>= var193 var260)) ; Cond: $i9 >= $i10 
 ; Statement: if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var3710 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2357 var3371 var3371-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2357 "Unterminated quote")) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Unterminated quote") 

(declare-const var2357!1 var3371)
(declare-const var3225 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentIdx/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], int), this$0/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], cn.hutool.core.date.format.FastDateParser), pattern/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), cast-from-var2272-to-var1335=([cn.hutool.core.date.format.FastDateParser], cn.hutool.core.date.format.AbstractDateBasic), length/-134980193=([java.lang.String], int), var3371-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2945=cn.hutool.core.date.format.FastDateParser$StrategyParser, var2068=r1, var3710=z1, var617=$r14, var193=$i9, var2272=cn.hutool.core.date.format.FastDateParser, var2=$r11, var1335=cn.hutool.core.date.format.AbstractDateBasic, var3592=$r12, var260=$i10, var3371=java.lang.IllegalArgumentException, var2357=$r15, var3225="Unterminated quote"}
; {cn.hutool.core.date.format.FastDateParser$StrategyParser=var2945, r1=var2068, z1=var3710, $r14=var617, $i9=var193, cn.hutool.core.date.format.FastDateParser=var2272, $r11=var2, cn.hutool.core.date.format.AbstractDateBasic=var1335, $r12=var3592, $i10=var260, java.lang.IllegalArgumentException=var3371, $r15=var2357, "Unterminated quote"=var3225}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser;	z1 = 0;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$i9 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx>;	$r11 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0>;	$r12 = $r11.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern>;	$i10 = virtualinvoke $r12.<java.lang.String: int length()>();	if $i9 >= $i10 goto (branch);	if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalArgumentException;	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Unterminated quote");	throw $r15
;block_num 4