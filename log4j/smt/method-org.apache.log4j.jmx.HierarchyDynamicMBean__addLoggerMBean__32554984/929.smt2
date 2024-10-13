(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var522 0)
(declare-sort var1114 0)
(declare-sort var238 0)
(declare-sort var2182 0)
(declare-sort var2487 0)
(declare-sort var3873 0)
(declare-sort var747 0)
(declare-sort var710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var238) String)
(declare-fun cast-from-var1114-to-var238 (var1114) var238)
(declare-fun var2487-init () var2487)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/-1766755934 (var238 var747 var710) void)
(declare-fun cast-from-String-to-var747 (String) var747)
(declare-fun cast-from-var3873-to-var710 (var3873) var710)
(declare-const null-var522 var522)
(declare-const null-var1114 var1114)
(declare-const null-var2182 var2182)
(declare-const null-var3873 var3873)
(declare-const var522-log var1114)
(declare-const var785 var522) ; Statement: r4 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean 
(assert (not (= var785 null-var522)))
(declare-const var404 var1114) ; Statement: r0 := @parameter0: org.apache.log4j.Logger 
(assert (not (= var404 null-var1114)))
(assert true)
(define-const var1021 String (getName/1326171653 (cast-from-var1114-to-var238 var404))) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
(define-const var3261 var2182 null-var2182) ; Statement: r44 = null 
(define-const var118 var2487 var2487-init) ; Statement: $r2 = new org.apache.log4j.jmx.LoggerDynamicMBean 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3010 var3873) ; Statement: $r37 := @caughtexception 
(assert (not (= var3010 null-var3873)))
(define-const var1071 var1114 var522-log) ; Statement: $r39 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log> 
(define-const var3743 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3743)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3743!1 String)
(assert true)
(define-const var1595 String (append/1560614132 var3743!1 "Could not add loggerMBean for [")) ; Statement: $r40 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add loggerMBean for [") 
(declare-const var3743!2 String)
(assert (str.prefixof var3743!1 var3743!2))
(assert true)
(define-const var1060 String (append/1560614132 var1595 var1021)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1595!1 String)
(assert (str.prefixof var1595 var1595!1))
(assert true)
(define-const var112 String (append/1560614132 var1060 "].")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1060!1 String)
(assert (str.prefixof var1060 var1060!1))
(assert true)
(define-const var2825 String (toString/-222306083 var112)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var1114-to-var238 var1071) (cast-from-String-to-var747 var2825) (cast-from-var3873-to-var710 var3010))) ; Statement: virtualinvoke $r39.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r43, $r37) 

(declare-const var1071!1 var1114)
(declare-const var2825!1 String)
(declare-const var3010!1 var3873)
 ; Statement: goto [?= return r44] 
(assert true) ; Non Conditional
 ; Statement: return r44 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var1114-to-var238=([org.apache.log4j.Logger], org.apache.log4j.Category), var2487-init=([], org.apache.log4j.jmx.LoggerDynamicMBean), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-String-to-var747=([java.lang.String], java.lang.Object), cast-from-var3873-to-var710=([javax.management.JMException], java.lang.Throwable)}
; {var522=org.apache.log4j.jmx.HierarchyDynamicMBean, var785=r4, var1114=org.apache.log4j.Logger, var404=r0, var238=org.apache.log4j.Category, var1021=r1, var2182=javax.management.ObjectName, var3261=r44, var2487=org.apache.log4j.jmx.LoggerDynamicMBean, var118=$r2, var3873=javax.management.JMException, var3010=$r37, var1071=$r39, var3743=$r38, var1595=$r40, var1060=$r41, var112=$r42, var2825=$r43, var747=java.lang.Object, var710=java.lang.Throwable}
; {org.apache.log4j.jmx.HierarchyDynamicMBean=var522, r4=var785, org.apache.log4j.Logger=var1114, r0=var404, org.apache.log4j.Category=var238, r1=var1021, javax.management.ObjectName=var2182, r44=var3261, org.apache.log4j.jmx.LoggerDynamicMBean=var2487, $r2=var118, javax.management.JMException=var3873, $r37=var3010, $r39=var1071, $r38=var3743, $r40=var1595, $r41=var1060, $r42=var112, $r43=var2825, java.lang.Object=var747, java.lang.Throwable=var710}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean;	r0 := @parameter0: org.apache.log4j.Logger;	r1 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	r44 = null;	$r2 = new org.apache.log4j.jmx.LoggerDynamicMBean;	$r37 := @caughtexception;	$r39 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log>;	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r40 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add loggerMBean for [");	$r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r42 = virtualinvoke $r41.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r39.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r43, $r37);	goto [?= return r44];	return r44
;block_num 3