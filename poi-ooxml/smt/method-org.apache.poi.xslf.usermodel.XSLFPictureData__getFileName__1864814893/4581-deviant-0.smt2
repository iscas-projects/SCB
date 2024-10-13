(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var508 0)
(declare-sort var2167 0)
(declare-sort var3538 0)
(declare-sort var3886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPackagePart/-804310696 (var3538) var2167)
(declare-fun cast-from-var508-to-var3538 (var508) var3538)
(declare-fun getPartName/1256188844 (var2167) var3886)
(declare-fun getName/32427362 (var3886) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var508 var508)
(declare-const var2224 var508) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFPictureData 
(assert (not (= var2224 null-var508)))
(assert true)
(define-const var1184 var2167 (getPackagePart/-804310696 (cast-from-var508-to-var3538 var2224))) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFPictureData: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var2333 var3886 (getPartName/1256188844 var1184)) ; Statement: $r2 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>() 
(assert true)
(define-const var3555 String (getName/32427362 var2333)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(assert true)
(define-const var2270 Int (lastIndexOf/-1292097097 var3555 47)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var3360 Int (+ var2270 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var3360 0) (>= (str.len var3555) var3360)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var508-to-var3538=([org.apache.poi.xslf.usermodel.XSLFPictureData], org.apache.poi.ooxml.POIXMLDocumentPart), getPartName/1256188844=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var508=org.apache.poi.xslf.usermodel.XSLFPictureData, var2224=r0, var2167=org.apache.poi.openxml4j.opc.PackagePart, var3538=org.apache.poi.ooxml.POIXMLDocumentPart, var1184=$r1, var3886=org.apache.poi.openxml4j.opc.PackagePartName, var2333=$r2, var3555=r3, var2270=$i0, var3360=$i1, var2113=$r4}
; {org.apache.poi.xslf.usermodel.XSLFPictureData=var508, r0=var2224, org.apache.poi.openxml4j.opc.PackagePart=var2167, org.apache.poi.ooxml.POIXMLDocumentPart=var3538, $r1=var1184, org.apache.poi.openxml4j.opc.PackagePartName=var3886, $r2=var2333, r3=var3555, $i0=var2270, $i1=var3360, $r4=var2113}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFPictureData;	$r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFPictureData: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r2 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>();	r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(47);	$i1 = $i0 + 1;	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>($i1);	return $r4
;block_num 1