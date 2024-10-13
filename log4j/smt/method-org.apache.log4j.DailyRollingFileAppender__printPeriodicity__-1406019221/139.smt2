(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var969 0)
(declare-sort var1831 0)
(declare-sort var1370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var1831) String)
(declare-fun cast-from-var969-to-var1831 (var969) var1831)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1370_debug/381960894 (String) void)
(declare-const null-var969 var969)
(declare-const null-Int Int)
(declare-const var3670 var969) ; Statement: r1 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var3670 null-var969)))
(declare-const var3526 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3526 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; } 
(assert (and (= var3526 2) (and (not (= var3526 1)) (and (not (= var3526 0)) true)))) ; Intersect: Cond: i0 == 2  and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional   
(define-const var3899 String String-init) ; Statement: $r19 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3899)) ; Statement: specialinvoke $r19.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3899!1 String)
(assert true)
(define-const var3950 String (append/1560614132 var3899!1 "Appender [")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [") 
(declare-const var3899!2 String)
(assert (str.prefixof var3899!1 var3899!2))
(define-const var1786 String (name/-1806528418 (cast-from-var969-to-var1831 var3670))) ; Statement: $r20 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var2406 String (append/1560614132 var3950 var1786)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var3950!1 String)
(assert (str.prefixof var3950 var3950!1))
(assert true)
(define-const var2330 String (append/1560614132 var2406 "] to be rolled at midday and midnight.")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at midday and midnight.") 
(declare-const var2406!1 String)
(assert (str.prefixof var2406 var2406!1))
(assert true)
(define-const var629 String (toString/-222306083 var2330)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1370_debug/381960894 var629)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r24) 

(declare-const var629!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var969-to-var1831=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1370_debug/381960894=([java.lang.String], void)}
; {var969=org.apache.log4j.DailyRollingFileAppender, var3670=r1, var3526=i0, var3899=$r19, var3950=$r21, var1831=org.apache.log4j.AppenderSkeleton, var1786=$r20, var2406=$r22, var2330=$r23, var629=$r24, var1370=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var969, r1=var3670, i0=var3526, $r19=var3899, $r21=var3950, org.apache.log4j.AppenderSkeleton=var1831, $r20=var1786, $r22=var2406, $r23=var2330, $r24=var629, org.apache.log4j.helpers.LogLog=var1370}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.DailyRollingFileAppender;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; };	$r19 = new java.lang.StringBuffer;	specialinvoke $r19.<java.lang.StringBuffer: void <init>()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [");	$r20 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at midday and midnight.");	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r24);	goto [?= return];	return
;block_num 3