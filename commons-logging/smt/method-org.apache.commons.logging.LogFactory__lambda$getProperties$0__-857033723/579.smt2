(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2952 0)
(declare-sort var2233 0)
(declare-sort var3064 0)
(declare-sort var1747 0)
(declare-sort var2673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var2952) var2233)
(declare-fun var1747_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2673) String)
(declare-fun cast-from-var2952-to-var2673 (var2952) var2673)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1747_logDiagnostic/1268238408 (String) void)
(declare-const null-var2952 var2952)
(declare-const null-var3064 var3064)
(declare-const var1251 var2952) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1251 null-var2952)))
(assert true) ; Non Conditional
(assert true)
(define-const var1925 var2233 (openConnection/1646032697 var1251)) ; Statement: r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1352 var3064) ; Statement: $r2 := @caughtexception 
(assert (not (= var1352 null-var3064)))
(define-const var2248 Bool var1747_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2248 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1996 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1996)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1996!1 String)
(assert (= var1996!1 ""))
(assert true)
(define-const var2546 String (append/672562846 var1996!1 "Unable to read URL ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ") 
(declare-const var1996!2 String)
(assert (= var1996!2 (str.++ var1996!1 "Unable to read URL ")))
(assert true)
(define-const var2429 String (append/-1031950772 var2546 (cast-from-var2952-to-var2673 var1251))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2546!1 String)
(assert (str.prefixof var2546 var2546!1))
(assert true)
(define-const var132 String (toString/-2075883882 var2429)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1747_logDiagnostic/1268238408 var132)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6) 

(declare-const var132!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), var1747_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2952-to-var2673=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1747_logDiagnostic/1268238408=([java.lang.String], void)}
; {var2952=java.net.URL, var1251=r0, var2233=java.net.URLConnection, var1925=r14, var3064=java.io.IOException, var1352=$r2, var1747=org.apache.commons.logging.LogFactory, var2248=$z0, var1996=$r3, var2546=$r4, var2673=java.lang.Object, var2429=$r5, var132=$r6}
; {java.net.URL=var2952, r0=var1251, java.net.URLConnection=var2233, r14=var1925, java.io.IOException=var3064, $r2=var1352, org.apache.commons.logging.LogFactory=var1747, $z0=var2248, $r3=var1996, $r4=var2546, java.lang.Object=var2673, $r5=var2429, $r6=var132}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	r14 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	$r2 := @caughtexception;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return null;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read URL ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r6);	return null
;block_num 5