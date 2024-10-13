(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var700 0)
(declare-sort var1892 0)
(declare-sort var3412 0)
(declare-sort var2776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var700_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun initConfiguration/1097963384 (var700) void)
(declare-fun findUserSpecifiedLogClassName/-487640286 (var700) String)
(declare-fun createLogFromClass/1434645975 (var700 String String Bool) var3412)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun informUponSimilarName/738058869 (var700 String String String) void)
(declare-fun var2776-init () var2776)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1163573448 (var2776 String) void)
(declare-const null-var700 var700)
(declare-const null-String String)
(declare-const null-var3412 var3412)
(declare-const var3918 var700) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3918 null-var700)))
(declare-const var981 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var981 null-String)))
(define-const var2688 Bool var700_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>() 
(assert (= (ite var2688 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (initConfiguration/1097963384 var3918)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>() 

(declare-const var3918!1 var700)
(define-const var1209 var3412 null-var3412) ; Statement: r15 = null 
(assert true)
(define-const var950 String (findUserSpecifiedLogClassName/-487640286 var3918!1)) ; Statement: $r14 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String findUserSpecifiedLogClassName()>() 
 ; Statement: if $r14 == null goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (= var950 null-String))) ; Negate: Cond: $r14 == null  
(define-const var3355 Bool var700_isDiagnosticsEnabled/-1107982053) ; Statement: $z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z2 == 0 goto $r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1) 
(assert (= (ite var3355 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3567 var3412 (createLogFromClass/1434645975 var3918!1 var950 var981 (ite (= 1 1) true false))) ; Statement: $r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1) 
 ; Statement: if $r13 != null goto return $r13 
(assert (not (not (= var3567 null-var3412)))) ; Negate: Cond: $r13 != null  
(define-const var1618 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1618 "User-specified log class \u0027")) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("User-specified log class \'") 
(declare-const var1618!1 String)
(assert (= var1618!1 "User-specified log class \u0027"))
(assert true)
;(assert (append/672562846 var1618!1 var950)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1618!2 String)
(assert (= var1618!2 (str.++ var1618!1 var950)))
(assert true)
;(assert (append/672562846 var1618!2 "\u0027 cannot be found or is not useable.")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' cannot be found or is not useable.") 
(declare-const var1618!3 String)
(assert (= var1618!3 (str.++ var1618!2 "\u0027 cannot be found or is not useable.")))
(assert true)
;(assert (informUponSimilarName/738058869 var3918!1 var1618!3 var950 "org.apache.commons.logging.impl.Log4JLogger")) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.Log4JLogger") 

(declare-const var3918!2 var700)
(declare-const var1618!4 String)
(declare-const var950!1 String)
(declare-const var2454 String)
(assert true)
;(assert (informUponSimilarName/738058869 var3918!2 var1618!4 var950!1 "org.apache.commons.logging.impl.Jdk14Logger")) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.Jdk14Logger") 

(declare-const var3918!3 var700)
(declare-const var1618!5 String)
(declare-const var950!2 String)
(declare-const var1108 String)
(assert true)
;(assert (informUponSimilarName/738058869 var3918!3 var1618!5 var950!2 "org.apache.commons.logging.impl.Jdk13LumberjackLogger")) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.Jdk13LumberjackLogger") 

(declare-const var3918!4 var700)
(declare-const var1618!6 String)
(declare-const var950!3 String)
(declare-const var1012 String)
(assert true)
;(assert (informUponSimilarName/738058869 var3918!4 var1618!6 var950!3 "org.apache.commons.logging.impl.SimpleLog")) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.SimpleLog") 

(declare-const var3918!5 var700)
(declare-const var1618!7 String)
(declare-const var950!4 String)
(declare-const var1155 String)
(define-const var2071 var2776 var2776-init) ; Statement: $r6 = new org.apache.commons.logging.LogConfigurationException 
(assert true)
(define-const var714 String (toString/-2075883882 var1618!7)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1163573448 var2071 var714)) ; Statement: specialinvoke $r6.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r7) 

(declare-const var2071!1 var2776)
(declare-const var714!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var700_isDiagnosticsEnabled/-1107982053=([], boolean), initConfiguration/1097963384=([org.apache.commons.logging.impl.LogFactoryImpl], void), findUserSpecifiedLogClassName/-487640286=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.String), createLogFromClass/1434645975=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String, java.lang.String, boolean], org.apache.commons.logging.Log), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), informUponSimilarName/738058869=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.StringBuilder, java.lang.String, java.lang.String], void), var2776-init=([], org.apache.commons.logging.LogConfigurationException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1163573448=([org.apache.commons.logging.LogConfigurationException, java.lang.String], void)}
; {var700=org.apache.commons.logging.impl.LogFactoryImpl, var3918=r0, var981=r3, var1892=null_type, var2688=$z0, var3412=org.apache.commons.logging.Log, var1209=r15, var950=$r14, var3355=$z2, var3567=$r13, var1618=$r5, var2454="org.apache.commons.logging.impl.Log4JLogger", var1108="org.apache.commons.logging.impl.Jdk14Logger", var1012="org.apache.commons.logging.impl.Jdk13LumberjackLogger", var1155="org.apache.commons.logging.impl.SimpleLog", var2776=org.apache.commons.logging.LogConfigurationException, var2071=$r6, var714=$r7}
; {org.apache.commons.logging.impl.LogFactoryImpl=var700, r0=var3918, r3=var981, null_type=var1892, $z0=var2688, org.apache.commons.logging.Log=var3412, r15=var1209, $r14=var950, $z2=var3355, $r13=var3567, $r5=var1618, "org.apache.commons.logging.impl.Log4JLogger"=var2454, "org.apache.commons.logging.impl.Jdk14Logger"=var1108, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"=var1012, "org.apache.commons.logging.impl.SimpleLog"=var1155, org.apache.commons.logging.LogConfigurationException=var2776, $r6=var2071, $r7=var714}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>();	specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>();	r15 = null;	$r14 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String findUserSpecifiedLogClassName()>();	if $r14 == null goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z2 == 0 goto $r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1);	$r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1);	if $r13 != null goto return $r13;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("User-specified log class \'");	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' cannot be found or is not useable.");	specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.Log4JLogger");	specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.Jdk14Logger");	specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.Jdk13LumberjackLogger");	specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void informUponSimilarName(java.lang.StringBuilder,java.lang.String,java.lang.String)>($r5, $r14, "org.apache.commons.logging.impl.SimpleLog");	$r6 = new org.apache.commons.logging.LogConfigurationException;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 5