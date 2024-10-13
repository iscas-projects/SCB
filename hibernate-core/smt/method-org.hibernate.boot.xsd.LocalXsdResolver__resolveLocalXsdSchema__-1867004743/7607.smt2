(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2979 0)
(declare-sort var1736 0)
(declare-sort var2611 0)
(declare-sort var2928 0)
(declare-sort var1258 0)
(declare-sort var1538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2611_resolveLocalXsdUrl/-422470600 (String) var1736)
(declare-fun var1258-init () var1258)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toExternalForm/431506284 (var1736) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-631119497 (var1258 String String) void)
(declare-fun cast-from-var1258-to-var1538 (var1258) var1538)
(declare-const null-String String)
(declare-const null-var1736 var1736)
(declare-const null-var2928 var2928)
(declare-const var1838 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1838 null-String)))
(define-const var2007 var1736 (var2611_resolveLocalXsdUrl/-422470600 var1838)) ; Statement: r1 = staticinvoke <org.hibernate.boot.xsd.LocalXsdResolver: java.net.URL resolveLocalXsdUrl(java.lang.String)>(r0) 
 ; Statement: if r1 != null goto r34 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var2007 null-var1736)))) ; Negate: Cond: r1 != null  
(declare-const var3649 var2928) ; Statement: $r12 := @caughtexception 
(assert (not (= var3649 null-var2928)))
(define-const var513 var1258 var1258-init) ; Statement: $r41 = new org.hibernate.internal.util.xml.XsdException 
(define-const var1702 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1702)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1702!1 String)
(assert (= var1702!1 ""))
(assert true)
(define-const var2501 String (append/672562846 var1702!1 "Stream error handling schema url [")) ; Statement: $r16 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [") 
(declare-const var1702!2 String)
(assert (= var1702!2 (str.++ var1702!1 "Stream error handling schema url [")))
(assert true)
(define-const var1067 String (toExternalForm/431506284 var2007)) ; Statement: $r15 = virtualinvoke r1.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var2424 String (append/672562846 var2501 var1067)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2501!1 String)
(assert (= var2501!1 (str.++ var2501 var1067)))
(assert true)
(define-const var3994 String (append/672562846 var2424 "]")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2424!1 String)
(assert (= var2424!1 (str.++ var2424 "]")))
(assert true)
(define-const var183 String (toString/-2075883882 var3994)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-631119497 var513 var183 var1838)) ; Statement: specialinvoke $r41.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r19, r0) 

(declare-const var513!1 var1258)
(declare-const var183!1 String)
(declare-const var1838!1 String)
(define-const var1279 var1538 (cast-from-var1258-to-var1538 var513!1)) ; Statement: $r44 = (java.lang.Throwable) $r41 
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {var2611_resolveLocalXsdUrl/-422470600=([java.lang.String], java.net.URL), var1258-init=([], org.hibernate.internal.util.xml.XsdException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toExternalForm/431506284=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-631119497=([org.hibernate.internal.util.xml.XsdException, java.lang.String, java.lang.String], void), cast-from-var1258-to-var1538=([org.hibernate.internal.util.xml.XsdException], java.lang.Throwable)}
; {var1838=r0, var2979=null_type, var1736=java.net.URL, var2611=org.hibernate.boot.xsd.LocalXsdResolver, var2007=r1, var2928=java.io.IOException, var3649=$r12, var1258=org.hibernate.internal.util.xml.XsdException, var513=$r41, var1702=$r40, var2501=$r16, var1067=$r15, var2424=$r17, var3994=$r18, var183=$r19, var1538=java.lang.Throwable, var1279=$r44}
; {r0=var1838, null_type=var2979, java.net.URL=var1736, org.hibernate.boot.xsd.LocalXsdResolver=var2611, r1=var2007, java.io.IOException=var2928, $r12=var3649, org.hibernate.internal.util.xml.XsdException=var1258, $r41=var513, $r40=var1702, $r16=var2501, $r15=var1067, $r17=var2424, $r18=var3994, $r19=var183, java.lang.Throwable=var1538, $r44=var1279}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.boot.xsd.LocalXsdResolver: java.net.URL resolveLocalXsdUrl(java.lang.String)>(r0);	if r1 != null goto r34 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>();	$r12 := @caughtexception;	$r41 = new org.hibernate.internal.util.xml.XsdException;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [");	$r15 = virtualinvoke r1.<java.net.URL: java.lang.String toExternalForm()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r41.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r19, r0);	$r44 = (java.lang.Throwable) $r41;	throw $r44
;block_num 2