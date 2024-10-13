(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2290 0)
(declare-sort var817 0)
(declare-sort var1365 0)
(declare-sort var3475 0)
(declare-sort var699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1365-init () var1365)
(declare-fun var3475-init () var3475)
(declare-fun <init>/875830710 (var3475 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-1781109871 (var2290) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var1365 var699 String) void)
(declare-fun cast-from-var3475-to-var699 (var3475) var699)
(declare-const null-var2290 var2290)
(declare-const null-var817 var817)
(declare-const var160 var2290) ; Statement: r7 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var160 null-var2290)))
(declare-const var1707 var817) ; Statement: r0 := @parameter0: javax.management.Attribute 
(assert (not (= var1707 null-var817)))
 ; Statement: if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>() 
(assert (not (not (= var1707 null-var817)))) ; Negate: Cond: r0 != null  
(define-const var1595 var1365 var1365-init) ; Statement: $r24 = new javax.management.RuntimeOperationsException 
(define-const var655 var3475 var3475-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var655 "Attribute cannot be null")) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null") 

(declare-const var655!1 var3475)
(declare-const var2030 String)
(define-const var285 String String-init) ; Statement: $r26 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var285)) ; Statement: specialinvoke $r26.<java.lang.StringBuffer: void <init>()>() 

(declare-const var285!1 String)
(assert true)
(define-const var834 String (append/1560614132 var285!1 "Cannot invoke a setter of ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ") 
(declare-const var285!2 String)
(assert (str.prefixof var285!1 var285!2))
(define-const var3664 String (dClassName/-1781109871 var160)) ; Statement: $r27 = r7.<org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var867 String (append/1560614132 var834 var3664)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r27) 
(declare-const var834!1 String)
(assert (str.prefixof var834 var834!1))
(assert true)
(define-const var3646 String (append/1560614132 var867 " with null attribute")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute") 
(declare-const var867!1 String)
(assert (str.prefixof var867 var867!1))
(assert true)
(define-const var1850 String (toString/-222306083 var3646)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var1595 (cast-from-var3475-to-var699 var655!1) var1850)) ; Statement: specialinvoke $r24.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r25, $r31) 

(declare-const var1595!1 var1365)
(declare-const var655!2 var3475)
(declare-const var1850!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1365-init=([], javax.management.RuntimeOperationsException), var3475-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-1781109871=([org.apache.log4j.jmx.LoggerDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var3475-to-var699=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var2290=org.apache.log4j.jmx.LoggerDynamicMBean, var160=r7, var817=javax.management.Attribute, var1707=r0, var1365=javax.management.RuntimeOperationsException, var1595=$r24, var3475=java.lang.IllegalArgumentException, var655=$r25, var2030="Attribute cannot be null", var285=$r26, var834=$r28, var3664=$r27, var867=$r29, var3646=$r30, var1850=$r31, var699=java.lang.RuntimeException}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var2290, r7=var160, javax.management.Attribute=var817, r0=var1707, javax.management.RuntimeOperationsException=var1365, $r24=var1595, java.lang.IllegalArgumentException=var3475, $r25=var655, "Attribute cannot be null"=var2030, $r26=var285, $r28=var834, $r27=var3664, $r29=var867, $r30=var3646, $r31=var1850, java.lang.RuntimeException=var699}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r0 := @parameter0: javax.management.Attribute;	if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>();	$r24 = new javax.management.RuntimeOperationsException;	$r25 = new java.lang.IllegalArgumentException;	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null");	$r26 = new java.lang.StringBuffer;	specialinvoke $r26.<java.lang.StringBuffer: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ");	$r27 = r7.<org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String dClassName>;	$r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute");	$r31 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r24.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r25, $r31);	throw $r24
;block_num 2