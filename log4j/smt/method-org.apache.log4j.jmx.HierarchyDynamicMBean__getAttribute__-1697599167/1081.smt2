(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var483 0)
(declare-sort var2752 0)
(declare-sort var2490 0)
(declare-sort var2486 0)
(declare-sort var51 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2490-init () var2490)
(declare-fun var2486-init () var2486)
(declare-fun <init>/875830710 (var2486 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-1744593008 (var483) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var2490 var51 String) void)
(declare-fun cast-from-var2486-to-var51 (var2486) var51)
(declare-const null-var483 var483)
(declare-const null-String String)
(declare-const var2468 var483) ; Statement: r7 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean 
(assert (not (= var2468 null-var483)))
(declare-const var801 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var801 null-String)))
 ; Statement: if r0 != null goto $r2 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log> 
(assert (not (not (= var801 null-String)))) ; Negate: Cond: r0 != null  
(define-const var280 var2490 var2490-init) ; Statement: $r21 = new javax.management.RuntimeOperationsException 
(define-const var746 var2486 var2486-init) ; Statement: $r22 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var746 "Attribute name cannot be null")) ; Statement: specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null") 

(declare-const var746!1 var2486)
(declare-const var1541 String)
(define-const var660 String String-init) ; Statement: $r23 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var660)) ; Statement: specialinvoke $r23.<java.lang.StringBuffer: void <init>()>() 

(declare-const var660!1 String)
(assert true)
(define-const var3272 String (append/1560614132 var660!1 "Cannot invoke a getter of ")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ") 
(declare-const var660!2 String)
(assert (str.prefixof var660!1 var660!2))
(define-const var491 String (dClassName/-1744593008 var2468)) ; Statement: $r24 = r7.<org.apache.log4j.jmx.HierarchyDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var2419 String (append/1560614132 var3272 var491)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24) 
(declare-const var3272!1 String)
(assert (str.prefixof var3272 var3272!1))
(assert true)
(define-const var2574 String (append/1560614132 var2419 " with null attribute name")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name") 
(declare-const var2419!1 String)
(assert (str.prefixof var2419 var2419!1))
(assert true)
(define-const var2482 String (toString/-222306083 var2574)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var280 (cast-from-var2486-to-var51 var746!1) var2482)) ; Statement: specialinvoke $r21.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r22, $r28) 

(declare-const var280!1 var2490)
(declare-const var746!2 var2486)
(declare-const var2482!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var2490-init=([], javax.management.RuntimeOperationsException), var2486-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-1744593008=([org.apache.log4j.jmx.HierarchyDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var2486-to-var51=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var483=org.apache.log4j.jmx.HierarchyDynamicMBean, var2468=r7, var801=r0, var2752=null_type, var2490=javax.management.RuntimeOperationsException, var280=$r21, var2486=java.lang.IllegalArgumentException, var746=$r22, var1541="Attribute name cannot be null", var660=$r23, var3272=$r25, var491=$r24, var2419=$r26, var2574=$r27, var2482=$r28, var51=java.lang.RuntimeException}
; {org.apache.log4j.jmx.HierarchyDynamicMBean=var483, r7=var2468, r0=var801, null_type=var2752, javax.management.RuntimeOperationsException=var2490, $r21=var280, java.lang.IllegalArgumentException=var2486, $r22=var746, "Attribute name cannot be null"=var1541, $r23=var660, $r25=var3272, $r24=var491, $r26=var2419, $r27=var2574, $r28=var2482, java.lang.RuntimeException=var51}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log>;	$r21 = new javax.management.RuntimeOperationsException;	$r22 = new java.lang.IllegalArgumentException;	specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null");	$r23 = new java.lang.StringBuffer;	specialinvoke $r23.<java.lang.StringBuffer: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ");	$r24 = r7.<org.apache.log4j.jmx.HierarchyDynamicMBean: java.lang.String dClassName>;	$r26 = virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name");	$r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r21.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r22, $r28);	throw $r21
;block_num 2