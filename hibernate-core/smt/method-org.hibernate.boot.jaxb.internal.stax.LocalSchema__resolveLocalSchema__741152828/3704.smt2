(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var391 0)
(declare-sort var747 0)
(declare-sort var2174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var747-init () var747)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toExternalForm/431506284 (var1725) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1598139671 (var747 String) void)
(declare-fun cast-from-var747-to-var2174 (var747) var2174)
(declare-const null-var1725 var1725)
(declare-const null-var391 var391)
(declare-const var728 var1725) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var728 null-var1725)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var221 var391) ; Statement: $r5 := @caughtexception 
(assert (not (= var221 null-var391)))
(define-const var739 var747 var747-init) ; Statement: $r33 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException 
(define-const var3013 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3013)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3013!1 String)
(assert (= var3013!1 ""))
(assert true)
(define-const var890 String (append/672562846 var3013!1 "Stream error handling schema url [")) ; Statement: $r9 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [") 
(declare-const var3013!2 String)
(assert (= var3013!2 (str.++ var3013!1 "Stream error handling schema url [")))
(assert true)
(define-const var1488 String (toExternalForm/431506284 var728)) ; Statement: $r8 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var3422 String (append/672562846 var890 var1488)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var890!1 String)
(assert (= var890!1 (str.++ var890 var1488)))
(assert true)
(define-const var3502 String (append/672562846 var3422 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3422!1 String)
(assert (= var3422!1 (str.++ var3422 "]")))
(assert true)
(define-const var1028 String (toString/-2075883882 var3502)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1598139671 var739 var1028)) ; Statement: specialinvoke $r33.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r12) 

(declare-const var739!1 var747)
(declare-const var1028!1 String)
(define-const var1855 var2174 (cast-from-var747-to-var2174 var739!1)) ; Statement: $r35 = (java.lang.Throwable) $r33 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var747-init=([], org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toExternalForm/431506284=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1598139671=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, java.lang.String], void), cast-from-var747-to-var2174=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException], java.lang.Throwable)}
; {var1725=java.net.URL, var728=r0, var391=java.io.IOException, var221=$r5, var747=org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, var739=$r33, var3013=$r32, var890=$r9, var1488=$r8, var3422=$r10, var3502=$r11, var1028=$r12, var2174=java.lang.Throwable, var1855=$r35}
; {java.net.URL=var1725, r0=var728, java.io.IOException=var391, $r5=var221, org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException=var747, $r33=var739, $r32=var3013, $r9=var890, $r8=var1488, $r10=var3422, $r11=var3502, $r12=var1028, java.lang.Throwable=var2174, $r35=var1855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r5 := @caughtexception;	$r33 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [");	$r8 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r12);	$r35 = (java.lang.Throwable) $r33;	throw $r35
;block_num 2