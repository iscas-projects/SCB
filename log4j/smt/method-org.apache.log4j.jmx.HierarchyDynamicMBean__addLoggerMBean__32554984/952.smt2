(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1718 0)
(declare-sort var1726 0)
(declare-sort var458 0)
(declare-sort var589 0)
(declare-sort var3355 0)
(declare-sort var1533 0)
(declare-sort var3038 0)
(declare-sort var3952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var458) String)
(declare-fun cast-from-var1726-to-var458 (var1726) var458)
(declare-fun var3355-init () var3355)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/-1766755934 (var458 var3038 var3952) void)
(declare-fun cast-from-String-to-var3038 (String) var3038)
(declare-fun cast-from-var1533-to-var3952 (var1533) var3952)
(declare-const null-var1718 var1718)
(declare-const null-var1726 var1726)
(declare-const null-var589 var589)
(declare-const null-var1533 var1533)
(declare-const var1718-log var1726)
(declare-const var1337 var1718) ; Statement: r4 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean 
(assert (not (= var1337 null-var1718)))
(declare-const var1167 var1726) ; Statement: r0 := @parameter0: org.apache.log4j.Logger 
(assert (not (= var1167 null-var1726)))
(assert true)
(define-const var2266 String (getName/1326171653 (cast-from-var1726-to-var458 var1167))) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
(define-const var807 var589 null-var589) ; Statement: r44 = null 
(define-const var2484 var3355 var3355-init) ; Statement: $r2 = new org.apache.log4j.jmx.LoggerDynamicMBean 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1237 var1533) ; Statement: $r30 := @caughtexception 
(assert (not (= var1237 null-var1533)))
(define-const var1347 var1726 var1718-log) ; Statement: $r32 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log> 
(define-const var3730 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3730)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3730!1 String)
(assert true)
(define-const var2672 String (append/1560614132 var3730!1 "Could not add loggerMBean for [")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add loggerMBean for [") 
(declare-const var3730!2 String)
(assert (str.prefixof var3730!1 var3730!2))
(assert true)
(define-const var2205 String (append/1560614132 var2672 var2266)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2672!1 String)
(assert (str.prefixof var2672 var2672!1))
(assert true)
(define-const var3199 String (append/1560614132 var2205 "].")) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2205!1 String)
(assert (str.prefixof var2205 var2205!1))
(assert true)
(define-const var2451 String (toString/-222306083 var3199)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var1726-to-var458 var1347) (cast-from-String-to-var3038 var2451) (cast-from-var1533-to-var3952 var1237))) ; Statement: virtualinvoke $r32.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r36, $r30) 

(declare-const var1347!1 var1726)
(declare-const var2451!1 String)
(declare-const var1237!1 var1533)
(assert true) ; Non Conditional
 ; Statement: return r44 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var1726-to-var458=([org.apache.log4j.Logger], org.apache.log4j.Category), var3355-init=([], org.apache.log4j.jmx.LoggerDynamicMBean), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-String-to-var3038=([java.lang.String], java.lang.Object), cast-from-var1533-to-var3952=([java.lang.RuntimeException], java.lang.Throwable)}
; {var1718=org.apache.log4j.jmx.HierarchyDynamicMBean, var1337=r4, var1726=org.apache.log4j.Logger, var1167=r0, var458=org.apache.log4j.Category, var2266=r1, var589=javax.management.ObjectName, var807=r44, var3355=org.apache.log4j.jmx.LoggerDynamicMBean, var2484=$r2, var1533=java.lang.RuntimeException, var1237=$r30, var1347=$r32, var3730=$r31, var2672=$r33, var2205=$r34, var3199=$r35, var2451=$r36, var3038=java.lang.Object, var3952=java.lang.Throwable}
; {org.apache.log4j.jmx.HierarchyDynamicMBean=var1718, r4=var1337, org.apache.log4j.Logger=var1726, r0=var1167, org.apache.log4j.Category=var458, r1=var2266, javax.management.ObjectName=var589, r44=var807, org.apache.log4j.jmx.LoggerDynamicMBean=var3355, $r2=var2484, java.lang.RuntimeException=var1533, $r30=var1237, $r32=var1347, $r31=var3730, $r33=var2672, $r34=var2205, $r35=var3199, $r36=var2451, java.lang.Object=var3038, java.lang.Throwable=var3952}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean;	r0 := @parameter0: org.apache.log4j.Logger;	r1 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	r44 = null;	$r2 = new org.apache.log4j.jmx.LoggerDynamicMBean;	$r30 := @caughtexception;	$r32 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log>;	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r33 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not add loggerMBean for [");	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r36 = virtualinvoke $r35.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r32.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r36, $r30);	return r44
;block_num 3