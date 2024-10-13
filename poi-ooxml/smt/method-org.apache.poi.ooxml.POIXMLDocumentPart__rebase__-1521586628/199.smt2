(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1353 0)
(declare-sort var3933 0)
(declare-sort var530 0)
(declare-sort var2074 0)
(declare-sort var141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun packagePart/-1032189780 (var1353) var530)
(declare-fun coreDocumentRel/-1032189780 (var1353) String)
(declare-fun getRelationshipsByType/660799233 (var530 String) var2074)
(declare-fun size/-463689346 (var2074) Int)
(declare-fun getRelationship/-1289420924 (var2074 Int) var141)
(declare-fun getRelatedPart/2131478068 (var530 var141) var530)
(declare-const null-var1353 var1353)
(declare-const null-var3933 var3933)
(declare-const var732 var1353) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLDocumentPart 
(assert (not (= var732 null-var1353)))
(declare-const var3829 var3933) ; Statement: r16 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage 
(assert (not (= var3829 null-var3933)))
(define-const var1596 var530 (packagePart/-1032189780 var732)) ; Statement: $r2 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart> 
(define-const var2755 String (coreDocumentRel/-1032189780 var732)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: java.lang.String coreDocumentRel> 
(assert true)
(define-const var2292 var2074 (getRelationshipsByType/660799233 var1596 var2755)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackageRelationshipCollection getRelationshipsByType(java.lang.String)>($r1) 
(assert true)
(define-const var466 Int (size/-463689346 var2292)) ; Statement: $i0 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int size()>() 
 ; Statement: if $i0 == 1 goto $r4 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart> 
(assert (= var466 1)) ; Cond: $i0 == 1 
(define-const var1932 var530 (packagePart/-1032189780 var732)) ; Statement: $r4 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart> 
(assert true)
(define-const var2783 var141 (getRelationship/-1289420924 var2292 0)) ; Statement: $r5 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackageRelationship getRelationship(int)>(0) 
(assert true)
(define-const var345 var530 (getRelatedPart/2131478068 var1932 var2783)) ; Statement: $r6 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePart getRelatedPart(org.apache.poi.openxml4j.opc.PackageRelationship)>($r5) 
(declare-const var732!1 var1353)
(assert (not (= var732!1 null-var1353)))
(assert (= (packagePart/-1032189780 var732!1) var345)) ; Statement: r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {packagePart/-1032189780=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), coreDocumentRel/-1032189780=([org.apache.poi.ooxml.POIXMLDocumentPart], java.lang.String), getRelationshipsByType/660799233=([org.apache.poi.openxml4j.opc.PackagePart, java.lang.String], org.apache.poi.openxml4j.opc.PackageRelationshipCollection), size/-463689346=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], int), getRelationship/-1289420924=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection, int], org.apache.poi.openxml4j.opc.PackageRelationship), getRelatedPart/2131478068=([org.apache.poi.openxml4j.opc.PackagePart, org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.PackagePart)}
; {var1353=org.apache.poi.ooxml.POIXMLDocumentPart, var732=r0, var3933=org.apache.poi.openxml4j.opc.OPCPackage, var3829=r16, var530=org.apache.poi.openxml4j.opc.PackagePart, var1596=$r2, var2755=$r1, var2074=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var2292=r3, var466=$i0, var1932=$r4, var141=org.apache.poi.openxml4j.opc.PackageRelationship, var2783=$r5, var345=$r6}
; {org.apache.poi.ooxml.POIXMLDocumentPart=var1353, r0=var732, org.apache.poi.openxml4j.opc.OPCPackage=var3933, r16=var3829, org.apache.poi.openxml4j.opc.PackagePart=var530, $r2=var1596, $r1=var2755, org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var2074, r3=var2292, $i0=var466, $r4=var1932, org.apache.poi.openxml4j.opc.PackageRelationship=var141, $r5=var2783, $r6=var345}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLDocumentPart;	r16 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage;	$r2 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart>;	$r1 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: java.lang.String coreDocumentRel>;	r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackageRelationshipCollection getRelationshipsByType(java.lang.String)>($r1);	$i0 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int size()>();	if $i0 == 1 goto $r4 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart>;	$r4 = r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart>;	$r5 = virtualinvoke r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackageRelationship getRelationship(int)>(0);	$r6 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePart getRelatedPart(org.apache.poi.openxml4j.opc.PackageRelationship)>($r5);	r0.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart packagePart> = $r6;	return
;block_num 2