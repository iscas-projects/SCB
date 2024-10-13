(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var1070 0)
(declare-sort var1237 0)
(declare-sort var2171 0)
(declare-sort var1037 0)
(declare-sort var1844 0)
(declare-sort var2846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1326171653 (var1070) String)
(declare-fun var1237_getName/-564791716 (var1237) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var1070 var1037) void)
(declare-fun cast-from-var2171-to-var1070 (var2171) var1070)
(declare-fun cast-from-String-to-var1037 (String) var1037)
(declare-fun var1844-init () var1844)
(declare-fun <init>/910736757 (var1844 String var1037 Int) void)
(declare-fun cast-from-var1725-to-var1037 (var1725) var1037)
(declare-fun setUserData/-940931107 (var1844 var1037) void)
(declare-fun cast-from-var1237-to-var1037 (var1237) var1037)
(declare-fun nbs/-1744593008 (var1725) var2846)
(declare-fun sendNotification/-1381836863 (var2846 var1844) void)
(declare-const null-var1725 var1725)
(declare-const null-var1070 var1070)
(declare-const null-var1237 var1237)
(declare-const var1725-log var2171)
(declare-const var159 var1725) ; Statement: r16 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean 
(assert (not (= var159 null-var1725)))
(declare-const var2192 var1070) ; Statement: r2 := @parameter0: org.apache.log4j.Category 
(assert (not (= var2192 null-var1070)))
(declare-const var3253 var1237) ; Statement: r6 := @parameter1: org.apache.log4j.Appender 
(assert (not (= var3253 null-var1237)))
(define-const var1697 var2171 var1725-log) ; Statement: $r1 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log> 
(define-const var2054 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2054)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2054!1 String)
(assert true)
(define-const var2403 String (append/1560614132 var2054!1 "addAppenderEvent called: logger=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppenderEvent called: logger=") 
(declare-const var2054!2 String)
(assert (str.prefixof var2054!1 var2054!2))
(assert true)
(define-const var969 String (getName/1326171653 var2192)) ; Statement: $r3 = virtualinvoke r2.<org.apache.log4j.Category: java.lang.String getName()>() 
(assert true)
(define-const var1450 String (append/1560614132 var2403 var969)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2403!1 String)
(assert (str.prefixof var2403 var2403!1))
(assert true)
(define-const var2245 String (append/1560614132 var1450 ", appender=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", appender=") 
(declare-const var1450!1 String)
(assert (str.prefixof var1450 var1450!1))
(define-const var1567 String (var1237_getName/-564791716 var3253)) ; Statement: $r7 = interfaceinvoke r6.<org.apache.log4j.Appender: java.lang.String getName()>() 
(assert true)
(define-const var3949 String (append/1560614132 var2245 var1567)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var2245!1 String)
(assert (str.prefixof var2245 var2245!1))
(assert true)
(define-const var1627 String (toString/-222306083 var3949)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var2171-to-var1070 var1697) (cast-from-String-to-var1037 var1627))) ; Statement: virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r10) 

(declare-const var1697!1 var2171)
(declare-const var1627!1 String)
(define-const var3836 var1844 var1844-init) ; Statement: $r11 = new javax.management.Notification 
(define-const var2006 String String-init) ; Statement: $r12 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2006)) ; Statement: specialinvoke $r12.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2006!1 String)
(assert true)
(define-const var512 String (append/1560614132 var2006!1 "addAppender.")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppender.") 
(declare-const var2006!2 String)
(assert (str.prefixof var2006!1 var2006!2))
(assert true)
(define-const var1134 String (getName/1326171653 var2192)) ; Statement: $r13 = virtualinvoke r2.<org.apache.log4j.Category: java.lang.String getName()>() 
(assert true)
(define-const var2479 String (append/1560614132 var512 var1134)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r13) 
(declare-const var512!1 String)
(assert (str.prefixof var512 var512!1))
(assert true)
(define-const var2311 String (toString/-222306083 var2479)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/910736757 var3836 var2311 (cast-from-var1725-to-var1037 var159) 0)) ; Statement: specialinvoke $r11.<javax.management.Notification: void <init>(java.lang.String,java.lang.Object,long)>($r17, r16, 0L) 

(declare-const var3836!1 var1844)
(declare-const var2311!1 String)
(declare-const var159!1 var1725)
(declare-const var2222 Int)
(assert true)
;(assert (setUserData/-940931107 var3836!1 (cast-from-var1237-to-var1037 var3253))) ; Statement: virtualinvoke $r11.<javax.management.Notification: void setUserData(java.lang.Object)>(r6) 

