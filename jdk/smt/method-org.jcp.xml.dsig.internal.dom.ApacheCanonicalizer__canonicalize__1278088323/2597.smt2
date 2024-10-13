(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3244 0)
(declare-sort var949 0)
(declare-sort var2176 0)
(declare-sort var668 0)
(declare-sort var1454 0)
(declare-sort var2438 0)
(declare-sort var2852 0)
(declare-sort var199 0)
(declare-sort var2703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun apacheCanonicalizer/1787477456 (var3244) var1454)
(declare-fun var2852-init () var2852)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAlgorithm/1509473463 (var199) String)
(declare-fun cast-from-var3244-to-var199 (var3244) var199)
(declare-fun getMessage/849299655 (var2703) String)
(declare-fun cast-from-var2438-to-var2703 (var2438) var2703)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/401862732 (var2852 String var2703) void)
(declare-const null-var3244 var3244)
(declare-const null-var949 var949)
(declare-const null-var2176 var2176)
(declare-const null-var668 var668)
(declare-const null-var1454 var1454)
(declare-const null-var2438 var2438)
(declare-const var3442 var3244) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer 
(assert (not (= var3442 null-var3244)))
(declare-const var2982 var949) ; Statement: r5 := @parameter0: javax.xml.crypto.Data 
(assert (not (= var2982 null-var949)))
(declare-const var3844 var2176) ; Statement: r62 := @parameter1: javax.xml.crypto.XMLCryptoContext 
(assert (not (= var3844 null-var2176)))
(declare-const var848 var668) ; Statement: r2 := @parameter2: java.io.OutputStream 
(assert (not (= var848 null-var668)))
(define-const var2110 var1454 (apacheCanonicalizer/1787477456 var3442)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer: com.sun.org.apache.xml.internal.security.c14n.Canonicalizer apacheCanonicalizer> 
 ; Statement: if $r1 != null goto (branch) 
(assert (not (not (= var2110 null-var1454)))) ; Negate: Cond: $r1 != null  
(declare-const var1708 var2438) ; Statement: $r69 := @caughtexception 
(assert (not (= var1708 null-var2438)))
(define-const var942 var2852 var2852-init) ; Statement: $r70 = new javax.xml.crypto.dsig.TransformException 
(define-const var2854 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2854)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2854!1 String)
(assert (= var2854!1 ""))
(assert true)
(define-const var593 String (append/672562846 var2854!1 "Couldn\u0027t find Canonicalizer for: ")) ; Statement: $r73 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find Canonicalizer for: ") 
(declare-const var2854!2 String)
(assert (= var2854!2 (str.++ var2854!1 "Couldn\u0027t find Canonicalizer for: ")))
(assert true)
(define-const var417 String (getAlgorithm/1509473463 (cast-from-var3244-to-var199 var3442))) ; Statement: $r72 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var2732 String (append/672562846 var593 var417)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r72) 
(declare-const var593!1 String)
(assert (= var593!1 (str.++ var593 var417)))
(assert true)
(define-const var3269 String (append/672562846 var2732 ": ")) ; Statement: $r76 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2732!1 String)
(assert (= var2732!1 (str.++ var2732 ": ")))
(assert true)
(define-const var2885 String (getMessage/849299655 (cast-from-var2438-to-var2703 var1708))) ; Statement: $r75 = virtualinvoke $r69.<com.sun.org.apache.xml.internal.security.c14n.InvalidCanonicalizerException: java.lang.String getMessage()>() 
(assert true)
(define-const var2514 String (append/672562846 var3269 var2885)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r75) 
(declare-const var3269!1 String)
(assert (= var3269!1 (str.++ var3269 var2885)))
(assert true)
(define-const var46 String (toString/-2075883882 var2514)) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/401862732 var942 var46 (cast-from-var2438-to-var2703 var1708))) ; Statement: specialinvoke $r70.<javax.xml.crypto.dsig.TransformException: void <init>(java.lang.String,java.lang.Throwable)>($r78, $r69) 

(declare-const var942!1 var2852)
(declare-const var46!1 String)
(declare-const var1708!1 var2438)
 ; Statement: throw $r70 
(check-sat)
(get-model)
(get-unsat-core)
; {apacheCanonicalizer/1787477456=([org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer], com.sun.org.apache.xml.internal.security.c14n.Canonicalizer), var2852-init=([], javax.xml.crypto.dsig.TransformException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAlgorithm/1509473463=([javax.xml.crypto.dsig.TransformService], java.lang.String), cast-from-var3244-to-var199=([org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer], javax.xml.crypto.dsig.TransformService), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2438-to-var2703=([com.sun.org.apache.xml.internal.security.c14n.InvalidCanonicalizerException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/401862732=([javax.xml.crypto.dsig.TransformException, java.lang.String, java.lang.Throwable], void)}
; {var3244=org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer, var3442=r0, var949=javax.xml.crypto.Data, var2982=r5, var2176=javax.xml.crypto.XMLCryptoContext, var3844=r62, var668=java.io.OutputStream, var848=r2, var1454=com.sun.org.apache.xml.internal.security.c14n.Canonicalizer, var2110=$r1, var2438=com.sun.org.apache.xml.internal.security.c14n.InvalidCanonicalizerException, var1708=$r69, var2852=javax.xml.crypto.dsig.TransformException, var942=$r70, var2854=$r71, var593=$r73, var199=javax.xml.crypto.dsig.TransformService, var417=$r72, var2732=$r74, var3269=$r76, var2703=java.lang.Throwable, var2885=$r75, var2514=$r77, var46=$r78}
; {org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer=var3244, r0=var3442, javax.xml.crypto.Data=var949, r5=var2982, javax.xml.crypto.XMLCryptoContext=var2176, r62=var3844, java.io.OutputStream=var668, r2=var848, com.sun.org.apache.xml.internal.security.c14n.Canonicalizer=var1454, $r1=var2110, com.sun.org.apache.xml.internal.security.c14n.InvalidCanonicalizerException=var2438, $r69=var1708, javax.xml.crypto.dsig.TransformException=var2852, $r70=var942, $r71=var2854, $r73=var593, javax.xml.crypto.dsig.TransformService=var199, $r72=var417, $r74=var2732, $r76=var3269, java.lang.Throwable=var2703, $r75=var2885, $r77=var2514, $r78=var46}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer;	r5 := @parameter0: javax.xml.crypto.Data;	r62 := @parameter1: javax.xml.crypto.XMLCryptoContext;	r2 := @parameter2: java.io.OutputStream;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer: com.sun.org.apache.xml.internal.security.c14n.Canonicalizer apacheCanonicalizer>;	if $r1 != null goto (branch);	$r69 := @caughtexception;	$r70 = new javax.xml.crypto.dsig.TransformException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r73 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find Canonicalizer for: ");	$r72 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer: java.lang.String getAlgorithm()>();	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r72);	$r76 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r75 = virtualinvoke $r69.<com.sun.org.apache.xml.internal.security.c14n.InvalidCanonicalizerException: java.lang.String getMessage()>();	$r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r75);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r70.<javax.xml.crypto.dsig.TransformException: void <init>(java.lang.String,java.lang.Throwable)>($r78, $r69);	throw $r70
;block_num 2