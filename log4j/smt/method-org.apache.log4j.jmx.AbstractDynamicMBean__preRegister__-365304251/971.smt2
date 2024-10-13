(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3038 0)
(declare-sort var2871 0)
(declare-sort var1345 0)
(declare-sort var3156 0)
(declare-sort var15 0)
(declare-sort var2158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLogger/1561089098 (var3038) var3156)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var15) String)
(declare-fun cast-from-var2871-to-var15 (var2871) var15)
(declare-fun cast-from-var1345-to-var15 (var1345) var15)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var2158 var15) void)
(declare-fun cast-from-var3156-to-var2158 (var3156) var2158)
(declare-fun cast-from-String-to-var15 (String) var15)
(declare-fun server/-1522311581 (var3038) var2871)
(declare-const null-var3038 var3038)
(declare-const null-var2871 var2871)
(declare-const null-var1345 var1345)
(declare-const var299 var3038) ; Statement: r0 := @this: org.apache.log4j.jmx.AbstractDynamicMBean 
(assert (not (= var299 null-var3038)))
(declare-const var1886 var2871) ; Statement: r2 := @parameter0: javax.management.MBeanServer 
(assert (not (= var1886 null-var2871)))
(declare-const var1102 var1345) ; Statement: r5 := @parameter1: javax.management.ObjectName 
(assert (not (= var1102 null-var1345)))
(assert true)
(define-const var2676 var3156 (getLogger/1561089098 var299)) ; Statement: $r9 = virtualinvoke r0.<org.apache.log4j.jmx.AbstractDynamicMBean: org.apache.log4j.Logger getLogger()>() 
(define-const var273 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var273)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var273!1 String)
(assert true)
(define-const var3892 String (append/1560614132 var273!1 "preRegister called. Server=")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("preRegister called. Server=") 
(declare-const var273!2 String)
(assert (str.prefixof var273!1 var273!2))
(assert true)
(define-const var3116 String (append/-143899486 var3892 (cast-from-var2871-to-var15 var1886))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2) 
(assert true)
(define-const var1204 String (append/1560614132 var3116 ", name=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", name=") 
(declare-const var3116!1 String)
(assert (str.prefixof var3116 var3116!1))
(assert true)
(define-const var3221 String (append/-143899486 var1204 (cast-from-var1345-to-var15 var1102))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r5) 
(assert true)
(define-const var3052 String (toString/-222306083 var3221)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var3156-to-var2158 var2676) (cast-from-String-to-var15 var3052))) ; Statement: virtualinvoke $r9.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8) 

(declare-const var2676!1 var3156)
(declare-const var3052!1 String)
(declare-const var299!1 var3038)
(assert (not (= var299!1 null-var3038)))
(assert (= (server/-1522311581 var299!1) var1886)) ; Statement: r0.<org.apache.log4j.jmx.AbstractDynamicMBean: javax.management.MBeanServer server> = r2 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLogger/1561089098=([org.apache.log4j.jmx.AbstractDynamicMBean], org.apache.log4j.Logger), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2871-to-var15=([javax.management.MBeanServer], java.lang.Object), cast-from-var1345-to-var15=([javax.management.ObjectName], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var3156-to-var2158=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var15=([java.lang.String], java.lang.Object), server/-1522311581=([org.apache.log4j.jmx.AbstractDynamicMBean], javax.management.MBeanServer)}
; {var3038=org.apache.log4j.jmx.AbstractDynamicMBean, var299=r0, var2871=javax.management.MBeanServer, var1886=r2, var1345=javax.management.ObjectName, var1102=r5, var3156=org.apache.log4j.Logger, var2676=$r9, var273=$r1, var3892=$r3, var15=java.lang.Object, var3116=$r4, var1204=$r6, var3221=$r7, var3052=$r8, var2158=org.apache.log4j.Category}
; {org.apache.log4j.jmx.AbstractDynamicMBean=var3038, r0=var299, javax.management.MBeanServer=var2871, r2=var1886, javax.management.ObjectName=var1345, r5=var1102, org.apache.log4j.Logger=var3156, $r9=var2676, $r1=var273, $r3=var3892, java.lang.Object=var15, $r4=var3116, $r6=var1204, $r7=var3221, $r8=var3052, org.apache.log4j.Category=var2158}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.jmx.AbstractDynamicMBean;	r2 := @parameter0: javax.management.MBeanServer;	r5 := @parameter1: javax.management.ObjectName;	$r9 = virtualinvoke r0.<org.apache.log4j.jmx.AbstractDynamicMBean: org.apache.log4j.Logger getLogger()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("preRegister called. Server=");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", name=");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r9.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8);	r0.<org.apache.log4j.jmx.AbstractDynamicMBean: javax.management.MBeanServer server> = r2;	return r5
;block_num 1