(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2584 0)
(declare-sort var2664 0)
(declare-sort var3627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3627-init () var3627)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessageDigestAlgorithm/-2121922975 (var2584) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/816426726 (var3627 String) void)
(declare-const null-var2584 var2584)
(declare-const null-var2664 var2664)
(declare-const var1034 var2584) ; Statement: r3 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod 
(assert (not (= var1034 null-var2584)))
(declare-const var1736 var2664) ; Statement: r0 := @parameter0: javax.xml.crypto.dsig.spec.DigestMethodParameterSpec 
(assert (not (= var1736 null-var2664)))
 ; Statement: if r0 == null goto return 
(assert (not (= var1736 null-var2664))) ; Negate: Cond: r0 == null  
(define-const var3130 var3627 var3627-init) ; Statement: $r1 = new java.security.InvalidAlgorithmParameterException 
(define-const var2555 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2555)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2555!1 String)
(assert (= var2555!1 ""))
(assert true)
(define-const var3259 String (append/672562846 var2555!1 "no parameters should be specified for the ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ") 
(declare-const var2555!2 String)
(assert (= var2555!2 (str.++ var2555!1 "no parameters should be specified for the ")))
(assert true)
(define-const var1941 String (getMessageDigestAlgorithm/-2121922975 var1034)) ; Statement: $r4 = virtualinvoke r3.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getMessageDigestAlgorithm()>() 
(assert true)
(define-const var2543 String (append/672562846 var3259 var1941)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3259!1 String)
(assert (= var3259!1 (str.++ var3259 var1941)))
(assert true)
(define-const var763 String (append/672562846 var2543 " DigestMethod algorithm")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" DigestMethod algorithm") 
(declare-const var2543!1 String)
(assert (= var2543!1 (str.++ var2543 " DigestMethod algorithm")))
(assert true)
(define-const var37 String (toString/-2075883882 var763)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/816426726 var3130 var37)) ; Statement: specialinvoke $r1.<java.security.InvalidAlgorithmParameterException: void <init>(java.lang.String)>($r8) 

(declare-const var3130!1 var3627)
(declare-const var37!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3627-init=([], java.security.InvalidAlgorithmParameterException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessageDigestAlgorithm/-2121922975=([org.jcp.xml.dsig.internal.dom.DOMDigestMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/816426726=([java.security.InvalidAlgorithmParameterException, java.lang.String], void)}
; {var2584=org.jcp.xml.dsig.internal.dom.DOMDigestMethod, var1034=r3, var2664=javax.xml.crypto.dsig.spec.DigestMethodParameterSpec, var1736=r0, var3627=java.security.InvalidAlgorithmParameterException, var3130=$r1, var2555=$r2, var3259=$r5, var1941=$r4, var2543=$r6, var763=$r7, var37=$r8}
; {org.jcp.xml.dsig.internal.dom.DOMDigestMethod=var2584, r3=var1034, javax.xml.crypto.dsig.spec.DigestMethodParameterSpec=var2664, r0=var1736, java.security.InvalidAlgorithmParameterException=var3627, $r1=var3130, $r2=var2555, $r5=var3259, $r4=var1941, $r6=var2543, $r7=var763, $r8=var37}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod;	r0 := @parameter0: javax.xml.crypto.dsig.spec.DigestMethodParameterSpec;	if r0 == null goto return;	$r1 = new java.security.InvalidAlgorithmParameterException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ");	$r4 = virtualinvoke r3.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getMessageDigestAlgorithm()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" DigestMethod algorithm");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.security.InvalidAlgorithmParameterException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2