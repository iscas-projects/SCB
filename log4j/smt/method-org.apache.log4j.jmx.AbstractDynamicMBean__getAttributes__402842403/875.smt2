(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3555 0)
(declare-sort var915 0)
(declare-sort var805 0)
(declare-sort var3394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var915-init () var915)
(declare-fun var805-init () var805)
(declare-fun <init>/875830710 (var805 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-1522311581 (var3555) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var915 var3394 String) void)
(declare-fun cast-from-var805-to-var3394 (var805) var3394)
(declare-const null-var3555 var3555)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var328 var3555) ; Statement: r2 := @this: org.apache.log4j.jmx.AbstractDynamicMBean 
(assert (not (= var328 null-var3555)))
(declare-const var651 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var651 null-__Array__Int__String__)))
 ; Statement: if r0 != null goto $r1 = new javax.management.AttributeList 
(assert (not (not (= var651 null-__Array__Int__String__)))) ; Negate: Cond: r0 != null  
(define-const var3688 var915 var915-init) ; Statement: $r6 = new javax.management.RuntimeOperationsException 
(define-const var695 var805 var805-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var695 "attributeNames[] cannot be null")) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("attributeNames[] cannot be null") 

(declare-const var695!1 var805)
(declare-const var2006 String)
(define-const var296 String String-init) ; Statement: $r8 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var296)) ; Statement: specialinvoke $r8.<java.lang.StringBuffer: void <init>()>() 

(declare-const var296!1 String)
(assert true)
(define-const var3684 String (append/1560614132 var296!1 "Cannot invoke a getter of ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ") 
(declare-const var296!2 String)
(assert (str.prefixof var296!1 var296!2))
(define-const var2941 String (dClassName/-1522311581 var328)) ; Statement: $r9 = r2.<org.apache.log4j.jmx.AbstractDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var2297 String (append/1560614132 var3684 var2941)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var3684!1 String)
(assert (str.prefixof var3684 var3684!1))
(assert true)
(define-const var1 String (toString/-222306083 var2297)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var3688 (cast-from-var805-to-var3394 var695!1) var1)) ; Statement: specialinvoke $r6.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r7, $r12) 

(declare-const var3688!1 var915)
(declare-const var695!2 var805)
(declare-const var1!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var915-init=([], javax.management.RuntimeOperationsException), var805-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-1522311581=([org.apache.log4j.jmx.AbstractDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var805-to-var3394=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var3555=org.apache.log4j.jmx.AbstractDynamicMBean, var328=r2, var651=r0, var915=javax.management.RuntimeOperationsException, var3688=$r6, var805=java.lang.IllegalArgumentException, var695=$r7, var2006="attributeNames[] cannot be null", var296=$r8, var3684=$r10, var2941=$r9, var2297=$r11, var1=$r12, var3394=java.lang.RuntimeException}
; {org.apache.log4j.jmx.AbstractDynamicMBean=var3555, r2=var328, r0=var651, javax.management.RuntimeOperationsException=var915, $r6=var3688, java.lang.IllegalArgumentException=var805, $r7=var695, "attributeNames[] cannot be null"=var2006, $r8=var296, $r10=var3684, $r9=var2941, $r11=var2297, $r12=var1, java.lang.RuntimeException=var3394}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.jmx.AbstractDynamicMBean;	r0 := @parameter0: java.lang.String[];	if r0 != null goto $r1 = new javax.management.AttributeList;	$r6 = new javax.management.RuntimeOperationsException;	$r7 = new java.lang.IllegalArgumentException;	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("attributeNames[] cannot be null");	$r8 = new java.lang.StringBuffer;	specialinvoke $r8.<java.lang.StringBuffer: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ");	$r9 = r2.<org.apache.log4j.jmx.AbstractDynamicMBean: java.lang.String dClassName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r6.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r7, $r12);	throw $r6
;block_num 2