(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2352 0)
(declare-sort var2269 0)
(declare-sort var918 0)
(declare-sort var2646 0)
(declare-sort var1152 0)
(declare-sort var3215 0)
(declare-sort var337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createTwoCellAnchor/-1942659468 (var2352 var2269) var918)
(declare-fun var918_addNewGraphicFrame/863875585 (var918) var2646)
(declare-fun var1152_prototype/-1521516388 () var2646)
(declare-fun cast-from-var2646-to-var3215 (var2646) var3215)
(declare-fun var2646_set/669048237 (var2646 var3215) var3215)
(declare-fun createXfrm/-12027740 (var2352 var2269) var337)
(declare-fun var2646_setXfrm/1206016718 (var2646 var337) void)
(declare-fun numOfGraphicFrames/-1427236390 (var2352) Int)
(declare-fun var1152-init () var1152)
(declare-fun <init>/50441616 (var1152 var2352 var2646) void)
(declare-fun setAnchor/486739467 (var1152 var2269) void)
(declare-fun setId/1028959549 (var1152 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setName/-1855998538 (var1152 String) void)
(declare-const null-var2352 var2352)
(declare-const null-var2269 var2269)
(declare-const var1976 var2352) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFDrawing 
(assert (not (= var1976 null-var2352)))
(declare-const var3024 var2269) ; Statement: r1 := @parameter0: org.apache.poi.xssf.usermodel.XSSFClientAnchor 
(assert (not (= var3024 null-var2269)))
(assert true)
(define-const var1614 var918 (createTwoCellAnchor/-1942659468 var1976 var3024)) ; Statement: r2 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor createTwoCellAnchor(org.apache.poi.xssf.usermodel.XSSFClientAnchor)>(r1) 
(define-const var1937 var2646 (var918_addNewGraphicFrame/863875585 var1614)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame addNewGraphicFrame()>() 
(define-const var1480 var2646 var1152_prototype/-1521516388) ; Statement: $r4 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame prototype()>() 
(define-const var3470 var3215 (cast-from-var2646-to-var3215 var1480)) ; Statement: $r13 = (org.apache.xmlbeans.XmlObject) $r4 
;(assert (var2646_set/669048237 var1937 var3470)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame: org.apache.xmlbeans.XmlObject set(org.apache.xmlbeans.XmlObject)>($r13) 

(declare-const var1937!1 var2646)
(declare-const var3470!1 var3215)
(assert true)
(define-const var2328 var337 (createXfrm/-12027740 var1976 var3024)) ; Statement: $r5 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D createXfrm(org.apache.poi.xssf.usermodel.XSSFClientAnchor)>(r1) 
;(assert (var2646_setXfrm/1206016718 var1937!1 var2328)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame: void setXfrm(org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D)>($r5) 

(declare-const var1937!2 var2646)
(declare-const var2328!1 var337)
(define-const var2710 Int (numOfGraphicFrames/-1427236390 var1976)) ; Statement: $l0 = r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: long numOfGraphicFrames> 
(define-const var1705 Int (+ var2710 1)) ; Statement: $l1 = $l0 + 1L 
(declare-const var1976!1 var2352)
(assert (not (= var1976!1 null-var2352)))
(assert (= (numOfGraphicFrames/-1427236390 var1976!1) var1705)) ; Statement: r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: long numOfGraphicFrames> = $l1 
(define-const var651 var1152 var1152-init) ; Statement: $r11 = new org.apache.poi.xssf.usermodel.XSSFGraphicFrame 
(assert true)
;(assert (<init>/50441616 var651 var1976!1 var1937!2)) ; Statement: specialinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void <init>(org.apache.poi.xssf.usermodel.XSSFDrawing,org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame)>(r0, r3) 

(declare-const var651!1 var1152)
(declare-const var1976!2 var2352)
(declare-const var1937!3 var2646)
(assert true)
;(assert (setAnchor/486739467 var651!1 var3024)) ; Statement: virtualinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void setAnchor(org.apache.poi.xssf.usermodel.XSSFClientAnchor)>(r1) 

(declare-const var651!2 var1152)
(declare-const var3024!1 var2269)
(assert true)
;(assert (setId/1028959549 var651!2 var2710)) ; Statement: virtualinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void setId(long)>($l0) 

(declare-const var651!3 var1152)
(declare-const var2710!1 Int)
(define-const var3235 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3235)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3235!1 String)
(assert (= var3235!1 ""))
(assert true)
(define-const var2480 String (append/672562846 var3235!1 "Diagramm")) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Diagramm") 
(declare-const var3235!2 String)
(assert (= var3235!2 (str.++ var3235!1 "Diagramm")))
(assert true)
(define-const var3551 String (append/-901862667 var2480 var2710!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2480!1 String)
(assert (str.prefixof var2480 var2480!1))
(assert true)
(define-const var417 String (toString/-2075883882 var3551)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setName/-1855998538 var651!3 var417)) ; Statement: virtualinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void setName(java.lang.String)>($r10) 

(declare-const var651!4 var1152)
(declare-const var417!1 String)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {createTwoCellAnchor/-1942659468=([org.apache.poi.xssf.usermodel.XSSFDrawing, org.apache.poi.xssf.usermodel.XSSFClientAnchor], org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor), var918_addNewGraphicFrame/863875585=([org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor], org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame), var1152_prototype/-1521516388=([], org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame), cast-from-var2646-to-var3215=([org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame], org.apache.xmlbeans.XmlObject), var2646_set/669048237=([org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame, org.apache.xmlbeans.XmlObject], org.apache.xmlbeans.XmlObject), createXfrm/-12027740=([org.apache.poi.xssf.usermodel.XSSFDrawing, org.apache.poi.xssf.usermodel.XSSFClientAnchor], org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D), var2646_setXfrm/1206016718=([org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame, org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D], void), numOfGraphicFrames/-1427236390=([org.apache.poi.xssf.usermodel.XSSFDrawing], long), var1152-init=([], org.apache.poi.xssf.usermodel.XSSFGraphicFrame), <init>/50441616=([org.apache.poi.xssf.usermodel.XSSFGraphicFrame, org.apache.poi.xssf.usermodel.XSSFDrawing, org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame], void), setAnchor/486739467=([org.apache.poi.xssf.usermodel.XSSFGraphicFrame, org.apache.poi.xssf.usermodel.XSSFClientAnchor], void), setId/1028959549=([org.apache.poi.xssf.usermodel.XSSFGraphicFrame, long], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setName/-1855998538=([org.apache.poi.xssf.usermodel.XSSFGraphicFrame, java.lang.String], void)}
; {var2352=org.apache.poi.xssf.usermodel.XSSFDrawing, var1976=r0, var2269=org.apache.poi.xssf.usermodel.XSSFClientAnchor, var3024=r1, var918=org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor, var1614=r2, var2646=org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame, var1937=r3, var1152=org.apache.poi.xssf.usermodel.XSSFGraphicFrame, var1480=$r4, var3215=org.apache.xmlbeans.XmlObject, var3470=$r13, var337=org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D, var2328=$r5, var2710=$l0, var1705=$l1, var651=$r11, var3235=$r12, var2480=$r8, var3551=$r9, var417=$r10}
; {org.apache.poi.xssf.usermodel.XSSFDrawing=var2352, r0=var1976, org.apache.poi.xssf.usermodel.XSSFClientAnchor=var2269, r1=var3024, org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor=var918, r2=var1614, org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame=var2646, r3=var1937, org.apache.poi.xssf.usermodel.XSSFGraphicFrame=var1152, $r4=var1480, org.apache.xmlbeans.XmlObject=var3215, $r13=var3470, org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D=var337, $r5=var2328, $l0=var2710, $l1=var1705, $r11=var651, $r12=var3235, $r8=var2480, $r9=var3551, $r10=var417}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFDrawing;	r1 := @parameter0: org.apache.poi.xssf.usermodel.XSSFClientAnchor;	r2 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor createTwoCellAnchor(org.apache.poi.xssf.usermodel.XSSFClientAnchor)>(r1);	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame addNewGraphicFrame()>();	$r4 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFGraphicFrame: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame prototype()>();	$r13 = (org.apache.xmlbeans.XmlObject) $r4;	interfaceinvoke r3.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame: org.apache.xmlbeans.XmlObject set(org.apache.xmlbeans.XmlObject)>($r13);	$r5 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D createXfrm(org.apache.poi.xssf.usermodel.XSSFClientAnchor)>(r1);	interfaceinvoke r3.<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame: void setXfrm(org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D)>($r5);	$l0 = r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: long numOfGraphicFrames>;	$l1 = $l0 + 1L;	r0.<org.apache.poi.xssf.usermodel.XSSFDrawing: long numOfGraphicFrames> = $l1;	$r11 = new org.apache.poi.xssf.usermodel.XSSFGraphicFrame;	specialinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void <init>(org.apache.poi.xssf.usermodel.XSSFDrawing,org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame)>(r0, r3);	virtualinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void setAnchor(org.apache.poi.xssf.usermodel.XSSFClientAnchor)>(r1);	virtualinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void setId(long)>($l0);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Diagramm");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<org.apache.poi.xssf.usermodel.XSSFGraphicFrame: void setName(java.lang.String)>($r10);	return $r11
;block_num 1