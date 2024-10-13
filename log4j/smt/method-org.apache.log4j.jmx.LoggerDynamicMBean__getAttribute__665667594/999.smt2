(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3387 0)
(declare-sort var8 0)
(declare-sort var2740 0)
(declare-sort var593 0)
(declare-sort var3558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2740-init () var2740)
(declare-fun var593-init () var593)
(declare-fun <init>/875830710 (var593 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-1781109871 (var3387) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var2740 var3558 String) void)
(declare-fun cast-from-var593-to-var3558 (var593) var3558)
(declare-const null-var3387 var3387)
(declare-const null-String String)
(declare-const var1803 var3387) ; Statement: r1 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var1803 null-var3387)))
(declare-const var3425 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3425 null-String)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("name") 
(assert (not (not (= var3425 null-String)))) ; Negate: Cond: r0 != null  
(define-const var3577 var2740 var2740-init) ; Statement: $r11 = new javax.management.RuntimeOperationsException 
(define-const var2724 var593 var593-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2724 "Attribute name cannot be null")) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null") 

(declare-const var2724!1 var593)
(declare-const var1684 String)
(define-const var2063 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2063)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2063!1 String)
(assert true)
(define-const var954 String (append/1560614132 var2063!1 "Cannot invoke a getter of ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ") 
(declare-const var2063!2 String)
(assert (str.prefixof var2063!1 var2063!2))
(define-const var695 String (dClassName/-1781109871 var1803)) ; Statement: $r14 = r1.<org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var3084 String (append/1560614132 var954 var695)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var954!1 String)
(assert (str.prefixof var954 var954!1))
(assert true)
(define-const var1965 String (append/1560614132 var3084 " with null attribute name")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name") 
(declare-const var3084!1 String)
(assert (str.prefixof var3084 var3084!1))
(assert true)
(define-const var2132 String (toString/-222306083 var1965)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var3577 (cast-from-var593-to-var3558 var2724!1) var2132)) ; Statement: specialinvoke $r11.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r12, $r18) 

(declare-const var3577!1 var2740)
(declare-const var2724!2 var593)
(declare-const var2132!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2740-init=([], javax.management.RuntimeOperationsException), var593-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-1781109871=([org.apache.log4j.jmx.LoggerDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var593-to-var3558=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var3387=org.apache.log4j.jmx.LoggerDynamicMBean, var1803=r1, var3425=r0, var8=null_type, var2740=javax.management.RuntimeOperationsException, var3577=$r11, var593=java.lang.IllegalArgumentException, var2724=$r12, var1684="Attribute name cannot be null", var2063=$r13, var954=$r15, var695=$r14, var3084=$r16, var1965=$r17, var2132=$r18, var3558=java.lang.RuntimeException}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var3387, r1=var1803, r0=var3425, null_type=var8, javax.management.RuntimeOperationsException=var2740, $r11=var3577, java.lang.IllegalArgumentException=var593, $r12=var2724, "Attribute name cannot be null"=var1684, $r13=var2063, $r15=var954, $r14=var695, $r16=var3084, $r17=var1965, $r18=var2132, java.lang.RuntimeException=var3558}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r0 := @parameter0: java.lang.String;	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("name");	$r11 = new javax.management.RuntimeOperationsException;	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null");	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ");	$r14 = r1.<org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.String dClassName>;	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name");	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r11.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r12, $r18);	throw $r11
;block_num 2