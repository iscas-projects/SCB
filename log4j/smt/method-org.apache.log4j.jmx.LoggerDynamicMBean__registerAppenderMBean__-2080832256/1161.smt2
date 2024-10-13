(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2271 0)
(declare-sort var1526 0)
(declare-sort var3146 0)
(declare-sort var3701 0)
(declare-sort var1627 0)
(declare-sort var355 0)
(declare-sort var3789 0)
(declare-sort var875 0)
(declare-sort var2867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3146_getAppenderName/-1074442248 (var1526) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var1627 var355) void)
(declare-fun cast-from-var3701-to-var1627 (var3701) var1627)
(declare-fun cast-from-String-to-var355 (String) var355)
(declare-fun var3789-init () var3789)
(declare-fun error/-1766755934 (var1627 var355 var2867) void)
(declare-fun cast-from-var875-to-var2867 (var875) var2867)
(declare-const null-var2271 var2271)
(declare-const null-var1526 var1526)
(declare-const var2271-cat var3701)
(declare-const null-var875 var875)
(declare-const var3929 var2271) ; Statement: r9 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var3929 null-var2271)))
(declare-const var3741 var1526) ; Statement: r0 := @parameter0: org.apache.log4j.Appender 
(assert (not (= var3741 null-var1526)))
(define-const var2127 String (var3146_getAppenderName/-1074442248 var3741)) ; Statement: r1 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String getAppenderName(org.apache.log4j.Appender)>(r0) 
(define-const var2113 var3701 var2271-cat) ; Statement: $r3 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var1904 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1904)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1904!1 String)
(assert true)
(define-const var3342 String (append/1560614132 var1904!1 "Adding AppenderMBean for appender named ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding AppenderMBean for appender named ") 
(declare-const var1904!2 String)
(assert (str.prefixof var1904!1 var1904!2))
(assert true)
(define-const var718 String (append/1560614132 var3342 var2127)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3342!1 String)
(assert (str.prefixof var3342 var3342!1))
(assert true)
(define-const var3734 String (toString/-222306083 var718)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var3701-to-var1627 var2113) (cast-from-String-to-var355 var3734))) ; Statement: virtualinvoke $r3.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6) 

(declare-const var2113!1 var3701)
(declare-const var3734!1 String)
(define-const var163 var3789 var3789-init) ; Statement: $r7 = new org.apache.log4j.jmx.AppenderDynamicMBean 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1758 var875) ; Statement: $r22 := @caughtexception 
(assert (not (= var1758 null-var875)))
(define-const var2735 var3701 var2271-cat) ; Statement: $r24 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var2947 String String-init) ; Statement: $r23 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2947)) ; Statement: specialinvoke $r23.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2947!1 String)
(assert true)
(define-const var1264 String (append/1560614132 var2947!1 "Could not add appenderMBean for [")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add appenderMBean for [") 
(declare-const var2947!2 String)
(assert (str.prefixof var2947!1 var2947!2))
(assert true)
(define-const var2472 String (append/1560614132 var1264 var2127)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1264!1 String)
(assert (str.prefixof var1264 var1264!1))
(assert true)
(define-const var3576 String (append/1560614132 var2472 "].")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2472!1 String)
(assert (str.prefixof var2472 var2472!1))
(assert true)
(define-const var2337 String (toString/-222306083 var3576)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var3701-to-var1627 var2735) (cast-from-String-to-var355 var2337) (cast-from-var875-to-var2867 var1758))) ; Statement: virtualinvoke $r24.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r28, $r22) 

(declare-const var2735!1 var3701)
(declare-const var2337!1 String)
(declare-const var1758!1 var875)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3146_getAppenderName/-1074442248=([org.apache.log4j.Appender], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var3701-to-var1627=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var355=([java.lang.String], java.lang.Object), var3789-init=([], org.apache.log4j.jmx.AppenderDynamicMBean), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var875-to-var2867=([java.lang.RuntimeException], java.lang.Throwable)}
; {var2271=org.apache.log4j.jmx.LoggerDynamicMBean, var3929=r9, var1526=org.apache.log4j.Appender, var3741=r0, var3146=org.apache.log4j.jmx.AbstractDynamicMBean, var2127=r1, var3701=org.apache.log4j.Logger, var2113=$r3, var1904=$r2, var3342=$r4, var718=$r5, var3734=$r6, var1627=org.apache.log4j.Category, var355=java.lang.Object, var3789=org.apache.log4j.jmx.AppenderDynamicMBean, var163=$r7, var875=java.lang.RuntimeException, var1758=$r22, var2735=$r24, var2947=$r23, var1264=$r25, var2472=$r26, var3576=$r27, var2337=$r28, var2867=java.lang.Throwable}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var2271, r9=var3929, org.apache.log4j.Appender=var1526, r0=var3741, org.apache.log4j.jmx.AbstractDynamicMBean=var3146, r1=var2127, org.apache.log4j.Logger=var3701, $r3=var2113, $r2=var1904, $r4=var3342, $r5=var718, $r6=var3734, org.apache.log4j.Category=var1627, java.lang.Object=var355, org.apache.log4j.jmx.AppenderDynamicMBean=var3789, $r7=var163, java.lang.RuntimeException=var875, $r22=var1758, $r24=var2735, $r23=var2947, $r25=var1264, $r26=var2472, $r27=var3576, $r28=var2337, java.lang.Throwable=var2867}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r9 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r0 := @parameter0: org.apache.log4j.Appender;	r1 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String getAppenderName(org.apache.log4j.Appender)>(r0);	$r3 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding AppenderMBean for appender named ");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6);	$r7 = new org.apache.log4j.jmx.AppenderDynamicMBean;	$r22 := @caughtexception;	$r24 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r23 = new java.lang.StringBuffer;	specialinvoke $r23.<java.lang.StringBuffer: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add appenderMBean for [");	$r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r24.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r28, $r22);	return
;block_num 3