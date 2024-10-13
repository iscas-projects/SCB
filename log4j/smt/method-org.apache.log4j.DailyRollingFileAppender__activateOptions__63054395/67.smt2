(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2489 0)
(declare-sort var851 0)
(declare-sort var3663 0)
(declare-sort var3898 0)
(declare-sort var3651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun activateOptions/-851935289 (var851) void)
(declare-fun cast-from-var2489-to-var851 (var2489) var851)
(declare-fun datePattern/489248409 (var2489) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var3898) String)
(declare-fun cast-from-var2489-to-var3898 (var2489) var3898)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3651_error/-402343703 (String) void)
(declare-const null-var2489 var2489)
(declare-const null-String String)
(declare-const var2371 var2489) ; Statement: r0 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var2371 null-var2489)))
(assert true)
;(assert (activateOptions/-851935289 (cast-from-var2489-to-var851 var2371))) ; Statement: specialinvoke r0.<org.apache.log4j.FileAppender: void activateOptions()>() 

(declare-const var2371!1 var2489)
(define-const var3851 String (datePattern/489248409 var2371!1)) ; Statement: $r1 = r0.<org.apache.log4j.DailyRollingFileAppender: java.lang.String datePattern> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuffer 
(assert (= var3851 null-String)) ; Cond: $r1 == null 
(define-const var2428 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2428)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2428!1 String)
(assert true)
(define-const var2383 String (append/1560614132 var2428!1 "Either File or DatePattern options are not set for appender [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Either File or DatePattern options are not set for appender [") 
(declare-const var2428!2 String)
(assert (str.prefixof var2428!1 var2428!2))
(define-const var3807 String (name/-1806528418 (cast-from-var2489-to-var3898 var2371!1))) ; Statement: $r3 = r0.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var1189 String (append/1560614132 var2383 var3807)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2383!1 String)
(assert (str.prefixof var2383 var2383!1))
(assert true)
(define-const var3125 String (append/1560614132 var1189 "].")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1189!1 String)
(assert (str.prefixof var1189 var1189!1))
(assert true)
(define-const var1509 String (toString/-222306083 var3125)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3651_error/-402343703 var1509)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r7) 

(declare-const var1509!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {activateOptions/-851935289=([org.apache.log4j.FileAppender], void), cast-from-var2489-to-var851=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.FileAppender), datePattern/489248409=([org.apache.log4j.DailyRollingFileAppender], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var2489-to-var3898=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3651_error/-402343703=([java.lang.String], void)}
; {var2489=org.apache.log4j.DailyRollingFileAppender, var2371=r0, var851=org.apache.log4j.FileAppender, var3851=$r1, var3663=null_type, var2428=$r2, var2383=$r4, var3898=org.apache.log4j.AppenderSkeleton, var3807=$r3, var1189=$r5, var3125=$r6, var1509=$r7, var3651=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var2489, r0=var2371, org.apache.log4j.FileAppender=var851, $r1=var3851, null_type=var3663, $r2=var2428, $r4=var2383, org.apache.log4j.AppenderSkeleton=var3898, $r3=var3807, $r5=var1189, $r6=var3125, $r7=var1509, org.apache.log4j.helpers.LogLog=var3651}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.DailyRollingFileAppender;	specialinvoke r0.<org.apache.log4j.FileAppender: void activateOptions()>();	$r1 = r0.<org.apache.log4j.DailyRollingFileAppender: java.lang.String datePattern>;	if $r1 == null goto $r2 = new java.lang.StringBuffer;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Either File or DatePattern options are not set for appender [");	$r3 = r0.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r7);	return
;block_num 3