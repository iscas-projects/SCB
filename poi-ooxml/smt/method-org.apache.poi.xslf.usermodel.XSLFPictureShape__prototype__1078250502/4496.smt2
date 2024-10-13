(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2118 0)
(declare-sort var271 0)
(declare-sort var1904 0)
(declare-sort var0 0)
(declare-sort var3697 0)
(declare-sort var3499 0)
(declare-sort var3389 0)
(declare-sort var2086 0)
(declare-sort var954 0)
(declare-sort var1019 0)
(declare-sort var837 0)
(declare-sort var30 0)
(declare-sort var2306 0)
(declare-sort var138 0)
(declare-sort var3848 0)
(declare-sort var1122 0)
(declare-sort var1736 0)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var271) var0)
(declare-fun cast-from-var0-to-var1904 (var0) var1904)
(declare-fun var1904_addNewNvPicPr/335478505 (var1904) var3697)
(declare-fun var3697_addNewCNvPr/192306635 (var3697) var3499)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3499_setName/-1612129814 (var3499 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3499_setId/1260551281 (var3499 Int) void)
(declare-fun var3697_addNewCNvPicPr/-846810820 (var3697) var3389)
(declare-fun var3389_addNewPicLocks/-1765232605 (var3389) var2086)
(declare-fun var2086_setNoChangeAspect/-934734239 (var2086 Bool) void)
(declare-fun var3697_addNewNvPr/-693182454 (var3697) var1122)
(declare-fun var1904_addNewBlipFill/-805225677 (var1904) var954)
(declare-fun var954_addNewBlip/-1631458997 (var954) var1019)
(declare-fun var1019_setEmbed/-1990389660 (var1019 String) void)
(declare-fun var954_addNewStretch/-1836907010 (var954) var837)
(declare-fun var837_addNewFillRect/154676215 (var837) var1736)
(declare-fun var1904_addNewSpPr/-2136251471 (var1904) var30)
(declare-fun var30_addNewPrstGeom/557706752 (var30) var2306)
(declare-fun var2306_setPrst/1150906745 (var2306 var138) void)
(declare-fun var2306_addNewAvLst/-760476945 (var2306) var2248)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1904-Factory var271)
(declare-const var3848-RECT var138)
(declare-const var245 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var245 null-Int)))
(declare-const var3476 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var3476 null-String)))
(define-const var788 var271 var1904-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var369 var0 (newInstance/532723879 var788)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var174 var1904 (cast-from-var0-to-var1904 var369)) ; Statement: r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTPicture) $r1 
(define-const var3786 var3697 (var1904_addNewNvPicPr/335478505 var174)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual addNewNvPicPr()>() 
(define-const var1568 var3499 (var3697_addNewCNvPr/192306635 var3786)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>() 
(define-const var2240 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2240)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2240!1 String)
(assert (= var2240!1 ""))
(assert true)
(define-const var2215 String (append/672562846 var2240!1 "Picture ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Picture ") 
(declare-const var2240!2 String)
(assert (= var2240!2 (str.++ var2240!1 "Picture ")))
(assert true)
(define-const var2952 String (append/-1001720160 var2215 var245)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2215!1 String)
(assert (str.prefixof var2215 var2215!1))
(assert true)
(define-const var2435 String (toString/-2075883882 var2952)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3499_setName/-1612129814 var1568 var2435)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8) 

(declare-const var1568!1 var3499)
(declare-const var2435!1 String)
(define-const var18 Int (cast-from-Int-to-Int var245)) ; Statement: $l1 = (long) i0 
;(assert (var3499_setId/1260551281 var1568!1 var18)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1) 

(declare-const var1568!2 var3499)
(declare-const var18!1 Int)
(define-const var3236 var3389 (var3697_addNewCNvPicPr/-846810820 var3786)) ; Statement: $r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties addNewCNvPicPr()>() 
(define-const var1094 var2086 (var3389_addNewPicLocks/-1765232605 var3236)) ; Statement: $r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking addNewPicLocks()>() 
;(assert (var2086_setNoChangeAspect/-934734239 var1094 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking: void setNoChangeAspect(boolean)>(1) 

(declare-const var1094!1 var2086)
(declare-const var3792 Int)
;(assert (var3697_addNewNvPr/-693182454 var3786)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>() 

(declare-const var3786!1 var3697)
(define-const var2410 var954 (var1904_addNewBlipFill/-805225677 var174)) ; Statement: r11 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties addNewBlipFill()>() 
(define-const var1745 var1019 (var954_addNewBlip/-1631458997 var2410)) ; Statement: r12 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTBlip addNewBlip()>() 
;(assert (var1019_setEmbed/-1990389660 var1745 var3476)) ; Statement: interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlip: void setEmbed(java.lang.String)>(r13) 

(declare-const var1745!1 var1019)
(declare-const var3476!1 String)
(define-const var260 var837 (var954_addNewStretch/-1836907010 var2410)) ; Statement: $r14 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties addNewStretch()>() 
;(assert (var837_addNewFillRect/154676215 var260)) ; Statement: interfaceinvoke $r14.<org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect addNewFillRect()>() 

(declare-const var260!1 var837)
(define-const var103 var30 (var1904_addNewSpPr/-2136251471 var174)) ; Statement: r15 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>() 
(define-const var3699 var2306 (var30_addNewPrstGeom/557706752 var103)) ; Statement: r16 = interfaceinvoke r15.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>() 
(define-const var2223 var138 var3848-RECT) ; Statement: $r17 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum RECT> 
;(assert (var2306_setPrst/1150906745 var3699 var2223)) ; Statement: interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r17) 

(declare-const var3699!1 var2306)
(declare-const var2223!1 var138)
;(assert (var2306_addNewAvLst/-760476945 var3699!1)) ; Statement: interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>() 

(declare-const var3699!2 var2306)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var0-to-var1904=([java.lang.Object], org.openxmlformats.schemas.presentationml.x2006.main.CTPicture), var1904_addNewNvPicPr/335478505=([org.openxmlformats.schemas.presentationml.x2006.main.CTPicture], org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual), var3697_addNewCNvPr/192306635=([org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3499_setName/-1612129814=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, java.lang.String], void), cast-from-Int-to-Int=([int], long), var3499_setId/1260551281=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, long], void), var3697_addNewCNvPicPr/-846810820=([org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual], org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties), var3389_addNewPicLocks/-1765232605=([org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking), var2086_setNoChangeAspect/-934734239=([org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking, boolean], void), var3697_addNewNvPr/-693182454=([org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual], org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps), var1904_addNewBlipFill/-805225677=([org.openxmlformats.schemas.presentationml.x2006.main.CTPicture], org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties), var954_addNewBlip/-1631458997=([org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTBlip), var1019_setEmbed/-1990389660=([org.openxmlformats.schemas.drawingml.x2006.main.CTBlip, java.lang.String], void), var954_addNewStretch/-1836907010=([org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties), var837_addNewFillRect/154676215=([org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect), var1904_addNewSpPr/-2136251471=([org.openxmlformats.schemas.presentationml.x2006.main.CTPicture], org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties), var30_addNewPrstGeom/557706752=([org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties], org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D), var2306_setPrst/1150906745=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum], void), var2306_addNewAvLst/-760476945=([org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D], org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList)}
; {var245=i0, var3476=r13, var2118=null_type, var271=org.apache.xmlbeans.impl.schema.DocumentFactory, var1904=org.openxmlformats.schemas.presentationml.x2006.main.CTPicture, var788=$r0, var0=java.lang.Object, var369=$r1, var174=r2, var3697=org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual, var3786=r3, var3499=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps, var1568=r4, var2240=$r5, var2215=$r6, var2952=$r7, var2435=$r8, var18=$l1, var3389=org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties, var3236=$r9, var2086=org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking, var1094=$r10, var3792=1, var954=org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties, var2410=r11, var1019=org.openxmlformats.schemas.drawingml.x2006.main.CTBlip, var1745=r12, var837=org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties, var260=$r14, var30=org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties, var103=r15, var2306=org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D, var3699=r16, var138=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum, var3848=org.openxmlformats.schemas.drawingml.x2006.main.STShapeType, var2223=$r17, var1122=org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps, var1736=org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect, var2248=org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList}
; {i0=var245, r13=var3476, null_type=var2118, org.apache.xmlbeans.impl.schema.DocumentFactory=var271, org.openxmlformats.schemas.presentationml.x2006.main.CTPicture=var1904, $r0=var788, java.lang.Object=var0, $r1=var369, r2=var174, org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual=var3697, r3=var3786, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps=var3499, r4=var1568, $r5=var2240, $r6=var2215, $r7=var2952, $r8=var2435, $l1=var18, org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties=var3389, $r9=var3236, org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking=var2086, $r10=var1094, 1=var3792, org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties=var954, r11=var2410, org.openxmlformats.schemas.drawingml.x2006.main.CTBlip=var1019, r12=var1745, org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties=var837, $r14=var260, org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties=var30, r15=var103, org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D=var2306, r16=var3699, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum=var138, org.openxmlformats.schemas.drawingml.x2006.main.STShapeType=var3848, $r17=var2223, org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps=var1122, org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect=var1736, org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList=var2248}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r13 := @parameter1: java.lang.String;	$r0 = <org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.presentationml.x2006.main.CTPicture) $r1;	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual addNewNvPicPr()>();	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps addNewCNvPr()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Picture ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setName(java.lang.String)>($r8);	$l1 = (long) i0;	interfaceinvoke r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps: void setId(long)>($l1);	$r9 = interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual: org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties addNewCNvPicPr()>();	$r10 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking addNewPicLocks()>();	interfaceinvoke $r10.<org.openxmlformats.schemas.drawingml.x2006.main.CTPictureLocking: void setNoChangeAspect(boolean)>(1);	interfaceinvoke r3.<org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual: org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps addNewNvPr()>();	r11 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties addNewBlipFill()>();	r12 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTBlip addNewBlip()>();	interfaceinvoke r12.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlip: void setEmbed(java.lang.String)>(r13);	$r14 = interfaceinvoke r11.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties addNewStretch()>();	interfaceinvoke $r14.<org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect addNewFillRect()>();	r15 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTPicture: org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties addNewSpPr()>();	r16 = interfaceinvoke r15.<org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties: org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D addNewPrstGeom()>();	$r17 = <org.openxmlformats.schemas.drawingml.x2006.main.STShapeType: org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum RECT>;	interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: void setPrst(org.openxmlformats.schemas.drawingml.x2006.main.STShapeType$Enum)>($r17);	interfaceinvoke r16.<org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D: org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList addNewAvLst()>();	return r2
;block_num 1