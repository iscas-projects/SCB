(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2259 0)
(declare-sort var1238 0)
(declare-sort var3711 0)
(declare-sort var2760 0)
(declare-sort var3814 0)
(declare-sort var2208 0)
(declare-sort var1733 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1371836061 (var3711 var1238) void)
(declare-fun cast-from-var2259-to-var3711 (var2259) var3711)
(declare-fun getCorePart/1817991850 (var3711) var2760)
(declare-fun getContentType/323114383 (var2760) String)
(declare-fun getContentType/-305056247 (var2208) String)
(declare-fun cast-from-var3814-to-var2208 (var3814) var2208)
(declare-fun getInputStream/936350253 (var2760) var1733)
(declare-const null-var2259 var2259)
(declare-const null-var1238 var1238)
(declare-const var3814-THEME_MANAGER var3814)
(declare-const null-var3921 var3921)
(declare-const null-var1733 var1733)
(declare-const var1061 var2259) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideShow 
(assert (not (= var1061 null-var2259)))
(declare-const var459 var1238) ; Statement: r1 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage 
(assert (not (= var459 null-var1238)))
(assert true)
;(assert (<init>/1371836061 (cast-from-var2259-to-var3711 var1061) var459)) ; Statement: specialinvoke r0.<org.apache.poi.ooxml.POIXMLDocument: void <init>(org.apache.poi.openxml4j.opc.OPCPackage)>(r1) 

(declare-const var1061!1 var2259)
(declare-const var459!1 var1238)
(assert true)
(define-const var3548 var2760 (getCorePart/1817991850 (cast-from-var2259-to-var3711 var1061!1))) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideShow: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>() 
(assert true)
(define-const var460 String (getContentType/323114383 var3548)) ; Statement: $r5 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>() 
(define-const var2119 var3814 var3814-THEME_MANAGER) ; Statement: $r3 = <org.apache.poi.xslf.usermodel.XSLFRelation: org.apache.poi.xslf.usermodel.XSLFRelation THEME_MANAGER> 
(assert true)
(define-const var2691 String (getContentType/-305056247 (cast-from-var3814-to-var2208 var2119))) ; Statement: $r4 = virtualinvoke $r3.<org.apache.poi.xslf.usermodel.XSLFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var3568 Bool (= var460 var2691)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideShow: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>() 
(assert (= (ite var3568 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var962 var2760 (getCorePart/1817991850 (cast-from-var2259-to-var3711 var1061!1))) ; Statement: $r6 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideShow: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>() 
(assert true)
(define-const var32 var1733 (getInputStream/936350253 var962)) ; Statement: $r25 = virtualinvoke $r6.<org.apache.poi.openxml4j.opc.PackagePart: java.io.InputStream getInputStream()>() 
(define-const var648 var3921 null-var3921) ; Statement: r30 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3998 var3921) ; Statement: $r27 := @caughtexception 
(assert (not (= var3998 null-var3921)))
(assert true) ; Non Conditional
 ; Statement: if $r25 == null goto throw $r27 
(assert (= var32 null-var1733)) ; Cond: $r25 == null 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1371836061=([org.apache.poi.ooxml.POIXMLDocument, org.apache.poi.openxml4j.opc.OPCPackage], void), cast-from-var2259-to-var3711=([org.apache.poi.xslf.usermodel.XSLFSlideShow], org.apache.poi.ooxml.POIXMLDocument), getCorePart/1817991850=([org.apache.poi.ooxml.POIXMLDocument], org.apache.poi.openxml4j.opc.PackagePart), getContentType/323114383=([org.apache.poi.openxml4j.opc.PackagePart], java.lang.String), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var3814-to-var2208=([org.apache.poi.xslf.usermodel.XSLFRelation], org.apache.poi.ooxml.POIXMLRelation), getInputStream/936350253=([org.apache.poi.openxml4j.opc.PackagePart], java.io.InputStream)}
; {var2259=org.apache.poi.xslf.usermodel.XSLFSlideShow, var1061=r0, var1238=org.apache.poi.openxml4j.opc.OPCPackage, var459=r1, var3711=org.apache.poi.ooxml.POIXMLDocument, var2760=org.apache.poi.openxml4j.opc.PackagePart, var3548=$r2, var460=$r5, var3814=org.apache.poi.xslf.usermodel.XSLFRelation, var2119=$r3, var2208=org.apache.poi.ooxml.POIXMLRelation, var2691=$r4, var3568=$z0, var962=$r6, var1733=java.io.InputStream, var32=$r25, var3921=java.lang.Throwable, var648=r30, var3998=$r27}
; {org.apache.poi.xslf.usermodel.XSLFSlideShow=var2259, r0=var1061, org.apache.poi.openxml4j.opc.OPCPackage=var1238, r1=var459, org.apache.poi.ooxml.POIXMLDocument=var3711, org.apache.poi.openxml4j.opc.PackagePart=var2760, $r2=var3548, $r5=var460, org.apache.poi.xslf.usermodel.XSLFRelation=var3814, $r3=var2119, org.apache.poi.ooxml.POIXMLRelation=var2208, $r4=var2691, $z0=var3568, $r6=var962, java.io.InputStream=var1733, $r25=var32, java.lang.Throwable=var3921, r30=var648, $r27=var3998}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideShow;	r1 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage;	specialinvoke r0.<org.apache.poi.ooxml.POIXMLDocument: void <init>(org.apache.poi.openxml4j.opc.OPCPackage)>(r1);	$r2 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideShow: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>();	$r5 = virtualinvoke $r2.<org.apache.poi.openxml4j.opc.PackagePart: java.lang.String getContentType()>();	$r3 = <org.apache.poi.xslf.usermodel.XSLFRelation: org.apache.poi.xslf.usermodel.XSLFRelation THEME_MANAGER>;	$r4 = virtualinvoke $r3.<org.apache.poi.xslf.usermodel.XSLFRelation: java.lang.String getContentType()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto $r6 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideShow: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>();	$r6 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlideShow: org.apache.poi.openxml4j.opc.PackagePart getCorePart()>();	$r25 = virtualinvoke $r6.<org.apache.poi.openxml4j.opc.PackagePart: java.io.InputStream getInputStream()>();	r30 = null;	$r27 := @caughtexception;	if $r25 == null goto throw $r27;	throw $r27
;block_num 5