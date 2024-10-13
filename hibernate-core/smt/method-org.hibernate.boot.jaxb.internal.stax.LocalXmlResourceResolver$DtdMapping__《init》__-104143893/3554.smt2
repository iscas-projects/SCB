(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1334 0)
(declare-sort var1458 0)
(declare-sort var3371 0)
(declare-sort var672 0)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3371) void)
(declare-fun cast-from-var1334-to-var3371 (var1334) var3371)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun httpBase/-1275184894 (var1334) String)
(declare-fun httpsBase/-1275184894 (var1334) String)
(declare-fun var403_resolveLocalSchemaUrl/525655513 (String) var672)
(declare-fun localSchemaUrl/-1275184894 (var1334) var672)
(declare-const null-var1334 var1334)
(declare-const null-String String)
(declare-const var1813 var1334) ; Statement: r0 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping 
(assert (not (= var1813 null-var1334)))
(declare-const var2896 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2896 null-String)))
(declare-const var3008 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var3008 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1334-to-var3371 var1813))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1813!1 var1334)
(define-const var49 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var49)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var49!1 String)
(assert (= var49!1 ""))
(assert true)
(define-const var2310 String (append/672562846 var49!1 "http://")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("http://") 
(declare-const var49!2 String)
(assert (= var49!2 (str.++ var49!1 "http://")))
(assert true)
(define-const var2132 String (append/672562846 var2310 var2896)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2310!1 String)
(assert (= var2310!1 (str.++ var2310 var2896)))
(assert true)
(define-const var840 String (toString/-2075883882 var2132)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1813!2 var1334)
(assert (not (= var1813!2 null-var1334)))
(assert (= (httpBase/-1275184894 var1813!2) var840)) ; Statement: r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.lang.String httpBase> = $r5 
(define-const var2219 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2219)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2219!1 String)
(assert (= var2219!1 ""))
(assert true)
(define-const var3657 String (append/672562846 var2219!1 "https://")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("https://") 
(declare-const var2219!2 String)
(assert (= var2219!2 (str.++ var2219!1 "https://")))
(assert true)
(define-const var1402 String (append/672562846 var3657 var2896)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3657!1 String)
(assert (= var3657!1 (str.++ var3657 var2896)))
(assert true)
(define-const var3935 String (toString/-2075883882 var1402)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1813!3 var1334)
(assert (not (= var1813!3 null-var1334)))
(assert (= (httpsBase/-1275184894 var1813!3) var3935)) ; Statement: r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.lang.String httpsBase> = $r9 
(define-const var3087 var672 (var403_resolveLocalSchemaUrl/525655513 var3008)) ; Statement: $r11 = staticinvoke <org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator: java.net.URL resolveLocalSchemaUrl(java.lang.String)>(r10) 
(declare-const var1813!4 var1334)
(assert (not (= var1813!4 null-var1334)))
(assert (= (localSchemaUrl/-1275184894 var1813!4) var3087)) ; Statement: r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.net.URL localSchemaUrl> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1334-to-var3371=([org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), httpBase/-1275184894=([org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping], java.lang.String), httpsBase/-1275184894=([org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping], java.lang.String), var403_resolveLocalSchemaUrl/525655513=([java.lang.String], java.net.URL), localSchemaUrl/-1275184894=([org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping], java.net.URL)}
; {var1334=org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping, var1813=r0, var2896=r2, var1458=null_type, var3008=r10, var3371=java.lang.Object, var49=$r1, var2310=$r3, var2132=$r4, var840=$r5, var2219=$r6, var3657=$r7, var1402=$r8, var3935=$r9, var672=java.net.URL, var403=org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator, var3087=$r11}
; {org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping=var1334, r0=var1813, r2=var2896, null_type=var1458, r10=var3008, java.lang.Object=var3371, $r1=var49, $r3=var2310, $r4=var2132, $r5=var840, $r6=var2219, $r7=var3657, $r8=var1402, $r9=var3935, java.net.URL=var672, org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator=var403, $r11=var3087}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping;	r2 := @parameter0: java.lang.String;	r10 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("http://");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.lang.String httpBase> = $r5;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("https://");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.lang.String httpsBase> = $r9;	$r11 = staticinvoke <org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator: java.net.URL resolveLocalSchemaUrl(java.lang.String)>(r10);	r0.<org.hibernate.boot.jaxb.internal.stax.LocalXmlResourceResolver$DtdMapping: java.net.URL localSchemaUrl> = $r11;	return
;block_num 1