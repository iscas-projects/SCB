(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var86 0)
(declare-sort var3588 0)
(declare-sort var2790 0)
(declare-sort var1019 0)
(declare-sort var1903 0)
(declare-sort var3173 0)
(declare-sort var969 0)
(declare-sort var3557 0)
(declare-sort var2055 0)
(declare-sort var1829 0)
(declare-sort var1713 0)
(declare-sort var3884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var86) var2790)
(declare-fun cast-from-var2790-to-var3588 (var2790) var3588)
(declare-fun var3588_addNewNvSpPr/165932096 (var3588) var1019)
(declare-fun var1019_addNewCNvPr/-1416222584 (var1019) var1903)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1903_setName/-1612129814 (var1903 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1903_setId/1260551281 (var1903 Int) void)
(declare-fun var1019_addNewCNvSpPr/-142244934 (var1019) var1829)
(declare-fun var1019_addNewNvPr/-1234000979 (var1019) var1713)
(declare-fun var3588_addNewSpPr/95045742 (var3588) var3173)
(declare-fun var3173_addNewPrstGeom/557706752 (var3173) var969)
(declare-fun var969_setPrst/1150906745 (var969 var3557) void)
(declare-fun var969_addNewAvLst/-760476945 (var969) var3884)
(declare-const null-Int Int)
(declare-const var3588-Factory var86)
(declare-const var2055-RECT var3557)
(declare-const var1389 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1389 null-Int)))
(define-const var1395 var86 var3588-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var247 var2790 (newInstance/532723879 var1395)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var3192 var3588 (cast-from-var2790-to-var3588 var247)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTShape) $r1 
(define-const var531 var1019 (var3588_addNewNvSpPr/165932096 var3192)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual addNewNvSpPr()>() 
(define-const var3122 var1903 (var1019_addNewCNvPr/-1416222584 var531)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var495 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var495)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var495!1 String)
(assert (= var495!1 ""))
(assert true)
(define-const var2487 String (append/672562846 var495!1 "AutoShape ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AutoShape ") 
(declare-const var495!2 String)
(assert (= var495!2 (str.++ var495!1 "AutoShape ")))
(assert true)
(define-const var1035 String (append/-1001720160 var2487 var1389)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2487!1 String)
(assert (str.prefixof var2487 var2487!1))
(assert true)
(define-const var1156 String (toString/-2075883882 var1035)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1903_setName/-1612129814 var3122 var1156)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var3122!1 var1903)
(declare-const var1156!1 String)
(define-const var2314 Int (cast-from-Int-to-Int var1389)) ; Statement: $l1 = (long) i0 
;(assert (var1903_setId/1260551281 var3122!1 var2314)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var3122!2 var1903)
(declare-const var2314!1 Int)
;(assert (var1019_addNewCNvSpPr/-142244934 var531)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps addNewCNvSpPr()>() 

(declare-const var531!1 var1019)
;(assert (var1019_addNewNvPr/-1234000979 var531!1)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var531!2 var1019)
(define-const var3164 var3173 (var3588_addNewSpPr/95045742 var3192)) ; Statement: r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>() 
(define-const var2873 var969 (var3173_addNewPrstGeom/557706752 var3164)) ; Statement: r10 = interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>() 
(define-const var3171 var3557 var2055-RECT) ; Statement: $r11 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum RECT> 
;(assert (var969_setPrst/1150906745 var2873 var3171)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r11) 

(declare-const var2873!1 var969)
(declare-const var3171!1 var3557)
;(assert (var969_addNewAvLst/-760476945 var2873!1)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>() 

(declare-const var2873!2 var969)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var2790-to-var3588=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTShape), var3588_addNewNvSpPr/165932096=([org.openxmlformats.schemas.presentationml.x2006.main.CTShape], org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual), var1019_addNewCNvPr/-1416222584=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1903_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var1903_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var1019_addNewCNvSpPr/-142244934=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps), var1019_addNewNvPr/-1234000979=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var3588_addNewSpPr/95045742=([org.openxmlformats.schemas.presentationml.x2006.main.CTShape], org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties), var3173_addNewPrstGeom/557706752=([org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D), var969_setPrst/1150906745=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum], void), var969_addNewAvLst/-760476945=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList)}
; {var1389=i0, var86=org.apache.xmlbeans.impl.schema.DocumentFactory, var3588=org.openxmlformats.schemas.presentationml.x2006.main.CTShape, var1395=$r0, var2790=java.lang.Object, var247=$r1, var3192=r2, var1019=org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual, var531=r3, var1903=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var3122=r4, var495=$r5, var2487=$r6, var1035=$r7, var1156=$r8, var2314=$l1, var3173=org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties, var3164=r9, var969=org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, var2873=r10, var3557=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum, var2055=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType, var3171=$r11, var1829=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps, var1713=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var3884=org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList}
; {i0=var1389, org.apache.xmlbeans.impl.schema.DocumentFactory=var86, org.openxmlformats.schemas.presentationml.x2006.main.CTShape=var3588, $r0=var1395, java.lang.Object=var2790, $r1=var247, r2=var3192, org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual=var1019, r3=var531, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var1903, r4=var3122, $r5=var495, $r6=var2487, $r7=var1035, $r8=var1156, $l1=var2314, org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties=var3173, r9=var3164, org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D=var969, r10=var2873, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum=var3557, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType=var2055, $r11=var3171, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps=var1829, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var1713, org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList=var3884}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTShape) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual addNewNvSpPr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AutoShape ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps addNewCNvSpPr()>();	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>();	r10 = interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>();	$r11 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum RECT>;	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r11);	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>();	return r2
;block_num 1