(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3630 0)
(declare-sort var1972 0)
(declare-sort var3263 0)
(declare-sort var1211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContentType/-325644685 (var3630) String)
(declare-fun getContentType/-305056247 (var3263) String)
(declare-fun cast-from-var1972-to-var3263 (var1972) var3263)
(declare-const null-var3630 var3630)
(declare-const var1972-IMAGE_EMF var1972)
(declare-const var1211-EMF var1211)
(declare-const var2490 var3630) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFPictureData 
(assert (not (= var2490 null-var3630)))
(assert true)
(define-const var261 String (getContentType/-325644685 var2490)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFPictureData: java.lang.String getContentType()>() 
(define-const var3550 var1972 var1972-IMAGE_EMF) ; Statement: $r2 = <org.apache.poi.xslf.usermodel.XSLFRelation: org.apache.poi.xslf.usermodel.XSLFRelation IMAGE_EMF> 
(assert true)
(define-const var2701 String (getContentType/-305056247 (cast-from-var1972-to-var3263 var3550))) ; Statement: $r3 = virtualinvoke $r2.<org.apache.poi.xslf.usermodel.XSLFRelation: java.lang.String getContentType()>() 
(assert true)
(define-const var3989 Bool (= var2701 var261)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = <org.apache.poi.xslf.usermodel.XSLFRelation: org.apache.poi.xslf.usermodel.XSLFRelation IMAGE_WMF> 
(assert (not (= (ite var3989 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2535 var1211 var1211-EMF) ; Statement: $r40 = <org.apache.poi.sl.usermodel.PictureData$PictureType: org.apache.poi.sl.usermodel.PictureData$PictureType EMF> 
 ; Statement: return $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {getContentType/-325644685=([org.apache.poi.xslf.usermodel.XSLFPictureData], java.lang.String), getContentType/-305056247=([org.apache.poi.ooxml.POIXMLRelation], java.lang.String), cast-from-var1972-to-var3263=([org.apache.poi.xslf.usermodel.XSLFRelation], org.apache.poi.ooxml.POIXMLRelation)}
; {var3630=org.apache.poi.xslf.usermodel.XSLFPictureData, var2490=r0, var261=r1, var1972=org.apache.poi.xslf.usermodel.XSLFRelation, var3550=$r2, var3263=org.apache.poi.ooxml.POIXMLRelation, var2701=$r3, var3989=$z0, var1211=org.apache.poi.sl.usermodel.PictureData$PictureType, var2535=$r40}
; {org.apache.poi.xslf.usermodel.XSLFPictureData=var3630, r0=var2490, r1=var261, org.apache.poi.xslf.usermodel.XSLFRelation=var1972, $r2=var3550, org.apache.poi.ooxml.POIXMLRelation=var3263, $r3=var2701, $z0=var3989, org.apache.poi.sl.usermodel.PictureData$PictureType=var1211, $r40=var2535}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFPictureData;	r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFPictureData: java.lang.String getContentType()>();	$r2 = <org.apache.poi.xslf.usermodel.XSLFRelation: org.apache.poi.xslf.usermodel.XSLFRelation IMAGE_EMF>;	$r3 = virtualinvoke $r2.<org.apache.poi.xslf.usermodel.XSLFRelation: java.lang.String getContentType()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = <org.apache.poi.xslf.usermodel.XSLFRelation: org.apache.poi.xslf.usermodel.XSLFRelation IMAGE_WMF>;	$r40 = <org.apache.poi.sl.usermodel.PictureData$PictureType: org.apache.poi.sl.usermodel.PictureData$PictureType EMF>;	return $r40
;block_num 2