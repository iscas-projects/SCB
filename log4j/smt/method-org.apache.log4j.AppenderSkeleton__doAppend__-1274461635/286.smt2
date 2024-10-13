(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var931 0)
(declare-sort var3795 0)
(declare-sort var3441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun closed/-1806528418 (var931) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var931) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3441_error/-402343703 (String) void)
(declare-const null-var931 var931)
(declare-const null-var3795 var3795)
(declare-const var3530 var931) ; Statement: r0 := @this: org.apache.log4j.AppenderSkeleton 
(assert (not (= var3530 null-var931)))
(declare-const var2747 var3795) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var2747 null-var3795)))
(define-const var1262 Bool (closed/-1806528418 var3530)) ; Statement: $z0 = r0.<org.apache.log4j.AppenderSkeleton: boolean closed> 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert (not (= (ite var1262 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1060 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1060)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1060!1 String)
(assert true)
(define-const var241 String (append/1560614132 var1060!1 "Attempted to append to closed appender named [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Attempted to append to closed appender named [") 
(declare-const var1060!2 String)
(assert (str.prefixof var1060!1 var1060!2))
(define-const var2436 String (name/-1806528418 var3530)) ; Statement: $r4 = r0.<org.apache.log4j.AppenderSkeleton: java.lang.String name> 
(assert true)
(define-const var1905 String (append/1560614132 var241 var2436)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var241!1 String)
(assert (str.prefixof var241 var241!1))
(assert true)
(define-const var3957 String (append/1560614132 var1905 "].")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1905!1 String)
(assert (str.prefixof var1905 var1905!1))
(assert true)
(define-const var117 String (toString/-222306083 var3957)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3441_error/-402343703 var117)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r8) 

(declare-const var117!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {closed/-1806528418=([org.apache.log4j.AppenderSkeleton], boolean), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3441_error/-402343703=([java.lang.String], void)}
; {var931=org.apache.log4j.AppenderSkeleton, var3530=r0, var3795=org.apache.log4j.spi.LoggingEvent, var2747=r1, var1262=$z0, var1060=$r3, var241=$r5, var2436=$r4, var1905=$r6, var3957=$r7, var117=$r8, var3441=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.AppenderSkeleton=var931, r0=var3530, org.apache.log4j.spi.LoggingEvent=var3795, r1=var2747, $z0=var1262, $r3=var1060, $r5=var241, $r4=var2436, $r6=var1905, $r7=var3957, $r8=var117, org.apache.log4j.helpers.LogLog=var3441}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.AppenderSkeleton;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$z0 = r0.<org.apache.log4j.AppenderSkeleton: boolean closed>;	if $z0 == 0 goto $r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Attempted to append to closed appender named [");	$r4 = r0.<org.apache.log4j.AppenderSkeleton: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r8);	return
;block_num 2