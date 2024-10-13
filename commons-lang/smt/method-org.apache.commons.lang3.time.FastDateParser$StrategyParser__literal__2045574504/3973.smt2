(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1388 0)
(declare-sort var1332 0)
(declare-sort var1025 0)
(declare-sort var432 0)
(declare-sort var2759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentIdx/-1576495471 (var1388) Int)
(declare-fun this$0/-1576495471 (var1388) var1332)
(declare-fun var1332_access$300/-739635973 (var1332) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1025-init () var1025)
(declare-fun var432-init () var432)
(declare-fun <init>/150270877 (var432 String) void)
(declare-fun <init>/-762572363 (var1025 var2759 Int) void)
(declare-fun cast-from-var432-to-var2759 (var432) var2759)
(declare-const null-var1388 var1388)
(declare-const var1079 var1388) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser 
(assert (not (= var1079 null-var1388)))
(define-const var3707 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2622 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2622)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2622!1 String)
(assert (= var2622!1 ""))
(assert true) ; Non Conditional
(define-const var3537 Int (currentIdx/-1576495471 var1079)) ; Statement: $i9 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> 
(define-const var830 var1332 (this$0/-1576495471 var1079)) ; Statement: $r11 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0> 
(define-const var541 String (var1332_access$300/-739635973 var830)) ; Statement: $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r11) 
(assert true)
(define-const var992 Int (length/-134980193 var541)) ; Statement: $i10 = virtualinvoke $r12.<java.lang.String: int length()>() 
 ; Statement: if $i9 >= $i10 goto (branch) 
(assert (>= var3537 var992)) ; Cond: $i9 >= $i10 
 ; Statement: if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3707 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var2122 String (toString/-2075883882 var2622!1)) ; Statement: r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var185 var1025 var1025-init) ; Statement: $r17 = new org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth 
(define-const var731 var432 var432-init) ; Statement: $r16 = new org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy 
(assert true)
;(assert (<init>/150270877 var731 var2122)) ; Statement: specialinvoke $r16.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: void <init>(java.lang.String)>(r13) 

(declare-const var731!1 var432)
(declare-const var2122!1 String)
(assert true)
(define-const var2689 Int (length/-134980193 var2122!1)) ; Statement: $i0 = virtualinvoke r13.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/-762572363 var185 (cast-from-var432-to-var2759 var731!1) var2689)) ; Statement: specialinvoke $r17.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: void <init>(org.apache.commons.lang3.time.FastDateParser$Strategy,int)>($r16, $i0) 

(declare-const var185!1 var1025)
(declare-const var731!2 var432)
(declare-const var2689!1 Int)
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentIdx/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], int), this$0/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], org.apache.commons.lang3.time.FastDateParser), var1332_access$300/-739635973=([org.apache.commons.lang3.time.FastDateParser], java.lang.String), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1025-init=([], org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth), var432-init=([], org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy), <init>/150270877=([org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy, java.lang.String], void), <init>/-762572363=([org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth, org.apache.commons.lang3.time.FastDateParser$Strategy, int], void), cast-from-var432-to-var2759=([org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy], org.apache.commons.lang3.time.FastDateParser$Strategy)}
; {var1388=org.apache.commons.lang3.time.FastDateParser$StrategyParser, var1079=r1, var3707=z1, var2622=$r14, var3537=$i9, var1332=org.apache.commons.lang3.time.FastDateParser, var830=$r11, var541=$r12, var992=$i10, var2122=r13, var1025=org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth, var185=$r17, var432=org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy, var731=$r16, var2689=$i0, var2759=org.apache.commons.lang3.time.FastDateParser$Strategy}
; {org.apache.commons.lang3.time.FastDateParser$StrategyParser=var1388, r1=var1079, z1=var3707, $r14=var2622, $i9=var3537, org.apache.commons.lang3.time.FastDateParser=var1332, $r11=var830, $r12=var541, $i10=var992, r13=var2122, org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth=var1025, $r17=var185, org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy=var432, $r16=var731, $i0=var2689, org.apache.commons.lang3.time.FastDateParser$Strategy=var2759}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser;	z1 = 0;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$i9 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx>;	$r11 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0>;	$r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r11);	$i10 = virtualinvoke $r12.<java.lang.String: int length()>();	if $i9 >= $i10 goto (branch);	if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = new org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth;	$r16 = new org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy;	specialinvoke $r16.<org.apache.commons.lang3.time.FastDateParser$CopyQuotedStrategy: void <init>(java.lang.String)>(r13);	$i0 = virtualinvoke r13.<java.lang.String: int length()>();	specialinvoke $r17.<org.apache.commons.lang3.time.FastDateParser$StrategyAndWidth: void <init>(org.apache.commons.lang3.time.FastDateParser$Strategy,int)>($r16, $i0);	return $r17
;block_num 4