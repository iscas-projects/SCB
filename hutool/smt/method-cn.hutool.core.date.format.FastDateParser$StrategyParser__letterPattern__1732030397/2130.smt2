(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2138 0)
(declare-sort var2476 0)
(declare-sort var2028 0)
(declare-sort var989 0)
(declare-sort var105 0)
(declare-sort var1363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentIdx/-1094847699 (var2138) Int)
(declare-fun this$0/-1094847699 (var2138) var2476)
(declare-fun pattern/63795614 (var2028) String)
(declare-fun cast-from-var2476-to-var2028 (var2476) var2028)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var989-init () var989)
(declare-fun definingCalendar/-1094847699 (var2138) var105)
(declare-fun var2476_access$100/-2048194389 (var2476 Int Int var105) var1363)
(declare-fun <init>/-726160529 (var989 var1363 Int) void)
(declare-const null-var2138 var2138)
(declare-const null-Int Int)
(declare-const var1597 var2138) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser 
(assert (not (= var1597 null-var2138)))
(declare-const var98 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var98 null-Int)))
(define-const var3467 Int (currentIdx/-1094847699 var1597)) ; Statement: i0 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> 
(assert true) ; Non Conditional
(define-const var1241 Int (currentIdx/-1094847699 var1597)) ; Statement: $i1 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> 
(define-const var2231 Int (+ var1241 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var1597!1 var2138)
(assert (not (= var1597!1 null-var2138)))
(assert (= (currentIdx/-1094847699 var1597!1) var2231)) ; Statement: r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> = $i2 
(define-const var3884 var2476 (this$0/-1094847699 var1597!1)) ; Statement: $r1 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0> 
(define-const var92 String (pattern/63795614 (cast-from-var2476-to-var2028 var3884))) ; Statement: $r2 = $r1.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern> 
(assert true)
(define-const var1907 Int (length/-134980193 var92)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i2 >= $i3 goto $i4 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> 
(assert (>= var2231 var1907)) ; Cond: $i2 >= $i3 
(define-const var1002 Int (currentIdx/-1094847699 var1597!1)) ; Statement: $i4 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> 
(define-const var3094 Int (- var1002 var3467)) ; Statement: $i8 = $i4 - i0 
(define-const var1243 var989 var989-init) ; Statement: $r9 = new cn.hutool.core.date.format.FastDateParser$StrategyAndWidth 
(define-const var1147 var2476 (this$0/-1094847699 var1597!1)) ; Statement: $r5 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0> 
(define-const var3248 var105 (definingCalendar/-1094847699 var1597!1)) ; Statement: $r4 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: java.util.Calendar definingCalendar> 
(define-const var1622 var1363 (var2476_access$100/-2048194389 var1147 var98 var3094 var3248)) ; Statement: $r6 = staticinvoke <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy access$100(cn.hutool.core.date.format.FastDateParser,char,int,java.util.Calendar)>($r5, c5, $i8, $r4) 
(assert true)
;(assert (<init>/-726160529 var1243 var1622 var3094)) ; Statement: specialinvoke $r9.<cn.hutool.core.date.format.FastDateParser$StrategyAndWidth: void <init>(cn.hutool.core.date.format.FastDateParser$Strategy,int)>($r6, $i8) 

(declare-const var1243!1 var989)
(declare-const var1622!1 var1363)
(declare-const var3094!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {currentIdx/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], int), this$0/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], cn.hutool.core.date.format.FastDateParser), pattern/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), cast-from-var2476-to-var2028=([cn.hutool.core.date.format.FastDateParser], cn.hutool.core.date.format.AbstractDateBasic), length/-134980193=([java.lang.String], int), var989-init=([], cn.hutool.core.date.format.FastDateParser$StrategyAndWidth), definingCalendar/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], java.util.Calendar), var2476_access$100/-2048194389=([cn.hutool.core.date.format.FastDateParser, char, int, java.util.Calendar], cn.hutool.core.date.format.FastDateParser$Strategy), <init>/-726160529=([cn.hutool.core.date.format.FastDateParser$StrategyAndWidth, cn.hutool.core.date.format.FastDateParser$Strategy, int], void)}
; {var2138=cn.hutool.core.date.format.FastDateParser$StrategyParser, var1597=r0, var98=c5, var3467=i0, var1241=$i1, var2231=$i2, var2476=cn.hutool.core.date.format.FastDateParser, var3884=$r1, var2028=cn.hutool.core.date.format.AbstractDateBasic, var92=$r2, var1907=$i3, var1002=$i4, var3094=$i8, var989=cn.hutool.core.date.format.FastDateParser$StrategyAndWidth, var1243=$r9, var1147=$r5, var105=java.util.Calendar, var3248=$r4, var1363=cn.hutool.core.date.format.FastDateParser$Strategy, var1622=$r6}
; {cn.hutool.core.date.format.FastDateParser$StrategyParser=var2138, r0=var1597, c5=var98, i0=var3467, $i1=var1241, $i2=var2231, cn.hutool.core.date.format.FastDateParser=var2476, $r1=var3884, cn.hutool.core.date.format.AbstractDateBasic=var2028, $r2=var92, $i3=var1907, $i4=var1002, $i8=var3094, cn.hutool.core.date.format.FastDateParser$StrategyAndWidth=var989, $r9=var1243, $r5=var1147, java.util.Calendar=var105, $r4=var3248, cn.hutool.core.date.format.FastDateParser$Strategy=var1363, $r6=var1622}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser;	c5 := @parameter0: char;	i0 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx>;	$i1 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx>;	$i2 = $i1 + 1;	r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> = $i2;	$r1 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0>;	$r2 = $r1.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern>;	$i3 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i2 >= $i3 goto $i4 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx>;	$i4 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx>;	$i8 = $i4 - i0;	$r9 = new cn.hutool.core.date.format.FastDateParser$StrategyAndWidth;	$r5 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0>;	$r4 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: java.util.Calendar definingCalendar>;	$r6 = staticinvoke <cn.hutool.core.date.format.FastDateParser: cn.hutool.core.date.format.FastDateParser$Strategy access$100(cn.hutool.core.date.format.FastDateParser,char,int,java.util.Calendar)>($r5, c5, $i8, $r4);	specialinvoke $r9.<cn.hutool.core.date.format.FastDateParser$StrategyAndWidth: void <init>(cn.hutool.core.date.format.FastDateParser$Strategy,int)>($r6, $i8);	return $r9
;block_num 3