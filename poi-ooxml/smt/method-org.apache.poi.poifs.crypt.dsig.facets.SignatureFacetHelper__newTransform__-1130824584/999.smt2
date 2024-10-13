(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3060 0)
(declare-sort var1418 0)
(declare-sort var1671 0)
(declare-sort var3234 0)
(declare-sort var2701 0)
(declare-sort var3723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2701-init () var2701)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/767800921 (var2701 String var3723) void)
(declare-fun cast-from-var3234-to-var3723 (var3234) var3723)
(declare-const null-var3060 var3060)
(declare-const null-String String)
(declare-const null-var1671 var1671)
(declare-const null-var3234 var3234)
(declare-const var1967 var3060) ; Statement: r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var1967 null-var3060)))
(declare-const var790 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var790 null-String)))
(declare-const var263 var1671) ; Statement: r2 := @parameter2: javax.xml.crypto.dsig.spec.TransformParameterSpec 
(assert (not (= var263 null-var1671)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var595 var3234) ; Statement: $r5 := @caughtexception 
(assert (not (= var595 null-var3234)))
(define-const var1542 var2701 var2701-init) ; Statement: $r6 = new javax.xml.crypto.dsig.XMLSignatureException 
(define-const var2497 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2497)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2497!1 String)
(assert (= var2497!1 ""))
(assert true)
(define-const var843 String (append/672562846 var2497!1 "unknown canonicalization method: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown canonicalization method: ") 
(declare-const var2497!2 String)
(assert (= var2497!2 (str.++ var2497!1 "unknown canonicalization method: ")))
(assert true)
(define-const var87 String (append/672562846 var843 var790)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var843!1 String)
(assert (= var843!1 (str.++ var843 var790)))
(assert true)
(define-const var2962 String (toString/-2075883882 var87)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/767800921 var1542 var2962 (cast-from-var3234-to-var3723 var595))) ; Statement: specialinvoke $r6.<javax.xml.crypto.dsig.XMLSignatureException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5) 

(declare-const var1542!1 var2701)
(declare-const var2962!1 String)
(declare-const var595!1 var3234)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2701-init=([], javax.xml.crypto.dsig.XMLSignatureException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/767800921=([javax.xml.crypto.dsig.XMLSignatureException, java.lang.String, java.lang.Throwable], void), cast-from-var3234-to-var3723=([java.security.GeneralSecurityException], java.lang.Throwable)}
; {var3060=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var1967=r0, var790=r1, var1418=null_type, var1671=javax.xml.crypto.dsig.spec.TransformParameterSpec, var263=r2, var3234=java.security.GeneralSecurityException, var595=$r5, var2701=javax.xml.crypto.dsig.XMLSignatureException, var1542=$r6, var2497=$r7, var843=$r8, var87=$r9, var2962=$r10, var3723=java.lang.Throwable}
; {org.apache.poi.poifs.crypt.dsig.SignatureInfo=var3060, r0=var1967, r1=var790, null_type=var1418, javax.xml.crypto.dsig.spec.TransformParameterSpec=var1671, r2=var263, java.security.GeneralSecurityException=var3234, $r5=var595, javax.xml.crypto.dsig.XMLSignatureException=var2701, $r6=var1542, $r7=var2497, $r8=var843, $r9=var87, $r10=var2962, java.lang.Throwable=var3723}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: javax.xml.crypto.dsig.spec.TransformParameterSpec;	$r5 := @caughtexception;	$r6 = new javax.xml.crypto.dsig.XMLSignatureException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown canonicalization method: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<javax.xml.crypto.dsig.XMLSignatureException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5);	throw $r6
;block_num 2