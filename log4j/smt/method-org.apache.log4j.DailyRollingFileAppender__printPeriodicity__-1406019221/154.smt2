(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2276 0)
(declare-sort var527 0)
(declare-sort var2460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var527) String)
(declare-fun cast-from-var2276-to-var527 (var2276) var527)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2460_debug/381960894 (String) void)
(declare-const null-var2276 var2276)
(declare-const null-Int Int)
(declare-const var1130 var2276) ; Statement: r1 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var1130 null-var2276)))
(declare-const var3725 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3725 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; } 
(assert (and (= var3725 4) (and (not (= var3725 3)) (and (not (= var3725 2)) (and (not (= var3725 1)) (and (not (= var3725 0)) true)))))) ; Intersect: Cond: i0 == 4  and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional     
(define-const var927 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var927)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var927!1 String)
(assert true)
(define-const var2513 String (append/1560614132 var927!1 "Appender [")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [") 
(declare-const var927!2 String)
(assert (str.prefixof var927!1 var927!2))
(define-const var2891 String (name/-1806528418 (cast-from-var2276-to-var527 var1130))) ; Statement: $r8 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var3420 String (append/1560614132 var2513 var2891)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var2513!1 String)
(assert (str.prefixof var2513 var2513!1))
(assert true)
(define-const var3451 String (append/1560614132 var3420 "] to be rolled at start of week.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at start of week.") 
(declare-const var3420!1 String)
(assert (str.prefixof var3420 var3420!1))
(assert true)
(define-const var2994 String (toString/-222306083 var3451)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2460_debug/381960894 var2994)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r12) 

(declare-const var2994!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var2276-to-var527=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2460_debug/381960894=([java.lang.String], void)}
; {var2276=org.apache.log4j.DailyRollingFileAppender, var1130=r1, var3725=i0, var927=$r7, var2513=$r9, var527=org.apache.log4j.AppenderSkeleton, var2891=$r8, var3420=$r10, var3451=$r11, var2994=$r12, var2460=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var2276, r1=var1130, i0=var3725, $r7=var927, $r9=var2513, org.apache.log4j.AppenderSkeleton=var527, $r8=var2891, $r10=var3420, $r11=var3451, $r12=var2994, org.apache.log4j.helpers.LogLog=var2460}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.DailyRollingFileAppender;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; };	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [");	$r8 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at start of week.");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r12);	goto [?= return];	return
;block_num 3