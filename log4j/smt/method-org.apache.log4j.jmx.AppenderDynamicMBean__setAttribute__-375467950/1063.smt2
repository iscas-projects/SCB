(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var668 0)
(declare-sort var1768 0)
(declare-sort var1696 0)
(declare-sort var1197 0)
(declare-sort var3448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1696-init () var1696)
(declare-fun var1197-init () var1197)
(declare-fun <init>/875830710 (var1197 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/1256938504 (var668) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var1696 var3448 String) void)
(declare-fun cast-from-var1197-to-var3448 (var1197) var3448)
(declare-const null-var668 var668)
(declare-const null-var1768 var1768)
(declare-const var46 var668) ; Statement: r2 := @this: org.apache.log4j.jmx.AppenderDynamicMBean 
(assert (not (= var46 null-var668)))
(declare-const var462 var1768) ; Statement: r0 := @parameter0: javax.management.Attribute 
(assert (not (= var462 null-var1768)))
 ; Statement: if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>() 
(assert (not (not (= var462 null-var1768)))) ; Negate: Cond: r0 != null  
(define-const var356 var1696 var1696-init) ; Statement: $r34 = new javax.management.RuntimeOperationsException 
(define-const var1824 var1197 var1197-init) ; Statement: $r35 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1824 "Attribute cannot be null")) ; Statement: specialinvoke $r35.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null") 

(declare-const var1824!1 var1197)
(declare-const var3907 String)
(define-const var418 String String-init) ; Statement: $r36 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var418)) ; Statement: specialinvoke $r36.<java.lang.StringBuffer: void <init>()>() 

(declare-const var418!1 String)
(assert true)
(define-const var1836 String (append/1560614132 var418!1 "Cannot invoke a setter of ")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ") 
(declare-const var418!2 String)
(assert (str.prefixof var418!1 var418!2))
(define-const var190 String (dClassName/1256938504 var46)) ; Statement: $r37 = r2.<org.apache.log4j.jmx.AppenderDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var1554 String (append/1560614132 var1836 var190)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r37) 
(declare-const var1836!1 String)
(assert (str.prefixof var1836 var1836!1))
(assert true)
(define-const var3538 String (append/1560614132 var1554 " with null attribute")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute") 
(declare-const var1554!1 String)
(assert (str.prefixof var1554 var1554!1))
(assert true)
(define-const var3417 String (toString/-222306083 var3538)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var356 (cast-from-var1197-to-var3448 var1824!1) var3417)) ; Statement: specialinvoke $r34.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r35, $r41) 

(declare-const var356!1 var1696)
(declare-const var1824!2 var1197)
(declare-const var3417!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var1696-init=([], javax.management.RuntimeOperationsException), var1197-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/1256938504=([org.apache.log4j.jmx.AppenderDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var1197-to-var3448=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var668=org.apache.log4j.jmx.AppenderDynamicMBean, var46=r2, var1768=javax.management.Attribute, var462=r0, var1696=javax.management.RuntimeOperationsException, var356=$r34, var1197=java.lang.IllegalArgumentException, var1824=$r35, var3907="Attribute cannot be null", var418=$r36, var1836=$r38, var190=$r37, var1554=$r39, var3538=$r40, var3417=$r41, var3448=java.lang.RuntimeException}
; {org.apache.log4j.jmx.AppenderDynamicMBean=var668, r2=var46, javax.management.Attribute=var1768, r0=var462, javax.management.RuntimeOperationsException=var1696, $r34=var356, java.lang.IllegalArgumentException=var1197, $r35=var1824, "Attribute cannot be null"=var3907, $r36=var418, $r38=var1836, $r37=var190, $r39=var1554, $r40=var3538, $r41=var3417, java.lang.RuntimeException=var3448}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.jmx.AppenderDynamicMBean;	r0 := @parameter0: javax.management.Attribute;	if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>();	$r34 = new javax.management.RuntimeOperationsException;	$r35 = new java.lang.IllegalArgumentException;	specialinvoke $r35.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null");	$r36 = new java.lang.StringBuffer;	specialinvoke $r36.<java.lang.StringBuffer: void <init>()>();	$r38 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ");	$r37 = r2.<org.apache.log4j.jmx.AppenderDynamicMBean: java.lang.String dClassName>;	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute");	$r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r34.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r35, $r41);	throw $r34
;block_num 2