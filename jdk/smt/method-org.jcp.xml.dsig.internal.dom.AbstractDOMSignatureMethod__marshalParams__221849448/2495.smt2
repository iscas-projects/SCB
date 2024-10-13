(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var595 0)
(declare-sort var3463 0)
(declare-sort var1088 0)
(declare-sort var1628 0)
(declare-sort var3809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1628-init () var1628)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlgorithm/-1357366243 (var3809) String)
(declare-fun cast-from-var595-to-var3809 (var595) var3809)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var1628 String) void)
(declare-const null-var595 var595)
(declare-const null-var3463 var3463)
(declare-const null-String String)
(declare-const var2808 var595) ; Statement: r2 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod 
(assert (not (= var2808 null-var595)))
(declare-const var1255 var3463) ; Statement: r8 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1255 null-var3463)))
(declare-const var3471 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3471 null-String)))
(define-const var1031 var1628 var1628-init) ; Statement: $r0 = new javax.xml.crypto.MarshalException 
(define-const var2466 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2466)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2466!1 String)
(assert (= var2466!1 ""))
(assert true)
(define-const var3811 String (append/672562846 var2466!1 "no parameters should be specified for the ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ") 
(declare-const var2466!2 String)
(assert (= var2466!2 (str.++ var2466!1 "no parameters should be specified for the ")))
(assert true)
(define-const var2933 String (getAlgorithm/-1357366243 (cast-from-var595-to-var3809 var2808))) ; Statement: $r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var37 String (append/672562846 var3811 var2933)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3811!1 String)
(assert (= var3811!1 (str.++ var3811 var2933)))
(assert true)
(define-const var3077 String (append/672562846 var37 " SignatureMethod algorithm")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SignatureMethod algorithm") 
(declare-const var37!1 String)
(assert (= var37!1 (str.++ var37 " SignatureMethod algorithm")))
(assert true)
(define-const var2417 String (toString/-2075883882 var3077)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var1031 var2417)) ; Statement: specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7) 

(declare-const var1031!1 var1628)
(declare-const var2417!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1628-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlgorithm/-1357366243=([javax.xml.crypto.AlgorithmMethod], java.lang.String), cast-from-var595-to-var3809=([org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod], javax.xml.crypto.AlgorithmMethod), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var595=org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod, var2808=r2, var3463=org.w3c.dom.Element, var1255=r8, var3471=r9, var1088=null_type, var1628=javax.xml.crypto.MarshalException, var1031=$r0, var2466=$r1, var3811=$r4, var3809=javax.xml.crypto.AlgorithmMethod, var2933=$r3, var37=$r5, var3077=$r6, var2417=$r7}
; {org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod=var595, r2=var2808, org.w3c.dom.Element=var3463, r8=var1255, r9=var3471, null_type=var1088, javax.xml.crypto.MarshalException=var1628, $r0=var1031, $r1=var2466, $r4=var3811, javax.xml.crypto.AlgorithmMethod=var3809, $r3=var2933, $r5=var37, $r6=var3077, $r7=var2417}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod;	r8 := @parameter0: org.w3c.dom.Element;	r9 := @parameter1: java.lang.String;	$r0 = new javax.xml.crypto.MarshalException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ");	$r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SignatureMethod algorithm");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1