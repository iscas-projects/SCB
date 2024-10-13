(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3199 0)
(declare-sort var2242 0)
(declare-sort var4 0)
(declare-sort var516 0)
(declare-sort var651 0)
(declare-sort var3546 0)
(declare-sort var1763 0)
(declare-sort var3236 0)
(declare-sort var3912 0)
(declare-sort var431 0)
(declare-sort var1324 0)
(declare-sort var396 0)
(declare-sort var1491 0)
(declare-sort var856 0)
(declare-sort var478 0)
(declare-sort var2551 0)
(declare-sort var3636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var3199) var4)
(declare-fun cast-from-var4-to-var2242 (var4) var2242)
(declare-fun var2242_addNewNvSpPr/165932096 (var2242) var516)
(declare-fun var516_addNewCNvPr/-1416222584 (var516) var651)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var651_setName/-1612129814 (var651 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var651_setId/1260551281 (var651 Int) void)
(declare-fun var516_addNewCNvSpPr/-142244934 (var516) var3546)
(declare-fun var3546_setTxBox/-1726424430 (var3546 Bool) void)
(declare-fun var516_addNewNvPr/-1234000979 (var516) var478)
(declare-fun var2242_addNewSpPr/95045742 (var2242) var1763)
(declare-fun var1763_addNewPrstGeom/557706752 (var1763) var3236)
(declare-fun var3236_setPrst/1150906745 (var3236 var3912) void)
(declare-fun var3236_addNewAvLst/-760476945 (var3236) var2551)
(declare-fun var1324-init () var1324)
(declare-fun <init>/-1133674278 (var1324 var396) void)
(declare-fun initialize/98667111 (var1324) var3636)
(declare-fun getXmlObject/666783632 (var1324) var856)
(declare-fun var2242_setTxBody/1063398031 (var2242 var856) void)
(declare-const null-Int Int)
(declare-const var2242-Factory var3199)
(declare-const var431-RECT var3912)
(declare-const null-NullType var1491)
(declare-const null-var396 var396)
(declare-const var1431 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1431 null-Int)))
(define-const var2689 var3199 var2242-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var1071 var4 (newInstance/532723879 var2689)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var2041 var2242 (cast-from-var4-to-var2242 var1071)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTShape) $r1 
(define-const var2713 var516 (var2242_addNewNvSpPr/165932096 var2041)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual addNewNvSpPr()>() 
(define-const var1155 var651 (var516_addNewCNvPr/-1416222584 var2713)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var2846 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2846)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2846!1 String)
(assert (= var2846!1 ""))
(assert true)
(define-const var1606 String (append/672562846 var2846!1 "TextBox ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TextBox ") 
(declare-const var2846!2 String)
(assert (= var2846!2 (str.++ var2846!1 "TextBox ")))
(assert true)
(define-const var3726 String (append/-1001720160 var1606 var1431)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1606!1 String)
(assert (str.prefixof var1606 var1606!1))
(assert true)
(define-const var566 String (toString/-2075883882 var3726)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var651_setName/-1612129814 var1155 var566)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var1155!1 var651)
(declare-const var566!1 String)
(define-const var96 Int (cast-from-Int-to-Int var1431)) ; Statement: $l1 = (long) i0 
;(assert (var651_setId/1260551281 var1155!1 var96)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var1155!2 var651)
(declare-const var96!1 Int)
(define-const var308 var3546 (var516_addNewCNvSpPr/-142244934 var2713)) ; Statement: $r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps addNewCNvSpPr()>() 
;(assert (var3546_setTxBox/-1726424430 var308 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps: void setTxBox(boolean)>(1) 

(declare-const var308!1 var3546)
(declare-const var1106 Int)
;(assert (var516_addNewNvPr/-1234000979 var2713)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var2713!1 var516)
(define-const var3039 var1763 (var2242_addNewSpPr/95045742 var2041)) ; Statement: r10 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>() 
(define-const var2183 var3236 (var1763_addNewPrstGeom/557706752 var3039)) ; Statement: r11 = interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>() 
(define-const var3076 var3912 var431-RECT) ; Statement: $r12 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum RECT> 
;(assert (var3236_setPrst/1150906745 var2183 var3076)) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r12) 

(declare-const var2183!1 var3236)
(declare-const var3076!1 var3912)
;(assert (var3236_addNewAvLst/-760476945 var2183!1)) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>() 

(declare-const var2183!2 var3236)
(define-const var3263 var1324 var1324-init) ; Statement: $r13 = new org.apache.poi.xddf.usermodel.text.XDDFTextBody 
(assert true)
;(assert (<init>/-1133674278 var3263 null-var396)) ; Statement: specialinvoke $r13.<org.apache.poi.xddf.usermodel.text.XDDFTextBody: void <init>(org.apache.poi.xddf.usermodel.text.TextContainer)>(null) 

(declare-const var3263!1 var1324)
(declare-const var172 var1491)
(assert true)
;(assert (initialize/98667111 var3263!1)) ; Statement: virtualinvoke $r13.<org.apache.poi.xddf.usermodel.text.XDDFTextBody: org.apache.poi.xddf.usermodel.text.XDDFTextParagraph initialize()>() 

(declare-const var3263!2 var1324)
(assert true)
(define-const var1970 var856 (getXmlObject/666783632 var3263!2)) ; Statement: $r14 = virtualinvoke $r13.<org.apache.poi.xddf.usermodel.text.XDDFTextBody: org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody getXmlObject()>() 
;(assert (var2242_setTxBody/1063398031 var2041 var1970)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: void setTxBody(org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody)>($r14) 

(declare-const var2041!1 var2242)
(declare-const var1970!1 var856)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var4-to-var2242=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTShape), var2242_addNewNvSpPr/165932096=([org.openxmlformats.schemas.presentationml.x2006.main.CTShape], org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual), var516_addNewCNvPr/-1416222584=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var651_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var651_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var516_addNewCNvSpPr/-142244934=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps), var3546_setTxBox/-1726424430=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps, boolean], void), var516_addNewNvPr/-1234000979=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var2242_addNewSpPr/95045742=([org.openxmlformats.schemas.presentationml.x2006.main.CTShape], org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties), var1763_addNewPrstGeom/557706752=([org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D), var3236_setPrst/1150906745=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum], void), var3236_addNewAvLst/-760476945=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList), var1324-init=([], org.apache.poi.xddf.usermodel.text.XDDFTextBody), <init>/-1133674278=([org.apache.poi.xddf.usermodel.text.XDDFTextBody, org.apache.poi.xddf.usermodel.text.TextContainer], void), initialize/98667111=([org.apache.poi.xddf.usermodel.text.XDDFTextBody], org.apache.poi.xddf.usermodel.text.XDDFTextParagraph), getXmlObject/666783632=([org.apache.poi.xddf.usermodel.text.XDDFTextBody], org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody), var2242_setTxBody/1063398031=([org.openxmlformats.schemas.presentationml.x2006.main.CTShape, org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody], void)}
; {var1431=i0, var3199=org.apache.xmlbeans.impl.schema.DocumentFactory, var2242=org.openxmlformats.schemas.presentationml.x2006.main.CTShape, var2689=$r0, var4=java.lang.Object, var1071=$r1, var2041=r2, var516=org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual, var2713=r3, var651=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var1155=r4, var2846=$r5, var1606=$r6, var3726=$r7, var566=$r8, var96=$l1, var3546=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps, var308=$r9, var1106=1, var1763=org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties, var3039=r10, var3236=org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, var2183=r11, var3912=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum, var431=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType, var3076=$r12, var1324=org.apache.poi.xddf.usermodel.text.XDDFTextBody, var3263=$r13, var396=org.apache.poi.xddf.usermodel.text.TextContainer, var172=null, var1491=null_type, var856=org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody, var1970=$r14, var478=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var2551=org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList, var3636=org.apache.poi.xddf.usermodel.text.XDDFTextParagraph}
; {i0=var1431, org.apache.xmlbeans.impl.schema.DocumentFactory=var3199, org.openxmlformats.schemas.presentationml.x2006.main.CTShape=var2242, $r0=var2689, java.lang.Object=var4, $r1=var1071, r2=var2041, org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual=var516, r3=var2713, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var651, r4=var1155, $r5=var2846, $r6=var1606, $r7=var3726, $r8=var566, $l1=var96, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps=var3546, $r9=var308, 1=var1106, org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties=var1763, r10=var3039, org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D=var3236, r11=var2183, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum=var3912, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType=var431, $r12=var3076, org.apache.poi.xddf.usermodel.text.XDDFTextBody=var1324, $r13=var3263, org.apache.poi.xddf.usermodel.text.TextContainer=var396, null=var172, null_type=var1491, org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody=var856, $r14=var1970, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var478, org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList=var2551, org.apache.poi.xddf.usermodel.text.XDDFTextParagraph=var3636}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTShape) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual addNewNvSpPr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TextBox ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	$r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps addNewCNvSpPr()>();	interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps: void setTxBox(boolean)>(1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	r10 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>();	r11 = interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>();	$r12 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum RECT>;	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r12);	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>();	$r13 = new org.apache.poi.xddf.usermodel.text.XDDFTextBody;	specialinvoke $r13.<org.apache.poi.xddf.usermodel.text.XDDFTextBody: void <init>(org.apache.poi.xddf.usermodel.text.TextContainer)>(null);	virtualinvoke $r13.<org.apache.poi.xddf.usermodel.text.XDDFTextBody: org.apache.poi.xddf.usermodel.text.XDDFTextParagraph initialize()>();	$r14 = virtualinvoke $r13.<org.apache.poi.xddf.usermodel.text.XDDFTextBody: org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody getXmlObject()>();	interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: void setTxBody(org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody)>($r14);	return r2
;block_num 1