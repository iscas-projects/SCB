(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3581 0)
(declare-sort var3691 0)
(declare-sort var1196 0)
(declare-sort var972 0)
(declare-sort var3892 0)
(declare-sort var1265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getType/-85330976 (var3691) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var3892 var1196) void)
(declare-fun cast-from-var972-to-var3892 (var972) var3892)
(declare-fun cast-from-String-to-var1196 (String) var1196)
(declare-fun getUserData/-1151904841 (var3691) var1196)
(declare-fun cast-from-var1196-to-var1265 (var1196) var1265)
(declare-fun registerAppenderMBean/-2080832256 (var3581 var1265) void)
(declare-const null-var3581 var3581)
(declare-const null-var3691 var3691)
(declare-const null-var1196 var1196)
(declare-const var3581-cat var972)
(declare-const var815 var3581) ; Statement: r7 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var815 null-var3581)))
(declare-const var2836 var3691) ; Statement: r2 := @parameter0: javax.management.Notification 
(assert (not (= var2836 null-var3691)))
(declare-const var2238 var1196) ; Statement: r10 := @parameter1: java.lang.Object 
(assert (not (= var2238 null-var1196)))
(define-const var36 var972 var3581-cat) ; Statement: $r1 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var2398 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2398)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2398!1 String)
(assert true)
(define-const var3070 String (append/1560614132 var2398!1 "Received notification: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Received notification: ") 
(declare-const var2398!2 String)
(assert (str.prefixof var2398!1 var2398!2))
(assert true)
(define-const var453 String (getType/-85330976 var2836)) ; Statement: $r3 = virtualinvoke r2.<javax.management.Notification: java.lang.String getType()>() 
(assert true)
(define-const var2314 String (append/1560614132 var3070 var453)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3070!1 String)
(assert (str.prefixof var3070 var3070!1))
(assert true)
(define-const var715 String (toString/-222306083 var2314)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var972-to-var3892 var36) (cast-from-String-to-var1196 var715))) ; Statement: virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6) 

(declare-const var36!1 var972)
(declare-const var715!1 String)
(assert true)
(define-const var3083 var1196 (getUserData/-1151904841 var2836)) ; Statement: $r8 = virtualinvoke r2.<javax.management.Notification: java.lang.Object getUserData()>() 
(define-const var3647 var1265 (cast-from-var1196-to-var1265 var3083)) ; Statement: $r9 = (org.apache.log4j.Appender) $r8 
(assert true)
;(assert (registerAppenderMBean/-2080832256 var815 var3647)) ; Statement: virtualinvoke r7.<org.apache.log4j.jmx.LoggerDynamicMBean: void registerAppenderMBean(org.apache.log4j.Appender)>($r9) 

(declare-const var815!1 var3581)
(declare-const var3647!1 var1265)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getType/-85330976=([javax.management.Notification], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var972-to-var3892=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var1196=([java.lang.String], java.lang.Object), getUserData/-1151904841=([javax.management.Notification], java.lang.Object), cast-from-var1196-to-var1265=([java.lang.Object], org.apache.log4j.Appender), registerAppenderMBean/-2080832256=([org.apache.log4j.jmx.LoggerDynamicMBean, org.apache.log4j.Appender], void)}
; {var3581=org.apache.log4j.jmx.LoggerDynamicMBean, var815=r7, var3691=javax.management.Notification, var2836=r2, var1196=java.lang.Object, var2238=r10, var972=org.apache.log4j.Logger, var36=$r1, var2398=$r0, var3070=$r4, var453=$r3, var2314=$r5, var715=$r6, var3892=org.apache.log4j.Category, var3083=$r8, var1265=org.apache.log4j.Appender, var3647=$r9}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var3581, r7=var815, javax.management.Notification=var3691, r2=var2836, java.lang.Object=var1196, r10=var2238, org.apache.log4j.Logger=var972, $r1=var36, $r0=var2398, $r4=var3070, $r3=var453, $r5=var2314, $r6=var715, org.apache.log4j.Category=var3892, $r8=var3083, org.apache.log4j.Appender=var1265, $r9=var3647}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r2 := @parameter0: javax.management.Notification;	r10 := @parameter1: java.lang.Object;	$r1 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Received notification: ");	$r3 = virtualinvoke r2.<javax.management.Notification: java.lang.String getType()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6);	$r8 = virtualinvoke r2.<javax.management.Notification: java.lang.Object getUserData()>();	$r9 = (org.apache.log4j.Appender) $r8;	virtualinvoke r7.<org.apache.log4j.jmx.LoggerDynamicMBean: void registerAppenderMBean(org.apache.log4j.Appender)>($r9);	return
;block_num 1