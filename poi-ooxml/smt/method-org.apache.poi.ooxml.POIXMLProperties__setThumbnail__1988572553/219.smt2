(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3801 0)
(declare-sort var3622 0)
(declare-sort var218 0)
(declare-sort var1145 0)
(declare-sort var1480 0)
(declare-sort var1334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getThumbnailPart/274556983 (var3801) var1145)
(declare-fun var1480_getContentTypeFromFileExtension/1116046182 (String) String)
(declare-fun getContentType/323114383 (var1145) String)
(declare-fun var1334-init () var1334)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1334 String) void)
(declare-const null-var3801 var3801)
(declare-const null-String String)
(declare-const null-var218 var218)
(declare-const null-var1145 var1145)
(declare-const var1152 var3801) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLProperties 
(assert (not (= var1152 null-var3801)))
(declare-const var2625 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2625 null-String)))
(declare-const var309 var218) ; Statement: r5 := @parameter1: java.io.InputStream 
(assert (not (= var309 null-var218)))
(assert true)
(define-const var1490 var1145 (getThumbnailPart/274556983 var1152)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart getThumbnailPart()>() 
 ; Statement: if r1 != null goto r3 = staticinvoke <org.apache.poi.openxml4j.opc.ContentTypes: java.lang.String getContentTypeFromFileExtension(java.lang.String)>(r2) 
(assert (not (= var1490 null-var1145))) ; Cond: r1 != null 
(define-const var3630 String (var1480_getContentTypeFromFileExtension/1116046182 var2625)) ; Statement: r3 = staticinvoke <org.apache.poi.openxml4j.opc.ContentTypes: java.lang.String getContentTypeFromFileExtension(java.lang.String)>(r2) 
(assert true)
(define-const var934 String (getContentType/323114383 var1490)) ; Statement: $r4 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>() 
(assert true)
(define-const var1253 Bool (= var3630 var934)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 != 0 goto $r6 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.io.OutputStream getOutputStream()>() 
(assert (not (not (= (ite var1253 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3963 var1334 var1334-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var432 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var432)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var432!1 String)
(assert (= var432!1 ""))
(assert true)
(define-const var1143 String (append/672562846 var432!1 "Can\u0027t set a Thumbnail of type ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t set a Thumbnail of type ") 
(declare-const var432!2 String)
(assert (= var432!2 (str.++ var432!1 "Can\u0027t set a Thumbnail of type ")))
(assert true)
(define-const var3596 String (append/672562846 var1143 var3630)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1143!1 String)
(assert (= var1143!1 (str.++ var1143 var3630)))
(assert true)
(define-const var3458 String (append/672562846 var3596 " when existing one is of a different type ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when existing one is of a different type ") 
(declare-const var3596!1 String)
(assert (= var3596!1 (str.++ var3596 " when existing one is of a different type ")))
(assert true)
(define-const var3419 String (getContentType/323114383 var1490)) ; Statement: $r11 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>() 
(assert true)
(define-const var2706 String (append/672562846 var3458 var3419)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3458!1 String)
(assert (= var3458!1 (str.++ var3458 var3419)))
(assert true)
(define-const var2665 String (toString/-2075883882 var2706)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3963 var2665)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var3963!1 var1334)
(declare-const var2665!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getThumbnailPart/274556983=([org.apache.poi.ooxml.POIXMLProperties], org.apache.poi.openxml4j.opc.PackagePart), var1480_getContentTypeFromFileExtension/1116046182=([java.lang.String], java.lang.String), getContentType/323114383=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.String), var1334-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3801=org.apache.poi.ooxml.POIXMLProperties, var1152=r0, var2625=r2, var3622=null_type, var218=java.io.InputStream, var309=r5, var1145=org.apache.poi.openxml4j.opc.PackagePart, var1490=r1, var1480=org.apache.poi.openxml4j.opc.ContentTypes, var3630=r3, var934=$r4, var1253=$z0, var1334=java.lang.IllegalArgumentException, var3963=$r7, var432=$r8, var1143=$r9, var3596=$r10, var3458=$r12, var3419=$r11, var2706=$r13, var2665=$r14}
; {org.apache.poi.ooxml.POIXMLProperties=var3801, r0=var1152, r2=var2625, null_type=var3622, java.io.InputStream=var218, r5=var309, org.apache.poi.openxml4j.opc.PackagePart=var1145, r1=var1490, org.apache.poi.openxml4j.opc.ContentTypes=var1480, r3=var3630, $r4=var934, $z0=var1253, java.lang.IllegalArgumentException=var1334, $r7=var3963, $r8=var432, $r9=var1143, $r10=var3596, $r12=var3458, $r11=var3419, $r13=var2706, $r14=var2665}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLProperties;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.io.InputStream;	r1 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart getThumbnailPart()>();	if r1 != null goto r3 = staticinvoke <org.apache.poi.openxml4j.opc.ContentTypes: java.lang.String getContentTypeFromFileExtension(java.lang.String)>(r2);	r3 = staticinvoke <org.apache.poi.openxml4j.opc.ContentTypes: java.lang.String getContentTypeFromFileExtension(java.lang.String)>(r2);	$r4 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 != 0 goto $r6 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.io.OutputStream getOutputStream()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t set a Thumbnail of type ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when existing one is of a different type ");	$r11 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 3