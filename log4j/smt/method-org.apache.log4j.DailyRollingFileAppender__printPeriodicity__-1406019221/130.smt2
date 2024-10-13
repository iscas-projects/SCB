(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2919 0)
(declare-sort var3437 0)
(declare-sort var134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var3437) String)
(declare-fun cast-from-var2919-to-var3437 (var2919) var3437)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var134_debug/381960894 (String) void)
(declare-const null-var2919 var2919)
(declare-const null-Int Int)
(declare-const var2487 var2919) ; Statement: r1 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var2487 null-var2919)))
(declare-const var2753 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2753 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; } 
(assert (and (= var2753 1) (and (not (= var2753 0)) true))) ; Intersect: Cond: i0 == 1  and Intersect: Negate: Cond: i0 == 0   and Non Conditional  
(define-const var3795 String String-init) ; Statement: $r25 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3795)) ; Statement: specialinvoke $r25.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3795!1 String)
(assert true)
(define-const var3180 String (append/1560614132 var3795!1 "Appender [")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [") 
(declare-const var3795!2 String)
(assert (str.prefixof var3795!1 var3795!2))
(define-const var3211 String (name/-1806528418 (cast-from-var2919-to-var3437 var2487))) ; Statement: $r26 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var1307 String (append/1560614132 var3180 var3211)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var3180!1 String)
(assert (str.prefixof var3180 var3180!1))
(assert true)
(define-const var1216 String (append/1560614132 var1307 "] to be rolled on top of every hour.")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled on top of every hour.") 
(declare-const var1307!1 String)
(assert (str.prefixof var1307 var1307!1))
(assert true)
(define-const var2915 String (toString/-222306083 var1216)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var134_debug/381960894 var2915)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r30) 

(declare-const var2915!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var2919-to-var3437=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var134_debug/381960894=([java.lang.String], void)}
; {var2919=org.apache.log4j.DailyRollingFileAppender, var2487=r1, var2753=i0, var3795=$r25, var3180=$r27, var3437=org.apache.log4j.AppenderSkeleton, var3211=$r26, var1307=$r28, var1216=$r29, var2915=$r30, var134=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var2919, r1=var2487, i0=var2753, $r25=var3795, $r27=var3180, org.apache.log4j.AppenderSkeleton=var3437, $r26=var3211, $r28=var1307, $r29=var1216, $r30=var2915, org.apache.log4j.helpers.LogLog=var134}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.DailyRollingFileAppender;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; };	$r25 = new java.lang.StringBuffer;	specialinvoke $r25.<java.lang.StringBuffer: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [");	$r26 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled on top of every hour.");	$r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r30);	goto [?= return];	return
;block_num 3