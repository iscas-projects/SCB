(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3929 0)
(declare-sort var2984 0)
(declare-sort var2669 0)
(declare-sort var2948 0)
(declare-sort var3969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2669-init () var2669)
(declare-fun var2948-init () var2948)
(declare-fun <init>/875830710 (var2948 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-1744593008 (var3929) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var2669 var3969 String) void)
(declare-fun cast-from-var2948-to-var3969 (var2948) var3969)
(declare-const null-var3929 var3929)
(declare-const null-var2984 var2984)
(declare-const var2781 var3929) ; Statement: r3 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean 
(assert (not (= var2781 null-var3929)))
(declare-const var1458 var2984) ; Statement: r0 := @parameter0: javax.management.Attribute 
(assert (not (= var1458 null-var2984)))
 ; Statement: if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>() 
(assert (not (not (= var1458 null-var2984)))) ; Negate: Cond: r0 != null  
(define-const var1310 var2669 var2669-init) ; Statement: $r17 = new javax.management.RuntimeOperationsException 
(define-const var1036 var2948 var2948-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1036 "Attribute cannot be null")) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null") 

(declare-const var1036!1 var2948)
(declare-const var3438 String)
(define-const var258 String String-init) ; Statement: $r19 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var258)) ; Statement: specialinvoke $r19.<java.lang.StringBuffer: void <init>()>() 

(declare-const var258!1 String)
(assert true)
(define-const var1018 String (append/1560614132 var258!1 "Cannot invoke a setter of ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ") 
(declare-const var258!2 String)
(assert (str.prefixof var258!1 var258!2))
(define-const var1078 String (dClassName/-1744593008 var2781)) ; Statement: $r20 = r3.<org.apache.log4j.jmx.HierarchyDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var2593 String (append/1560614132 var1018 var1078)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var1018!1 String)
(assert (str.prefixof var1018 var1018!1))
(assert true)
(define-const var2214 String (append/1560614132 var2593 " with null attribute")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute") 
(declare-const var2593!1 String)
(assert (str.prefixof var2593 var2593!1))
(assert true)
(define-const var1284 String (toString/-222306083 var2214)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var1310 (cast-from-var2948-to-var3969 var1036!1) var1284)) ; Statement: specialinvoke $r17.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r18, $r24) 

(declare-const var1310!1 var2669)
(declare-const var1036!2 var2948)
(declare-const var1284!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2669-init=([], javax.management.RuntimeOperationsException), var2948-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-1744593008=([org.apache.log4j.jmx.HierarchyDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var2948-to-var3969=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var3929=org.apache.log4j.jmx.HierarchyDynamicMBean, var2781=r3, var2984=javax.management.Attribute, var1458=r0, var2669=javax.management.RuntimeOperationsException, var1310=$r17, var2948=java.lang.IllegalArgumentException, var1036=$r18, var3438="Attribute cannot be null", var258=$r19, var1018=$r21, var1078=$r20, var2593=$r22, var2214=$r23, var1284=$r24, var3969=java.lang.RuntimeException}
; {org.apache.log4j.jmx.HierarchyDynamicMBean=var3929, r3=var2781, javax.management.Attribute=var2984, r0=var1458, javax.management.RuntimeOperationsException=var2669, $r17=var1310, java.lang.IllegalArgumentException=var2948, $r18=var1036, "Attribute cannot be null"=var3438, $r19=var258, $r21=var1018, $r20=var1078, $r22=var2593, $r23=var2214, $r24=var1284, java.lang.RuntimeException=var3969}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean;	r0 := @parameter0: javax.management.Attribute;	if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>();	$r17 = new javax.management.RuntimeOperationsException;	$r18 = new java.lang.IllegalArgumentException;	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null");	$r19 = new java.lang.StringBuffer;	specialinvoke $r19.<java.lang.StringBuffer: void <init>()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ");	$r20 = r3.<org.apache.log4j.jmx.HierarchyDynamicMBean: java.lang.String dClassName>;	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute");	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r17.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r18, $r24);	throw $r17
;block_num 2