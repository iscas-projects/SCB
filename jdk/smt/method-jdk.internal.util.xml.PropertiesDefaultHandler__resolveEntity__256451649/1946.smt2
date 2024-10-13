(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var2230 0)
(declare-sort var1390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1390-init () var1390)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1399776748 (var1390 String) void)
(declare-const null-var872 var872)
(declare-const null-String String)
(declare-const var1866 var872) ; Statement: r8 := @this: jdk.internal.util.xml.PropertiesDefaultHandler 
(assert (not (= var1866 null-var872)))
(declare-const var2414 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2414 null-String)))
(declare-const var2826 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2826 null-String)))
(assert true)
(define-const var2560 Bool (= var2826 "http://java.sun.com/dtd/properties.dtd")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://java.sun.com/dtd/properties.dtd") 
 ; Statement: if $z0 == 0 goto $r1 = new jdk.internal.org.xml.sax.SAXException 
(assert (= (ite var2560 1 0) 0)) ; Cond: $z0 == 0 
(define-const var729 var1390 var1390-init) ; Statement: $r1 = new jdk.internal.org.xml.sax.SAXException 
(define-const var2912 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2912)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2912!1 String)
(assert (= var2912!1 ""))
(assert true)
(define-const var2406 String (append/672562846 var2912!1 "Invalid system identifier: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid system identifier: ") 
(declare-const var2912!2 String)
(assert (= var2912!2 (str.++ var2912!1 "Invalid system identifier: ")))
(assert true)
(define-const var3394 String (append/672562846 var2406 var2826)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2406!1 String)
(assert (= var2406!1 (str.++ var2406 var2826)))
(assert true)
(define-const var753 String (toString/-2075883882 var3394)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1399776748 var729 var753)) ; Statement: specialinvoke $r1.<jdk.internal.org.xml.sax.SAXException: void <init>(java.lang.String)>($r5) 

(declare-const var729!1 var1390)
(declare-const var753!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1390-init=([], jdk.internal.org.xml.sax.SAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1399776748=([jdk.internal.org.xml.sax.SAXException, java.lang.String], void)}
; {var872=jdk.internal.util.xml.PropertiesDefaultHandler, var1866=r8, var2414=r9, var2230=null_type, var2826=r0, var2560=$z0, var1390=jdk.internal.org.xml.sax.SAXException, var729=$r1, var2912=$r2, var2406=$r3, var3394=$r4, var753=$r5}
; {jdk.internal.util.xml.PropertiesDefaultHandler=var872, r8=var1866, r9=var2414, null_type=var2230, r0=var2826, $z0=var2560, jdk.internal.org.xml.sax.SAXException=var1390, $r1=var729, $r2=var2912, $r3=var2406, $r4=var3394, $r5=var753}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: jdk.internal.util.xml.PropertiesDefaultHandler;	r9 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://java.sun.com/dtd/properties.dtd");	if $z0 == 0 goto $r1 = new jdk.internal.org.xml.sax.SAXException;	$r1 = new jdk.internal.org.xml.sax.SAXException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid system identifier: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<jdk.internal.org.xml.sax.SAXException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2