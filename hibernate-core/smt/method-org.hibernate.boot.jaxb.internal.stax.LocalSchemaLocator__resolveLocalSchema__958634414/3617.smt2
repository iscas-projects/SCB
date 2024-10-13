(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2638 0)
(declare-sort var1826 0)
(declare-sort var730 0)
(declare-sort var560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var730-init () var730)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toExternalForm/431506284 (var2638) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1598139671 (var730 String) void)
(declare-fun cast-from-var730-to-var560 (var730) var560)
(declare-const null-var2638 var2638)
(declare-const null-var1826 var1826)
(declare-const var7 var2638) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var7 null-var2638)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2568 var1826) ; Statement: $r5 := @caughtexception 
(assert (not (= var2568 null-var1826)))
(define-const var510 var730 var730-init) ; Statement: $r33 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException 
(define-const var3156 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3156)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3156!1 String)
(assert (= var3156!1 ""))
(assert true)
(define-const var1148 String (append/672562846 var3156!1 "Stream error handling schema url [")) ; Statement: $r9 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [") 
(declare-const var3156!2 String)
(assert (= var3156!2 (str.++ var3156!1 "Stream error handling schema url [")))
(assert true)
(define-const var3819 String (toExternalForm/431506284 var7)) ; Statement: $r8 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var1187 String (append/672562846 var1148 var3819)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1148!1 String)
(assert (= var1148!1 (str.++ var1148 var3819)))
(assert true)
(define-const var1274 String (append/672562846 var1187 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1187!1 String)
(assert (= var1187!1 (str.++ var1187 "]")))
(assert true)
(define-const var3368 String (toString/-2075883882 var1274)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1598139671 var510 var3368)) ; Statement: specialinvoke $r33.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r12) 

(declare-const var510!1 var730)
(declare-const var3368!1 String)
(define-const var3412 var560 (cast-from-var730-to-var560 var510!1)) ; Statement: $r35 = (java.lang.Throwable) $r33 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var730-init=([], org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toExternalForm/431506284=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1598139671=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, java.lang.String], void), cast-from-var730-to-var560=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException], java.lang.Throwable)}
; {var2638=java.net.URL, var7=r0, var1826=java.io.IOException, var2568=$r5, var730=org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, var510=$r33, var3156=$r32, var1148=$r9, var3819=$r8, var1187=$r10, var1274=$r11, var3368=$r12, var560=java.lang.Throwable, var3412=$r35}
; {java.net.URL=var2638, r0=var7, java.io.IOException=var1826, $r5=var2568, org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException=var730, $r33=var510, $r32=var3156, $r9=var1148, $r8=var3819, $r10=var1187, $r11=var1274, $r12=var3368, java.lang.Throwable=var560, $r35=var3412}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r5 := @caughtexception;	$r33 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stream error handling schema url [");	$r8 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r12);	$r35 = (java.lang.Throwable) $r33;	throw $r35
;block_num 2