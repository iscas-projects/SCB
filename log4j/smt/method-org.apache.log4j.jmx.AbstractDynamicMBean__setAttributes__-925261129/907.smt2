(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort var1883 0)
(declare-sort var50 0)
(declare-sort var3253 0)
(declare-sort var3465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var50-init () var50)
(declare-fun var3253-init () var3253)
(declare-fun <init>/875830710 (var3253 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-1522311581 (var1964) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var50 var3465 String) void)
(declare-fun cast-from-var3253-to-var3465 (var3253) var3465)
(declare-const null-var1964 var1964)
(declare-const null-var1883 var1883)
(declare-const var491 var1964) ; Statement: r5 := @this: org.apache.log4j.jmx.AbstractDynamicMBean 
(assert (not (= var491 null-var1964)))
(declare-const var3789 var1883) ; Statement: r0 := @parameter0: javax.management.AttributeList 
(assert (not (= var3789 null-var1883)))
 ; Statement: if r0 != null goto $r1 = new javax.management.AttributeList 
(assert (not (not (= var3789 null-var1883)))) ; Negate: Cond: r0 != null  
(define-const var3559 var50 var50-init) ; Statement: $r8 = new javax.management.RuntimeOperationsException 
(define-const var2723 var3253 var3253-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2723 "AttributeList attributes cannot be null")) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("AttributeList attributes cannot be null") 

(declare-const var2723!1 var3253)
(declare-const var1268 String)
(define-const var3218 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3218)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3218!1 String)
(assert true)
(define-const var1170 String (append/1560614132 var3218!1 "Cannot invoke a setter of ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ") 
(declare-const var3218!2 String)
(assert (str.prefixof var3218!1 var3218!2))
(define-const var2945 String (dClassName/-1522311581 var491)) ; Statement: $r11 = r5.<org.apache.log4j.jmx.AbstractDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var3736 String (append/1560614132 var1170 var2945)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var1170!1 String)
(assert (str.prefixof var1170 var1170!1))
(assert true)
(define-const var3283 String (toString/-222306083 var3736)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var3559 (cast-from-var3253-to-var3465 var2723!1) var3283)) ; Statement: specialinvoke $r8.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r9, $r14) 

(declare-const var3559!1 var50)
(declare-const var2723!2 var3253)
(declare-const var3283!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var50-init=([], javax.management.RuntimeOperationsException), var3253-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-1522311581=([org.apache.log4j.jmx.AbstractDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var3253-to-var3465=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var1964=org.apache.log4j.jmx.AbstractDynamicMBean, var491=r5, var1883=javax.management.AttributeList, var3789=r0, var50=javax.management.RuntimeOperationsException, var3559=$r8, var3253=java.lang.IllegalArgumentException, var2723=$r9, var1268="AttributeList attributes cannot be null", var3218=$r10, var1170=$r12, var2945=$r11, var3736=$r13, var3283=$r14, var3465=java.lang.RuntimeException}
; {org.apache.log4j.jmx.AbstractDynamicMBean=var1964, r5=var491, javax.management.AttributeList=var1883, r0=var3789, javax.management.RuntimeOperationsException=var50, $r8=var3559, java.lang.IllegalArgumentException=var3253, $r9=var2723, "AttributeList attributes cannot be null"=var1268, $r10=var3218, $r12=var1170, $r11=var2945, $r13=var3736, $r14=var3283, java.lang.RuntimeException=var3465}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.log4j.jmx.AbstractDynamicMBean;	r0 := @parameter0: javax.management.AttributeList;	if r0 != null goto $r1 = new javax.management.AttributeList;	$r8 = new javax.management.RuntimeOperationsException;	$r9 = new java.lang.IllegalArgumentException;	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("AttributeList attributes cannot be null");	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ");	$r11 = r5.<org.apache.log4j.jmx.AbstractDynamicMBean: java.lang.String dClassName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r8.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r9, $r14);	throw $r8
;block_num 2