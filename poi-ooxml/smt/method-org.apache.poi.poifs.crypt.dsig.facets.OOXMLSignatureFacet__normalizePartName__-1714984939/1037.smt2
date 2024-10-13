(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2076 0)
(declare-sort var2855 0)
(declare-sort var1287 0)
(declare-sort var2501 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toASCIIString/-363261216 (var2076) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2076-init () var2076)
(declare-fun var2501-init () var2501)
(declare-fun <init>/-113848062 (var2501 var1967) void)
(declare-fun cast-from-var1287-to-var1967 (var1287) var1967)
(declare-const null-var2076 var2076)
(declare-const null-String String)
(declare-const null-var1287 var1287)
(declare-const var1740 var2076) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var1740 null-var2076)))
(declare-const var411 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var411 null-String)))
(assert true)
(define-const var2135 String (toASCIIString/-363261216 var1740)) ; Statement: r13 = virtualinvoke r0.<java.net.URI: java.lang.String toASCIIString()>() 
(assert true)
(define-const var1123 Bool (startsWith/-1785782452 var2135 var411)) ; Statement: $z0 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $r2 = new java.net.URI 
(assert (not (= (ite var1123 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2661 var2076 var2076-init) ; Statement: $r2 = new java.net.URI 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1583 var1287) ; Statement: $r11 := @caughtexception 
(assert (not (= var1583 null-var1287)))
(define-const var3708 var2501 var2501-init) ; Statement: $r12 = new javax.xml.crypto.dsig.XMLSignatureException 
(assert true)
;(assert (<init>/-113848062 var3708 (cast-from-var1287-to-var1967 var1583))) ; Statement: specialinvoke $r12.<javax.xml.crypto.dsig.XMLSignatureException: void <init>(java.lang.Throwable)>($r11) 

(declare-const var3708!1 var2501)
(declare-const var1583!1 var1287)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {toASCIIString/-363261216=([java.net.URI], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2076-init=([], java.net.URI), var2501-init=([], javax.xml.crypto.dsig.XMLSignatureException), <init>/-113848062=([javax.xml.crypto.dsig.XMLSignatureException, java.lang.Throwable], void), cast-from-var1287-to-var1967=([java.net.URISyntaxException], java.lang.Throwable)}
; {var2076=java.net.URI, var1740=r0, var411=r1, var2855=null_type, var2135=r13, var1123=$z0, var2661=$r2, var1287=java.net.URISyntaxException, var1583=$r11, var2501=javax.xml.crypto.dsig.XMLSignatureException, var3708=$r12, var1967=java.lang.Throwable}
; {java.net.URI=var2076, r0=var1740, r1=var411, null_type=var2855, r13=var2135, $z0=var1123, $r2=var2661, java.net.URISyntaxException=var1287, $r11=var1583, javax.xml.crypto.dsig.XMLSignatureException=var2501, $r12=var3708, java.lang.Throwable=var1967}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.net.URI;	r1 := @parameter1: java.lang.String;	r13 = virtualinvoke r0.<java.net.URI: java.lang.String toASCIIString()>();	$z0 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 != 0 goto $r2 = new java.net.URI;	$r2 = new java.net.URI;	$r11 := @caughtexception;	$r12 = new javax.xml.crypto.dsig.XMLSignatureException;	specialinvoke $r12.<javax.xml.crypto.dsig.XMLSignatureException: void <init>(java.lang.Throwable)>($r11);	throw $r12
;block_num 3