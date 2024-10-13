(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var954 0)
(declare-sort var930 0)
(declare-sort var491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var491-init () var491)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessageDigestAlgorithm/-2121922975 (var954) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var491 String) void)
(declare-const null-var954 var954)
(declare-const null-var930 var930)
(declare-const var830 var954) ; Statement: r2 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod 
(assert (not (= var830 null-var954)))
(declare-const var3533 var930) ; Statement: r8 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3533 null-var930)))
(define-const var2000 var491 var491-init) ; Statement: $r0 = new javax.xml.crypto.MarshalException 
(define-const var29 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var29)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var29!1 String)
(assert (= var29!1 ""))
(assert true)
(define-const var642 String (append/672562846 var29!1 "no parameters should be specified for the ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ") 
(declare-const var29!2 String)
(assert (= var29!2 (str.++ var29!1 "no parameters should be specified for the ")))
(assert true)
(define-const var1889 String (getMessageDigestAlgorithm/-2121922975 var830)) ; Statement: $r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getMessageDigestAlgorithm()>() 
(assert true)
(define-const var1346 String (append/672562846 var642 var1889)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var642!1 String)
(assert (= var642!1 (str.++ var642 var1889)))
(assert true)
(define-const var2782 String (append/672562846 var1346 " DigestMethod algorithm")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" DigestMethod algorithm") 
(declare-const var1346!1 String)
(assert (= var1346!1 (str.++ var1346 " DigestMethod algorithm")))
(assert true)
(define-const var1705 String (toString/-2075883882 var2782)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var2000 var1705)) ; Statement: specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7) 

(declare-const var2000!1 var491)
(declare-const var1705!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var491-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessageDigestAlgorithm/-2121922975=([org.jcp.xml.dsig.internal.dom.DOMDigestMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var954=org.jcp.xml.dsig.internal.dom.DOMDigestMethod, var830=r2, var930=org.w3c.dom.Element, var3533=r8, var491=javax.xml.crypto.MarshalException, var2000=$r0, var29=$r1, var642=$r4, var1889=$r3, var1346=$r5, var2782=$r6, var1705=$r7}
; {org.jcp.xml.dsig.internal.dom.DOMDigestMethod=var954, r2=var830, org.w3c.dom.Element=var930, r8=var3533, javax.xml.crypto.MarshalException=var491, $r0=var2000, $r1=var29, $r4=var642, $r3=var1889, $r5=var1346, $r6=var2782, $r7=var1705}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod;	r8 := @parameter0: org.w3c.dom.Element;	$r0 = new javax.xml.crypto.MarshalException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ");	$r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getMessageDigestAlgorithm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" DigestMethod algorithm");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1