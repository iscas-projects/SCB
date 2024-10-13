(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var830 0)
(declare-sort var3791 0)
(declare-sort var3137 0)
(declare-sort var738 0)
(declare-sort var3582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3137-init () var3137)
(declare-fun var738-init () var738)
(declare-fun <init>/875830710 (var738 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/1256938504 (var830) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var3137 var3582 String) void)
(declare-fun cast-from-var738-to-var3582 (var738) var3582)
(declare-const null-var830 var830)
(declare-const null-String String)
(declare-const var2013 var830) ; Statement: r8 := @this: org.apache.log4j.jmx.AppenderDynamicMBean 
(assert (not (= var2013 null-var830)))
(declare-const var551 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var551 null-String)))
 ; Statement: if r0 != null goto $r2 = <org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Logger cat> 
(assert (not (not (= var551 null-String)))) ; Negate: Cond: r0 != null  
(define-const var2844 var3137 var3137-init) ; Statement: $r32 = new javax.management.RuntimeOperationsException 
(define-const var3506 var738 var738-init) ; Statement: $r33 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3506 "Attribute name cannot be null")) ; Statement: specialinvoke $r33.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null") 

(declare-const var3506!1 var738)
(declare-const var2211 String)
(define-const var2910 String String-init) ; Statement: $r34 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2910)) ; Statement: specialinvoke $r34.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2910!1 String)
(assert true)
(define-const var2962 String (append/1560614132 var2910!1 "Cannot invoke a getter of ")) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ") 
(declare-const var2910!2 String)
(assert (str.prefixof var2910!1 var2910!2))
(define-const var2688 String (dClassName/1256938504 var2013)) ; Statement: $r35 = r8.<org.apache.log4j.jmx.AppenderDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var1381 String (append/1560614132 var2962 var2688)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r35) 
(declare-const var2962!1 String)
(assert (str.prefixof var2962 var2962!1))
(assert true)
(define-const var3964 String (append/1560614132 var1381 " with null attribute name")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name") 
(declare-const var1381!1 String)
(assert (str.prefixof var1381 var1381!1))
(assert true)
(define-const var106 String (toString/-222306083 var3964)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var2844 (cast-from-var738-to-var3582 var3506!1) var106)) ; Statement: specialinvoke $r32.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r33, $r39) 

(declare-const var2844!1 var3137)
(declare-const var3506!2 var738)
(declare-const var106!1 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var3137-init=([], javax.management.RuntimeOperationsException), var738-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/1256938504=([org.apache.log4j.jmx.AppenderDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var738-to-var3582=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var830=org.apache.log4j.jmx.AppenderDynamicMBean, var2013=r8, var551=r0, var3791=null_type, var3137=javax.management.RuntimeOperationsException, var2844=$r32, var738=java.lang.IllegalArgumentException, var3506=$r33, var2211="Attribute name cannot be null", var2910=$r34, var2962=$r36, var2688=$r35, var1381=$r37, var3964=$r38, var106=$r39, var3582=java.lang.RuntimeException}
; {org.apache.log4j.jmx.AppenderDynamicMBean=var830, r8=var2013, r0=var551, null_type=var3791, javax.management.RuntimeOperationsException=var3137, $r32=var2844, java.lang.IllegalArgumentException=var738, $r33=var3506, "Attribute name cannot be null"=var2211, $r34=var2910, $r36=var2962, $r35=var2688, $r37=var1381, $r38=var3964, $r39=var106, java.lang.RuntimeException=var3582}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.log4j.jmx.AppenderDynamicMBean;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = <org.apache.log4j.jmx.AppenderDynamicMBean: org.apache.log4j.Logger cat>;	$r32 = new javax.management.RuntimeOperationsException;	$r33 = new java.lang.IllegalArgumentException;	specialinvoke $r33.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute name cannot be null");	$r34 = new java.lang.StringBuffer;	specialinvoke $r34.<java.lang.StringBuffer: void <init>()>();	$r36 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a getter of ");	$r35 = r8.<org.apache.log4j.jmx.AppenderDynamicMBean: java.lang.String dClassName>;	$r37 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute name");	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r32.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r33, $r39);	throw $r32
;block_num 2