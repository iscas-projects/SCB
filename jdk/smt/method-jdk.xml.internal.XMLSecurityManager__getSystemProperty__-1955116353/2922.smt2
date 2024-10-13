(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2049 0)
(declare-sort var3302 0)
(declare-sort var3426 0)
(declare-sort var984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var984-init () var984)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun systemProperty/2111955378 (var3302) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var984 String) void)
(declare-const null-var2049 var2049)
(declare-const null-var3302 var3302)
(declare-const null-String String)
(declare-const null-var984 var984)
(declare-const var3710 var2049) ; Statement: r1 := @this: jdk.xml.internal.XMLSecurityManager 
(assert (not (= var3710 null-var2049)))
(declare-const var2611 var3302) ; Statement: r2 := @parameter0: jdk.xml.internal.XMLSecurityManager$Limit 
(assert (not (= var2611 null-var3302)))
(declare-const var1070 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1070 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2116 var984) ; Statement: $r10 := @caughtexception 
(assert (not (= var2116 null-var984)))
(define-const var1831 var984 var984-init) ; Statement: $r11 = new java.lang.NumberFormatException 
(define-const var1928 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1928)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1928!1 String)
(assert (= var1928!1 ""))
(assert true)
(define-const var2115 String (append/672562846 var1928!1 "Invalid setting for system property: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid setting for system property: ") 
(declare-const var1928!2 String)
(assert (= var1928!2 (str.++ var1928!1 "Invalid setting for system property: ")))
(assert true)
(define-const var3053 String (systemProperty/2111955378 var2611)) ; Statement: $r13 = virtualinvoke r2.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String systemProperty()>() 
(assert true)
(define-const var2038 String (append/672562846 var2115 var3053)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2115!1 String)
(assert (= var2115!1 (str.++ var2115 var3053)))
(assert true)
(define-const var3571 String (toString/-2075883882 var2038)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var1831 var3571)) ; Statement: specialinvoke $r11.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r16) 

(declare-const var1831!1 var984)
(declare-const var3571!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var984-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), systemProperty/2111955378=([jdk.xml.internal.XMLSecurityManager$Limit], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var2049=jdk.xml.internal.XMLSecurityManager, var3710=r1, var3302=jdk.xml.internal.XMLSecurityManager$Limit, var2611=r2, var1070=r0, var3426=null_type, var984=java.lang.NumberFormatException, var2116=$r10, var1831=$r11, var1928=$r12, var2115=$r14, var3053=$r13, var2038=$r15, var3571=$r16}
; {jdk.xml.internal.XMLSecurityManager=var2049, r1=var3710, jdk.xml.internal.XMLSecurityManager$Limit=var3302, r2=var2611, r0=var1070, null_type=var3426, java.lang.NumberFormatException=var984, $r10=var2116, $r11=var1831, $r12=var1928, $r14=var2115, $r13=var3053, $r15=var2038, $r16=var3571}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.xml.internal.XMLSecurityManager;	r2 := @parameter0: jdk.xml.internal.XMLSecurityManager$Limit;	r0 := @parameter1: java.lang.String;	$r10 := @caughtexception;	$r11 = new java.lang.NumberFormatException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid setting for system property: ");	$r13 = virtualinvoke r2.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String systemProperty()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2