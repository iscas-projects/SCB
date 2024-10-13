(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var2933 0)
(declare-sort var346 0)
(declare-sort var549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _link/-1407511038 (var2365) var2933)
(declare-fun var2933_getAction/1507432974 (var2933) String)
(declare-const null-var2365 var2365)
(declare-const null-String String)
(declare-const var549-DOCUMENT var549)
(declare-const var1435 var2365) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink 
(assert (not (= var1435 null-var2365)))
(define-const var2261 var2933 (_link/-1407511038 var1435)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
(define-const var686 String (var2933_getAction/1507432974 var2261)) ; Statement: r5 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: java.lang.String getAction()>() 
 ; Statement: if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("ppaction://hlinksldjump") 
(assert (not (= var686 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var1658 Bool (= var686 "ppaction://hlinksldjump")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("ppaction://hlinksldjump") 
 ; Statement: if $z0 != 0 goto $r2 = <org.apache.poi.common.usermodel.HyperlinkType: org.apache.poi.common.usermodel.HyperlinkType DOCUMENT> 
(assert (not (= (ite var1658 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2731 var549 var549-DOCUMENT) ; Statement: $r2 = <org.apache.poi.common.usermodel.HyperlinkType: org.apache.poi.common.usermodel.HyperlinkType DOCUMENT> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {_link/-1407511038=([org.apache.poi.xslf.usermodel.XSLFHyperlink], org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink), var2933_getAction/1507432974=([org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink], java.lang.String)}
; {var2365=org.apache.poi.xslf.usermodel.XSLFHyperlink, var1435=r0, var2933=org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink, var2261=$r1, var686=r5, var346=null_type, var1658=$z0, var549=org.apache.poi.common.usermodel.HyperlinkType, var2731=$r2}
; {org.apache.poi.xslf.usermodel.XSLFHyperlink=var2365, r0=var1435, org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink=var2933, $r1=var2261, r5=var686, null_type=var346, $z0=var1658, org.apache.poi.common.usermodel.HyperlinkType=var549, $r2=var2731}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	r5 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: java.lang.String getAction()>();	if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("ppaction://hlinksldjump");	$z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("ppaction://hlinksldjump");	if $z0 != 0 goto $r2 = <org.apache.poi.common.usermodel.HyperlinkType: org.apache.poi.common.usermodel.HyperlinkType DOCUMENT>;	$r2 = <org.apache.poi.common.usermodel.HyperlinkType: org.apache.poi.common.usermodel.HyperlinkType DOCUMENT>;	return $r2
;block_num 3