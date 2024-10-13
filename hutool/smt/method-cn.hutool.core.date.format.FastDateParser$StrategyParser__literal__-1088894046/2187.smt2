(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2044 0)
(declare-sort var1290 0)
(declare-sort var2081 0)
(declare-sort var2225 0)
(declare-sort var1986 0)
(declare-sort var3650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentIdx/-1094847699 (var2044) Int)
(declare-fun this$0/-1094847699 (var2044) var1290)
(declare-fun pattern/63795614 (var2081) String)
(declare-fun cast-from-var1290-to-var2081 (var1290) var2081)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2225-init () var2225)
(declare-fun var1986-init () var1986)
(declare-fun <init>/791676977 (var1986 String) void)
(declare-fun <init>/-726160529 (var2225 var3650 Int) void)
(declare-fun cast-from-var1986-to-var3650 (var1986) var3650)
(declare-const null-var2044 var2044)
(declare-const var2408 var2044) ; Statement: r1 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser 
(assert (not (= var2408 null-var2044)))
(define-const var2315 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var763 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var763)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var763!1 String)
(assert (= var763!1 ""))
(assert true) ; Non Conditional
(define-const var3588 Int (currentIdx/-1094847699 var2408)) ; Statement: $i9 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> 
(define-const var3341 var1290 (this$0/-1094847699 var2408)) ; Statement: $r11 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0> 
(define-const var3631 String (pattern/63795614 (cast-from-var1290-to-var2081 var3341))) ; Statement: $r12 = $r11.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern> 
(assert true)
(define-const var1534 Int (length/-134980193 var3631)) ; Statement: $i10 = virtualinvoke $r12.<java.lang.String: int length()>() 
 ; Statement: if $i9 >= $i10 goto (branch) 
(assert (>= var3588 var1534)) ; Cond: $i9 >= $i10 
 ; Statement: if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2315 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var3145 String (toString/-2075883882 var763!1)) ; Statement: r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3402 var2225 var2225-init) ; Statement: $r17 = new cn.hutool.core.date.format.FastDateParser$StrategyAndWidth 
(define-const var3681 var1986 var1986-init) ; Statement: $r16 = new cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy 
(assert true)
;(assert (<init>/791676977 var3681 var3145)) ; Statement: specialinvoke $r16.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: void <init>(java.lang.String)>(r13) 

(declare-const var3681!1 var1986)
(declare-const var3145!1 String)
(assert true)
(define-const var277 Int (length/-134980193 var3145!1)) ; Statement: $i0 = virtualinvoke r13.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/-726160529 var3402 (cast-from-var1986-to-var3650 var3681!1) var277)) ; Statement: specialinvoke $r17.<cn.hutool.core.date.format.FastDateParser$StrategyAndWidth: void <init>(cn.hutool.core.date.format.FastDateParser$Strategy,int)>($r16, $i0) 

(declare-const var3402!1 var2225)
(declare-const var3681!2 var1986)
(declare-const var277!1 Int)
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentIdx/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], int), this$0/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], cn.hutool.core.date.format.FastDateParser), pattern/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), cast-from-var1290-to-var2081=([cn.hutool.core.date.format.FastDateParser], cn.hutool.core.date.format.AbstractDateBasic), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2225-init=([], cn.hutool.core.date.format.FastDateParser$StrategyAndWidth), var1986-init=([], cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy), <init>/791676977=([cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy, java.lang.String], void), <init>/-726160529=([cn.hutool.core.date.format.FastDateParser$StrategyAndWidth, cn.hutool.core.date.format.FastDateParser$Strategy, int], void), cast-from-var1986-to-var3650=([cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy], cn.hutool.core.date.format.FastDateParser$Strategy)}
; {var2044=cn.hutool.core.date.format.FastDateParser$StrategyParser, var2408=r1, var2315=z1, var763=$r14, var3588=$i9, var1290=cn.hutool.core.date.format.FastDateParser, var3341=$r11, var2081=cn.hutool.core.date.format.AbstractDateBasic, var3631=$r12, var1534=$i10, var3145=r13, var2225=cn.hutool.core.date.format.FastDateParser$StrategyAndWidth, var3402=$r17, var1986=cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy, var3681=$r16, var277=$i0, var3650=cn.hutool.core.date.format.FastDateParser$Strategy}
; {cn.hutool.core.date.format.FastDateParser$StrategyParser=var2044, r1=var2408, z1=var2315, $r14=var763, $i9=var3588, cn.hutool.core.date.format.FastDateParser=var1290, $r11=var3341, cn.hutool.core.date.format.AbstractDateBasic=var2081, $r12=var3631, $i10=var1534, r13=var3145, cn.hutool.core.date.format.FastDateParser$StrategyAndWidth=var2225, $r17=var3402, cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy=var1986, $r16=var3681, $i0=var277, cn.hutool.core.date.format.FastDateParser$Strategy=var3650}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser;	z1 = 0;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$i9 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx>;	$r11 = r1.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0>;	$r12 = $r11.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern>;	$i10 = virtualinvoke $r12.<java.lang.String: int length()>();	if $i9 >= $i10 goto (branch);	if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = new cn.hutool.core.date.format.FastDateParser$StrategyAndWidth;	$r16 = new cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy;	specialinvoke $r16.<cn.hutool.core.date.format.FastDateParser$CopyQuotedStrategy: void <init>(java.lang.String)>(r13);	$i0 = virtualinvoke r13.<java.lang.String: int length()>();	specialinvoke $r17.<cn.hutool.core.date.format.FastDateParser$StrategyAndWidth: void <init>(cn.hutool.core.date.format.FastDateParser$Strategy,int)>($r16, $i0);	return $r17
;block_num 4