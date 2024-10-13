(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1501 0)
(declare-sort var1323 0)
(declare-sort var1089 0)
(declare-sort var2505 0)
(declare-sort var2583 0)
(declare-sort var2634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1323!class ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var1089)
(declare-fun getResource/282459787 (var1089 String) var2505)
(declare-fun var2583-init () var2583)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1598139671 (var2583 String) void)
(declare-fun cast-from-var2583-to-var2634 (var2583) var2634)
(declare-const null-String String)
(declare-const null-var2505 var2505)
(declare-const var3403 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3403 null-String)))
(define-const var1174 ClassObject var1323!class) ; Statement: $r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchemaLocator;" 
(assert true)
(define-const var3702 var1089 (getClassLoader/-563698447 var1174)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var2080 var2505 (getResource/282459787 var3702 var3403)) ; Statement: r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2080 null-var2505)))) ; Negate: Cond: r3 != null  
(define-const var544 var2583 var2583-init) ; Statement: $r11 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException 
(define-const var509 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var509)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var509!1 String)
(assert (= var509!1 ""))
(assert true)
(define-const var2623 String (append/672562846 var509!1 "Unable to locate schema [")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [") 
(declare-const var509!2 String)
(assert (= var509!2 (str.++ var509!1 "Unable to locate schema [")))
(assert true)
(define-const var132 String (append/672562846 var2623 var3403)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2623!1 String)
(assert (= var2623!1 (str.++ var2623 var3403)))
(assert true)
(define-const var757 String (append/672562846 var132 "] via classpath")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath") 
(declare-const var132!1 String)
(assert (= var132!1 (str.++ var132 "] via classpath")))
(assert true)
(define-const var1753 String (toString/-2075883882 var757)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1598139671 var544 var1753)) ; Statement: specialinvoke $r11.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r9) 

(declare-const var544!1 var2583)
(declare-const var1753!1 String)
(define-const var3398 var2634 (cast-from-var2583-to-var2634 var544!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var2583-init=([], org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1598139671=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, java.lang.String], void), cast-from-var2583-to-var2634=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException], java.lang.Throwable)}
; {var3403=r1, var1501=null_type, var1323=org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator, var1174=$r0, var1089=java.lang.ClassLoader, var3702=$r2, var2505=java.net.URL, var2080=r3, var2583=org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, var544=$r11, var509=$r10, var2623=$r6, var132=$r7, var757=$r8, var1753=$r9, var2634=java.lang.Throwable, var3398=$r12}
; {r1=var3403, null_type=var1501, org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator=var1323, $r0=var1174, java.lang.ClassLoader=var1089, $r2=var3702, java.net.URL=var2505, r3=var2080, org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException=var2583, $r11=var544, $r10=var509, $r6=var2623, $r7=var132, $r8=var757, $r9=var1753, java.lang.Throwable=var2634, $r12=var3398}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchemaLocator;";	$r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	if r3 != null goto return r3;	$r11 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2