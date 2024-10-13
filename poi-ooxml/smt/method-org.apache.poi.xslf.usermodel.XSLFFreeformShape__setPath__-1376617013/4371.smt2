(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2936 0)
(declare-sort var2013 0)
(declare-sort var2731 0)
(declare-sort var1018 0)
(declare-sort var3747 0)
(declare-sort var441 0)
(declare-sort var898 0)
(declare-sort var1811 0)
(declare-sort var184 0)
(declare-sort var2899 0)
(declare-sort var3007 0)
(declare-sort var1895 0)
(declare-sort var2652 0)
(declare-sort var2547 0)
(declare-sort var606 0)
(declare-sort var2119 0)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var2731) var3747)
(declare-fun cast-from-var3747-to-var1018 (var3747) var1018)
(declare-fun getBounds2D/-754274500 (var898) var441)
(declare-fun cast-from-var2013-to-var898 (var2013) var898)
(declare-fun getX/2088705159 (var1811) Float64)
(declare-fun cast-from-var441-to-var1811 (var441) var1811)
(declare-fun var184_toEMU/-23510732 (Float64) Int)
(declare-fun getY/2088734950 (var1811) Float64)
(declare-fun var2899-init () var2899)
(declare-fun <init>/1244504896 (var2899) void)
(declare-fun getPathIterator/-682339779 (var898 var2899) var3007)
(declare-fun getHeight/717604212 (var1811) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1018_setH/-303763438 (var1018 Int) void)
(declare-fun getWidth/627712889 (var1811) Float64)
(declare-fun var1018_setW/68587811 (var1018 Int) void)
(declare-fun arr-Float64-init () (Array Int Float64))
(declare-fun var3007_isDone/-1832213810 (var3007) Bool)
(declare-fun getShapeProperties/-446384766 (var2652) var1895)
(declare-fun cast-from-var2936-to-var2652 (var2936) var2652)
(declare-fun cast-from-var1895-to-var2547 (var1895) var2547)
(declare-fun var2547_getCustGeom/218647397 (var2547) var606)
(declare-fun var606_getPathLst/1212790555 (var606) var2119)
(declare-fun arr-var1018-init () (Array Int var1018))
(declare-fun var2119_setPathArray/-498433869 (var2119 (Array Int var1018)) void)
(declare-fun setAnchor/-1028453256 (var697 var441) void)
(declare-fun cast-from-var2936-to-var697 (var2936) var697)
(declare-const null-var2936 var2936)
(declare-const null-var2013 var2013)
(declare-const var1018-Factory var2731)
(declare-const null-__Array__Int__var1018__ (Array Int var1018))
(declare-const var3478 var2936) ; Statement: r8 := @this: org.apache.poi.xslf.usermodel.XSLFFreeformShape 
(assert (not (= var3478 null-var2936)))
(declare-const var1611 var2013) ; Statement: r3 := @parameter0: java.awt.geom.Path2D 
(assert (not (= var1611 null-var2013)))
(define-const var1819 var2731 var1018-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var167 var3747 (newInstance/532723879 var1819)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var1304 var1018 (cast-from-var3747-to-var1018 var167)) ; Statement: r2 = (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D) $r1 
(assert true)
(define-const var1120 var441 (getBounds2D/-754274500 (cast-from-var2013-to-var898 var1611))) ; Statement: r4 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.Rectangle2D getBounds2D()>() 
(assert true)
(define-const var3233 Float64 (getX/2088705159 (cast-from-var441-to-var1811 var1120))) ; Statement: $d0 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getX()>() 
(define-const var1681 Int (var184_toEMU/-23510732 var3233)) ; Statement: i0 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d0) 
(assert true)
(define-const var403 Float64 (getY/2088734950 (cast-from-var441-to-var1811 var1120))) ; Statement: $d1 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getY()>() 
(define-const var3750 Int (var184_toEMU/-23510732 var403)) ; Statement: i1 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d1) 
(define-const var3680 var2899 var2899-init) ; Statement: $r24 = new java.awt.geom.AffineTransform 
(assert true)
;(assert (<init>/1244504896 var3680)) ; Statement: specialinvoke $r24.<java.awt.geom.AffineTransform: void <init>()>() 

