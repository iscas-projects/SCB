(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2500 0)
(declare-sort var2214 0)
(declare-sort var2381 0)
(declare-sort var1731 0)
(declare-sort var2909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1731-init () var1731)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toExternalForm/431506284 (var2214) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/78054103 (var1731 String var2909) void)
(declare-fun cast-from-var2381-to-var2909 (var2381) var2909)
(declare-fun cast-from-var1731-to-var2909 (var1731) var2909)
(declare-const null-var2500 var2500)
(declare-const null-var2214 var2214)
(declare-const null-var2381 var2381)
(declare-const var2917 var2500) ; Statement: r9 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver 
(assert (not (= var2917 null-var2500)))
(declare-const var2370 var2214) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var2370 null-var2214)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2469 var2381) ; Statement: $r2 := @caughtexception 
(assert (not (= var2469 null-var2381)))
(define-const var3437 var1731 var1731-init) ; Statement: $r11 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException 
(define-const var3 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3!1 String)
(assert (= var3!1 ""))
(assert true)
(define-const var532 String (append/672562846 var3!1 "Could not open url stream : ")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open url stream : ") 
(declare-const var3!2 String)
(assert (= var3!2 (str.++ var3!1 "Could not open url stream : ")))
(assert true)
(define-const var251 String (toExternalForm/431506284 var2370)) ; Statement: $r5 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var74 String (append/672562846 var532 var251)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var532!1 String)
(assert (= var532!1 (str.++ var532 var251)))
(assert true)
(define-const var2794 String (toString/-2075883882 var74)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/78054103 var3437 var2794 (cast-from-var2381-to-var2909 var2469))) ; Statement: specialinvoke $r11.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var3437!1 var1731)
(declare-const var2794!1 String)
(declare-const var2469!1 var2381)
(define-const var368 var2909 (cast-from-var1731-to-var2909 var3437!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1731-init=([], org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toExternalForm/431506284=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/78054103=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, java.lang.String, java.lang.Throwable], void), cast-from-var2381-to-var2909=([java.io.IOException], java.lang.Throwable), cast-from-var1731-to-var2909=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException], java.lang.Throwable)}
; {var2500=org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver, var2917=r9, var2214=java.net.URL, var2370=r0, var2381=java.io.IOException, var2469=$r2, var1731=org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, var3437=$r11, var3=$r10, var532=$r6, var251=$r5, var74=$r7, var2794=$r8, var2909=java.lang.Throwable, var368=$r12}
; {org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver=var2500, r9=var2917, java.net.URL=var2214, r0=var2370, java.io.IOException=var2381, $r2=var2469, org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException=var1731, $r11=var3437, $r10=var3, $r6=var532, $r5=var251, $r7=var74, $r8=var2794, java.lang.Throwable=var2909, $r12=var368}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver;	r0 := @parameter0: java.net.URL;	$r2 := @caughtexception;	$r11 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not open url stream : ");	$r5 = virtualinvoke r0.<java.net.URL: java.lang.String toExternalForm()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2