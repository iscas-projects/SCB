(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3087 0)
(declare-sort var1617 0)
(declare-sort var3220 0)
(declare-sort var185 0)
(declare-sort var2708 0)
(declare-sort var2253 0)
(declare-sort var2549 0)
(declare-sort var347 0)
(declare-sort var1748 0)
(declare-sort var1731 0)
(declare-sort var2130 0)
(declare-sort var3063 0)
(declare-sort var3804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var3220) var2708)
(declare-fun cast-from-var2708-to-var185 (var2708) var185)
(declare-fun getBounds2D/-754274500 (var2549) var2253)
(declare-fun cast-from-var1617-to-var2549 (var1617) var2549)
(declare-fun getX/2088705159 (var347) Float64)
(declare-fun cast-from-var2253-to-var347 (var2253) var347)
(declare-fun var1748_toEMU/-23510732 (Float64) Int)
(declare-fun getY/2088734950 (var347) Float64)
(declare-fun var1731-init () var1731)
(declare-fun <init>/1244504896 (var1731) void)
(declare-fun getPathIterator/-682339779 (var2549 var1731) var2130)
(declare-fun getHeight/717604212 (var347) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var185_setH/-303763438 (var185 Int) void)
(declare-fun getWidth/627712889 (var347) Float64)
(declare-fun var185_setW/68587811 (var185 Int) void)
(declare-fun arr-Float64-init () (Array Int Float64))
(declare-fun var2130_isDone/-1832213810 (var2130) Bool)
(declare-fun getShapeProperties/-446384766 (var3804) var3063)
(declare-fun cast-from-var3087-to-var3804 (var3087) var3804)
(declare-const null-var3087 var3087)
(declare-const null-var1617 var1617)
(declare-const var185-Factory var3220)
(declare-const var2657 var3087) ; Statement: r8 := @this: org.apache.poi.xslf.usermodel.XSLFFreeformShape 
(assert (not (= var2657 null-var3087)))
(declare-const var3203 var1617) ; Statement: r3 := @parameter0: java.awt.geom.Path2D 
(assert (not (= var3203 null-var1617)))
(define-const var1025 var3220 var185-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2448 var2708 (newInstance/532723879 var1025)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var310 var185 (cast-from-var2708-to-var185 var2448)) ; Statement: r2 = (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D) $r1 
(assert true)
(define-const var2333 var2253 (getBounds2D/-754274500 (cast-from-var1617-to-var2549 var3203))) ; Statement: r4 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.Rectangle2D getBounds2D()>() 
(assert true)
(define-const var881 Float64 (getX/2088705159 (cast-from-var2253-to-var347 var2333))) ; Statement: $d0 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getX()>() 
(define-const var916 Int (var1748_toEMU/-23510732 var881)) ; Statement: i0 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d0) 
(assert true)
(define-const var2356 Float64 (getY/2088734950 (cast-from-var2253-to-var347 var2333))) ; Statement: $d1 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getY()>() 
(define-const var3999 Int (var1748_toEMU/-23510732 var2356)) ; Statement: i1 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d1) 
(define-const var2352 var1731 var1731-init) ; Statement: $r24 = new java.awt.geom.AffineTransform 
(assert true)
;(assert (<init>/1244504896 var2352)) ; Statement: specialinvoke $r24.<java.awt.geom.AffineTransform: void <init>()>() 

