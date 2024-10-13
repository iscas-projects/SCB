(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1808 0)
(declare-sort var2734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentIdx/-1576495471 (var1808) Int)
(declare-fun this$0/-1576495471 (var1808) var2734)
(declare-fun var2734_access$300/-739635973 (var2734) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1808 var1808)
(declare-const var3392 var1808) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser 
(assert (not (= var3392 null-var1808)))
(define-const var1480 Int (currentIdx/-1576495471 var3392)) ; Statement: $i0 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> 
(define-const var1121 var2734 (this$0/-1576495471 var3392)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0> 
(define-const var2652 String (var2734_access$300/-739635973 var1121)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r1) 
(assert true)
(define-const var2550 Int (length/-134980193 var2652)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 < $i1 goto $r3 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0> 
(assert (not (< var1480 var2550))) ; Negate: Cond: $i0 < $i1  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {currentIdx/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], int), this$0/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], org.apache.commons.lang3.time.FastDateParser), var2734_access$300/-739635973=([org.apache.commons.lang3.time.FastDateParser], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1808=org.apache.commons.lang3.time.FastDateParser$StrategyParser, var3392=r0, var1480=$i0, var2734=org.apache.commons.lang3.time.FastDateParser, var1121=$r1, var2652=$r2, var2550=$i1}
; {org.apache.commons.lang3.time.FastDateParser$StrategyParser=var1808, r0=var3392, $i0=var1480, org.apache.commons.lang3.time.FastDateParser=var2734, $r1=var1121, $r2=var2652, $i1=var2550}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser;	$i0 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx>;	$r1 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0>;	$r2 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r1);	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 < $i1 goto $r3 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0>;	return null
;block_num 2