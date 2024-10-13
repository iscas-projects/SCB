(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var634 0)
(declare-sort var3183 0)
(declare-sort var2595 0)
(declare-sort var1690 0)
(declare-sort var3089 0)
(declare-sort var107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rsakf/1513584924 (var634) var2595)
(declare-fun var3089-init () var3089)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var107) String)
(declare-fun cast-from-var1690-to-var107 (var1690) var107)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3089 String) void)
(declare-const null-var634 var634)
(declare-const null-var3183 var3183)
(declare-const null-var2595 var2595)
(declare-const null-var1690 var1690)
(declare-const var1200 var634) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyValue$RSA 
(assert (not (= var1200 null-var634)))
(declare-const var1964 var3183) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1964 null-var3183)))
(define-const var3313 var2595 (rsakf/1513584924 var1200)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$RSA: java.security.KeyFactory rsakf> 
 ; Statement: if $r1 != null goto $r8 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node,java.lang.String,java.lang.String)>(r2, "Modulus", "http://www.w3.org/2000/09/xmldsig#") 
(assert (not (not (= var3313 null-var2595)))) ; Negate: Cond: $r1 != null  
(declare-const var1724 var1690) ; Statement: $r12 := @caughtexception 
(assert (not (= var1724 null-var1690)))
(define-const var1545 var3089 var3089-init) ; Statement: $r13 = new java.lang.RuntimeException 
(define-const var1455 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1455)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1455!1 String)
(assert (= var1455!1 ""))
(assert true)
(define-const var2982 String (append/672562846 var1455!1 "unable to create RSA KeyFactory: ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create RSA KeyFactory: ") 
(declare-const var1455!2 String)
(assert (= var1455!2 (str.++ var1455!1 "unable to create RSA KeyFactory: ")))
(assert true)
(define-const var3293 String (getMessage/849299655 (cast-from-var1690-to-var107 var1724))) ; Statement: $r15 = virtualinvoke $r12.<java.security.NoSuchAlgorithmException: java.lang.String getMessage()>() 
(assert true)
(define-const var2978 String (append/672562846 var2982 var3293)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2982!1 String)
(assert (= var2982!1 (str.++ var2982 var3293)))
(assert true)
(define-const var971 String (toString/-2075883882 var2978)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1545 var971)) ; Statement: specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String)>($r18) 

(declare-const var1545!1 var3089)
(declare-const var971!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {rsakf/1513584924=([org.jcp.xml.dsig.internal.dom.DOMKeyValue$RSA], java.security.KeyFactory), var3089-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1690-to-var107=([java.security.NoSuchAlgorithmException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var634=org.jcp.xml.dsig.internal.dom.DOMKeyValue$RSA, var1200=r0, var3183=org.w3c.dom.Element, var1964=r2, var2595=java.security.KeyFactory, var3313=$r1, var1690=java.security.NoSuchAlgorithmException, var1724=$r12, var3089=java.lang.RuntimeException, var1545=$r13, var1455=$r14, var2982=$r16, var107=java.lang.Throwable, var3293=$r15, var2978=$r17, var971=$r18}
; {org.jcp.xml.dsig.internal.dom.DOMKeyValue$RSA=var634, r0=var1200, org.w3c.dom.Element=var3183, r2=var1964, java.security.KeyFactory=var2595, $r1=var3313, java.security.NoSuchAlgorithmException=var1690, $r12=var1724, java.lang.RuntimeException=var3089, $r13=var1545, $r14=var1455, $r16=var2982, java.lang.Throwable=var107, $r15=var3293, $r17=var2978, $r18=var971}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyValue$RSA;	r2 := @parameter0: org.w3c.dom.Element;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$RSA: java.security.KeyFactory rsakf>;	if $r1 != null goto $r8 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node,java.lang.String,java.lang.String)>(r2, "Modulus", "http://www.w3.org/2000/09/xmldsig#");	$r12 := @caughtexception;	$r13 = new java.lang.RuntimeException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create RSA KeyFactory: ");	$r15 = virtualinvoke $r12.<java.security.NoSuchAlgorithmException: java.lang.String getMessage()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 2