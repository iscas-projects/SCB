(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3672 0)
(declare-sort var1841 0)
(declare-sort var2629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var1841) String)
(declare-fun cast-from-var3672-to-var1841 (var3672) var1841)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2629_debug/381960894 (String) void)
(declare-const null-var3672 var3672)
(declare-const null-Int Int)
(declare-const var2989 var3672) ; Statement: r1 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var2989 null-var3672)))
(declare-const var1103 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1103 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; } 
(assert (and (= var1103 0) true)) ; Intersect: Cond: i0 == 0  and Non Conditional 
(define-const var2163 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2163)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2163!1 String)
(assert true)
(define-const var3473 String (append/1560614132 var2163!1 "Appender [")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [") 
(declare-const var2163!2 String)
(assert (str.prefixof var2163!1 var2163!2))
(define-const var3836 String (name/-1806528418 (cast-from-var3672-to-var1841 var2989))) ; Statement: $r32 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var3557 String (append/1560614132 var3473 var3836)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32) 
(declare-const var3473!1 String)
(assert (str.prefixof var3473 var3473!1))
(assert true)
(define-const var1306 String (append/1560614132 var3557 "] to be rolled every minute.")) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled every minute.") 
(declare-const var3557!1 String)
(assert (str.prefixof var3557 var3557!1))
(assert true)
(define-const var477 String (toString/-222306083 var1306)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2629_debug/381960894 var477)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r36) 

(declare-const var477!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var3672-to-var1841=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2629_debug/381960894=([java.lang.String], void)}
; {var3672=org.apache.log4j.DailyRollingFileAppender, var2989=r1, var1103=i0, var2163=$r31, var3473=$r33, var1841=org.apache.log4j.AppenderSkeleton, var3836=$r32, var3557=$r34, var1306=$r35, var477=$r36, var2629=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var3672, r1=var2989, i0=var1103, $r31=var2163, $r33=var3473, org.apache.log4j.AppenderSkeleton=var1841, $r32=var3836, $r34=var3557, $r35=var1306, $r36=var477, org.apache.log4j.helpers.LogLog=var2629}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.DailyRollingFileAppender;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; };	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [");	$r32 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled every minute.");	$r36 = virtualinvoke $r35.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r36);	goto [?= return];	return
;block_num 3