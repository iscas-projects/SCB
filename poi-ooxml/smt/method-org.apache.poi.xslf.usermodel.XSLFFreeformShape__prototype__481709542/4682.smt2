(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3104 0)
(declare-sort var866 0)
(declare-sort var3389 0)
(declare-sort var3248 0)
(declare-sort var1283 0)
(declare-sort var3512 0)
(declare-sort var3017 0)
(declare-sort var2164 0)
(declare-sort var1526 0)
(declare-sort var1998 0)
(declare-sort var2744 0)
(declare-sort var689 0)
(declare-sort var3147 0)
(declare-sort var3840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var3104) var3389)
(declare-fun cast-from-var3389-to-var866 (var3389) var866)
(declare-fun var866_addNewNvSpPr/165932096 (var866) var3248)
(declare-fun var3248_addNewCNvPr/-1416222584 (var3248) var1283)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1283_setName/-1612129814 (var1283 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1283_setId/1260551281 (var1283 Int) void)
(declare-fun var3248_addNewCNvSpPr/-142244934 (var3248) var1526)
(declare-fun var3248_addNewNvPr/-1234000979 (var3248) var1998)
(declare-fun var866_addNewSpPr/95045742 (var866) var3512)
(declare-fun var3512_addNewCustGeom/981673762 (var3512) var3017)
(declare-fun var3017_addNewAvLst/-1284656895 (var3017) var2744)
(declare-fun var3017_addNewGdLst/1787073449 (var3017) var2744)
(declare-fun var3017_addNewAhLst/-530203514 (var3017) var689)
(declare-fun var3017_addNewCxnLst/-1240958936 (var3017) var3147)
(declare-fun var3017_addNewRect/2089084725 (var3017) var2164)
(declare-fun var2164_setR/-44972952 (var2164 var3389) void)
(declare-fun cast-from-String-to-var3389 (String) var3389)
(declare-fun var2164_setB/-2093719944 (var2164 var3389) void)
(declare-fun var2164_setT/-862621402 (var2164 var3389) void)
(declare-fun var2164_setL/-1886994898 (var2164 var3389) void)
(declare-fun var3017_addNewPathLst/-351672476 (var3017) var3840)
(declare-const null-Int Int)
(declare-const var866-Factory var3104)
(declare-const var1837 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1837 null-Int)))
(define-const var2046 var3104 var866-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2913 var3389 (newInstance/532723879 var2046)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var483 var866 (cast-from-var3389-to-var866 var2913)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTShape) $r1 
(define-const var3711 var3248 (var866_addNewNvSpPr/165932096 var483)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual addNewNvSpPr()>() 
(define-const var2045 var1283 (var3248_addNewCNvPr/-1416222584 var3711)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var2820 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2820)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2820!1 String)
(assert (= var2820!1 ""))
(assert true)
(define-const var3032 String (append/672562846 var2820!1 "Freeform ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Freeform ") 
(declare-const var2820!2 String)
(assert (= var2820!2 (str.++ var2820!1 "Freeform ")))
(assert true)
(define-const var3747 String (append/-1001720160 var3032 var1837)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3032!1 String)
(assert (str.prefixof var3032 var3032!1))
(assert true)
(define-const var2227 String (toString/-2075883882 var3747)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1283_setName/-1612129814 var2045 var2227)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var2045!1 var1283)
(declare-const var2227!1 String)
(define-const var2782 Int (cast-from-Int-to-Int var1837)) ; Statement: $l1 = (long) i0 
;(assert (var1283_setId/1260551281 var2045!1 var2782)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var2045!2 var1283)
(declare-const var2782!1 Int)
;(assert (var3248_addNewCNvSpPr/-142244934 var3711)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps addNewCNvSpPr()>() 

(declare-const var3711!1 var3248)
;(assert (var3248_addNewNvPr/-1234000979 var3711!1)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var3711!2 var3248)
(define-const var1679 var3512 (var866_addNewSpPr/95045742 var483)) ; Statement: r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>() 
(define-const var317 var3017 (var3512_addNewCustGeom/981673762 var1679)) ; Statement: r10 = interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D addNewCustGeom()>() 
;(assert (var3017_addNewAvLst/-1284656895 var317)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>() 

(declare-const var317!1 var3017)
;(assert (var3017_addNewGdLst/1787073449 var317!1)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewGdLst()>() 

(declare-const var317!2 var3017)
;(assert (var3017_addNewAhLst/-530203514 var317!2)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList addNewAhLst()>() 

(declare-const var317!3 var3017)
;(assert (var3017_addNewCxnLst/-1240958936 var317!3)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList addNewCxnLst()>() 

(declare-const var317!4 var3017)
(define-const var534 var2164 (var3017_addNewRect/2089084725 var317!4)) ; Statement: r11 = interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect addNewRect()>() 
;(assert (var2164_setR/-44972952 var534 (cast-from-String-to-var3389 "r"))) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setR(java.lang.Object)>("r") 

(declare-const var534!1 var2164)
(declare-const var2588 String)
;(assert (var2164_setB/-2093719944 var534!1 (cast-from-String-to-var3389 "b"))) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setB(java.lang.Object)>("b") 

(declare-const var534!2 var2164)
(declare-const var1315 String)
;(assert (var2164_setT/-862621402 var534!2 (cast-from-String-to-var3389 "t"))) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setT(java.lang.Object)>("t") 

(declare-const var534!3 var2164)
(declare-const var1922 String)
;(assert (var2164_setL/-1886994898 var534!3 (cast-from-String-to-var3389 "l"))) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setL(java.lang.Object)>("l") 

(declare-const var534!4 var2164)
(declare-const var3251 String)
;(assert (var3017_addNewPathLst/-351672476 var317!4)) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList addNewPathLst()>() 

(declare-const var317!5 var3017)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var3389-to-var866=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTShape), var866_addNewNvSpPr/165932096=([org.openxmlformats.schemas.presentationml.x2006.main.CTShape], org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual), var3248_addNewCNvPr/-1416222584=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1283_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var1283_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var3248_addNewCNvSpPr/-142244934=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps), var3248_addNewNvPr/-1234000979=([org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var866_addNewSpPr/95045742=([org.openxmlformats.schemas.presentationml.x2006.main.CTShape], org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties), var3512_addNewCustGeom/981673762=([org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D), var3017_addNewAvLst/-1284656895=([org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList), var3017_addNewGdLst/1787073449=([org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList), var3017_addNewAhLst/-530203514=([org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList), var3017_addNewCxnLst/-1240958936=([org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList), var3017_addNewRect/2089084725=([org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect), var2164_setR/-44972952=([org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect, java.lang.Object], void), cast-from-String-to-var3389=([java.lang.String], java.lang.Object), var2164_setB/-2093719944=([org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect, java.lang.Object], void), var2164_setT/-862621402=([org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect, java.lang.Object], void), var2164_setL/-1886994898=([org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect, java.lang.Object], void), var3017_addNewPathLst/-351672476=([org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList)}
; {var1837=i0, var3104=org.apache.xmlbeans.impl.schema.DocumentFactory, var866=org.openxmlformats.schemas.presentationml.x2006.main.CTShape, var2046=$r0, var3389=java.lang.Object, var2913=$r1, var483=r2, var3248=org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual, var3711=r3, var1283=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var2045=r4, var2820=$r5, var3032=$r6, var3747=$r7, var2227=$r8, var2782=$l1, var3512=org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties, var1679=r9, var3017=org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D, var317=r10, var2164=org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect, var534=r11, var2588="r", var1315="b", var1922="t", var3251="l", var1526=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps, var1998=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var2744=org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList, var689=org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList, var3147=org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList, var3840=org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList}
; {i0=var1837, org.apache.xmlbeans.impl.schema.DocumentFactory=var3104, org.openxmlformats.schemas.presentationml.x2006.main.CTShape=var866, $r0=var2046, java.lang.Object=var3389, $r1=var2913, r2=var483, org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual=var3248, r3=var3711, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var1283, r4=var2045, $r5=var2820, $r6=var3032, $r7=var3747, $r8=var2227, $l1=var2782, org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties=var3512, r9=var1679, org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D=var3017, r10=var317, org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect=var2164, r11=var534, "r"=var2588, "b"=var1315, "t"=var1922, "l"=var3251, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps=var1526, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var1998, org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList=var2744, org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList=var689, org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList=var3147, org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList=var3840}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTShape) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual addNewNvSpPr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Freeform ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps addNewCNvSpPr()>();	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTShape: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>();	r10 = interfaceinvoke r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D addNewCustGeom()>();	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>();	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewGdLst()>();	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjustHandleList addNewAhLst()>();	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSiteList addNewCxnLst()>();	r11 = interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect addNewRect()>();	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setR(java.lang.Object)>("r");	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setB(java.lang.Object)>("b");	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setT(java.lang.Object)>("t");	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect: void setL(java.lang.Object)>("l");	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList addNewPathLst()>();	return r2
;block_num 1