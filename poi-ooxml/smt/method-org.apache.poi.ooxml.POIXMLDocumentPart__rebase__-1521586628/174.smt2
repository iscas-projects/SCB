(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var702 0)
(declare-sort var231 0)
(declare-sort var875 0)
(declare-sort var238 0)
(declare-sort var331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun packagePart/-1032189780 (var702) var875)
(declare-fun coreDocumentRel/-1032189780 (var702) String)
(declare-fun getRelationshipsByType/660799233 (var875 String) var238)
(declare-fun size/-463689346 (var238) Int)
(declare-fun var331-init () var331)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var331 String) void)
(declare-const null-var702 var702)
(declare-const null-var231 var231)
(declare-const var3841 var702) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLDocumentPart 
(assert (not (= var3841 null-var702)))
(declare-const var715 var231) ; Statement: r16 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage 
(assert (not (= var715 null-var231)))
(define-const var15 var875 (packagePart/-1032189780 var3841)) ; Statement: $r2 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart> 
(define-const var2715 String (coreDocumentRel/-1032189780 var3841)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: java.lang.String coreDocumentRel> 
(assert true)
(define-const var442 var238 (getRelationshipsByType/660799233 var15 var2715)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackageRelationshipCollection getRelationshipsByType(java.lang.String)>($r1) 
(assert true)
(define-const var3417 Int (size/-463689346 var442)) ; Statement: $i0 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int size()>() 
 ; Statement: if $i0 == 1 goto $r4 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart> 
(assert (not (= var3417 1))) ; Negate: Cond: $i0 == 1  
(define-const var2610 var331 var331-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(define-const var312 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var312)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var312!1 String)
(assert (= var312!1 ""))
(assert true)
(define-const var1368 String (append/672562846 var312!1 "Tried to rebase using ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tried to rebase using ") 
(declare-const var312!2 String)
(assert (= var312!2 (str.++ var312!1 "Tried to rebase using ")))
(define-const var2742 String (coreDocumentRel/-1032189780 var3841)) ; Statement: $r9 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: java.lang.String coreDocumentRel> 
(assert true)
(define-const var3656 String (append/672562846 var1368 var2742)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1368!1 String)
(assert (= var1368!1 (str.++ var1368 var2742)))
(assert true)
(define-const var347 String (append/672562846 var3656 " but found ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but found ") 
(declare-const var3656!1 String)
(assert (= var3656!1 (str.++ var3656 " but found ")))
(assert true)
(define-const var64 Int (size/-463689346 var442)) ; Statement: $i1 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int size()>() 
(assert true)
(define-const var3247 String (append/-1001720160 var347 var64)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var347!1 String)
(assert (str.prefixof var347 var347!1))
(assert true)
(define-const var3481 String (append/672562846 var3247 " parts of the right type")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parts of the right type") 
(declare-const var3247!1 String)
(assert (= var3247!1 (str.++ var3247 " parts of the right type")))
(assert true)
(define-const var2930 String (toString/-2075883882 var3481)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2610 var2930)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var2610!1 var331)
(declare-const var2930!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {packagePart/-1032189780=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), coreDocumentRel/-1032189780=([org.apache.poi.ooxml.POIXMLDocumentPart], java.lang.String), getRelationshipsByType/660799233=([org.apache.poi.openxml4j.opc.PackagePart, java.lang.String], org.apache.poi.openxml4j.opc.PackageRelationshipCollection), size/-463689346=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], int), var331-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var702=org.apache.poi.ooxml.POIXMLDocumentPart, var3841=r0, var231=org.apache.poi.openxml4j.opc.OPCPackage, var715=r16, var875=org.apache.poi.openxml4j.opc.PackagePart, var15=$r2, var2715=$r1, var238=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var442=r3, var3417=$i0, var331=java.lang.IllegalStateException, var2610=$r7, var312=$r8, var1368=$r10, var2742=$r9, var3656=$r11, var347=$r12, var64=$i1, var3247=$r13, var3481=$r14, var2930=$r15}
; {org.apache.poi.ooxml.POIXMLDocumentPart=var702, r0=var3841, org.apache.poi.openxml4j.opc.OPCPackage=var231, r16=var715, org.apache.poi.openxml4j.opc.PackagePart=var875, $r2=var15, $r1=var2715, org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var238, r3=var442, $i0=var3417, java.lang.IllegalStateException=var331, $r7=var2610, $r8=var312, $r10=var1368, $r9=var2742, $r11=var3656, $r12=var347, $i1=var64, $r13=var3247, $r14=var3481, $r15=var2930}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLDocumentPart;	r16 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage;	$r2 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart>;	$r1 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: java.lang.String coreDocumentRel>;	r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackageRelationshipCollection getRelationshipsByType(java.lang.String)>($r1);	$i0 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int size()>();	if $i0 == 1 goto $r4 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart>;	$r7 = new java.lang.IllegalStateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tried to rebase using ");	$r9 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: java.lang.String coreDocumentRel>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but found ");	$i1 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int size()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parts of the right type");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r7
;block_num 2