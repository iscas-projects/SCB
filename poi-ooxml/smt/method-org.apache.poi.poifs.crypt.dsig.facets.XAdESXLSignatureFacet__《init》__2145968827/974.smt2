(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1519 0)
(declare-sort var1510 0)
(declare-sort var3586 0)
(declare-sort var261 0)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1510) void)
(declare-fun cast-from-var1519-to-var1510 (var1519) var1510)
(declare-fun var261-init () var261)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3596) String)
(declare-fun cast-from-var3586-to-var3596 (var3586) var3596)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var261 String var3596) void)
(declare-const null-var1519 var1519)
(declare-const null-var3586 var3586)
(declare-const var3829 var1519) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet 
(assert (not (= var3829 null-var1519)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1519-to-var1510 var3829))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3829!1 var1519)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2396 var3586) ; Statement: $r2 := @caughtexception 
(assert (not (= var2396 null-var3586)))
(define-const var3028 var261 var261-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var381 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var381)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var381!1 String)
(assert (= var381!1 ""))
(assert true)
(define-const var904 String (append/672562846 var381!1 "X509 JCA error: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("X509 JCA error: ") 
(declare-const var381!2 String)
(assert (= var381!2 (str.++ var381!1 "X509 JCA error: ")))
(assert true)
(define-const var963 String (getMessage/849299655 (cast-from-var3586-to-var3596 var2396))) ; Statement: $r5 = virtualinvoke $r2.<java.security.cert.CertificateException: java.lang.String getMessage()>() 
(assert true)
(define-const var2231 String (append/672562846 var904 var963)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var904!1 String)
(assert (= var904!1 (str.++ var904 var963)))
(assert true)
(define-const var2992 String (toString/-2075883882 var2231)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var3028 var2992 (cast-from-var3586-to-var3596 var2396))) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var3028!1 var261)
(declare-const var2992!1 String)
(declare-const var2396!1 var3586)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1519-to-var1510=([org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet], java.lang.Object), var261-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3586-to-var3596=([java.security.cert.CertificateException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var1519=org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet, var3829=r0, var1510=java.lang.Object, var3586=java.security.cert.CertificateException, var2396=$r2, var261=java.lang.IllegalStateException, var3028=$r3, var381=$r4, var904=$r6, var3596=java.lang.Throwable, var963=$r5, var2231=$r7, var2992=$r8}
; {org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet=var1519, r0=var3829, java.lang.Object=var1510, java.security.cert.CertificateException=var3586, $r2=var2396, java.lang.IllegalStateException=var261, $r3=var3028, $r4=var381, $r6=var904, java.lang.Throwable=var3596, $r5=var963, $r7=var2231, $r8=var2992}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESXLSignatureFacet;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 := @caughtexception;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("X509 JCA error: ");	$r5 = virtualinvoke $r2.<java.security.cert.CertificateException: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	throw $r3
;block_num 2