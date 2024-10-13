(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3786 0)
(declare-sort var454 0)
(declare-sort var2987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentIdx/-1576495471 (var3786) Int)
(declare-fun this$0/-1576495471 (var3786) var454)
(declare-fun var454_access$300/-739635973 (var454) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2987-init () var2987)
(declare-fun <init>/875830710 (var2987 String) void)
(declare-const null-var3786 var3786)
(declare-const var558 var3786) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser 
(assert (not (= var558 null-var3786)))
(define-const var1163 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2008 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2008)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2008!1 String)
(assert (= var2008!1 ""))
(assert true) ; Non Conditional
(define-const var1370 Int (currentIdx/-1576495471 var558)) ; Statement: $i9 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx> 
(define-const var1228 var454 (this$0/-1576495471 var558)) ; Statement: $r11 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0> 
(define-const var2854 String (var454_access$300/-739635973 var1228)) ; Statement: $r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r11) 
(assert true)
(define-const var1323 Int (length/-134980193 var2854)) ; Statement: $i10 = virtualinvoke $r12.<java.lang.String: int length()>() 
 ; Statement: if $i9 >= $i10 goto (branch) 
(assert (>= var1370 var1323)) ; Cond: $i9 >= $i10 
 ; Statement: if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1163 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var3124 var2987 var2987-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3124 "Unterminated quote")) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Unterminated quote") 

(declare-const var3124!1 var2987)
(declare-const var2146 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentIdx/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], int), this$0/-1576495471=([org.apache.commons.lang3.time.FastDateParser$StrategyParser], org.apache.commons.lang3.time.FastDateParser), var454_access$300/-739635973=([org.apache.commons.lang3.time.FastDateParser], java.lang.String), length/-134980193=([java.lang.String], int), var2987-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3786=org.apache.commons.lang3.time.FastDateParser$StrategyParser, var558=r1, var1163=z1, var2008=$r14, var1370=$i9, var454=org.apache.commons.lang3.time.FastDateParser, var1228=$r11, var2854=$r12, var1323=$i10, var2987=java.lang.IllegalArgumentException, var3124=$r15, var2146="Unterminated quote"}
; {org.apache.commons.lang3.time.FastDateParser$StrategyParser=var3786, r1=var558, z1=var1163, $r14=var2008, $i9=var1370, org.apache.commons.lang3.time.FastDateParser=var454, $r11=var1228, $r12=var2854, $i10=var1323, java.lang.IllegalArgumentException=var2987, $r15=var3124, "Unterminated quote"=var2146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$StrategyParser;	z1 = 0;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$i9 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: int currentIdx>;	$r11 = r1.<org.apache.commons.lang3.time.FastDateParser$StrategyParser: org.apache.commons.lang3.time.FastDateParser this$0>;	$r12 = staticinvoke <org.apache.commons.lang3.time.FastDateParser: java.lang.String access$300(org.apache.commons.lang3.time.FastDateParser)>($r11);	$i10 = virtualinvoke $r12.<java.lang.String: int length()>();	if $i9 >= $i10 goto (branch);	if z1 == 0 goto r13 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalArgumentException;	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Unterminated quote");	throw $r15
;block_num 4