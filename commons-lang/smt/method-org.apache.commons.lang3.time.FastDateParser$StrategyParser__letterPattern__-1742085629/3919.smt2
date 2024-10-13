(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3218 0)
(declare-sort var2346 0)
(declare-sort var3196 0)
(declare-sort var300 0)
(declare-sort var1223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentIdx/-1576495471 (var3218) Int)
(declare-fun this$0/-1576495471 (var3218) var2346)
(declare-fun var2346_access$300/-739635973 (var2346) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3196-init () var3196)
(declare-fun definingCalendar/-1576495471 (var3218) var300)
(declare-fun var2346_access$500/1565833853 (var2346 Int Int var300) var1223)
(declare-fun <init>/-762572363 (var3196 var1223 Int) void)
(declare-const null-var3218 var3218)
(declare-const null-Int Int)
(declare-const var2624 var3218) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser 
(assert (not (= var2624 null-var3218)))
(declare-const var870 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var870 null-Int)))
(define-const var1065 Int (currentIdx/-1576495471 var2624)) ; Statement: i0 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> 
(assert true) ; Non Conditional
(define-const var723 Int (currentIdx/-1576495471 var2624)) ; Statement: $i1 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> 
(define-const var2572 Int (+ var723 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var2624!1 var3218)
(assert (not (= var2624!1 null-var3218)))
(assert (= (currentIdx/-1576495471 var2624!1) var2572)) ; Statement: r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> = $i2 
(define-const var3841 var2346 (this$0/-1576495471 var2624!1)) ; Statement: $r1 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0> 
(define-const var2361 String (var2346_access$300/-739635973 var3841)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r1) 
(assert true)
(define-const var920 Int (length/-134980193 var2361)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i2 >= $i3 goto $i4 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> 
(assert (>= var2572 var920)) ; Cond: $i2 >= $i3 
(define-const var820 Int (currentIdx/-1576495471 var2624!1)) ; Statement: $i4 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> 
(define-const var2907 Int (- var820 var1065)) ; Statement: $i8 = $i4 - i0 
(define-const var1453 var3196 var3196-init) ; Statement: $r9 = new org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth 
(define-const var2445 var2346 (this$0/-1576495471 var2624!1)) ; Statement: $r5 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0> 
(define-const var431 var300 (definingCalendar/-1576495471 var2624!1)) ; Statement: $r4 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: java.util.Calendar definingCalendar> 
(define-const var3711 var1223 (var2346_access$500/1565833853 var2445 var870 var2907 var431)) ; Statement: $r6 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy access$500(org.apache.commons.lang3.time.FastDateParser,char,int,java.util.Calendar)>($r5, c5, $i8, $r4) 
(assert true)
;(assert (<init>/-762572363 var1453 var3711 var2907)) ; Statement: specialinvoke $r9.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: void <init>(org.apache.commons.lang3.time.FastDateParser$Strategy,int)>($r6, $i8) 

(declare-const var1453!1 var3196)
(declare-const var3711!1 var1223)
(declare-const var2907!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {currentIdx/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], int), this$0/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], org.apache.commons.lang3.time.FastDateParser), var2346_access$300/-739635973=([org.apache.commons.lang3.time.FastDateParser], java.lang.String), length/-134980193=([java.lang.String], int), var3196-init=([], org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth), definingCalendar/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], java.util.Calendar), var2346_access$500/1565833853=([org.apache.commons.lang3.time.FastDateParser, char, int, java.util.Calendar], org.apache.commons.lang3.time.FastDateParser$Strategy), <init>/-762572363=([org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth, org.apache.commons.lang3.time.FastDateParser$Strategy, int], void)}
; {var3218=org.apache.commons.lang3.time.FastDateParser$StrategyParser, var2624=r0, var870=c5, var1065=i0, var723=$i1, var2572=$i2, var2346=org.apache.commons.lang3.time.FastDateParser, var3841=$r1, var2361=$r2, var920=$i3, var820=$i4, var2907=$i8, var3196=org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth, var1453=$r9, var2445=$r5, var300=java.util.Calendar, var431=$r4, var1223=org.apache.commons.lang3.time.FastDateParser$Strategy, var3711=$r6}
; {org.apache.commons.lang3.time.FastDateParser$StrategyParser=var3218, r0=var2624, c5=var870, i0=var1065, $i1=var723, $i2=var2572, org.apache.commons.lang3.time.FastDateParser=var2346, $r1=var3841, $r2=var2361, $i3=var920, $i4=var820, $i8=var2907, org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth=var3196, $r9=var1453, $r5=var2445, java.util.Calendar=var300, $r4=var431, org.apache.commons.lang3.time.FastDateParser$Strategy=var1223, $r6=var3711}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser;	c5 := @parameter0: char;	i0 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx>;	$i1 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx>;	$i2 = $i1 + 1;	r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> = $i2;	$r1 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0>;	$r2 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r1);	$i3 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i2 >= $i3 goto $i4 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx>;	$i4 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx>;	$i8 = $i4 - i0;	$r9 = new org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth;	$r5 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0>;	$r4 = r0.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: java.util.Calendar definingCalendar>;	$r6 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: org.apache.commons.lang3.time.FastDateParser$Strategy access$500(org.apache.commons.lang3.time.FastDateParser,char,int,java.util.Calendar)>($r5, c5, $i8, $r4);	specialinvoke $r9.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: void <init>(org.apache.commons.lang3.time.FastDateParser$Strategy,int)>($r6, $i8);	return $r9
;block_num 3