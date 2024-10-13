(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var178 0)
(declare-sort var24 0)
(declare-sort var460 0)
(declare-sort var1202 0)
(declare-sort var3332 0)
(declare-sort var3293 0)
(declare-sort var3205 0)
(declare-sort var2671 0)
(declare-sort var2473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var3332) String)
(declare-fun cast-from-var24-to-var3332 (var24) var3332)
(declare-fun cast-from-var460-to-var3332 (var460) var3332)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var3293 var3332) void)
(declare-fun cast-from-var1202-to-var3293 (var1202) var3293)
(declare-fun cast-from-String-to-var3332 (String) var3332)
(declare-fun server/-1522311581 (var3205) var24)
(declare-fun cast-from-var178-to-var3205 (var178) var3205)
(declare-fun appender/1256938504 (var178) var2671)
(declare-fun var2671_getLayout/-581527260 (var2671) var2473)
(declare-fun registerLayoutMBean/-967786025 (var178 var2473) void)
(declare-const null-var178 var178)
(declare-const null-var24 var24)
(declare-const null-var460 var460)
(declare-const var178-cat var1202)
(declare-const var2953 var178) ; Statement: r9 := @this: org.apache.log4j.jmx.AppenderDynamicMBean 
(assert (not (= var2953 null-var178)))
(declare-const var387 var24) ; Statement: r2 := @parameter0: javax.management.MBeanServer 
(assert (not (= var387 null-var24)))
(declare-const var3603 var460) ; Statement: r5 := @parameter1: javax.management.ObjectName 
(assert (not (= var3603 null-var460)))
(define-const var2015 var1202 var178-cat) ; Statement: $r1 = <org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var1656 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1656)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1656!1 String)
(assert true)
(define-const var746 String (append/1560614132 var1656!1 "preRegister called. Server=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("preRegister called. Server=") 
(declare-const var1656!2 String)
(assert (str.prefixof var1656!1 var1656!2))
(assert true)
(define-const var2399 String (append/-143899486 var746 (cast-from-var24-to-var3332 var387))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2) 
(assert true)
(define-const var737 String (append/1560614132 var2399 ", name=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", name=") 
(declare-const var2399!1 String)
(assert (str.prefixof var2399 var2399!1))
(assert true)
(define-const var94 String (append/-143899486 var737 (cast-from-var460-to-var3332 var3603))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r5) 
(assert true)
(define-const var2178 String (toString/-222306083 var94)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var1202-to-var3293 var2015) (cast-from-String-to-var3332 var2178))) ; Statement: virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8) 

(declare-const var2015!1 var1202)
(declare-const var2178!1 String)
(declare-const var2953!1 var178)
(assert (not (= var2953!1 null-var178)))
(assert (= (server/-1522311581 (cast-from-var178-to-var3205 var2953!1)) var387)) ; Statement: r9.<org.apache.log4j.jmx.AppenderDynamicMBean: javax.management.MBeanServer server> = r2 
(define-const var93 var2671 (appender/1256938504 var2953!1)) ; Statement: $r10 = r9.<org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Appender appender> 
(define-const var1152 var2473 (var2671_getLayout/-581527260 var93)) ; Statement: $r11 = interfaceinvoke $r10.<org.apache.log4j.Appender: org.apache.log4j.Layout getLayout()>() 
(assert true)
;(assert (registerLayoutMBean/-967786025 var2953!1 var1152)) ; Statement: virtualinvoke r9.<org.apache.log4j.jmx.AppenderDynamicMBean: void registerLayoutMBean(org.apache.log4j.Layout)>($r11) 

(declare-const var2953!2 var178)
(declare-const var1152!1 var2473)
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var24-to-var3332=([javax.management.MBeanServer], java.lang.Object), cast-from-var460-to-var3332=([javax.management.ObjectName], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var1202-to-var3293=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var3332=([java.lang.String], java.lang.Object), server/-1522311581=([org.apache.log4j.jmx.AbstractDynamicMBean], javax.management.MBeanServer), cast-from-var178-to-var3205=([org.apache.log4j.jmx.AppenderDynamicMBean], org.apache.log4j.jmx.AbstractDynamicMBean), appender/1256938504=([org.apache.log4j.jmx.AppenderDynamicMBean], org.apache.log4j.Appender), var2671_getLayout/-581527260=([org.apache.log4j.Appender], org.apache.log4j.Layout), registerLayoutMBean/-967786025=([org.apache.log4j.jmx.AppenderDynamicMBean, org.apache.log4j.Layout], void)}
; {var178=org.apache.log4j.jmx.AppenderDynamicMBean, var2953=r9, var24=javax.management.MBeanServer, var387=r2, var460=javax.management.ObjectName, var3603=r5, var1202=org.apache.log4j.Logger, var2015=$r1, var1656=$r0, var746=$r3, var3332=java.lang.Object, var2399=$r4, var737=$r6, var94=$r7, var2178=$r8, var3293=org.apache.log4j.Category, var3205=org.apache.log4j.jmx.AbstractDynamicMBean, var2671=org.apache.log4j.Appender, var93=$r10, var2473=org.apache.log4j.Layout, var1152=$r11}
; {org.apache.log4j.jmx.AppenderDynamicMBean=var178, r9=var2953, javax.management.MBeanServer=var24, r2=var387, javax.management.ObjectName=var460, r5=var3603, org.apache.log4j.Logger=var1202, $r1=var2015, $r0=var1656, $r3=var746, java.lang.Object=var3332, $r4=var2399, $r6=var737, $r7=var94, $r8=var2178, org.apache.log4j.Category=var3293, org.apache.log4j.jmx.AbstractDynamicMBean=var3205, org.apache.log4j.Appender=var2671, $r10=var93, org.apache.log4j.Layout=var2473, $r11=var1152}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.log4j.jmx.AppenderDynamicMBean;	r2 := @parameter0: javax.management.MBeanServer;	r5 := @parameter1: javax.management.ObjectName;	$r1 = <org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Logger cat>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("preRegister called. Server=");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", name=");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8);	r9.<org.apache.log4j.jmx.AppenderDynamicMBean: javax.management.MBeanServer server> = r2;	$r10 = r9.<org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Appender appender>;	$r11 = interfaceinvoke $r10.<org.apache.log4j.Appender: org.apache.log4j.Layout getLayout()>();	virtualinvoke r9.<org.apache.log4j.jmx.AppenderDynamicMBean: void registerLayoutMBean(org.apache.log4j.Layout)>($r11);	return r5
;block_num 1