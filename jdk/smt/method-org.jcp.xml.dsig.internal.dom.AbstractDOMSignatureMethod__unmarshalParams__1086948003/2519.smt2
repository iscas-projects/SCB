(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2672 0)
(declare-sort var576 0)
(declare-sort var3922 0)
(declare-sort var1304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3922-init () var3922)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlgorithm/-1357366243 (var1304) String)
(declare-fun cast-from-var2672-to-var1304 (var2672) var1304)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var3922 String) void)
(declare-const null-var2672 var2672)
(declare-const null-var576 var576)
(declare-const var2609 var2672) ; Statement: r2 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod 
(assert (not (= var2609 null-var2672)))
(declare-const var3885 var576) ; Statement: r8 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3885 null-var576)))
(define-const var1592 var3922 var3922-init) ; Statement: $r0 = new javax.xml.crypto.MarshalException 
(define-const var2222 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2222)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2222!1 String)
(assert (= var2222!1 ""))
(assert true)
(define-const var1708 String (append/672562846 var2222!1 "no parameters should be specified for the ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ") 
(declare-const var2222!2 String)
(assert (= var2222!2 (str.++ var2222!1 "no parameters should be specified for the ")))
(assert true)
(define-const var1989 String (getAlgorithm/-1357366243 (cast-from-var2672-to-var1304 var2609))) ; Statement: $r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var1113 String (append/672562846 var1708 var1989)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1708!1 String)
(assert (= var1708!1 (str.++ var1708 var1989)))
(assert true)
(define-const var3416 String (append/672562846 var1113 " SignatureMethod algorithm")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SignatureMethod algorithm") 
(declare-const var1113!1 String)
(assert (= var1113!1 (str.++ var1113 " SignatureMethod algorithm")))
(assert true)
(define-const var1253 String (toString/-2075883882 var3416)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var1592 var1253)) ; Statement: specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7) 

(declare-const var1592!1 var3922)
(declare-const var1253!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3922-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlgorithm/-1357366243=([javax.xml.crypto.AlgorithmMethod], java.lang.String), cast-from-var2672-to-var1304=([org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod], javax.xml.crypto.AlgorithmMethod), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var2672=org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod, var2609=r2, var576=org.w3c.dom.Element, var3885=r8, var3922=javax.xml.crypto.MarshalException, var1592=$r0, var2222=$r1, var1708=$r4, var1304=javax.xml.crypto.AlgorithmMethod, var1989=$r3, var1113=$r5, var3416=$r6, var1253=$r7}
; {org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod=var2672, r2=var2609, org.w3c.dom.Element=var576, r8=var3885, javax.xml.crypto.MarshalException=var3922, $r0=var1592, $r1=var2222, $r4=var1708, javax.xml.crypto.AlgorithmMethod=var1304, $r3=var1989, $r5=var1113, $r6=var3416, $r7=var1253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod;	r8 := @parameter0: org.w3c.dom.Element;	$r0 = new javax.xml.crypto.MarshalException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no parameters should be specified for the ");	$r3 = virtualinvoke r2.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SignatureMethod algorithm");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1