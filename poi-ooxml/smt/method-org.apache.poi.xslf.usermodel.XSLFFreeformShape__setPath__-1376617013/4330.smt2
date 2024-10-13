(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2207 0)
(declare-sort var459 0)
(declare-sort var3196 0)
(declare-sort var931 0)
(declare-sort var2839 0)
(declare-sort var3951 0)
(declare-sort var1728 0)
(declare-sort var2713 0)
(declare-sort var1977 0)
(declare-sort var361 0)
(declare-sort var2221 0)
(declare-sort var2159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var3196) var2839)
(declare-fun cast-from-var2839-to-var931 (var2839) var931)
(declare-fun getBounds2D/-754274500 (var1728) var3951)
(declare-fun cast-from-var459-to-var1728 (var459) var1728)
(declare-fun getX/2088705159 (var2713) Float64)
(declare-fun cast-from-var3951-to-var2713 (var3951) var2713)
(declare-fun var1977_toEMU/-23510732 (Float64) Int)
(declare-fun getY/2088734950 (var2713) Float64)
(declare-fun var361-init () var361)
(declare-fun <init>/1244504896 (var361) void)
(declare-fun getPathIterator/-682339779 (var1728 var361) var2221)
(declare-fun getHeight/717604212 (var2713) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var931_setH/-303763438 (var931 Int) void)
(declare-fun getWidth/627712889 (var2713) Float64)
(declare-fun var931_setW/68587811 (var931 Int) void)
(declare-fun arr-Float64-init () (Array Int Float64))
(declare-fun var2221_isDone/-1832213810 (var2221) Bool)
(declare-fun var2221_currentSegment/1226104346 (var2221 (Array Int Float64)) Int)
(declare-fun var2159-init () var2159)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2159 String) void)
(declare-const null-var2207 var2207)
(declare-const null-var459 var459)
(declare-const var931-Factory var3196)
(declare-const var992 var2207) ; Statement: r8 := @this: org.apache.poi.xslf.usermodel.XSLFFreeformShape 
(assert (not (= var992 null-var2207)))
(declare-const var553 var459) ; Statement: r3 := @parameter0: java.awt.geom.Path2D 
(assert (not (= var553 null-var459)))
(define-const var1680 var3196 var931-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var1078 var2839 (newInstance/532723879 var1680)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var3799 var931 (cast-from-var2839-to-var931 var1078)) ; Statement: r2 = (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D) $r1 
(assert true)
(define-const var2033 var3951 (getBounds2D/-754274500 (cast-from-var459-to-var1728 var553))) ; Statement: r4 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.Rectangle2D getBounds2D()>() 
(assert true)
(define-const var3359 Float64 (getX/2088705159 (cast-from-var3951-to-var2713 var2033))) ; Statement: $d0 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getX()>() 
(define-const var2819 Int (var1977_toEMU/-23510732 var3359)) ; Statement: i0 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d0) 
(assert true)
(define-const var75 Float64 (getY/2088734950 (cast-from-var3951-to-var2713 var2033))) ; Statement: $d1 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getY()>() 
(define-const var1352 Int (var1977_toEMU/-23510732 var75)) ; Statement: i1 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d1) 
(define-const var2585 var361 var361-init) ; Statement: $r24 = new java.awt.geom.AffineTransform 
(assert true)
;(assert (<init>/1244504896 var2585)) ; Statement: specialinvoke $r24.<java.awt.geom.AffineTransform: void <init>()>() 

