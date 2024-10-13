(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1719 0)
(declare-sort var152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getGraphicalData/40684821 (var1719) var152)
(declare-fun var152_getUri/1679417408 (var152) String)
(declare-const null-var1719 var1719)
(declare-const var1576 var1719) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFGraphicFrame 
(assert (not (= var1576 null-var1719)))
(assert true)
(define-const var2720 var152 (getGraphicalData/40684821 var1576)) ; Statement: $r1 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData getGraphicalData()>() 
(define-const var1094 String (var152_getUri/1679417408 var2720)) ; Statement: r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: java.lang.String getUri()>() 
(assert true)
(define-const var3771 Bool (= var1094 "http://schemas.openxmlformats.org/drawingml/2006/chart")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/chart") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getGraphicalData/40684821=([org.apache.poi.xslf.usermodel.XSLFGraphicFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData), var152_getUri/1679417408=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData], java.lang.String)}
; {var1719=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var1576=r0, var152=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData, var2720=$r1, var1094=r2, var3771=$z0}
; {org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var1719, r0=var1576, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData=var152, $r1=var2720, r2=var1094, $z0=var3771}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFGraphicFrame;	$r1 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData getGraphicalData()>();	r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: java.lang.String getUri()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/chart");	return $z0
;block_num 1