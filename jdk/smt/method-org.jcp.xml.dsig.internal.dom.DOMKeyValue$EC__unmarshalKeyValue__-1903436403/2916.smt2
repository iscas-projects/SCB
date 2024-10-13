(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var135 0)
(declare-sort var1619 0)
(declare-sort var3810 0)
(declare-sort var2911 0)
(declare-sort var2531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun eckf/-1059553758 (var1688) var1619)
(declare-fun var2911-init () var2911)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2531) String)
(declare-fun cast-from-var3810-to-var2531 (var3810) var2531)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2911 String) void)
(declare-const null-var1688 var1688)
(declare-const null-var135 var135)
(declare-const null-var1619 var1619)
(declare-const null-var3810 var3810)
(declare-const var1324 var1688) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC 
(assert (not (= var1324 null-var1688)))
(declare-const var250 var135) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var250 null-var135)))
(define-const var2002 var1619 (eckf/-1059553758 var1324)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: java.security.KeyFactory eckf> 
 ; Statement: if $r1 != null goto $r22 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r2) 
(assert (not (not (= var2002 null-var1619)))) ; Negate: Cond: $r1 != null  
(declare-const var249 var3810) ; Statement: $r25 := @caughtexception 
(assert (not (= var249 null-var3810)))
(define-const var2025 var2911 var2911-init) ; Statement: $r26 = new java.lang.RuntimeException 
(define-const var1018 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1018)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1018!1 String)
(assert (= var1018!1 ""))
(assert true)
(define-const var1074 String (append/672562846 var1018!1 "unable to create EC KeyFactory: ")) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create EC KeyFactory: ") 
(declare-const var1018!2 String)
(assert (= var1018!2 (str.++ var1018!1 "unable to create EC KeyFactory: ")))
(assert true)
(define-const var579 String (getMessage/849299655 (cast-from-var3810-to-var2531 var249))) ; Statement: $r28 = virtualinvoke $r25.<java.security.NoSuchAlgorithmException: java.lang.String getMessage()>() 
(assert true)
(define-const var1221 String (append/672562846 var1074 var579)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1074!1 String)
(assert (= var1074!1 (str.++ var1074 var579)))
(assert true)
(define-const var1047 String (toString/-2075883882 var1221)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2025 var1047)) ; Statement: specialinvoke $r26.<java.lang.RuntimeException: void <init>(java.lang.String)>($r31) 

(declare-const var2025!1 var2911)
(declare-const var1047!1 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {eckf/-1059553758=([org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC], java.security.KeyFactory), var2911-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3810-to-var2531=([java.security.NoSuchAlgorithmException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1688=org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC, var1324=r0, var135=org.w3c.dom.Element, var250=r2, var1619=java.security.KeyFactory, var2002=$r1, var3810=java.security.NoSuchAlgorithmException, var249=$r25, var2911=java.lang.RuntimeException, var2025=$r26, var1018=$r27, var1074=$r29, var2531=java.lang.Throwable, var579=$r28, var1221=$r30, var1047=$r31}
; {org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC=var1688, r0=var1324, org.w3c.dom.Element=var135, r2=var250, java.security.KeyFactory=var1619, $r1=var2002, java.security.NoSuchAlgorithmException=var3810, $r25=var249, java.lang.RuntimeException=var2911, $r26=var2025, $r27=var1018, $r29=var1074, java.lang.Throwable=var2531, $r28=var579, $r30=var1221, $r31=var1047}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC;	r2 := @parameter0: org.w3c.dom.Element;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: java.security.KeyFactory eckf>;	if $r1 != null goto $r22 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r2);	$r25 := @caughtexception;	$r26 = new java.lang.RuntimeException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create EC KeyFactory: ");	$r28 = virtualinvoke $r25.<java.security.NoSuchAlgorithmException: java.lang.String getMessage()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<java.lang.RuntimeException: void <init>(java.lang.String)>($r31);	throw $r26
;block_num 2