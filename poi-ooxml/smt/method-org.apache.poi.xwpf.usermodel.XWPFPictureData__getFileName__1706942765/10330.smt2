(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2957 0)
(declare-sort var2171 0)
(declare-sort var2958 0)
(declare-sort var2834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPackagePart/-804310696 (var2958) var2171)
(declare-fun cast-from-var2957-to-var2958 (var2957) var2958)
(declare-fun getPartName/1256188844 (var2171) var2834)
(declare-fun getName/32427362 (var2834) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2957 var2957)
(declare-const var317 var2957) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFPictureData 
(assert (not (= var317 null-var2957)))
(assert true)
(define-const var3484 var2171 (getPackagePart/-804310696 (cast-from-var2957-to-var2958 var317))) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFPictureData: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(assert true)
(define-const var3473 var2834 (getPartName/1256188844 var3484)) ; Statement: $r2 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>() 
(assert true)
(define-const var1533 String (getName/32427362 var3473)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(assert true)
(define-const var2513 Int (lastIndexOf/-1292097097 var1533 47)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var2688 Int (+ var2513 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var2688 0) (>= (str.len var1533) var2688))))
(define-const var3116 String (substring/850833817 var1533 var2688)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var2957-to-var2958=([org.apache.poi.xwpf.usermodel.XWPFPictureData], org.apache.poi.ooxml.POIXMLDocumentPart), getPartName/1256188844=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2957=org.apache.poi.xwpf.usermodel.XWPFPictureData, var317=r0, var2171=org.apache.poi.openxml4j.opc.PackagePart, var2958=org.apache.poi.ooxml.POIXMLDocumentPart, var3484=$r1, var2834=org.apache.poi.openxml4j.opc.PackagePartName, var3473=$r2, var1533=r3, var2513=$i0, var2688=$i1, var3116=$r4}
; {org.apache.poi.xwpf.usermodel.XWPFPictureData=var2957, r0=var317, org.apache.poi.openxml4j.opc.PackagePart=var2171, org.apache.poi.ooxml.POIXMLDocumentPart=var2958, $r1=var3484, org.apache.poi.openxml4j.opc.PackagePartName=var2834, $r2=var3473, r3=var1533, $i0=var2513, $i1=var2688, $r4=var3116}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFPictureData;	$r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFPictureData: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r2 = virtualinvoke $r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>();	r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(47);	$i1 = $i0 + 1;	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>($i1);	return $r4
;block_num 1