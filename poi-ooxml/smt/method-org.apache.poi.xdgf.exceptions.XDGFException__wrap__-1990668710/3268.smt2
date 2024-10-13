(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var880 0)
(declare-sort var183 0)
(declare-sort var2283 0)
(declare-sort var3976 0)
(declare-sort var3476 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var183-init () var183)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getPackagePart/-804310696 (var880) var2283)
(declare-fun getPartName/1256188844 (var2283) var3976)
(declare-fun append/-1031950772 (String var3476) String)
(declare-fun cast-from-var3976-to-var3476 (var3976) var3476)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var657) String)
(declare-fun cast-from-var183-to-var657 (var183) var657)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCause/-638798464 (var657) var657)
(declare-fun <init>/1760802295 (var183 String var657) void)
(declare-const null-var880 var880)
(declare-const null-var183 var183)
(declare-const null-var657 var657)
(declare-const var2059 var880) ; Statement: r2 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart 
(assert (not (= var2059 null-var880)))
(declare-const var2035 var183) ; Statement: r6 := @parameter1: org.apache.poi.ooxml.POIXMLException 
(assert (not (= var2035 null-var183)))
(define-const var2711 var183 var183-init) ; Statement: $r0 = new org.apache.poi.ooxml.POIXMLException 
(define-const var64 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var64)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var64!1 String)
(assert (= var64!1 ""))
(assert true)
(define-const var999 var2283 (getPackagePart/-804310696 var2059)) ; Statement: $r3 = virtualinvoke r2.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var3877 var3976 (getPartName/1256188844 var999)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>() 
(assert true)
(define-const var2257 String (append/-1031950772 var64!1 (cast-from-var3976-to-var3476 var3877))) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var64!2 String)
(assert (str.prefixof var64!1 var64!2))
(assert true)
(define-const var3354 String (append/672562846 var2257 ": ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2257!1 String)
(assert (= var2257!1 (str.++ var2257 ": ")))
(assert true)
(define-const var2370 String (getMessage/849299655 (cast-from-var183-to-var657 var2035))) ; Statement: $r7 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>() 
(assert true)
(define-const var18 String (append/672562846 var3354 var2370)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3354!1 String)
(assert (= var3354!1 (str.++ var3354 var2370)))
(assert true)
(define-const var988 String (toString/-2075883882 var18)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2241 var657 (getCause/-638798464 (cast-from-var183-to-var657 var2035))) ; Statement: $r10 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
 ; Statement: if $r10 != null goto $r12 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
(assert (not (not (= var2241 null-var657)))) ; Negate: Cond: $r10 != null  
(define-const var3528 var657 (cast-from-var183-to-var657 var2035)) ; Statement: $r12 = r6 
 ; Statement: goto [?= specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1760802295 var2711 var988 var3528)) ; Statement: specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r12) 

(declare-const var2711!1 var183)
(declare-const var988!1 String)
(declare-const var3528!1 var657)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var183-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), getPartName/1256188844=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3976-to-var3476=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var183-to-var657=([org.apache.poi.ooxml.POIXMLException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), <init>/1760802295=([org.apache.poi.ooxml.POIXMLException, java.lang.String, java.lang.Throwable], void)}
; {var880=org.apache.poi.ooxml.POIXMLDocumentPart, var2059=r2, var183=org.apache.poi.ooxml.POIXMLException, var2035=r6, var2711=$r0, var64=$r1, var2283=org.apache.poi.openxml4j.opc.PackagePart, var999=$r3, var3976=org.apache.poi.openxml4j.opc.PackagePartName, var3877=$r4, var3476=java.lang.Object, var2257=$r5, var3354=$r8, var657=java.lang.Throwable, var2370=$r7, var18=$r9, var988=$r11, var2241=$r10, var3528=$r12}
; {org.apache.poi.ooxml.POIXMLDocumentPart=var880, r2=var2059, org.apache.poi.ooxml.POIXMLException=var183, r6=var2035, $r0=var2711, $r1=var64, org.apache.poi.openxml4j.opc.PackagePart=var2283, $r3=var999, org.apache.poi.openxml4j.opc.PackagePartName=var3976, $r4=var3877, java.lang.Object=var3476, $r5=var2257, $r8=var3354, java.lang.Throwable=var657, $r7=var2370, $r9=var18, $r11=var988, $r10=var2241, $r12=var3528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart;	r6 := @parameter1: org.apache.poi.ooxml.POIXMLException;	$r0 = new org.apache.poi.ooxml.POIXMLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r4 = virtualinvoke $r3.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r7 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	if $r10 != null goto $r12 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	$r12 = r6;	goto [?= specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r12)];	specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r12);	return $r0
;block_num 3