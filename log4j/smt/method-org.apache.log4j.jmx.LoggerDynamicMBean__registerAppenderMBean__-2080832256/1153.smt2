(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var366 0)
(declare-sort var32 0)
(declare-sort var3473 0)
(declare-sort var752 0)
(declare-sort var1424 0)
(declare-sort var2101 0)
(declare-sort var1289 0)
(declare-sort var1146 0)
(declare-sort var1031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3473_getAppenderName/-1074442248 (var32) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var1424 var2101) void)
(declare-fun cast-from-var752-to-var1424 (var752) var1424)
(declare-fun cast-from-String-to-var2101 (String) var2101)
(declare-fun var1289-init () var1289)
(declare-fun error/-1766755934 (var1424 var2101 var1031) void)
(declare-fun cast-from-var1146-to-var1031 (var1146) var1031)
(declare-const null-var366 var366)
(declare-const null-var32 var32)
(declare-const var366-cat var752)
(declare-const null-var1146 var1146)
(declare-const var2266 var366) ; Statement: r9 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var2266 null-var366)))
(declare-const var3011 var32) ; Statement: r0 := @parameter0: org.apache.log4j.Appender 
(assert (not (= var3011 null-var32)))
(define-const var3086 String (var3473_getAppenderName/-1074442248 var3011)) ; Statement: r1 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String getAppenderName(org.apache.log4j.Appender)>(r0) 
(define-const var669 var752 var366-cat) ; Statement: $r3 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var1554 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1554)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1554!1 String)
(assert true)
(define-const var1039 String (append/1560614132 var1554!1 "Adding AppenderMBean for appender named ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding AppenderMBean for appender named ") 
(declare-const var1554!2 String)
(assert (str.prefixof var1554!1 var1554!2))
(assert true)
(define-const var2615 String (append/1560614132 var1039 var3086)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1039!1 String)
(assert (str.prefixof var1039 var1039!1))
(assert true)
(define-const var1973 String (toString/-222306083 var2615)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var752-to-var1424 var669) (cast-from-String-to-var2101 var1973))) ; Statement: virtualinvoke $r3.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6) 

(declare-const var669!1 var752)
(declare-const var1973!1 String)
(define-const var2001 var1289 var1289-init) ; Statement: $r7 = new org.apache.log4j.jmx.AppenderDynamicMBean 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2292 var1146) ; Statement: $r29 := @caughtexception 
(assert (not (= var2292 null-var1146)))
(define-const var1467 var752 var366-cat) ; Statement: $r31 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var2370 String String-init) ; Statement: $r30 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2370)) ; Statement: specialinvoke $r30.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2370!1 String)
(assert true)
(define-const var2067 String (append/1560614132 var2370!1 "Could not add appenderMBean for [")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add appenderMBean for [") 
(declare-const var2370!2 String)
(assert (str.prefixof var2370!1 var2370!2))
(assert true)
(define-const var1914 String (append/1560614132 var2067 var3086)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2067!1 String)
(assert (str.prefixof var2067 var2067!1))
(assert true)
(define-const var495 String (append/1560614132 var1914 "].")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1914!1 String)
(assert (str.prefixof var1914 var1914!1))
(assert true)
(define-const var2810 String (toString/-222306083 var495)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var752-to-var1424 var1467) (cast-from-String-to-var2101 var2810) (cast-from-var1146-to-var1031 var2292))) ; Statement: virtualinvoke $r31.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r35, $r29) 

(declare-const var1467!1 var752)
(declare-const var2810!1 String)
(declare-const var2292!1 var1146)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3473_getAppenderName/-1074442248=([org.apache.log4j.Appender], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var752-to-var1424=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var2101=([java.lang.String], java.lang.Object), var1289-init=([], org.apache.log4j.jmx.AppenderDynamicMBean), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var1146-to-var1031=([java.beans.IntrospectionException], java.lang.Throwable)}
; {var366=org.apache.log4j.jmx.LoggerDynamicMBean, var2266=r9, var32=org.apache.log4j.Appender, var3011=r0, var3473=org.apache.log4j.jmx.AbstractDynamicMBean, var3086=r1, var752=org.apache.log4j.Logger, var669=$r3, var1554=$r2, var1039=$r4, var2615=$r5, var1973=$r6, var1424=org.apache.log4j.Category, var2101=java.lang.Object, var1289=org.apache.log4j.jmx.AppenderDynamicMBean, var2001=$r7, var1146=java.beans.IntrospectionException, var2292=$r29, var1467=$r31, var2370=$r30, var2067=$r32, var1914=$r33, var495=$r34, var2810=$r35, var1031=java.lang.Throwable}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var366, r9=var2266, org.apache.log4j.Appender=var32, r0=var3011, org.apache.log4j.jmx.AbstractDynamicMBean=var3473, r1=var3086, org.apache.log4j.Logger=var752, $r3=var669, $r2=var1554, $r4=var1039, $r5=var2615, $r6=var1973, org.apache.log4j.Category=var1424, java.lang.Object=var2101, org.apache.log4j.jmx.AppenderDynamicMBean=var1289, $r7=var2001, java.beans.IntrospectionException=var1146, $r29=var2292, $r31=var1467, $r30=var2370, $r32=var2067, $r33=var1914, $r34=var495, $r35=var2810, java.lang.Throwable=var1031}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r9 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r0 := @parameter0: org.apache.log4j.Appender;	r1 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String getAppenderName(org.apache.log4j.Appender)>(r0);	$r3 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding AppenderMBean for appender named ");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r6);	$r7 = new org.apache.log4j.jmx.AppenderDynamicMBean;	$r29 := @caughtexception;	$r31 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r30 = new java.lang.StringBuffer;	specialinvoke $r30.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add appenderMBean for [");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r31.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r35, $r29);	goto [?= return];	return
;block_num 3