(declare-const var2585!1 var361)
(assert true)
(define-const var538 var2221 (getPathIterator/-682339779 (cast-from-var459-to-var1728 var553) var2585!1)) ; Statement: r6 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>($r24) 
(define-const var3237 Int 0) ; Statement: i12 = 0 
(assert true)
(define-const var3007 Float64 (getHeight/717604212 (cast-from-var3951-to-var2713 var2033))) ; Statement: $d2 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getHeight()>() 
(define-const var869 Int (var1977_toEMU/-23510732 var3007)) ; Statement: $i2 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d2) 
(define-const var2797 Int (cast-from-Int-to-Int var869)) ; Statement: $l3 = (long) $i2 
;(assert (var931_setH/-303763438 var3799 var2797)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setH(long)>($l3) 

(declare-const var3799!1 var931)
(declare-const var2797!1 Int)
(assert true)
(define-const var902 Float64 (getWidth/627712889 (cast-from-var3951-to-var2713 var2033))) ; Statement: $d3 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getWidth()>() 
(define-const var3135 Int (var1977_toEMU/-23510732 var902)) ; Statement: $i4 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d3) 
(define-const var356 Int (cast-from-Int-to-Int var3135)) ; Statement: $l5 = (long) $i4 
;(assert (var931_setW/68587811 var3799!1 var356)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setW(long)>($l5) 

(declare-const var3799!2 var931)
(declare-const var356!1 Int)
(define-const var3238 (Array Int Float64) arr-Float64-init) ; Statement: r7 = newarray (double)[6] 
(assert true) ; Non Conditional
(define-const var2229 Bool (var2221_isDone/-1832213810 var538)) ; Statement: $z0 = interfaceinvoke r6.<java.awt.geom.PathIterator: boolean isDone()>() 
 ; Statement: if $z0 != 0 goto r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>() 
(assert (not (not (= (ite var2229 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3245 Int (var2221_currentSegment/1226104346 var538 var3238)) ; Statement: i13 = interfaceinvoke r6.<java.awt.geom.PathIterator: int currentSegment(double[])>(r7) 
 ; Statement: tableswitch(i13) {     case 0: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addMoveTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 1: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addLineTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 2: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addQuadBezierTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 3: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addCubicBezierTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 4: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addClosePath(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     default: goto $r26 = new java.lang.IllegalStateException; } 
(assert (and (not (= var3245 4)) (and (not (= var3245 3)) (and (not (= var3245 2)) (and (not (= var3245 1)) (and (not (= var3245 0)) true)))))) ; Intersect: Negate: Cond: i13 == 4   and Intersect: Negate: Cond: i13 == 3   and Intersect: Negate: Cond: i13 == 2   and Intersect: Negate: Cond: i13 == 1   and Intersect: Negate: Cond: i13 == 0   and Non Conditional     
(define-const var290 var2159 var2159-init) ; Statement: $r26 = new java.lang.IllegalStateException 
(define-const var1096 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1096)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1096!1 String)
(assert (= var1096!1 ""))
(assert true)
(define-const var1473 String (append/672562846 var1096!1 "Unrecognized path segment type: ")) ; Statement: $r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized path segment type: ") 
(declare-const var1096!2 String)
(assert (= var1096!2 (str.++ var1096!1 "Unrecognized path segment type: ")))
(assert true)
(define-const var2595 String (append/-1001720160 var1473 var3245)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i13) 
(declare-const var1473!1 String)
(assert (str.prefixof var1473 var1473!1))
(assert true)
(define-const var733 String (toString/-2075883882 var2595)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var290 var733)) ; Statement: specialinvoke $r26.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21) 

(declare-const var290!1 var2159)
(declare-const var733!1 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var2839-to-var931=([java.lang.Object], org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D), getBounds2D/-754274500=([java.awt.Shape], java.awt.geom.Rectangle2D), cast-from-var459-to-var1728=([java.awt.geom.Path2D], java.awt.Shape), getX/2088705159=([java.awt.geom.RectangularShape], double), cast-from-var3951-to-var2713=([java.awt.geom.Rectangle2D], java.awt.geom.RectangularShape), var1977_toEMU/-23510732=([double], int), getY/2088734950=([java.awt.geom.RectangularShape], double), var361-init=([], java.awt.geom.AffineTransform), <init>/1244504896=([java.awt.geom.AffineTransform], void), getPathIterator/-682339779=([java.awt.Shape, java.awt.geom.AffineTransform], java.awt.geom.PathIterator), getHeight/717604212=([java.awt.geom.RectangularShape], double), cast-from-Int-to-Int=([int], long), var931_setH/-303763438=([org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, long], void), getWidth/627712889=([java.awt.geom.RectangularShape], double), var931_setW/68587811=([org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, long], void), arr-Float64-init=([], double[]), var2221_isDone/-1832213810=([java.awt.geom.PathIterator], boolean), var2221_currentSegment/1226104346=([java.awt.geom.PathIterator, double[]], int), var2159-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2207=org.apache.poi.xslf.usermodel.XSLFFreeformShape, var992=r8, var459=java.awt.geom.Path2D, var553=r3, var3196=org.apache.xmlbeans.impl.schema.DocumentFactory, var931=org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D, var1680=$r0, var2839=java.lang.Object, var1078=$r1, var3799=r2, var3951=java.awt.geom.Rectangle2D, var1728=java.awt.Shape, var2033=r4, var2713=java.awt.geom.RectangularShape, var3359=$d0, var1977=org.apache.poi.util.Units, var2819=i0, var75=$d1, var1352=i1, var361=java.awt.geom.AffineTransform, var2585=$r24, var2221=java.awt.geom.PathIterator, var538=r6, var3237=i12, var3007=$d2, var869=$i2, var2797=$l3, var902=$d3, var3135=$i4, var356=$l5, var3238=r7, var2229=$z0, var3245=i13, var2159=java.lang.IllegalStateException, var290=$r26, var1096=$r25, var1473=$r19, var2595=$r20, var733=$r21}
; {org.apache.poi.xslf.usermodel.XSLFFreeformShape=var2207, r8=var992, java.awt.geom.Path2D=var459, r3=var553, org.apache.xmlbeans.impl.schema.DocumentFactory=var3196, org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D=var931, $r0=var1680, java.lang.Object=var2839, $r1=var1078, r2=var3799, java.awt.geom.Rectangle2D=var3951, java.awt.Shape=var1728, r4=var2033, java.awt.geom.RectangularShape=var2713, $d0=var3359, org.apache.poi.util.Units=var1977, i0=var2819, $d1=var75, i1=var1352, java.awt.geom.AffineTransform=var361, $r24=var2585, java.awt.geom.PathIterator=var2221, r6=var538, i12=var3237, $d2=var3007, $i2=var869, $l3=var2797, $d3=var902, $i4=var3135, $l5=var356, r7=var3238, $z0=var2229, i13=var3245, java.lang.IllegalStateException=var2159, $r26=var290, $r25=var1096, $r19=var1473, $r20=var2595, $r21=var733}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.poi.xslf.usermodel.XSLFFreeformShape;	r3 := @parameter0: java.awt.geom.Path2D;	$r0 = <org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D) $r1;	r4 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.Rectangle2D getBounds2D()>();	$d0 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getX()>();	i0 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d0);	$d1 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getY()>();	i1 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d1);	$r24 = new java.awt.geom.AffineTransform;	specialinvoke $r24.<java.awt.geom.AffineTransform: void <init>()>();	r6 = virtualinvoke r3.<java.awt.geom.Path2D: java.awt.geom.PathIterator getPathIterator(java.awt.geom.AffineTransform)>($r24);	i12 = 0;	$d2 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getHeight()>();	$i2 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d2);	$l3 = (long) $i2;	interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setH(long)>($l3);	$d3 = virtualinvoke r4.<java.awt.geom.Rectangle2D: double getWidth()>();	$i4 = staticinvoke <org.apache.poi.util.Units: int toEMU(double)>($d3);	$l5 = (long) $i4;	interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D: void setW(long)>($l5);	r7 = newarray (double)[6];	$z0 = interfaceinvoke r6.<java.awt.geom.PathIterator: boolean isDone()>();	if $z0 != 0 goto r23 = virtualinvoke r8.<org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.apache.xmlbeans.XmlObject getShapeProperties()>();	i13 = interfaceinvoke r6.<java.awt.geom.PathIterator: int currentSegment(double[])>(r7);	tableswitch(i13) {     case 0: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addMoveTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 1: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addLineTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 2: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addQuadBezierTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 3: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addCubicBezierTo(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     case 4: goto r22 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFFreeformShape: org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D[] addClosePath(org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D)>(r2);     default: goto $r26 = new java.lang.IllegalStateException; };	$r26 = new java.lang.IllegalStateException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized path segment type: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i13);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21);	throw $r26
;block_num 4