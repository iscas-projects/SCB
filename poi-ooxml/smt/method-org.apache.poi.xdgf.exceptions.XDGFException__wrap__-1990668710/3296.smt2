(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1370 0)
(declare-sort var1469 0)
(declare-sort var2034 0)
(declare-sort var2130 0)
(declare-sort var2990 0)
(declare-sort var749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1469-init () var1469)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getPackagePart/-804310696 (var1370) var2034)
(declare-fun getPartName/1256188844 (var2034) var2130)
(declare-fun append/-1031950772 (String var2990) String)
(declare-fun cast-from-var2130-to-var2990 (var2130) var2990)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var749) String)
(declare-fun cast-from-var1469-to-var749 (var1469) var749)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCause/-638798464 (var749) var749)
(declare-fun <init>/1760802295 (var1469 String var749) void)
(declare-const null-var1370 var1370)
(declare-const null-var1469 var1469)
(declare-const null-var749 var749)
(declare-const var2808 var1370) ; Statement: r2 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart 
(assert (not (= var2808 null-var1370)))
(declare-const var2110 var1469) ; Statement: r6 := @parameter1: org.apache.poi.ooxml.POIXMLException 
(assert (not (= var2110 null-var1469)))
(define-const var3391 var1469 var1469-init) ; Statement: $r0 = new org.apache.poi.ooxml.POIXMLException 
(define-const var3928 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3928)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3928!1 String)
(assert (= var3928!1 ""))
(assert true)
(define-const var866 var2034 (getPackagePart/-804310696 var2808)) ; Statement: $r3 = virtualinvoke r2.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var3253 var2130 (getPartName/1256188844 var866)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>() 
(assert true)
(define-const var2475 String (append/-1031950772 var3928!1 (cast-from-var2130-to-var2990 var3253))) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3928!2 String)
(assert (str.prefixof var3928!1 var3928!2))
(assert true)
(define-const var1683 String (append/672562846 var2475 ": ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2475!1 String)
(assert (= var2475!1 (str.++ var2475 ": ")))
(assert true)
(define-const var1943 String (getMessage/849299655 (cast-from-var1469-to-var749 var2110))) ; Statement: $r7 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>() 
(assert true)
(define-const var3130 String (append/672562846 var1683 var1943)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1683!1 String)
(assert (= var1683!1 (str.++ var1683 var1943)))
(assert true)
(define-const var534 String (toString/-2075883882 var3130)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var201 var749 (getCause/-638798464 (cast-from-var1469-to-var749 var2110))) ; Statement: $r10 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
 ; Statement: if $r10 != null goto $r12 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
(assert (not (= var201 null-var749))) ; Cond: $r10 != null 
(assert true)
(define-const var1086 var749 (getCause/-638798464 (cast-from-var1469-to-var749 var2110))) ; Statement: $r12 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1760802295 var3391 var534 var1086)) ; Statement: specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r12) 

(declare-const var3391!1 var1469)
(declare-const var534!1 String)
(declare-const var1086!1 var749)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1469-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), getPartName/1256188844=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2130-to-var2990=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1469-to-var749=([org.apache.poi.ooxml.POIXMLException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), <init>/1760802295=([org.apache.poi.ooxml.POIXMLException, java.lang.String, java.lang.Throwable], void)}
; {var1370=org.apache.poi.ooxml.POIXMLDocumentPart, var2808=r2, var1469=org.apache.poi.ooxml.POIXMLException, var2110=r6, var3391=$r0, var3928=$r1, var2034=org.apache.poi.openxml4j.opc.PackagePart, var866=$r3, var2130=org.apache.poi.openxml4j.opc.PackagePartName, var3253=$r4, var2990=java.lang.Object, var2475=$r5, var1683=$r8, var749=java.lang.Throwable, var1943=$r7, var3130=$r9, var534=$r11, var201=$r10, var1086=$r12}
; {org.apache.poi.ooxml.POIXMLDocumentPart=var1370, r2=var2808, org.apache.poi.ooxml.POIXMLException=var1469, r6=var2110, $r0=var3391, $r1=var3928, org.apache.poi.openxml4j.opc.PackagePart=var2034, $r3=var866, org.apache.poi.openxml4j.opc.PackagePartName=var2130, $r4=var3253, java.lang.Object=var2990, $r5=var2475, $r8=var1683, java.lang.Throwable=var749, $r7=var1943, $r9=var3130, $r11=var534, $r10=var201, $r12=var1086}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart;	r6 := @parameter1: org.apache.poi.ooxml.POIXMLException;	$r0 = new org.apache.poi.ooxml.POIXMLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r4 = virtualinvoke $r3.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r7 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	if $r10 != null goto $r12 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	$r12 = virtualinvoke r6.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r12);	return $r0
;block_num 3