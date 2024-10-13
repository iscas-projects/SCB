(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3920 0)
(declare-sort var1042 0)
(declare-sort var2202 0)
(declare-sort var2514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2202-init () var2202)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlgorithm/-1357366243 (var2514) String)
(declare-fun cast-from-var3920-to-var2514 (var3920) var2514)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/816426726 (var2202 String) void)
(declare-const null-var3920 var3920)
(declare-const null-var1042 var1042)
(declare-const var1321 var3920) ; Statement: r3 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod 
(assert (not (= var1321 null-var3920)))
(declare-const var2933 var1042) ; Statement: r0 := @parameter0: javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec 
(assert (not (= var2933 null-var1042)))
 ; Statement: if r0 == null goto return 
(assert (not (= var2933 null-var1042))) ; Negate: Cond: r0 == null  
(define-const var1510 var2202 var2202-init) ; Statement: $r1 = new java.security.InvalidAlgorithmParameterException 
(define-const var1763 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1763)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1763!1 String)
(assert (= var1763!1 ""))
(assert true)
(define-const var2279 String (append/672562846 var1763!1 "no parameters should be specified for the ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ") 
(declare-const var1763!2 String)
(assert (= var1763!2 (str.++ var1763!1 "no parameters should be specified for the ")))
(assert true)
(define-const var1646 String (getAlgorithm/-1357366243 (cast-from-var3920-to-var2514 var1321))) ; Statement: $r4 = virtualinvoke r3.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var1953 String (append/672562846 var2279 var1646)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2279!1 String)
(assert (= var2279!1 (str.++ var2279 var1646)))
(assert true)
(define-const var794 String (append/672562846 var1953 " SignatureMethod algorithm")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SignatureMethod algorithm") 
(declare-const var1953!1 String)
(assert (= var1953!1 (str.++ var1953 " SignatureMethod algorithm")))
(assert true)
(define-const var465 String (toString/-2075883882 var794)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/816426726 var1510 var465)) ; Statement: specialinvoke $r1.<java.security.InvalidAlgorithmParameterException: void <init>(java.lang.String)>($r8) 

(declare-const var1510!1 var2202)
(declare-const var465!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2202-init=([], java.security.InvalidAlgorithmParameterException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlgorithm/-1357366243=([javax.xml.crypto.AlgorithmMethod], java.lang.String), cast-from-var3920-to-var2514=([org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod], javax.xml.crypto.AlgorithmMethod), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/816426726=([java.security.InvalidAlgorithmParameterException, java.lang.String], void)}
; {var3920=org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod, var1321=r3, var1042=javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec, var2933=r0, var2202=java.security.InvalidAlgorithmParameterException, var1510=$r1, var1763=$r2, var2279=$r5, var2514=javax.xml.crypto.AlgorithmMethod, var1646=$r4, var1953=$r6, var794=$r7, var465=$r8}
; {org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod=var3920, r3=var1321, javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec=var1042, r0=var2933, java.security.InvalidAlgorithmParameterException=var2202, $r1=var1510, $r2=var1763, $r5=var2279, javax.xml.crypto.AlgorithmMethod=var2514, $r4=var1646, $r6=var1953, $r7=var794, $r8=var465}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod;	r0 := @parameter0: javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec;	if r0 == null goto return;	$r1 = new java.security.InvalidAlgorithmParameterException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ");	$r4 = virtualinvoke r3.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SignatureMethod algorithm");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.security.InvalidAlgorithmParameterException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2