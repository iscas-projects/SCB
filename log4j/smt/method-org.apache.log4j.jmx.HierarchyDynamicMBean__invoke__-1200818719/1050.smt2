(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3815 0)
(declare-sort var202 0)
(declare-sort var84 0)
(declare-sort var2962 0)
(declare-sort var1692 0)
(declare-sort var3265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2962-init () var2962)
(declare-fun var1692-init () var1692)
(declare-fun <init>/875830710 (var1692 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dClassName/-1744593008 (var3815) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/1103209929 (var2962 var3265 String) void)
(declare-fun cast-from-var1692-to-var3265 (var1692) var3265)
(declare-const null-var3815 var3815)
(declare-const null-String String)
(declare-const null-__Array__Int__var84__ (Array Int var84))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1406 var3815) ; Statement: r6 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean 
(assert (not (= var1406 null-var3815)))
(declare-const var1190 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1190 null-String)))
(declare-const var1029 (Array Int var84)) ; Statement: r11 := @parameter1: java.lang.Object[] 
(assert (not (= var1029 null-__Array__Int__var84__)))
(declare-const var459 (Array Int String)) ; Statement: r22 := @parameter2: java.lang.String[] 
(assert (not (= var459 null-__Array__Int__String__)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("addLoggerMBean") 
(assert (not (not (= var1190 null-String)))) ; Negate: Cond: r0 != null  
(define-const var3242 var2962 var2962-init) ; Statement: $r15 = new javax.management.RuntimeOperationsException 
(define-const var1625 var1692 var1692-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1625 "Operation name cannot be null")) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Operation name cannot be null") 

(declare-const var1625!1 var1692)
(declare-const var3750 String)
(define-const var157 String String-init) ; Statement: $r17 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var157)) ; Statement: specialinvoke $r17.<java.lang.StringBuffer: void <init>()>() 

(declare-const var157!1 String)
(assert true)
(define-const var2903 String (append/1560614132 var157!1 "Cannot invoke a null operation in ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a null operation in ") 
(declare-const var157!2 String)
(assert (str.prefixof var157!1 var157!2))
(define-const var1196 String (dClassName/-1744593008 var1406)) ; Statement: $r18 = r6.<org.apache.log4j.jmx.HierarchyDynamicMBean: java.lang.String dClassName> 
(assert true)
(define-const var804 String (append/1560614132 var2903 var1196)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var2903!1 String)
(assert (str.prefixof var2903 var2903!1))
(assert true)
(define-const var1850 String (toString/-222306083 var804)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1103209929 var3242 (cast-from-var1692-to-var3265 var1625!1) var1850)) ; Statement: specialinvoke $r15.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r16, $r21) 

(declare-const var3242!1 var2962)
(declare-const var1625!2 var1692)
(declare-const var1850!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2962-init=([], javax.management.RuntimeOperationsException), var1692-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), dClassName/-1744593008=([org.apache.log4j.jmx.HierarchyDynamicMBean], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/1103209929=([javax.management.RuntimeOperationsException, java.lang.RuntimeException, java.lang.String], void), cast-from-var1692-to-var3265=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var3815=org.apache.log4j.jmx.HierarchyDynamicMBean, var1406=r6, var1190=r0, var202=null_type, var84=java.lang.Object, var1029=r11, var459=r22, var2962=javax.management.RuntimeOperationsException, var3242=$r15, var1692=java.lang.IllegalArgumentException, var1625=$r16, var3750="Operation name cannot be null", var157=$r17, var2903=$r19, var1196=$r18, var804=$r20, var1850=$r21, var3265=java.lang.RuntimeException}
; {org.apache.log4j.jmx.HierarchyDynamicMBean=var3815, r6=var1406, r0=var1190, null_type=var202, java.lang.Object=var84, r11=var1029, r22=var459, javax.management.RuntimeOperationsException=var2962, $r15=var3242, java.lang.IllegalArgumentException=var1692, $r16=var1625, "Operation name cannot be null"=var3750, $r17=var157, $r19=var2903, $r18=var1196, $r20=var804, $r21=var1850, java.lang.RuntimeException=var3265}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean;	r0 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.Object[];	r22 := @parameter2: java.lang.String[];	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("addLoggerMBean");	$r15 = new javax.management.RuntimeOperationsException;	$r16 = new java.lang.IllegalArgumentException;	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Operation name cannot be null");	$r17 = new java.lang.StringBuffer;	specialinvoke $r17.<java.lang.StringBuffer: void <init>()>();	$r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot invoke a null operation in ");	$r18 = r6.<org.apache.log4j.jmx.HierarchyDynamicMBean: java.lang.String dClassName>;	$r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r15.<javax.management.RuntimeOperationsException: void <init>(java.lang.RuntimeException,java.lang.String)>($r16, $r21);	throw $r15
;block_num 2