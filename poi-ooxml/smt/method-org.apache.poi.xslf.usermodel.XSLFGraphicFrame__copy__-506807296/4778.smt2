(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1627 0)
(declare-sort var2844 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun copy/865742212 (var2844 var2844) void)
(declare-fun cast-from-var1627-to-var2844 (var1627) var2844)
(declare-fun getGraphicalData/40684821 (var1627) var2891)
(declare-fun var2891_getUri/1679417408 (var2891) String)
(declare-const null-var1627 var1627)
(declare-const null-var2844 var2844)
(declare-const var1428 var1627) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFGraphicFrame 
(assert (not (= var1428 null-var1627)))
(declare-const var3236 var2844) ; Statement: r1 := @parameter0: org.apache.poi.xslf.usermodel.XSLFShape 
(assert (not (= var3236 null-var2844)))
(assert true)
;(assert (copy/865742212 (cast-from-var1627-to-var2844 var1428) var3236)) ; Statement: specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFShape: void copy(org.apache.poi.xslf.usermodel.XSLFShape)>(r1) 

(declare-const var1428!1 var1627)
(declare-const var3236!1 var2844)
(assert true)
(define-const var2601 var2891 (getGraphicalData/40684821 var1428!1)) ; Statement: r2 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData getGraphicalData()>() 
(define-const var3286 String (var2891_getUri/1679417408 var2601)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: java.lang.String getUri()>() 
(assert true)
(define-const var825 Bool (= var3286 "http://schemas.openxmlformats.org/drawingml/2006/diagram")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/chart") 
(assert (= (ite var825 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3333 Bool (= var3286 "http://schemas.openxmlformats.org/drawingml/2006/chart")) ; Statement: $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/chart") 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3333 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {copy/865742212=([org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.xslf.usermodel.XSLFShape], void), cast-from-var1627-to-var2844=([org.apache.poi.xslf.usermodel.XSLFGraphicFrame], org.apache.poi.xslf.usermodel.XSLFShape), getGraphicalData/40684821=([org.apache.poi.xslf.usermodel.XSLFGraphicFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData), var2891_getUri/1679417408=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData], java.lang.String)}
; {var1627=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var1428=r0, var2844=org.apache.poi.xslf.usermodel.XSLFShape, var3236=r1, var2891=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData, var2601=r2, var3286=r3, var825=$z0, var3333=$z1}
; {org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var1627, r0=var1428, org.apache.poi.xslf.usermodel.XSLFShape=var2844, r1=var3236, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData=var2891, r2=var2601, r3=var3286, $z0=var825, $z1=var3333}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFGraphicFrame;	r1 := @parameter0: org.apache.poi.xslf.usermodel.XSLFShape;	specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFShape: void copy(org.apache.poi.xslf.usermodel.XSLFShape)>(r1);	r2 = specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData getGraphicalData()>();	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: java.lang.String getUri()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");	if $z0 == 0 goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/chart");	$z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/chart");	if $z1 == 0 goto return;	return
;block_num 3