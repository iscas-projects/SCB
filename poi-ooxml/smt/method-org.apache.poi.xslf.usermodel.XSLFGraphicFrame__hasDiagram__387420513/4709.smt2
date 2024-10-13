(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort var463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getGraphicalData/40684821 (var3239) var463)
(declare-fun var463_getUri/1679417408 (var463) String)
(declare-const null-var3239 var3239)
(declare-const var929 var3239) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFGraphicFrame 
(assert (not (= var929 null-var3239)))
(assert true)
(define-const var2432 var463 (getGraphicalData/40684821 var929)) ; Statement: $r1 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData getGraphicalData()>() 
(define-const var1987 String (var463_getUri/1679417408 var2432)) ; Statement: r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: java.lang.String getUri()>() 
(assert true)
(define-const var2453 Bool (= var1987 "http://schemas.openxmlformats.org/drawingml/2006/diagram")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getGraphicalData/40684821=([org.apache.poi.xslf.usermodel.XSLFGraphicFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData), var463_getUri/1679417408=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData], java.lang.String)}
; {var3239=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var929=r0, var463=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData, var2432=$r1, var1987=r2, var2453=$z0}
; {org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var3239, r0=var929, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData=var463, $r1=var2432, r2=var1987, $z0=var2453}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFGraphicFrame;	$r1 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData getGraphicalData()>();	r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: java.lang.String getUri()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");	return $z0
;block_num 1