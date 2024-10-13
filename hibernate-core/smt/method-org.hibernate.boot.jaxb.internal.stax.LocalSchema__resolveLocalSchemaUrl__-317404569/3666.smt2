(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var2094 0)
(declare-sort var3324 0)
(declare-sort var861 0)
(declare-sort var2033 0)
(declare-sort var3040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2094!class ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var3324)
(declare-fun getResource/282459787 (var3324 String) var861)
(declare-fun var2033-init () var2033)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1598139671 (var2033 String) void)
(declare-fun cast-from-var2033-to-var3040 (var2033) var3040)
(declare-const null-String String)
(declare-const null-var861 var861)
(declare-const var526 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var526 null-String)))
(define-const var1617 ClassObject var2094!class) ; Statement: $r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchema;" 
(assert true)
(define-const var2582 var3324 (getClassLoader/-563698447 var1617)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var1501 var861 (getResource/282459787 var2582 var526)) ; Statement: r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1501 null-var861)))) ; Negate: Cond: r3 != null  
(define-const var863 var2033 var2033-init) ; Statement: $r11 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException 
(define-const var1971 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1971)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1971!1 String)
(assert (= var1971!1 ""))
(assert true)
(define-const var2764 String (append/672562846 var1971!1 "Unable to locate schema [")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [") 
(declare-const var1971!2 String)
(assert (= var1971!2 (str.++ var1971!1 "Unable to locate schema [")))
(assert true)
(define-const var3648 String (append/672562846 var2764 var526)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2764!1 String)
(assert (= var2764!1 (str.++ var2764 var526)))
(assert true)
(define-const var1212 String (append/672562846 var3648 "] via classpath")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath") 
(declare-const var3648!1 String)
(assert (= var3648!1 (str.++ var3648 "] via classpath")))
(assert true)
(define-const var2071 String (toString/-2075883882 var1212)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1598139671 var863 var2071)) ; Statement: specialinvoke $r11.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r9) 

(declare-const var863!1 var2033)
(declare-const var2071!1 String)
(define-const var3181 var3040 (cast-from-var2033-to-var3040 var863!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var2033-init=([], org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1598139671=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, java.lang.String], void), cast-from-var2033-to-var3040=([org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException], java.lang.Throwable)}
; {var526=r1, var279=null_type, var2094=org.hibernate.boot.jaxb.internal.stax.LocalSchema, var1617=$r0, var3324=java.lang.ClassLoader, var2582=$r2, var861=java.net.URL, var1501=r3, var2033=org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException, var863=$r11, var1971=$r10, var2764=$r6, var3648=$r7, var1212=$r8, var2071=$r9, var3040=java.lang.Throwable, var3181=$r12}
; {r1=var526, null_type=var279, org.hibernate.boot.jaxb.internal.stax.LocalSchema=var2094, $r0=var1617, java.lang.ClassLoader=var3324, $r2=var2582, java.net.URL=var861, r3=var1501, org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException=var2033, $r11=var863, $r10=var1971, $r6=var2764, $r7=var3648, $r8=var1212, $r9=var2071, java.lang.Throwable=var3040, $r12=var3181}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchema;";	$r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	if r3 != null goto return r3;	$r11 = new org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate schema [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] via classpath");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.boot.jaxb.internal.stax.XmlInfrastructureException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2