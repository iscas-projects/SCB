(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3913 0)
(declare-sort var1089 0)
(declare-sort var3053 0)
(declare-sort var1392 0)
(declare-sort var3658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1392-init () var1392)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3658) String)
(declare-fun cast-from-var3053-to-var3658 (var3053) var3658)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var1392 String var3658) void)
(declare-const null-var3913 var3913)
(declare-const null-var1089 var1089)
(declare-const null-var3053 var3053)
(declare-const var1942 var3913) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.services.RevocationData 
(assert (not (= var1942 null-var3913)))
(declare-const var1268 var1089) ; Statement: r1 := @parameter0: java.security.cert.X509CRL 
(assert (not (= var1268 null-var1089)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2896 var3053) ; Statement: $r3 := @caughtexception 
(assert (not (= var2896 null-var3053)))
(define-const var3856 var1392 var1392-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3920 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3920)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3920!1 String)
(assert (= var3920!1 ""))
(assert true)
(define-const var1873 String (append/672562846 var3920!1 "CRL coding error: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CRL coding error: ") 
(declare-const var3920!2 String)
(assert (= var3920!2 (str.++ var3920!1 "CRL coding error: ")))
(assert true)
(define-const var1482 String (getMessage/849299655 (cast-from-var3053-to-var3658 var2896))) ; Statement: $r6 = virtualinvoke $r3.<java.security.cert.CRLException: java.lang.String getMessage()>() 
(assert true)
(define-const var2766 String (append/672562846 var1873 var1482)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 var1482)))
(assert true)
(define-const var1796 String (toString/-2075883882 var2766)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var3856 var1796 (cast-from-var3053-to-var3658 var2896))) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var3856!1 var1392)
(declare-const var1796!1 String)
(declare-const var2896!1 var3053)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1392-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3053-to-var3658=([java.security.cert.CRLException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void)}
; {var3913=org.apache.poi.poifs.crypt.dsig.services.RevocationData, var1942=r0, var1089=java.security.cert.X509CRL, var1268=r1, var3053=java.security.cert.CRLException, var2896=$r3, var1392=java.lang.IllegalArgumentException, var3856=$r4, var3920=$r5, var1873=$r7, var3658=java.lang.Throwable, var1482=$r6, var2766=$r8, var1796=$r9}
; {org.apache.poi.poifs.crypt.dsig.services.RevocationData=var3913, r0=var1942, java.security.cert.X509CRL=var1089, r1=var1268, java.security.cert.CRLException=var3053, $r3=var2896, java.lang.IllegalArgumentException=var1392, $r4=var3856, $r5=var3920, $r7=var1873, java.lang.Throwable=var3658, $r6=var1482, $r8=var2766, $r9=var1796}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.services.RevocationData;	r1 := @parameter0: java.security.cert.X509CRL;	$r3 := @caughtexception;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CRL coding error: ");	$r6 = virtualinvoke $r3.<java.security.cert.CRLException: java.lang.String getMessage()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	throw $r4
;block_num 2