(declare-const var3680!1 var2899)
(assert true)
(define-const var721 var3007 (getPathIterator/-682339779 (cast-from-var2013-to-var898 var1611) var3680!1)) ; Statement: r6 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>($r24) 
(define-const var1663 Int 0) ; Statement: i12 = 0 
(assert true)
(define-const var521 Float64 (getHeight/717604212 (cast-from-var441-to-var1811 var1120))) ; Statement: $d2 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getHeight()>() 
(define-const var3671 Int (var184_toEMU/-23510732 var521)) ; Statement: $i2 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d2) 
(define-const var1850 Int (cast-from-Int-to-Int var3671)) ; Statement: $l3 = (long) $i2 
;(assert (var1018_setH/-303763438 var1304 var1850)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setH(long)>($l3) 

(declare-const var1304!1 var1018)
(declare-const var1850!1 Int)
(assert true)
(define-const var3255 Float64 (getWidth/627712889 (cast-from-var441-to-var1811 var1120))) ; Statement: $d3 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getWidth()>() 
(define-const var1278 Int (var184_toEMU/-23510732 var3255)) ; Statement: $i4 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d3) 
(define-const var3357 Int (cast-from-Int-to-Int var1278)) ; Statement: $l5 = (long) $i4 
;(assert (var1018_setW/68587811 var1304!1 var3357)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setW(long)>($l5) 

(declare-const var1304!2 var1018)
(declare-const var3357!1 Int)
(define-const var2452 (Array Int Float64) arr-Float64-init) ; Statement: r7 = newarray (double)[6] 
(assert true) ; Non Conditional
(define-const var874 Bool (var3007_isDone/-1832213810 var721)) ; Statement: $z0 = interfaceinvoke r6.<java.awt.geom.PathIterator: boolean isDone()>() 
 ; Statement: if $z0 != 0 goto r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>() 
(assert (not (= (ite var874 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1948 var1895 (getShapeProperties/-446384766 (cast-from-var2936-to-var2652 var3478))) ; Statement: r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>() 
(define-const var991 Bool true) ; Statement: $z1 = r23 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties 
 ; Statement: if $z1 != 0 goto $r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties) r23 
(assert (not (= (ite var991 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3347 var2547 (cast-from-var1895-to-var2547 var1948)) ; Statement: $r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties) r23 
(define-const var565 var606 (var2547_getCustGeom/218647397 var3347)) ; Statement: $r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D getCustGeom()>() 
(define-const var3367 var2119 (var606_getPathLst/1212790555 var565)) ; Statement: $r12 = interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList getPathLst()>() 
(define-const var3666 (Array Int var1018) arr-var1018-init) ; Statement: $r11 = newarray (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)[1] 
(declare-const var3666!1 (Array Int var1018))
(assert (not (= var3666!1 null-__Array__Int__var1018__)))
(assert (= (select var3666!1 0) var1304!2)) ; Statement: $r11[0] = r2 
;(assert (var2119_setPathArray/-498433869 var3367 var3666!1)) ; Statement: interfaceinvoke $r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList: void setPathArray(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D[])>($r11) 

(declare-const var3367!1 var2119)
(declare-const var3666!2 (Array Int var1018))
(assert true)
;(assert (setAnchor/-1028453256 (cast-from-var2936-to-var697 var3478) var1120)) ; Statement: virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: void setAnchor(java.awt.geom.Rectangle2D)>(r4) 

(declare-const var3478!1 var2936)
(declare-const var1120!1 var441)
 ; Statement: return i12 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var3747-to-var1018=([java.lang.Object], org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D), getBounds2D/-754274500=([java.awt.Shape], java.awt.geom.Rectangle2D), cast-from-var2013-to-var898=([java.awt.geom.Path2D], java.awt.Shape), getX/2088705159=([java.awt.geom.RectangularShape], double), cast-from-var441-to-var1811=([java.awt.geom.Rectangle2D], java.awt.geom.RectangularShape), var184_toEMU/-23510732=([double], int), getY/2088734950=([java.awt.geom.RectangularShape], double), var2899-init=([], java.awt.geom.AffineTransform), <init>/1244504896=([java.awt.geom.AffineTransform], void), getPathIterator/-682339779=([java.awt.Shape, java.awt.geom.AffineTransform], java.awt.geom.PathIterator), getHeight/717604212=([java.awt.geom.RectangularShape], double), cast-from-Int-to-Int=([int], long), var1018_setH/-303763438=([org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, long], void), getWidth/627712889=([java.awt.geom.RectangularShape], double), var1018_setW/68587811=([org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, long], void), arr-Float64-init=([], double[]), var3007_isDone/-1832213810=([java.awt.geom.PathIterator], boolean), getShapeProperties/-446384766=([org.apache.poi.xslf.usermodel.XSLFShape], org.apache.xmlbeans.XmlObject), cast-from-var2936-to-var2652=([org.apache.poi.xslf.usermodel.XSLFFreeformShape], org.apache.poi.xslf.usermodel.XSLFShape), cast-from-var1895-to-var2547=([org.apache.xmlbeans.XmlObject], org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties), var2547_getCustGeom/218647397=([org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D), var606_getPathLst/1212790555=([org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList), arr-var1018-init=([], org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D[]), var2119_setPathArray/-498433869=([org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList, org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D[]], void), setAnchor/-1028453256=([org.apache.poi.xslf.usermodel.XSLFSimpleShape, java.awt.geom.Rectangle2D], void), cast-from-var2936-to-var697=([org.apache.poi.xslf.usermodel.XSLFFreeformShape], org.apache.poi.xslf.usermodel.XSLFSimpleShape)}
; {var2936=org.apache.poi.xslf.usermodel.XSLFFreeformShape, var3478=r8, var2013=java.awt.geom.Path2D, var1611=r3, var2731=org.apache.xmlbeans.impl.schema.DocumentFactory, var1018=org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, var1819=$r0, var3747=java.lang.Object, var167=$r1, var1304=r2, var441=java.awt.geom.Rectangle2D, var898=java.awt.Shape, var1120=r4, var1811=java.awt.geom.RectangularShape, var3233=$d0, var184=org.apache.poi.util.Units, var1681=i0, var403=$d1, var3750=i1, var2899=java.awt.geom.AffineTransform, var3680=$r24, var3007=java.awt.geom.PathIterator, var721=r6, var1663=i12, var521=$d2, var3671=$i2, var1850=$l3, var3255=$d3, var1278=$i4, var3357=$l5, var2452=r7, var874=$z0, var1895=org.apache.xmlbeans.XmlObject, var2652=org.apache.poi.xslf.usermodel.XSLFShape, var1948=r23, var991=$z1, var2547=org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties, var3347=$r9, var606=org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D, var565=$r10, var2119=org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList, var3367=$r12, var3666=$r11, var697=org.apache.poi.xslf.usermodel.XSLFSimpleShape}
; {org.apache.poi.xslf.usermodel.XSLFFreeformShape=var2936, r8=var3478, java.awt.geom.Path2D=var2013, r3=var1611, org.apache.xmlbeans.impl.schema.DocumentFactory=var2731, org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D=var1018, $r0=var1819, java.lang.Object=var3747, $r1=var167, r2=var1304, java.awt.geom.Rectangle2D=var441, java.awt.Shape=var898, r4=var1120, java.awt.geom.RectangularShape=var1811, $d0=var3233, org.apache.poi.util.Units=var184, i0=var1681, $d1=var403, i1=var3750, java.awt.geom.AffineTransform=var2899, $r24=var3680, java.awt.geom.PathIterator=var3007, r6=var721, i12=var1663, $d2=var521, $i2=var3671, $l3=var1850, $d3=var3255, $i4=var1278, $l5=var3357, r7=var2452, $z0=var874, org.apache.xmlbeans.XmlObject=var1895, org.apache.poi.xslf.usermodel.XSLFShape=var2652, r23=var1948, $z1=var991, org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties=var2547, $r9=var3347, org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D=var606, $r10=var565, org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList=var2119, $r12=var3367, $r11=var3666, org.apache.poi.xslf.usermodel.XSLFSimpleShape=var697}
;seq 
;cnt {}
;stmts r8 := @this: org.apache.poi.xslf.usermodel.XSLFFreeformShape;	r3 := @parameter0: java.awt.geom.Path2D;	$r0 = <org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D) $r1;	r4 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.Rectangle2D getBounds2D()>();	$d0 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getX()>();	i0 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d0);	$d1 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getY()>();	i1 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d1);	$r24 = new java.awt.geom.AffineTransform;	specialinvoke $r24.<java.awt.geom.AffineTransform: void <init>()>();	r6 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>($r24);	i12 = 0;	$d2 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getHeight()>();	$i2 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d2);	$l3 = (long) $i2;	interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setH(long)>($l3);	$d3 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getWidth()>();	$i4 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d3);	$l5 = (long) $i4;	interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setW(long)>($l5);	r7 = newarray (double)[6];	$z0 = interfaceinvoke r6.<java.awt.geom.PathIterator: boolean isDone()>();	if $z0 != 0 goto r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>();	r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>();	$z1 = r23 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;	if $z1 != 0 goto $r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties) r23;	$r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties) r23;	$r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D getCustGeom()>();	$r12 = interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList getPathLst()>();	$r11 = newarray (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)[1];	$r11[0] = r2;	interfaceinvoke $r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DList: void setPathArray(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D[])>($r11);	virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: void setAnchor(java.awt.geom.Rectangle2D)>(r4);	return i12
;block_num 4