(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3452 0)
(declare-sort var846 0)
(declare-sort var2173 0)
(declare-sort var2112 0)
(declare-sort var2470 0)
(declare-sort var2531 0)
(declare-sort var2396 0)
(declare-sort var1866 0)
(declare-sort var2768 0)
(declare-sort var633 0)
(declare-sort var2169 0)
(declare-sort var2431 0)
(declare-sort var194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var3452) var2173)
(declare-fun cast-from-var2173-to-var846 (var2173) var846)
(declare-fun var846_addNewNvCxnSpPr/288711163 (var846) var2112)
(declare-fun var2112_addNewCNvPr/1020813148 (var2112) var2470)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2470_setName/-1612129814 (var2470 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2470_setId/1260551281 (var2470 Int) void)
(declare-fun var2112_addNewCNvCxnSpPr/-320704432 (var2112) var633)
(declare-fun var2112_addNewNvPr/-896964007 (var2112) var2169)
(declare-fun var846_addNewSpPr/-826497214 (var846) var2531)
(declare-fun var2531_addNewPrstGeom/557706752 (var2531) var2396)
(declare-fun var2396_setPrst/1150906745 (var2396 var1866) void)
(declare-fun var2396_addNewAvLst/-760476945 (var2396) var2431)
(declare-fun var2531_addNewLn/1152592929 (var2531) var194)
(declare-const null-Int Int)
(declare-const var846-Factory var3452)
(declare-const var2768-LINE var1866)
(declare-const var1240 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1240 null-Int)))
(define-const var1277 var3452 var846-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTConnector: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2420 var2173 (newInstance/532723879 var1277)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var2950 var846 (cast-from-var2173-to-var846 var2420)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTConnector) $r1 
(define-const var267 var2112 (var846_addNewNvCxnSpPr/288711163 var2950)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnector: org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual addNewNvCxnSpPr()>() 
(define-const var1172 var2470 (var2112_addNewCNvPr/1020813148 var267)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var3061 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3061)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3061!1 String)
(assert (= var3061!1 ""))
(assert true)
(define-const var2826 String (append/672562846 var3061!1 "Connector ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Connector ") 
(declare-const var3061!2 String)
(assert (= var3061!2 (str.++ var3061!1 "Connector ")))
(assert true)
(define-const var1057 String (append/-1001720160 var2826 var1240)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2826!1 String)
(assert (str.prefixof var2826 var2826!1))
(assert true)
(define-const var1635 String (toString/-2075883882 var1057)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2470_setName/-1612129814 var1172 var1635)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var1172!1 var2470)
(declare-const var1635!1 String)
(define-const var808 Int (cast-from-Int-to-Int var1240)) ; Statement: $l1 = (long) i0 
;(assert (var2470_setId/1260551281 var1172!1 var808)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var1172!2 var2470)
(declare-const var808!1 Int)
;(assert (var2112_addNewCNvCxnSpPr/-320704432 var267)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualConnectorProperties addNewCNvCxnSpPr()>() 

(declare-const var267!1 var2112)
;(assert (var2112_addNewNvPr/-896964007 var267!1)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var267!2 var2112)
(define-const var3586 var2531 (var846_addNewSpPr/-826497214 var2950)) ; Statement: r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnector: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>() 
(define-const var2005 var2396 (var2531_addNewPrstGeom/557706752 var3586)) ; Statement: r10 = interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>() 
(define-const var2010 var1866 var2768-LINE) ; Statement: $r11 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum LINE> 
;(assert (var2396_setPrst/1150906745 var2005 var2010)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r11) 

(declare-const var2005!1 var2396)
(declare-const var2010!1 var1866)
;(assert (var2396_addNewAvLst/-760476945 var2005!1)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>() 

(declare-const var2005!2 var2396)
;(assert (var2531_addNewLn/1152592929 var3586)) ; Statement: interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties addNewLn()>() 

(declare-const var3586!1 var2531)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var2173-to-var846=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTConnector), var846_addNewNvCxnSpPr/288711163=([org.openxmlformats.schemas.presentationml.x2006.main.CTConnector], org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual), var2112_addNewCNvPr/1020813148=([org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2470_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var2470_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var2112_addNewCNvCxnSpPr/-320704432=([org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualConnectorProperties), var2112_addNewNvPr/-896964007=([org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var846_addNewSpPr/-826497214=([org.openxmlformats.schemas.presentationml.x2006.main.CTConnector], org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties), var2531_addNewPrstGeom/557706752=([org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D), var2396_setPrst/1150906745=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum], void), var2396_addNewAvLst/-760476945=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList), var2531_addNewLn/1152592929=([org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties)}
; {var1240=i0, var3452=org.apache.xmlbeans.impl.schema.DocumentFactory, var846=org.openxmlformats.schemas.presentationml.x2006.main.CTConnector, var1277=$r0, var2173=java.lang.Object, var2420=$r1, var2950=r2, var2112=org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual, var267=r3, var2470=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var1172=r4, var3061=$r5, var2826=$r6, var1057=$r7, var1635=$r8, var808=$l1, var2531=org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties, var3586=r9, var2396=org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, var2005=r10, var1866=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum, var2768=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType, var2010=$r11, var633=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualConnectorProperties, var2169=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var2431=org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList, var194=org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties}
; {i0=var1240, org.apache.xmlbeans.impl.schema.DocumentFactory=var3452, org.openxmlformats.schemas.presentationml.x2006.main.CTConnector=var846, $r0=var1277, java.lang.Object=var2173, $r1=var2420, r2=var2950, org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual=var2112, r3=var267, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var2470, r4=var1172, $r5=var3061, $r6=var2826, $r7=var1057, $r8=var1635, $l1=var808, org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties=var2531, r9=var3586, org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D=var2396, r10=var2005, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum=var1866, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType=var2768, $r11=var2010, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualConnectorProperties=var633, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var2169, org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList=var2431, org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties=var194}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTConnector: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTConnector) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnector: org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual addNewNvCxnSpPr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Connector ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualConnectorProperties addNewCNvCxnSpPr()>();	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTConnector: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>();	r10 = interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>();	$r11 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum LINE>;	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r11);	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>();	interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTLineProperties addNewLn()>();	return r2
;block_num 1