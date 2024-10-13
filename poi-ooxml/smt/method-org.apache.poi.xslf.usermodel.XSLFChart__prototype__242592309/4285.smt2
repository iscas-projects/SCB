(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var289 0)
(declare-sort var1729 0)
(declare-sort var388 0)
(declare-sort var1313 0)
(declare-sort var2118 0)
(declare-sort var483 0)
(declare-sort var93 0)
(declare-sort var2157 0)
(declare-sort var46 0)
(declare-sort var417 0)
(declare-sort var1100 0)
(declare-sort var1349 0)
(declare-sort var564 0)
(declare-sort var1808 0)
(declare-sort var1429 0)
(declare-sort var1617 0)
(declare-sort var3555 0)
(declare-sort var3002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var388) var2118)
(declare-fun cast-from-var2118-to-var1313 (var2118) var1313)
(declare-fun var1313_addNewNvGraphicFramePr/-980114426 (var1313) var483)
(declare-fun var483_addNewCNvPr/350458854 (var483) var93)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var93_setName/-1612129814 (var93 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var93_setId/1260551281 (var93 Int) void)
(declare-fun var483_addNewCNvGraphicFramePr/1413366139 (var483) var2157)
(declare-fun var2157_addNewGraphicFrameLocks/1978038764 (var2157) var46)
(declare-fun var46_setNoGrp/2057387151 (var46 Bool) void)
(declare-fun var483_addNewNvPr/-1261350769 (var483) var3002)
(declare-fun var1313_addNewXfrm/693651756 (var1313) var417)
(declare-fun var417_addNewOff/-137997421 (var417) var1100)
(declare-fun getX/2088705159 (var1349) Float64)
(declare-fun cast-from-var1729-to-var1349 (var1729) var1349)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var1100_setX/-1564920088 (var1100 var2118) void)
(declare-fun cast-from-Int-to-var2118 (Int) var2118)
(declare-fun getY/2088734950 (var1349) Float64)
(declare-fun var1100_setY/-1973744313 (var1100 var2118) void)
(declare-fun var417_addNewExt/-294930809 (var417) var564)
(declare-fun getWidth/627712889 (var1349) Float64)
(declare-fun var564_setCx/-255687186 (var564 Int) void)
(declare-fun getHeight/717604212 (var1349) Float64)
(declare-fun var564_setCy/1487123149 (var564 Int) void)
(declare-fun var417_setExt/1682318566 (var417 var564) void)
(declare-fun var417_setOff/-2050453184 (var417 var1100) void)
(declare-fun var1313_addNewGraphic/-492155927 (var1313) var1808)
(declare-fun var1808_addNewGraphicData/2076560906 (var1808) var1429)
(declare-fun var1429_newCursor/473301306 (var1429) var1617)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var1729 var1729)
(declare-const var1313-Factory var388)
(declare-const null-var3555 var3555)
(declare-const null-var1617 var1617)
(declare-const var1235 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1235 null-Int)))
(declare-const var3924 String) ; Statement: r22 := @parameter1: java.lang.String 
(assert (not (= var3924 null-String)))
(declare-const var908 var1729) ; Statement: r13 := @parameter2: java.awt.geom.Rectangle2D 
(assert (not (= var908 null-var1729)))
(define-const var1133 var388 var1313-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2037 var2118 (newInstance/532723879 var1133)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var1995 var1313 (cast-from-var2118-to-var1313 var2037)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame) $r1 
(define-const var1614 var483 (var1313_addNewNvGraphicFramePr/-980114426 var1995)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr()>() 
(define-const var651 var93 (var483_addNewCNvPr/350458854 var1614)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var3192 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3192)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3192!1 String)
(assert (= var3192!1 ""))
(assert true)
(define-const var3246 String (append/672562846 var3192!1 "Chart ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Chart ") 
(declare-const var3192!2 String)
(assert (= var3192!2 (str.++ var3192!1 "Chart ")))
(assert true)
(define-const var3267 String (append/-1001720160 var3246 var1235)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3246!1 String)
(assert (str.prefixof var3246 var3246!1))
(assert true)
(define-const var679 String (toString/-2075883882 var3267)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var93_setName/-1612129814 var651 var679)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var651!1 var93)
(declare-const var679!1 String)
(define-const var3112 Int (cast-from-Int-to-Int var1235)) ; Statement: $l1 = (long) i0 
;(assert (var93_setId/1260551281 var651!1 var3112)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var651!2 var93)
(declare-const var3112!1 Int)
(define-const var2626 var2157 (var483_addNewCNvGraphicFramePr/1413366139 var1614)) ; Statement: $r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties addNewCNvGraphicFramePr()>() 
(define-const var3677 var46 (var2157_addNewGraphicFrameLocks/1978038764 var2626)) ; Statement: $r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking addNewGraphicFrameLocks()>() 
;(assert (var46_setNoGrp/2057387151 var3677 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking: void setNoGrp(boolean)>(1) 

(declare-const var3677!1 var46)
(declare-const var667 Int)
;(assert (var483_addNewNvPr/-1261350769 var1614)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var1614!1 var483)
(define-const var2665 var417 (var1313_addNewXfrm/693651756 var1995)) ; Statement: r11 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D addNewXfrm()>() 
(define-const var95 var1100 (var417_addNewOff/-137997421 var2665)) ; Statement: r12 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D addNewOff()>() 
(assert true)
(define-const var3525 Float64 (getX/2088705159 (cast-from-var1729-to-var1349 var908))) ; Statement: $d0 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getX()>() 
(define-const var3271 Int (cast-from-Float64-to-Int var3525)) ; Statement: $i2 = (int) $d0 
(define-const var2099 Int (Int_valueOf/-1371140006 var3271)) ; Statement: $r14 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
;(assert (var1100_setX/-1564920088 var95 (cast-from-Int-to-var2118 var2099))) ; Statement: interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D: void setX(java.lang.Object)>($r14) 

(declare-const var95!1 var1100)
(declare-const var2099!1 Int)
(assert true)
(define-const var381 Float64 (getY/2088734950 (cast-from-var1729-to-var1349 var908))) ; Statement: $d1 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getY()>() 
(define-const var1391 Int (cast-from-Float64-to-Int var381)) ; Statement: $i3 = (int) $d1 
(define-const var2544 Int (Int_valueOf/-1371140006 var1391)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3) 
;(assert (var1100_setY/-1973744313 var95!1 (cast-from-Int-to-var2118 var2544))) ; Statement: interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D: void setY(java.lang.Object)>($r15) 

(declare-const var95!2 var1100)
(declare-const var2544!1 Int)
(define-const var3654 var564 (var417_addNewExt/-294930809 var2665)) ; Statement: r16 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D addNewExt()>() 
(assert true)
(define-const var2905 Float64 (getWidth/627712889 (cast-from-var1729-to-var1349 var908))) ; Statement: $d2 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getWidth()>() 
(define-const var312 Int (cast-from-Float64-to-Int var2905)) ; Statement: $i4 = (int) $d2 
(define-const var2715 Int (cast-from-Int-to-Int var312)) ; Statement: $l5 = (long) $i4 
;(assert (var564_setCx/-255687186 var3654 var2715)) ; Statement: interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D: void setCx(long)>($l5) 

(declare-const var3654!1 var564)
(declare-const var2715!1 Int)
(assert true)
(define-const var996 Float64 (getHeight/717604212 (cast-from-var1729-to-var1349 var908))) ; Statement: $d3 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getHeight()>() 
(define-const var73 Int (cast-from-Float64-to-Int var996)) ; Statement: $i6 = (int) $d3 
(define-const var2084 Int (cast-from-Int-to-Int var73)) ; Statement: $l7 = (long) $i6 
;(assert (var564_setCy/1487123149 var3654!1 var2084)) ; Statement: interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D: void setCy(long)>($l7) 

(declare-const var3654!2 var564)
(declare-const var2084!1 Int)
;(assert (var417_setExt/1682318566 var2665 var3654!2)) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: void setExt(org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D)>(r16) 

(declare-const var2665!1 var417)
(declare-const var3654!3 var564)
;(assert (var417_setOff/-2050453184 var2665!1 var95!2)) ; Statement: interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: void setOff(org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D)>(r12) 

(declare-const var2665!2 var417)
(declare-const var95!3 var1100)
(define-const var1280 var1808 (var1313_addNewGraphic/-492155927 var1995)) ; Statement: $r17 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject addNewGraphic()>() 
(define-const var3715 var1429 (var1808_addNewGraphicData/2076560906 var1280)) ; Statement: r18 = interfaceinvoke $r17.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData addNewGraphicData()>() 
(define-const var1930 var1617 (var1429_newCursor/473301306 var3715)) ; Statement: r19 = interfaceinvoke r18.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: org.apache.xmlbeans.XmlCursor newCursor()>() 
(define-const var496 var3555 null-var3555) ; Statement: r27 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var919 var3555) ; Statement: $r24 := @caughtexception 
(assert (not (= var919 null-var3555)))
(assert true) ; Non Conditional
 ; Statement: if r19 == null goto throw $r24 
(assert (= var1930 null-var1617)) ; Cond: r19 == null 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var2118-to-var1313=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame), var1313_addNewNvGraphicFramePr/-980114426=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual), var483_addNewCNvPr/350458854=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var93_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var93_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var483_addNewCNvGraphicFramePr/1413366139=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties), var2157_addNewGraphicFrameLocks/1978038764=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking), var46_setNoGrp/2057387151=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking, boolean], void), var483_addNewNvPr/-1261350769=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var1313_addNewXfrm/693651756=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D), var417_addNewOff/-137997421=([org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D], org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D), getX/2088705159=([java.awt.geom.RectangularShape], double), cast-from-var1729-to-var1349=([java.awt.geom.Rectangle2D], java.awt.geom.RectangularShape), cast-from-Float64-to-Int=([double], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var1100_setX/-1564920088=([org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D, java.lang.Object], void), cast-from-Int-to-var2118=([java.lang.Integer], java.lang.Object), getY/2088734950=([java.awt.geom.RectangularShape], double), var1100_setY/-1973744313=([org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D, java.lang.Object], void), var417_addNewExt/-294930809=([org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D], org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D), getWidth/627712889=([java.awt.geom.RectangularShape], double), var564_setCx/-255687186=([org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D, long], void), getHeight/717604212=([java.awt.geom.RectangularShape], double), var564_setCy/1487123149=([org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D, long], void), var417_setExt/1682318566=([org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D, org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D], void), var417_setOff/-2050453184=([org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D, org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D], void), var1313_addNewGraphic/-492155927=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject), var1808_addNewGraphicData/2076560906=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData), var1429_newCursor/473301306=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData], org.apache.xmlbeans.XmlCursor)}
; {var1235=i0, var3924=r22, var289=null_type, var1729=java.awt.geom.Rectangle2D, var908=r13, var388=org.apache.xmlbeans.impl.schema.DocumentFactory, var1313=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var1133=$r0, var2118=java.lang.Object, var2037=$r1, var1995=r2, var483=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual, var1614=r3, var93=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var651=r4, var3192=$r5, var3246=$r6, var3267=$r7, var679=$r8, var3112=$l1, var2157=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties, var2626=$r9, var46=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking, var3677=$r10, var667=1, var417=org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D, var2665=r11, var1100=org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D, var95=r12, var1349=java.awt.geom.RectangularShape, var3525=$d0, var3271=$i2, var2099=$r14, var381=$d1, var1391=$i3, var2544=$r15, var564=org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D, var3654=r16, var2905=$d2, var312=$i4, var2715=$l5, var996=$d3, var73=$i6, var2084=$l7, var1808=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject, var1280=$r17, var1429=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData, var3715=r18, var1617=org.apache.xmlbeans.XmlCursor, var1930=r19, var3555=java.lang.Throwable, var496=r27, var919=$r24, var3002=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps}
; {i0=var1235, r22=var3924, null_type=var289, java.awt.geom.Rectangle2D=var1729, r13=var908, org.apache.xmlbeans.impl.schema.DocumentFactory=var388, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var1313, $r0=var1133, java.lang.Object=var2118, $r1=var2037, r2=var1995, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual=var483, r3=var1614, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var93, r4=var651, $r5=var3192, $r6=var3246, $r7=var3267, $r8=var679, $l1=var3112, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties=var2157, $r9=var2626, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking=var46, $r10=var3677, 1=var667, org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D=var417, r11=var2665, org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D=var1100, r12=var95, java.awt.geom.RectangularShape=var1349, $d0=var3525, $i2=var3271, $r14=var2099, $d1=var381, $i3=var1391, $r15=var2544, org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D=var564, r16=var3654, $d2=var2905, $i4=var312, $l5=var2715, $d3=var996, $i6=var73, $l7=var2084, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject=var1808, $r17=var1280, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData=var1429, r18=var3715, org.apache.xmlbeans.XmlCursor=var1617, r19=var1930, java.lang.Throwable=var3555, r27=var496, $r24=var919, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var3002}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r22 := @parameter1: java.lang.String;	r13 := @parameter2: java.awt.geom.Rectangle2D;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Chart ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	$r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties addNewCNvGraphicFramePr()>();	$r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking addNewGraphicFrameLocks()>();	interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking: void setNoGrp(boolean)>(1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	r11 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D addNewXfrm()>();	r12 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D addNewOff()>();	$d0 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getX()>();	$i2 = (int) $d0;	$r14 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D: void setX(java.lang.Object)>($r14);	$d1 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getY()>();	$i3 = (int) $d1;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3);	interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D: void setY(java.lang.Object)>($r15);	r16 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D addNewExt()>();	$d2 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getWidth()>();	$i4 = (int) $d2;	$l5 = (long) $i4;	interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D: void setCx(long)>($l5);	$d3 = virtualinvoke r13.<java.awt.geom.Rectangle2D: double getHeight()>();	$i6 = (int) $d3;	$l7 = (long) $i6;	interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D: void setCy(long)>($l7);	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: void setExt(org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D)>(r16);	interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D: void setOff(org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D)>(r12);	$r17 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject addNewGraphic()>();	r18 = interfaceinvoke $r17.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData addNewGraphicData()>();	r19 = interfaceinvoke r18.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: org.apache.xmlbeans.XmlCursor newCursor()>();	r27 = null;	$r24 := @caughtexception;	if r19 == null goto throw $r24;	throw $r24
;block_num 4