(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3040 0)
(declare-sort var2753 0)
(declare-sort var2307 0)
(declare-sort var3043 0)
(declare-sort var1017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2307_resolveLocalXsdUrl/-422470600 (String) var2753)
(declare-fun var3043-init () var3043)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-631119497 (var3043 String String) void)
(declare-fun cast-from-var3043-to-var1017 (var3043) var1017)
(declare-const null-String String)
(declare-const null-var2753 var2753)
(declare-const var2287 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2287 null-String)))
(define-const var158 var2753 (var2307_resolveLocalXsdUrl/-422470600 var2287)) ; Statement: r1 = staticinvoke <org.hibernate.boot.xsd.LocalXsdResolver: java.net.URL resolveLocalXsdUrl(java.lang.String)>(r0) 
 ; Statement: if r1 != null goto r34 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var158 null-var2753)))) ; Negate: Cond: r1 != null  
(define-const var2679 var3043 var3043-init) ; Statement: $r36 = new org.hibernate.internal.util.xml.XsdException 
(define-const var1164 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1164)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1164!1 String)
(assert (= var1164!1 ""))
(assert true)
(define-const var3281 String (append/672562846 var1164!1 "Unable to locate schema [")) ; Statement: $r8 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [") 
(declare-const var1164!2 String)
(assert (= var1164!2 (str.++ var1164!1 "Unable to locate schema [")))
(assert true)
(define-const var1745 String (append/672562846 var3281 var2287)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3281!1 String)
(assert (= var3281!1 (str.++ var3281 var2287)))
(assert true)
(define-const var477 String (append/672562846 var1745 "] via classpath")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath") 
(declare-const var1745!1 String)
(assert (= var1745!1 (str.++ var1745 "] via classpath")))
(assert true)
(define-const var59 String (toString/-2075883882 var477)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-631119497 var2679 var59 var2287)) ; Statement: specialinvoke $r36.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r11, r0) 

(declare-const var2679!1 var3043)
(declare-const var59!1 String)
(declare-const var2287!1 String)
(define-const var1565 var1017 (cast-from-var3043-to-var1017 var2679!1)) ; Statement: $r42 = (java.lang.Throwable) $r36 
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {var2307_resolveLocalXsdUrl/-422470600=([java.lang.String], java.net.URL), var3043-init=([], org.hibernate.internal.util.xml.XsdException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-631119497=([org.hibernate.internal.util.xml.XsdException, java.lang.String, java.lang.String], void), cast-from-var3043-to-var1017=([org.hibernate.internal.util.xml.XsdException], java.lang.Throwable)}
; {var2287=r0, var3040=null_type, var2753=java.net.URL, var2307=org.hibernate.boot.xsd.LocalXsdResolver, var158=r1, var3043=org.hibernate.internal.util.xml.XsdException, var2679=$r36, var1164=$r35, var3281=$r8, var1745=$r9, var477=$r10, var59=$r11, var1017=java.lang.Throwable, var1565=$r42}
; {r0=var2287, null_type=var3040, java.net.URL=var2753, org.hibernate.boot.xsd.LocalXsdResolver=var2307, r1=var158, org.hibernate.internal.util.xml.XsdException=var3043, $r36=var2679, $r35=var1164, $r8=var3281, $r9=var1745, $r10=var477, $r11=var59, java.lang.Throwable=var1017, $r42=var1565}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.boot.xsd.LocalXsdResolver: java.net.URL resolveLocalXsdUrl(java.lang.String)>(r0);	if r1 != null goto r34 = virtualinvoke r1.<java.net.URL: java.io.InputStream openStream()>();	$r36 = new org.hibernate.internal.util.xml.XsdException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.hibernate.internal.util.xml.XsdException: void <init>(java.lang.String,java.lang.String)>($r11, r0);	$r42 = (java.lang.Throwable) $r36;	throw $r42
;block_num 2