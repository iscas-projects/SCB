(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var605 0)
(declare-sort var1300 0)
(declare-sort var2273 0)
(declare-sort var3447 0)
(declare-sort var2743 0)
(declare-sort var1579 0)
(declare-sort var228 0)
(declare-sort var3641 0)
(declare-sort var354 0)
(declare-sort var2759 0)
(declare-sort var327 0)
(declare-sort var3189 0)
(declare-sort var2429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var605) var2273)
(declare-fun cast-from-var2273-to-var1300 (var2273) var1300)
(declare-fun var1300_addNewNvGraphicFramePr/-980114426 (var1300) var3447)
(declare-fun var3447_addNewCNvPr/350458854 (var3447) var2743)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2743_setName/-1612129814 (var2743 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2743_setId/1260551281 (var2743 Int) void)
(declare-fun var3447_addNewCNvGraphicFramePr/1413366139 (var3447) var1579)
(declare-fun var1579_addNewGraphicFrameLocks/1978038764 (var1579) var228)
(declare-fun var228_setNoGrp/2057387151 (var228 Bool) void)
(declare-fun var3447_addNewNvPr/-1261350769 (var3447) var3189)
(declare-fun var1300_addNewXfrm/693651756 (var1300) var2429)
(declare-fun var1300_addNewGraphic/-492155927 (var1300) var3641)
(declare-fun var3641_addNewGraphicData/2076560906 (var3641) var354)
(declare-fun var354_newCursor/473301306 (var354) var2759)
(declare-const null-Int Int)
(declare-const var1300-Factory var605)
(declare-const null-var327 var327)
(declare-const null-var2759 var2759)
(declare-const var3073 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3073 null-Int)))
(define-const var2562 var605 var1300-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var3603 var2273 (newInstance/532723879 var2562)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var1259 var1300 (cast-from-var2273-to-var1300 var3603)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame) $r1 
(define-const var1745 var3447 (var1300_addNewNvGraphicFramePr/-980114426 var1259)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr()>() 
(define-const var1337 var2743 (var3447_addNewCNvPr/350458854 var1745)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var328 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var328)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var328!1 String)
(assert (= var328!1 ""))
(assert true)
(define-const var678 String (append/672562846 var328!1 "Table ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table ") 
(declare-const var328!2 String)
(assert (= var328!2 (str.++ var328!1 "Table ")))
(assert true)
(define-const var1701 String (append/-1001720160 var678 var3073)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var678!1 String)
(assert (str.prefixof var678 var678!1))
(assert true)
(define-const var2412 String (toString/-2075883882 var1701)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2743_setName/-1612129814 var1337 var2412)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var1337!1 var2743)
(declare-const var2412!1 String)
(define-const var3338 Int (cast-from-Int-to-Int var3073)) ; Statement: $l1 = (long) i0 
;(assert (var2743_setId/1260551281 var1337!1 var3338)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var1337!2 var2743)
(declare-const var3338!1 Int)
(define-const var3763 var1579 (var3447_addNewCNvGraphicFramePr/1413366139 var1745)) ; Statement: $r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties addNewCNvGraphicFramePr()>() 
(define-const var1837 var228 (var1579_addNewGraphicFrameLocks/1978038764 var3763)) ; Statement: $r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking addNewGraphicFrameLocks()>() 
;(assert (var228_setNoGrp/2057387151 var1837 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking: void setNoGrp(boolean)>(1) 

(declare-const var1837!1 var228)
(declare-const var1619 Int)
;(assert (var3447_addNewNvPr/-1261350769 var1745)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var1745!1 var3447)
;(assert (var1300_addNewXfrm/693651756 var1259)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D addNewXfrm()>() 

(declare-const var1259!1 var1300)
(define-const var1439 var3641 (var1300_addNewGraphic/-492155927 var1259!1)) ; Statement: $r11 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject addNewGraphic()>() 
(define-const var2321 var354 (var3641_addNewGraphicData/2076560906 var1439)) ; Statement: r12 = interfaceinvoke $r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData addNewGraphicData()>() 
(define-const var891 var2759 (var354_newCursor/473301306 var2321)) ; Statement: r13 = interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: org.apache.xmlbeans.XmlCursor newCursor()>() 
(define-const var2219 var327 null-var327) ; Statement: r26 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2580 var327) ; Statement: $r19 := @caughtexception 
(assert (not (= var2580 null-var327)))
(assert true) ; Non Conditional
 ; Statement: if r13 == null goto throw $r19 
(assert (= var891 null-var2759)) ; Cond: r13 == null 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var2273-to-var1300=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame), var1300_addNewNvGraphicFramePr/-980114426=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual), var3447_addNewCNvPr/350458854=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2743_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var2743_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var3447_addNewCNvGraphicFramePr/1413366139=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties), var1579_addNewGraphicFrameLocks/1978038764=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking), var228_setNoGrp/2057387151=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking, boolean], void), var3447_addNewNvPr/-1261350769=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var1300_addNewXfrm/693651756=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D), var1300_addNewGraphic/-492155927=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject), var3641_addNewGraphicData/2076560906=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData), var354_newCursor/473301306=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData], org.apache.xmlbeans.XmlCursor)}
; {var3073=i0, var605=org.apache.xmlbeans.impl.schema.DocumentFactory, var1300=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var2562=$r0, var2273=java.lang.Object, var3603=$r1, var1259=r2, var3447=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual, var1745=r3, var2743=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var1337=r4, var328=$r5, var678=$r6, var1701=$r7, var2412=$r8, var3338=$l1, var1579=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties, var3763=$r9, var228=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking, var1837=$r10, var1619=1, var3641=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject, var1439=$r11, var354=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData, var2321=r12, var2759=org.apache.xmlbeans.XmlCursor, var891=r13, var327=java.lang.Throwable, var2219=r26, var2580=$r19, var3189=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var2429=org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D}
; {i0=var3073, org.apache.xmlbeans.impl.schema.DocumentFactory=var605, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var1300, $r0=var2562, java.lang.Object=var2273, $r1=var3603, r2=var1259, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual=var3447, r3=var1745, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var2743, r4=var1337, $r5=var328, $r6=var678, $r7=var1701, $r8=var2412, $l1=var3338, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties=var1579, $r9=var3763, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking=var228, $r10=var1837, 1=var1619, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject=var3641, $r11=var1439, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData=var354, r12=var2321, org.apache.xmlbeans.XmlCursor=var2759, r13=var891, java.lang.Throwable=var327, r26=var2219, $r19=var2580, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var3189, org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D=var2429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	$r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties addNewCNvGraphicFramePr()>();	$r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking addNewGraphicFrameLocks()>();	interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectFrameLocking: void setNoGrp(boolean)>(1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D addNewXfrm()>();	$r11 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject addNewGraphic()>();	r12 = interfaceinvoke $r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData addNewGraphicData()>();	r13 = interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: org.apache.xmlbeans.XmlCursor newCursor()>();	r26 = null;	$r19 := @caughtexception;	if r13 == null goto throw $r19;	throw $r19
;block_num 4