(declare-const var2352!1 var1731)
(assert true)
(define-const var3678 var2130 (getPathIterator/-682339779 (cast-from-var1617-to-var2549 var3203) var2352!1)) ; Statement: r6 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>($r24) 
(define-const var1457 Int 0) ; Statement: i12 = 0 
(assert true)
(define-const var813 Float64 (getHeight/717604212 (cast-from-var2253-to-var347 var2333))) ; Statement: $d2 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getHeight()>() 
(define-const var1887 Int (var1748_toEMU/-23510732 var813)) ; Statement: $i2 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d2) 
(define-const var1299 Int (cast-from-Int-to-Int var1887)) ; Statement: $l3 = (long) $i2 
;(assert (var185_setH/-303763438 var310 var1299)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setH(long)>($l3) 

(declare-const var310!1 var185)
(declare-const var1299!1 Int)
(assert true)
(define-const var2857 Float64 (getWidth/627712889 (cast-from-var2253-to-var347 var2333))) ; Statement: $d3 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getWidth()>() 
(define-const var3155 Int (var1748_toEMU/-23510732 var2857)) ; Statement: $i4 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d3) 
(define-const var732 Int (cast-from-Int-to-Int var3155)) ; Statement: $l5 = (long) $i4 
;(assert (var185_setW/68587811 var310!1 var732)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setW(long)>($l5) 

(declare-const var310!2 var185)
(declare-const var732!1 Int)
(define-const var1053 (Array Int Float64) arr-Float64-init) ; Statement: r7 = newarray (double)[6] 
(assert true) ; Non Conditional
(define-const var159 Bool (var2130_isDone/-1832213810 var3678)) ; Statement: $z0 = interfaceinvoke r6.<java.awt.geom.PathIterator: boolean isDone()>() 
 ; Statement: if $z0 != 0 goto r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>() 
(assert (not (= (ite var159 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var702 var3063 (getShapeProperties/-446384766 (cast-from-var3087-to-var3804 var2657))) ; Statement: r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>() 
(define-const var1605 Bool true) ; Statement: $z1 = r23 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties 
 ; Statement: if $z1 != 0 goto $r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties) r23 
(assert (not (not (= (ite var1605 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3606 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i19 = (int) -1 
 ; Statement: return $i19 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var2708-to-var185=([java.lang.Object], org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D), getBounds2D/-754274500=([java.awt.Shape], java.awt.geom.Rectangle2D), cast-from-var1617-to-var2549=([java.awt.geom.Path2D], java.awt.Shape), getX/2088705159=([java.awt.geom.RectangularShape], double), cast-from-var2253-to-var347=([java.awt.geom.Rectangle2D], java.awt.geom.RectangularShape), var1748_toEMU/-23510732=([double], int), getY/2088734950=([java.awt.geom.RectangularShape], double), var1731-init=([], java.awt.geom.AffineTransform), <init>/1244504896=([java.awt.geom.AffineTransform], void), getPathIterator/-682339779=([java.awt.Shape, java.awt.geom.AffineTransform], java.awt.geom.PathIterator), getHeight/717604212=([java.awt.geom.RectangularShape], double), cast-from-Int-to-Int=([int], long), var185_setH/-303763438=([org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, long], void), getWidth/627712889=([java.awt.geom.RectangularShape], double), var185_setW/68587811=([org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, long], void), arr-Float64-init=([], double[]), var2130_isDone/-1832213810=([java.awt.geom.PathIterator], boolean), getShapeProperties/-446384766=([org.apache.poi.xslf.usermodel.XSLFShape], org.apache.xmlbeans.XmlObject), cast-from-var3087-to-var3804=([org.apache.poi.xslf.usermodel.XSLFFreeformShape], org.apache.poi.xslf.usermodel.XSLFShape)}
; {var3087=org.apache.poi.xslf.usermodel.XSLFFreeformShape, var2657=r8, var1617=java.awt.geom.Path2D, var3203=r3, var3220=org.apache.xmlbeans.impl.schema.DocumentFactory, var185=org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, var1025=$r0, var2708=java.lang.Object, var2448=$r1, var310=r2, var2253=java.awt.geom.Rectangle2D, var2549=java.awt.Shape, var2333=r4, var347=java.awt.geom.RectangularShape, var881=$d0, var1748=org.apache.poi.util.Units, var916=i0, var2356=$d1, var3999=i1, var1731=java.awt.geom.AffineTransform, var2352=$r24, var2130=java.awt.geom.PathIterator, var3678=r6, var1457=i12, var813=$d2, var1887=$i2, var1299=$l3, var2857=$d3, var3155=$i4, var732=$l5, var1053=r7, var159=$z0, var3063=org.apache.xmlbeans.XmlObject, var3804=org.apache.poi.xslf.usermodel.XSLFShape, var702=r23, var1605=$z1, var3606=$i19}
; {org.apache.poi.xslf.usermodel.XSLFFreeformShape=var3087, r8=var2657, java.awt.geom.Path2D=var1617, r3=var3203, org.apache.xmlbeans.impl.schema.DocumentFactory=var3220, org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D=var185, $r0=var1025, java.lang.Object=var2708, $r1=var2448, r2=var310, java.awt.geom.Rectangle2D=var2253, java.awt.Shape=var2549, r4=var2333, java.awt.geom.RectangularShape=var347, $d0=var881, org.apache.poi.util.Units=var1748, i0=var916, $d1=var2356, i1=var3999, java.awt.geom.AffineTransform=var1731, $r24=var2352, java.awt.geom.PathIterator=var2130, r6=var3678, i12=var1457, $d2=var813, $i2=var1887, $l3=var1299, $d3=var2857, $i4=var3155, $l5=var732, r7=var1053, $z0=var159, org.apache.xmlbeans.XmlObject=var3063, org.apache.poi.xslf.usermodel.XSLFShape=var3804, r23=var702, $z1=var1605, $i19=var3606}
;seq 
;cnt {}
;stmts r8 := @this: org.apache.poi.xslf.usermodel.XSLFFreeformShape;	r3 := @parameter0: java.awt.geom.Path2D;	$r0 = <org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D) $r1;	r4 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.Rectangle2D getBounds2D()>();	$d0 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getX()>();	i0 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d0);	$d1 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getY()>();	i1 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d1);	$r24 = new java.awt.geom.AffineTransform;	specialinvoke $r24.<java.awt.geom.AffineTransform: void <init>()>();	r6 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>($r24);	i12 = 0;	$d2 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getHeight()>();	$i2 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d2);	$l3 = (long) $i2;	interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setH(long)>($l3);	$d3 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getWidth()>();	$i4 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d3);	$l5 = (long) $i4;	interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setW(long)>($l5);	r7 = newarray (double)[6];	$z0 = interfaceinvoke r6.<java.awt.geom.PathIterator: boolean isDone()>();	if $z0 != 0 goto r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>();	r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>();	$z1 = r23 instanceof org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;	if $z1 != 0 goto $r9 = (org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties) r23;	$i19 = (int) -1;	return $i19
;block_num 4