(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3013 0)
(declare-sort var2849 0)
(declare-sort var2112 0)
(declare-sort var3251 0)
(declare-sort var3219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addIfAbsent/38250334 (var2112 var3219) Bool)
(declare-fun cast-from-String-to-var3219 (String) var3219)
(declare-const null-String String)
(declare-const null-var2849 var2849)
(declare-const var3251-printedWarnings var2112)
(declare-const var3876 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3876 null-String)))
(declare-const var2102 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2102 null-String)))
(declare-const var1849 var2849) ; Statement: r12 := @parameter2: org.xml.sax.SAXException 
(assert (not (= var1849 null-var2849)))
(define-const var3088 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3088)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3088!1 String)
(assert (= var3088!1 ""))
(assert true)
(define-const var748 String (append/672562846 var3088!1 var3876)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3088!2 String)
(assert (= var3088!2 (str.++ var3088!1 var3876)))
(assert true)
(define-const var439 String (append/672562846 var748 ":")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var748!1 String)
(assert (= var748!1 (str.++ var748 ":")))
(assert true)
(define-const var183 String (append/672562846 var439 var2102)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var439!1 String)
(assert (= var439!1 (str.++ var439 var2102)))
(assert true)
(define-const var2410 String (toString/-2075883882 var183)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1167 var2112 var3251-printedWarnings) ; Statement: $r7 = <jdk.xml.internal.XMLSecurityManager: java.util.concurrent.CopyOnWriteArrayList printedWarnings> 
(assert true)
(define-const var3559 Bool (addIfAbsent/38250334 var1167 (cast-from-String-to-var3219 var2410))) ; Statement: $z0 = virtualinvoke $r7.<java.util.concurrent.CopyOnWriteArrayList: boolean addIfAbsent(java.lang.Object)>(r6) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3559 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addIfAbsent/38250334=([java.util.concurrent.CopyOnWriteArrayList, java.lang.Object], boolean), cast-from-String-to-var3219=([java.lang.String], java.lang.Object)}
; {var3876=r1, var3013=null_type, var2102=r3, var2849=org.xml.sax.SAXException, var1849=r12, var3088=$r0, var748=$r2, var439=$r4, var183=$r5, var2410=r6, var2112=java.util.concurrent.CopyOnWriteArrayList, var3251=jdk.xml.internal.XMLSecurityManager, var1167=$r7, var3219=java.lang.Object, var3559=$z0}
; {r1=var3876, null_type=var3013, r3=var2102, org.xml.sax.SAXException=var2849, r12=var1849, $r0=var3088, $r2=var748, $r4=var439, $r5=var183, r6=var2410, java.util.concurrent.CopyOnWriteArrayList=var2112, jdk.xml.internal.XMLSecurityManager=var3251, $r7=var1167, java.lang.Object=var3219, $z0=var3559}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r12 := @parameter2: org.xml.sax.SAXException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = <jdk.xml.internal.XMLSecurityManager: java.util.concurrent.CopyOnWriteArrayList printedWarnings>;	$z0 = virtualinvoke $r7.<java.util.concurrent.CopyOnWriteArrayList: boolean addIfAbsent(java.lang.Object)>(r6);	if $z0 == 0 goto return;	return
;block_num 2