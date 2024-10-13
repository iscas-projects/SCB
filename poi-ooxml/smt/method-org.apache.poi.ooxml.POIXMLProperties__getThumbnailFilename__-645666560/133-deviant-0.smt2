(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1112 0)
(declare-sort var1859 0)
(declare-sort var3734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getThumbnailPart/274556983 (var1112) var1859)
(declare-fun getPartName/1256188844 (var1859) var3734)
(declare-fun getName/32427362 (var3734) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1112 var1112)
(declare-const null-var1859 var1859)
(declare-const var2048 var1112) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLProperties 
(assert (not (= var2048 null-var1112)))
(assert true)
(define-const var127 var1859 (getThumbnailPart/274556983 var2048)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart getThumbnailPart()>() 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>() 
(assert (not (= var127 null-var1859))) ; Cond: r1 != null 
(assert true)
(define-const var725 var3734 (getPartName/1256188844 var127)) ; Statement: $r2 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>() 
(assert true)
(define-const var3678 String (getName/32427362 var725)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(assert true)
(define-const var1264 Int (lastIndexOf/-1292097097 var3678 47)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(47) 
(assert (not (and true (and (>= var1264 0) (>= (str.len var3678) var1264)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getThumbnailPart/274556983=([org.apache.poi.ooxml.POIXMLProperties], org.apache.poi.openxml4j.opc.PackagePart), getPartName/1256188844=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1112=org.apache.poi.ooxml.POIXMLProperties, var2048=r0, var1859=org.apache.poi.openxml4j.opc.PackagePart, var127=r1, var3734=org.apache.poi.openxml4j.opc.PackagePartName, var725=$r2, var3678=r3, var1264=$i0, var702=$r4}
; {org.apache.poi.ooxml.POIXMLProperties=var1112, r0=var2048, org.apache.poi.openxml4j.opc.PackagePart=var1859, r1=var127, org.apache.poi.openxml4j.opc.PackagePartName=var3734, $r2=var725, r3=var3678, $i0=var1264, $r4=var702}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLProperties;	r1 = virtualinvoke r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart getThumbnailPart()>();	if r1 != null goto $r2 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>();	$r2 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName getPartName()>();	r3 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(47);	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>($i0);	return $r4
;block_num 2