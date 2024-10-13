(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2582 0)
(declare-sort var2036 0)
(declare-sort var2029 0)
(declare-sort var2282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _defaultName/-465203718 (var2582) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun getPackagePart/-804310696 (var2036) var2029)
(declare-fun getPartName/1256188844 (var2029) var2282)
(declare-fun getName/32427362 (var2282) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun Int_valueOf/1372619556 (String) Int)
(declare-const null-var2582 var2582)
(declare-const null-var2036 var2036)
(declare-const var3727 var2582) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLRelation 
(assert (not (= var3727 null-var2582)))
(declare-const var992 var2036) ; Statement: r3 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart 
(assert (not (= var992 null-var2036)))
(define-const var2817 String (_defaultName/-465203718 var3727)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName> 
(assert true)
(define-const var1976 String (replace/2138489945 var2817 (cast-from-String-to-String "#") (cast-from-String-to-String "(\u005cd+)"))) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("#", "(\\d+)") 
(assert true)
(define-const var3591 var2029 (getPackagePart/-804310696 var992)) ; Statement: $r4 = virtualinvoke r3.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var1613 var2282 (getPartName/1256188844 var3591)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>() 
(assert true)
(define-const var3055 String (getName/32427362 var1613)) ; Statement: $r6 = virtualinvoke $r5.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(assert true)
(define-const var1274 String (replaceAll/1692887130 var3055 var1976 "$1")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(r2, "$1") 
(define-const var895 Int (Int_valueOf/1372619556 var1274)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {_defaultName/-465203718=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), getPartName/1256188844=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), Int_valueOf/1372619556=([java.lang.String], java.lang.Integer)}
; {var2582=org.apache.poi.ooxml.POIXMLRelation, var3727=r0, var2036=org.apache.poi.ooxml.POIXMLDocumentPart, var992=r3, var2817=$r1, var1976=r2, var2029=org.apache.poi.openxml4j.opc.PackagePart, var3591=$r4, var2282=org.apache.poi.openxml4j.opc.PackagePartName, var1613=$r5, var3055=$r6, var1274=$r7, var895=$r8}
; {org.apache.poi.ooxml.POIXMLRelation=var2582, r0=var3727, org.apache.poi.ooxml.POIXMLDocumentPart=var2036, r3=var992, $r1=var2817, r2=var1976, org.apache.poi.openxml4j.opc.PackagePart=var2029, $r4=var3591, org.apache.poi.openxml4j.opc.PackagePartName=var2282, $r5=var1613, $r6=var3055, $r7=var1274, $r8=var895}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLRelation;	r3 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart;	$r1 = r0.<org.apache.poi.ooxml.POIXMLRelation: java.lang.String _defaultName>;	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("#", "(\\d+)");	$r4 = virtualinvoke r3.<org.apache.poi.ooxml.POIXMLDocumentPart: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r5 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>();	$r6 = virtualinvoke $r5.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(r2, "$1");	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r7);	return $r8
;block_num 1