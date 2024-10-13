(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1726 0)
(declare-sort var39 0)
(declare-sort var2628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentIdx/-1094847699 (var1726) Int)
(declare-fun this$0/-1094847699 (var1726) var39)
(declare-fun pattern/63795614 (var2628) String)
(declare-fun cast-from-var39-to-var2628 (var39) var2628)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1726 var1726)
(declare-const var2103 var1726) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser 
(assert (not (= var2103 null-var1726)))
(define-const var1565 Int (currentIdx/-1094847699 var2103)) ; Statement: $i0 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx> 
(define-const var1146 var39 (this$0/-1094847699 var2103)) ; Statement: $r1 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0> 
(define-const var917 String (pattern/63795614 (cast-from-var39-to-var2628 var1146))) ; Statement: $r2 = $r1.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern> 
(assert true)
(define-const var774 Int (length/-134980193 var917)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 < $i1 goto $r3 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0> 
(assert (not (< var1565 var774))) ; Negate: Cond: $i0 < $i1  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {currentIdx/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], int), this$0/-1094847699=([cn.hutool.core.date.format.FastDateParser$StrategyParser], cn.hutool.core.date.format.FastDateParser), pattern/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), cast-from-var39-to-var2628=([cn.hutool.core.date.format.FastDateParser], cn.hutool.core.date.format.AbstractDateBasic), length/-134980193=([java.lang.String], int)}
; {var1726=cn.hutool.core.date.format.FastDateParser$StrategyParser, var2103=r0, var1565=$i0, var39=cn.hutool.core.date.format.FastDateParser, var1146=$r1, var2628=cn.hutool.core.date.format.AbstractDateBasic, var917=$r2, var774=$i1}
; {cn.hutool.core.date.format.FastDateParser$StrategyParser=var1726, r0=var2103, $i0=var1565, cn.hutool.core.date.format.FastDateParser=var39, $r1=var1146, cn.hutool.core.date.format.AbstractDateBasic=var2628, $r2=var917, $i1=var774}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$StrategyParser;	$i0 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: int currentIdx>;	$r1 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0>;	$r2 = $r1.<cn.hutool.core.date.format.FastDateParser: java.lang.String pattern>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 < $i1 goto $r3 = r0.<cn.hutool.core.date.format.FastDateParser$StrategyParser: cn.hutool.core.date.format.FastDateParser this$0>;	return null
;block_num 2