(declare-const var3836!2 var1844)
(declare-const var3253!1 var1237)
(define-const var3384 var2171 var1725-log) ; Statement: $r18 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log> 
(assert true)
;(assert (debug/1611708727 (cast-from-var2171-to-var1070 var3384) (cast-from-String-to-var1037 "sending notification."))) ; Statement: virtualinvoke $r18.<org.apache.log4j.Logger: void debug(java.lang.Object)>("sending notification.") 

(declare-const var3384!1 var2171)
(declare-const var3361 String)
(define-const var988 var2846 (nbs/-1744593008 var159!1)) ; Statement: $r19 = r16.<org.apache.log4j.jmx.HierarchyDynamicMBean: javax.management.NotificationBroadcasterSupport nbs> 
(assert true)
;(assert (sendNotification/-1381836863 var988 var3836!2)) ; Statement: virtualinvoke $r19.<javax.management.NotificationBroadcasterSupport: void sendNotification(javax.management.Notification)>($r11) 

(declare-const var988!1 var2846)
(declare-const var3836!3 var1844)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1326171653=([org.apache.log4j.Category], java.lang.String), var1237_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var2171-to-var1070=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var1037=([java.lang.String], java.lang.Object), var1844-init=([], javax.management.Notification), <init>/910736757=([javax.management.Notification, java.lang.String, java.lang.Object, long], void), cast-from-var1725-to-var1037=([org.apache.log4j.jmx.HierarchyDynamicMBean], java.lang.Object), setUserData/-940931107=([javax.management.Notification, java.lang.Object], void), cast-from-var1237-to-var1037=([org.apache.log4j.Appender], java.lang.Object), nbs/-1744593008=([org.apache.log4j.jmx.HierarchyDynamicMBean], javax.management.NotificationBroadcasterSupport), sendNotification/-1381836863=([javax.management.NotificationBroadcasterSupport, javax.management.Notification], void)}
; {var1725=org.apache.log4j.jmx.HierarchyDynamicMBean, var159=r16, var1070=org.apache.log4j.Category, var2192=r2, var1237=org.apache.log4j.Appender, var3253=r6, var2171=org.apache.log4j.Logger, var1697=$r1, var2054=$r0, var2403=$r4, var969=$r3, var1450=$r5, var2245=$r8, var1567=$r7, var3949=$r9, var1627=$r10, var1037=java.lang.Object, var1844=javax.management.Notification, var3836=$r11, var2006=$r12, var512=$r14, var1134=$r13, var2479=$r15, var2311=$r17, var2222=0L, var3384=$r18, var3361="sending notification.", var2846=javax.management.NotificationBroadcasterSupport, var988=$r19}
; {org.apache.log4j.jmx.HierarchyDynamicMBean=var1725, r16=var159, org.apache.log4j.Category=var1070, r2=var2192, org.apache.log4j.Appender=var1237, r6=var3253, org.apache.log4j.Logger=var2171, $r1=var1697, $r0=var2054, $r4=var2403, $r3=var969, $r5=var1450, $r8=var2245, $r7=var1567, $r9=var3949, $r10=var1627, java.lang.Object=var1037, javax.management.Notification=var1844, $r11=var3836, $r12=var2006, $r14=var512, $r13=var1134, $r15=var2479, $r17=var2311, 0L=var2222, $r18=var3384, "sending notification."=var3361, javax.management.NotificationBroadcasterSupport=var2846, $r19=var988}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r16 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean;	r2 := @parameter0: org.apache.log4j.Category;	r6 := @parameter1: org.apache.log4j.Appender;	$r1 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppenderEvent called: logger=");	$r3 = virtualinvoke r2.<org.apache.log4j.Category: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", appender=");	$r7 = interfaceinvoke r6.<org.apache.log4j.Appender: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r10);	$r11 = new javax.management.Notification;	$r12 = new java.lang.StringBuffer;	specialinvoke $r12.<java.lang.StringBuffer: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppender.");	$r13 = virtualinvoke r2.<org.apache.log4j.Category: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r11.<javax.management.Notification: void <init>(java.lang.String,java.lang.Object,long)>($r17, r16, 0L);	virtualinvoke $r11.<javax.management.Notification: void setUserData(java.lang.Object)>(r6);	$r18 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log>;	virtualinvoke $r18.<org.apache.log4j.Logger: void debug(java.lang.Object)>("sending notification.");	$r19 = r16.<org.apache.log4j.jmx.HierarchyDynamicMBean: javax.management.NotificationBroadcasterSupport nbs>;	virtualinvoke $r19.<javax.management.NotificationBroadcasterSupport: void sendNotification(javax.management.Notification)>($r11);	return
;block_num 1