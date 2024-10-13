(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2122 0)
(declare-sort var2903 0)
(declare-sort var959 0)
(declare-sort var3708 0)
(declare-sort var1159 0)
(declare-sort var3813 0)
(declare-sort var1079 0)
(declare-sort var1106 0)
(declare-sort var3863 0)
(declare-sort var1645 0)
(declare-sort var3849 0)
(declare-sort var2499 0)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var2903) var3708)
(declare-fun cast-from-var3708-to-var959 (var3708) var959)
(declare-fun var959_addNewNvGraphicFramePr/-980114426 (var959) var1159)
(declare-fun var1159_addNewCNvPr/350458854 (var1159) var3813)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3813_setName/-1612129814 (var3813 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3813_setId/1260551281 (var3813 Int) void)
(declare-fun var1159_addNewCNvGraphicFramePr/1413366139 (var1159) var3849)
(declare-fun var1159_addNewNvPr/-1261350769 (var1159) var2499)
(declare-fun var959_addNewXfrm/693651756 (var959) var3701)
(declare-fun var959_addNewGraphic/-492155927 (var959) var1079)
(declare-fun var1079_addNewGraphicData/2076560906 (var1079) var1106)
(declare-fun var1106_setUri/1877099488 (var1106 String) void)
(declare-fun var1106_newCursor/473301306 (var1106) var3863)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var959-Factory var2903)
(declare-const null-var1645 var1645)
(declare-const null-var3863 var3863)
(declare-const var1364 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1364 null-Int)))
(declare-const var3522 String) ; Statement: r20 := @parameter1: java.lang.String 
(assert (not (= var3522 null-String)))
(define-const var1311 var2903 var959-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var1287 var3708 (newInstance/532723879 var1311)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var3376 var959 (cast-from-var3708-to-var959 var1287)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame) $r1 
(define-const var253 var1159 (var959_addNewNvGraphicFramePr/-980114426 var3376)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr()>() 
(define-const var3413 var3813 (var1159_addNewCNvPr/350458854 var253)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var1971 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1971)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1971!1 String)
(assert (= var1971!1 ""))
(assert true)
(define-const var368 String (append/672562846 var1971!1 "Object ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Object ") 
(declare-const var1971!2 String)
(assert (= var1971!2 (str.++ var1971!1 "Object ")))
(assert true)
(define-const var3224 String (append/-1001720160 var368 var1364)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var368!1 String)
(assert (str.prefixof var368 var368!1))
(assert true)
(define-const var3687 String (toString/-2075883882 var3224)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3813_setName/-1612129814 var3413 var3687)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var3413!1 var3813)
(declare-const var3687!1 String)
(define-const var2567 Int (cast-from-Int-to-Int var1364)) ; Statement: $l1 = (long) i0 
;(assert (var3813_setId/1260551281 var3413!1 var2567)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var3413!2 var3813)
(declare-const var2567!1 Int)
;(assert (var1159_addNewCNvGraphicFramePr/1413366139 var253)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties addNewCNvGraphicFramePr()>() 

(declare-const var253!1 var1159)
;(assert (var1159_addNewNvPr/-1261350769 var253!1)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var253!2 var1159)
;(assert (var959_addNewXfrm/693651756 var3376)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D addNewXfrm()>() 

(declare-const var3376!1 var959)
(define-const var2735 var1079 (var959_addNewGraphic/-492155927 var3376!1)) ; Statement: $r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject addNewGraphic()>() 
(define-const var352 var1106 (var1079_addNewGraphicData/2076560906 var2735)) ; Statement: r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData addNewGraphicData()>() 
;(assert (var1106_setUri/1877099488 var352 "http://schemas.openxmlformats.org/presentationml/2006/ole")) ; Statement: interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: void setUri(java.lang.String)>("http://schemas.openxmlformats.org/presentationml/2006/ole") 

(declare-const var352!1 var1106)
(declare-const var2450 String)
(define-const var886 var3863 (var1106_newCursor/473301306 var352!1)) ; Statement: r11 = interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: org.apache.xmlbeans.XmlCursor newCursor()>() 
(define-const var990 var1645 null-var1645) ; Statement: r40 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3824 var1645) ; Statement: $r33 := @caughtexception 
(assert (not (= var3824 null-var1645)))
(assert true) ; Non Conditional
 ; Statement: if r11 == null goto throw $r33 
(assert (= var886 null-var3863)) ; Cond: r11 == null 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var3708-to-var959=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame), var959_addNewNvGraphicFramePr/-980114426=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual), var1159_addNewCNvPr/350458854=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3813_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var3813_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var1159_addNewCNvGraphicFramePr/1413366139=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties), var1159_addNewNvPr/-1261350769=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var959_addNewXfrm/693651756=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D), var959_addNewGraphic/-492155927=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject), var1079_addNewGraphicData/2076560906=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject], org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData), var1106_setUri/1877099488=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData, java.lang.String], void), var1106_newCursor/473301306=([org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData], org.apache.xmlbeans.XmlCursor)}
; {var1364=i0, var3522=r20, var2122=null_type, var2903=org.apache.xmlbeans.impl.schema.DocumentFactory, var959=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var1311=$r0, var3708=java.lang.Object, var1287=$r1, var3376=r2, var1159=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual, var253=r3, var3813=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var3413=r4, var1971=$r5, var368=$r6, var3224=$r7, var3687=$r8, var2567=$l1, var1079=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject, var2735=$r9, var1106=org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData, var352=r10, var2450="http://schemas.openxmlformats.org/presentationml/2006/ole", var3863=org.apache.xmlbeans.XmlCursor, var886=r11, var1645=java.lang.Throwable, var990=r40, var3824=$r33, var3849=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties, var2499=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var3701=org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D}
; {i0=var1364, r20=var3522, null_type=var2122, org.apache.xmlbeans.impl.schema.DocumentFactory=var2903, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var959, $r0=var1311, java.lang.Object=var3708, $r1=var1287, r2=var3376, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual=var1159, r3=var253, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var3813, r4=var3413, $r5=var1971, $r6=var368, $r7=var3224, $r8=var3687, $l1=var2567, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject=var1079, $r9=var2735, org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData=var1106, r10=var352, "http://schemas.openxmlformats.org/presentationml/2006/ole"=var2450, org.apache.xmlbeans.XmlCursor=var3863, r11=var886, java.lang.Throwable=var1645, r40=var990, $r33=var3824, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties=var3849, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var2499, org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D=var3701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r20 := @parameter1: java.lang.String;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Object ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties addNewCNvGraphicFramePr()>();	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D addNewXfrm()>();	$r9 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject addNewGraphic()>();	r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject: org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData addNewGraphicData()>();	interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: void setUri(java.lang.String)>("http://schemas.openxmlformats.org/presentationml/2006/ole");	r11 = interfaceinvoke r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData: org.apache.xmlbeans.XmlCursor newCursor()>();	r40 = null;	$r33 := @caughtexception;	if r11 == null goto throw $r33;	throw $r33
;block_num 4