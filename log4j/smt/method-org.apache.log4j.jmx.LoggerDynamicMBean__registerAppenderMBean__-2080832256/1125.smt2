(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2812 0)
(declare-sort var2838 0)
(declare-sort var895 0)
(declare-sort var3392 0)
(declare-sort var3288 0)
(declare-sort var887 0)
(declare-sort var1301 0)
(declare-sort var1405 0)
(declare-sort var1533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var895_getAppenderName/-1074442248 (var2838) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var3288 var887) void)
(declare-fun cast-from-var3392-to-var3288 (var3392) var3288)
(declare-fun cast-from-String-to-var887 (String) var887)
(declare-fun var1301-init () var1301)
(declare-fun error/-1766755934 (var3288 var887 var1533) void)
(declare-fun cast-from-var1405-to-var1533 (var1405) var1533)
(declare-const null-var2812 var2812)
(declare-const null-var2838 var2838)
(declare-const var2812-cat var3392)
(declare-const null-var1405 var1405)
(declare-const var1081 var2812) ; Statement: r9 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var1081 null-var2812)))
(declare-const var1352 var2838) ; Statement: r0 := @parameter0: org.apache.log4j.Appender 
(assert (not (= var1352 null-var2838)))
(define-const var956 String (var895_getAppenderName/-1074442248 var1352)) ; Statement: r1 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String getAppenderName(org.apache.log4j.Appender)>(r0) 
(define-const var3526 var3392 var2812-cat) ; Statement: $r3 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var1388 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1388)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1388!1 String)
(assert true)
(define-const var3789 String (append/1560614132 var1388!1 "Adding AppenderMBean for appender named ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding AppenderMBean for appender named ") 
(declare-const var1388!2 String)
(assert (str.prefixof var1388!1 var1388!2))
(assert true)
(define-const var509 String (append/1560614132 var3789 var956)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3789!1 String)
(assert (str.prefixof var3789 var3789!1))
(assert true)
(define-const var1126 String (toString/-222306083 var509)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var3392-to-var3288 var3526) (cast-from-String-to-var887 var1126))) ; Statement: virtualinvoke $r3.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6) 

(declare-const var3526!1 var3392)
(declare-const var1126!1 String)
(define-const var2588 var1301 var1301-init) ; Statement: $r7 = new org.apache.log4j.jmx.AppenderDynamicMBean 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2568 var1405) ; Statement: $r36 := @caughtexception 
(assert (not (= var2568 null-var1405)))
(define-const var1369 var3392 var2812-cat) ; Statement: $r38 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var3903 String String-init) ; Statement: $r37 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3903)) ; Statement: specialinvoke $r37.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3903!1 String)
(assert true)
(define-const var1068 String (append/1560614132 var3903!1 "Could not add appenderMBean for [")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add appenderMBean for [") 
(declare-const var3903!2 String)
(assert (str.prefixof var3903!1 var3903!2))
(assert true)
(define-const var1698 String (append/1560614132 var1068 var956)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1068!1 String)
(assert (str.prefixof var1068 var1068!1))
(assert true)
(define-const var3252 String (append/1560614132 var1698 "].")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1698!1 String)
(assert (str.prefixof var1698 var1698!1))
(assert true)
(define-const var2124 String (toString/-222306083 var3252)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var3392-to-var3288 var1369) (cast-from-String-to-var887 var2124) (cast-from-var1405-to-var1533 var2568))) ; Statement: virtualinvoke $r38.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r42, $r36) 

(declare-const var1369!1 var3392)
(declare-const var2124!1 String)
(declare-const var2568!1 var1405)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var895_getAppenderName/-1074442248=([org.apache.log4j.Appender], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var3392-to-var3288=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var887=([java.lang.String], java.lang.Object), var1301-init=([], org.apache.log4j.jmx.AppenderDynamicMBean), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var1405-to-var1533=([javax.management.JMException], java.lang.Throwable)}
; {var2812=org.apache.log4j.jmx.LoggerDynamicMBean, var1081=r9, var2838=org.apache.log4j.Appender, var1352=r0, var895=org.apache.log4j.jmx.AbstractDynamicMBean, var956=r1, var3392=org.apache.log4j.Logger, var3526=$r3, var1388=$r2, var3789=$r4, var509=$r5, var1126=$r6, var3288=org.apache.log4j.Category, var887=java.lang.Object, var1301=org.apache.log4j.jmx.AppenderDynamicMBean, var2588=$r7, var1405=javax.management.JMException, var2568=$r36, var1369=$r38, var3903=$r37, var1068=$r39, var1698=$r40, var3252=$r41, var2124=$r42, var1533=java.lang.Throwable}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var2812, r9=var1081, org.apache.log4j.Appender=var2838, r0=var1352, org.apache.log4j.jmx.AbstractDynamicMBean=var895, r1=var956, org.apache.log4j.Logger=var3392, $r3=var3526, $r2=var1388, $r4=var3789, $r5=var509, $r6=var1126, org.apache.log4j.Category=var3288, java.lang.Object=var887, org.apache.log4j.jmx.AppenderDynamicMBean=var1301, $r7=var2588, javax.management.JMException=var1405, $r36=var2568, $r38=var1369, $r37=var3903, $r39=var1068, $r40=var1698, $r41=var3252, $r42=var2124, java.lang.Throwable=var1533}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r9 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r0 := @parameter0: org.apache.log4j.Appender;	r1 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String getAppenderName(org.apache.log4j.Appender)>(r0);	$r3 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding AppenderMBean for appender named ");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6);	$r7 = new org.apache.log4j.jmx.AppenderDynamicMBean;	$r36 := @caughtexception;	$r38 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r37 = new java.lang.StringBuffer;	specialinvoke $r37.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add appenderMBean for [");	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r42 = virtualinvoke $r41.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r38.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r42, $r36);	goto [?= return];	return
;block_num 3