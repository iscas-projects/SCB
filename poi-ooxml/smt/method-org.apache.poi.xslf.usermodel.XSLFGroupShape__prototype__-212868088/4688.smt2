(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var3810 0)
(declare-sort var3522 0)
(declare-sort var801 0)
(declare-sort var665 0)
(declare-sort var991 0)
(declare-sort var1291 0)
(declare-sort var3462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var307) var3522)
(declare-fun cast-from-var3522-to-var3810 (var3522) var3810)
(declare-fun var3810_addNewNvGrpSpPr/-1416260567 (var3810) var801)
(declare-fun var801_addNewCNvPr/454737343 (var801) var665)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var665_setName/-1612129814 (var665 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var665_setId/1260551281 (var665 Int) void)
(declare-fun var801_addNewCNvGrpSpPr/1865529553 (var801) var991)
(declare-fun var801_addNewNvPr/719853974 (var801) var1291)
(declare-fun var3810_addNewGrpSpPr/-1260553515 (var3810) var3462)
(declare-const null-Int Int)
(declare-const var3810-Factory var307)
(declare-const var2009 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2009 null-Int)))
(define-const var2482 var307 var3810-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2265 var3522 (newInstance/532723879 var2482)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var771 var3810 (cast-from-var3522-to-var3810 var2265)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape) $r1 
(define-const var3507 var801 (var3810_addNewNvGrpSpPr/-1416260567 var771)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape: org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual addNewNvGrpSpPr()>() 
(define-const var600 var665 (var801_addNewCNvPr/454737343 var3507)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var671 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var671)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var671!1 String)
(assert (= var671!1 ""))
(assert true)
(define-const var752 String (append/672562846 var671!1 "Group ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Group ") 
(declare-const var671!2 String)
(assert (= var671!2 (str.++ var671!1 "Group ")))
(assert true)
(define-const var2108 String (append/-1001720160 var752 var2009)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var752!1 String)
(assert (str.prefixof var752 var752!1))
(assert true)
(define-const var1514 String (toString/-2075883882 var2108)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var665_setName/-1612129814 var600 var1514)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var600!1 var665)
(declare-const var1514!1 String)
(define-const var470 Int (cast-from-Int-to-Int var2009)) ; Statement: $l1 = (long) i0 
;(assert (var665_setId/1260551281 var600!1 var470)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var600!2 var665)
(declare-const var470!1 Int)
;(assert (var801_addNewCNvGrpSpPr/1865529553 var3507)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps addNewCNvGrpSpPr()>() 

(declare-const var3507!1 var801)
;(assert (var801_addNewNvPr/719853974 var3507!1)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var3507!2 var801)
;(assert (var3810_addNewGrpSpPr/-1260553515 var771)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape: org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties addNewGrpSpPr()>() 

(declare-const var771!1 var3810)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var3522-to-var3810=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape), var3810_addNewNvGrpSpPr/-1416260567=([org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape], org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual), var801_addNewCNvPr/454737343=([org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var665_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var665_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var801_addNewCNvGrpSpPr/1865529553=([org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps), var801_addNewNvPr/719853974=([org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var3810_addNewGrpSpPr/-1260553515=([org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape], org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties)}
; {var2009=i0, var307=org.apache.xmlbeans.impl.schema.DocumentFactory, var3810=org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape, var2482=$r0, var3522=java.lang.Object, var2265=$r1, var771=r2, var801=org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual, var3507=r3, var665=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var600=r4, var671=$r5, var752=$r6, var2108=$r7, var1514=$r8, var470=$l1, var991=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps, var1291=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var3462=org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties}
; {i0=var2009, org.apache.xmlbeans.impl.schema.DocumentFactory=var307, org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape=var3810, $r0=var2482, java.lang.Object=var3522, $r1=var2265, r2=var771, org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual=var801, r3=var3507, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var665, r4=var600, $r5=var671, $r6=var752, $r7=var2108, $r8=var1514, $l1=var470, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps=var991, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var1291, org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties=var3462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape: org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual addNewNvGrpSpPr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Group ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps addNewCNvGrpSpPr()>();	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape: org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties addNewGrpSpPr()>();	return r2
;block_num 1