(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3124 0)
(declare-sort var973 0)
(declare-sort var1800 0)
(declare-sort var1404 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1404-init () var1404)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1815) ClassObject)
(declare-fun cast-from-var973-to-var1815 (var973) var1815)
(declare-fun append/-1031950772 (String var1815) String)
(declare-fun cast-from-ClassObject-to-var1815 (ClassObject) var1815)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1404 String) void)
(declare-const null-var3124 var3124)
(declare-const null-var973 var973)
(declare-const null-var1800 var1800)
(declare-const var2648 var3124) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller 
(assert (not (= var2648 null-var3124)))
(declare-const var3361 var973) ; Statement: r0 := @parameter0: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var3361 null-var973)))
(declare-const var1193 var1800) ; Statement: r34 := @parameter1: java.io.OutputStream 
(assert (not (= var1193 null-var1800)))
(define-const var672 Bool false) ; Statement: $z0 = r0 instanceof org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart 
 ; Statement: if $z0 != 0 goto $r2 = (org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart) r0 
(assert (not (not (= (ite var672 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2459 var1404 var1404-init) ; Statement: $r27 = new java.lang.IllegalArgumentException 
(define-const var947 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var947)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var947!1 String)
(assert (= var947!1 ""))
(assert true)
(define-const var434 String (append/672562846 var947!1 "\u0027part\u0027 must be a PackagePropertiesPart instance, but had: ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'part\' must be a PackagePropertiesPart instance, but had: ") 
(declare-const var947!2 String)
(assert (= var947!2 (str.++ var947!1 "\u0027part\u0027 must be a PackagePropertiesPart instance, but had: ")))
(assert true)
(define-const var435 ClassObject (getClass/1258963082 (cast-from-var973-to-var1815 var3361))) ; Statement: $r29 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var774 String (append/-1031950772 var434 (cast-from-ClassObject-to-var1815 var435))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29) 
(declare-const var434!1 String)
(assert (str.prefixof var434 var434!1))
(assert true)
(define-const var105 String (append/672562846 var774 ", check logs while reading.")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", check logs while reading.") 
(declare-const var774!1 String)
(assert (= var774!1 (str.++ var774 ", check logs while reading.")))
(assert true)
(define-const var1670 String (toString/-2075883882 var105)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2459 var1670)) ; Statement: specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r33) 

(declare-const var2459!1 var1404)
(declare-const var1670!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var1404-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var973-to-var1815=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1815=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3124=org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller, var2648=r1, var973=org.apache.poi.openxml4j.opc.PackagePart, var3361=r0, var1800=java.io.OutputStream, var1193=r34, var672=$z0, var1404=java.lang.IllegalArgumentException, var2459=$r27, var947=$r28, var434=$r30, var1815=java.lang.Object, var435=$r29, var774=$r31, var105=$r32, var1670=$r33}
; {org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller=var3124, r1=var2648, org.apache.poi.openxml4j.opc.PackagePart=var973, r0=var3361, java.io.OutputStream=var1800, r34=var1193, $z0=var672, java.lang.IllegalArgumentException=var1404, $r27=var2459, $r28=var947, $r30=var434, java.lang.Object=var1815, $r29=var435, $r31=var774, $r32=var105, $r33=var1670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller;	r0 := @parameter0: org.apache.poi.openxml4j.opc.PackagePart;	r34 := @parameter1: java.io.OutputStream;	$z0 = r0 instanceof org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart;	if $z0 != 0 goto $r2 = (org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart) r0;	$r27 = new java.lang.IllegalArgumentException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'part\' must be a PackagePropertiesPart instance, but had: ");	$r29 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", check logs while reading.");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r33);	throw $r27
;block_num 2