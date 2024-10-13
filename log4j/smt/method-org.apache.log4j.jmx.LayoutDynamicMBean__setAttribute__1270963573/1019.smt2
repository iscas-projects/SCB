(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var554 0)
(declare-sort var3258 0)
(declare-sort var1120 0)
(declare-sort var1146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3258-init () var3258)
(declare-fun var1120-init () var1120)
(declare-fun <init>/875830710 (var1120 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-762586581 (var1725) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var3258 var1146 String) void)
(declare-fun cast-from-var1120-to-var1146 (var1120) var1146)
(declare-const null-var1725 var1725)
(declare-const null-var554 var554)
(declare-const var1866 var1725) ; Statement: r2 := @this: org.apache.log4j.jmx.LayoutDynamicMBean 
(assert (not (= var1866 null-var1725)))
(declare-const var2370 var554) ; Statement: r0 := @parameter0: javax.management.Attribute 
(assert (not (= var2370 null-var554)))
 ; Statement: if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>() 
(assert (not (not (= var2370 null-var554)))) ; Negate: Cond: r0 != null  
(define-const var3687 var3258 var3258-init) ; Statement: $r34 = new javax.management.RuntimeOperationsException 
(define-const var147 var1120 var1120-init) ; Statement: $r35 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var147 "Attribute cannot be null")) ; Statement: specialinvoke $r35.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null") 

(declare-const var147!1 var1120)
(declare-const var999 String)
(define-const var1974 String String-init) ; Statement: $r36 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1974)) ; Statement: specialinvoke $r36.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1974!1 String)
(assert true)
(define-const var3736 String (append/1560614132 var1974!1 "Cannot invoke a setter of ")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ") 
(declare-const var1974!2 String)
(assert (str.prefixof var1974!1 var1974!2))
(define-const var1977 String (dClassName/-762586581 var1866)) ; Statement: $r37 = r2.<org.apache.log4j.jmx.LayoutDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var3472 String (append/1560614132 var3736 var1977)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r37) 
(declare-const var3736!1 String)
(assert (str.prefixof var3736 var3736!1))
(assert true)
(define-const var2505 String (append/1560614132 var3472 " with null attribute")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute") 
(declare-const var3472!1 String)
(assert (str.prefixof var3472 var3472!1))
(assert true)
(define-const var225 String (toString/-222306083 var2505)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var3687 (cast-from-var1120-to-var1146 var147!1) var225)) ; Statement: specialinvoke $r34.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r35, $r41) 

(declare-const var3687!1 var3258)
(declare-const var147!2 var1120)
(declare-const var225!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var3258-init=([], javax.management.RuntimeOperationsException), var1120-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-762586581=([org.apache.log4j.jmx.LayoutDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var1120-to-var1146=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var1725=org.apache.log4j.jmx.LayoutDynamicMBean, var1866=r2, var554=javax.management.Attribute, var2370=r0, var3258=javax.management.RuntimeOperationsException, var3687=$r34, var1120=java.lang.IllegalArgumentException, var147=$r35, var999="Attribute cannot be null", var1974=$r36, var3736=$r38, var1977=$r37, var3472=$r39, var2505=$r40, var225=$r41, var1146=java.lang.RuntimeException}
; {org.apache.log4j.jmx.LayoutDynamicMBean=var1725, r2=var1866, javax.management.Attribute=var554, r0=var2370, javax.management.RuntimeOperationsException=var3258, $r34=var3687, java.lang.IllegalArgumentException=var1120, $r35=var147, "Attribute cannot be null"=var999, $r36=var1974, $r38=var3736, $r37=var1977, $r39=var3472, $r40=var2505, $r41=var225, java.lang.RuntimeException=var1146}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.jmx.LayoutDynamicMBean;	r0 := @parameter0: javax.management.Attribute;	if r0 != null goto r1 = virtualinvoke r0.<javax.management.Attribute: java.lang.String getName()>();	$r34 = new javax.management.RuntimeOperationsException;	$r35 = new java.lang.IllegalArgumentException;	specialinvoke $r35.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Attribute cannot be null");	$r36 = new java.lang.StringBuffer;	specialinvoke $r36.<java.lang.StringBuffer: void <init>()>();	$r38 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a setter of ");	$r37 = r2.<org.apache.log4j.jmx.LayoutDynamicMBean: java.lang.String dClassName>;	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" with null attribute");	$r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r34.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r35, $r41);	throw $r34
;block_num 2