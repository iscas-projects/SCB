(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3064 0)
(declare-sort var1051 0)
(declare-sort var3734 0)
(declare-sort var3481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3481-init () var3481)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessageDigestAlgorithm/-2121922975 (var3064) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var3481 String) void)
(declare-const null-var3064 var3064)
(declare-const null-var1051 var1051)
(declare-const null-String String)
(declare-const var213 var3064) ; Statement: r2 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod 
(assert (not (= var213 null-var3064)))
(declare-const var3647 var1051) ; Statement: r8 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3647 null-var1051)))
(declare-const var3295 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3295 null-String)))
(define-const var1200 var3481 var3481-init) ; Statement: $r0 = new javax.xml.crypto.MarshalException 
(define-const var3617 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3617)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3617!1 String)
(assert (= var3617!1 ""))
(assert true)
(define-const var450 String (append/672562846 var3617!1 "no parameters should be specified for the ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ") 
(declare-const var3617!2 String)
(assert (= var3617!2 (str.++ var3617!1 "no parameters should be specified for the ")))
(assert true)
(define-const var2839 String (getMessageDigestAlgorithm/-2121922975 var213)) ; Statement: $r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getMessageDigestAlgorithm()>() 
(assert true)
(define-const var2199 String (append/672562846 var450 var2839)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var450!1 String)
(assert (= var450!1 (str.++ var450 var2839)))
(assert true)
(define-const var1880 String (append/672562846 var2199 " DigestMethod algorithm")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" DigestMethod algorithm") 
(declare-const var2199!1 String)
(assert (= var2199!1 (str.++ var2199 " DigestMethod algorithm")))
(assert true)
(define-const var1118 String (toString/-2075883882 var1880)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var1200 var1118)) ; Statement: specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7) 

(declare-const var1200!1 var3481)
(declare-const var1118!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3481-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessageDigestAlgorithm/-2121922975=([org.jcp.xml.dsig.internal.dom.DOMDigestMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var3064=org.jcp.xml.dsig.internal.dom.DOMDigestMethod, var213=r2, var1051=org.w3c.dom.Element, var3647=r8, var3295=r9, var3734=null_type, var3481=javax.xml.crypto.MarshalException, var1200=$r0, var3617=$r1, var450=$r4, var2839=$r3, var2199=$r5, var1880=$r6, var1118=$r7}
; {org.jcp.xml.dsig.internal.dom.DOMDigestMethod=var3064, r2=var213, org.w3c.dom.Element=var1051, r8=var3647, r9=var3295, null_type=var3734, javax.xml.crypto.MarshalException=var3481, $r0=var1200, $r1=var3617, $r4=var450, $r3=var2839, $r5=var2199, $r6=var1880, $r7=var1118}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod;	r8 := @parameter0: org.w3c.dom.Element;	r9 := @parameter1: java.lang.String;	$r0 = new javax.xml.crypto.MarshalException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ");	$r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getMessageDigestAlgorithm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" DigestMethod algorithm");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1