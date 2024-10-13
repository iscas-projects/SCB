(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1935 0)
(declare-sort var403 0)
(declare-sort var2718 0)
(declare-sort var2776 0)
(declare-sort var884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2718-init () var2718)
(declare-fun var2776-init () var2776)
(declare-fun <init>/875830710 (var2776 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-762586581 (var1935) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var2718 var884 String) void)
(declare-fun cast-from-var2776-to-var884 (var2776) var884)
(declare-const null-var1935 var1935)
(declare-const null-String String)
(declare-const var1159 var1935) ; Statement: r1 := @this: org.apache.log4j.jmx.LayoutDynamicMBean 
(assert (not (= var1159 null-var1935)))
(declare-const var3817 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3817 null-String)))
 ; Statement: if r0 != null goto $r2 = r1.<org.apache.log4j.jmx.LayoutDynamicMBean: java.util.Hashtable dynamicProps> 
(assert (not (not (= var3817 null-String)))) ; Negate: Cond: r0 != null  
(define-const var1243 var2718 var2718-init) ; Statement: $r24 = new javax.management.RuntimeOperationsException 
(define-const var1911 var2776 var2776-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1911 "Attribute name cannot be null")) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null") 

(declare-const var1911!1 var2776)
(declare-const var600 String)
(define-const var3596 String String-init) ; Statement: $r26 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3596)) ; Statement: specialinvoke $r26.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3596!1 String)
(assert true)
(define-const var503 String (append/1560614132 var3596!1 "Cannot invoke a getter of ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ") 
(declare-const var3596!2 String)
(assert (str.prefixof var3596!1 var3596!2))
(define-const var608 String (dClassName/-762586581 var1159)) ; Statement: $r27 = r1.<org.apache.log4j.jmx.LayoutDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var3926 String (append/1560614132 var503 var608)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r27) 
(declare-const var503!1 String)
(assert (str.prefixof var503 var503!1))
(assert true)
(define-const var1556 String (append/1560614132 var3926 " with null attribute name")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name") 
(declare-const var3926!1 String)
(assert (str.prefixof var3926 var3926!1))
(assert true)
(define-const var2119 String (toString/-222306083 var1556)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var1243 (cast-from-var2776-to-var884 var1911!1) var2119)) ; Statement: specialinvoke $r24.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r25, $r31) 

(declare-const var1243!1 var2718)
(declare-const var1911!2 var2776)
(declare-const var2119!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var2718-init=([], javax.management.RuntimeOperationsException), var2776-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-762586581=([org.apache.log4j.jmx.LayoutDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var2776-to-var884=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var1935=org.apache.log4j.jmx.LayoutDynamicMBean, var1159=r1, var3817=r0, var403=null_type, var2718=javax.management.RuntimeOperationsException, var1243=$r24, var2776=java.lang.IllegalArgumentException, var1911=$r25, var600="Attribute name cannot be null", var3596=$r26, var503=$r28, var608=$r27, var3926=$r29, var1556=$r30, var2119=$r31, var884=java.lang.RuntimeException}
; {org.apache.log4j.jmx.LayoutDynamicMBean=var1935, r1=var1159, r0=var3817, null_type=var403, javax.management.RuntimeOperationsException=var2718, $r24=var1243, java.lang.IllegalArgumentException=var2776, $r25=var1911, "Attribute name cannot be null"=var600, $r26=var3596, $r28=var503, $r27=var608, $r29=var3926, $r30=var1556, $r31=var2119, java.lang.RuntimeException=var884}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.jmx.LayoutDynamicMBean;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = r1.<org.apache.log4j.jmx.LayoutDynamicMBean: java.util.Hashtable dynamicProps>;	$r24 = new javax.management.RuntimeOperationsException;	$r25 = new java.lang.IllegalArgumentException;	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null");	$r26 = new java.lang.StringBuffer;	specialinvoke $r26.<java.lang.StringBuffer: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ");	$r27 = r1.<org.apache.log4j.jmx.LayoutDynamicMBean: java.lang.String dClassName>;	$r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name");	$r31 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r24.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r25, $r31);	throw $r24
;block_num 2