(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var2779 0)
(declare-sort var3258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCell1/-1021336707 (var35) var2779)
(declare-fun append/-1031950772 (String var3258) String)
(declare-fun cast-from-var2779-to-var3258 (var2779) var3258)
(declare-fun getCell2/-1021306916 (var35) var2779)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var35 var35)
(declare-const var3738 var35) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFClientAnchor 
(assert (not (= var3738 null-var35)))
(define-const var2947 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2947)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2947!1 String)
(assert (= var2947!1 ""))
(assert true)
(define-const var2778 String (append/672562846 var2947!1 "from : ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("from : ") 
(declare-const var2947!2 String)
(assert (= var2947!2 (str.++ var2947!1 "from : ")))
(assert true)
(define-const var1005 var2779 (getCell1/-1021336707 var3738)) ; Statement: $r2 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFClientAnchor: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker getCell1()>() 
(assert true)
(define-const var1685 String (append/-1031950772 var2778 (cast-from-var2779-to-var3258 var1005))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2778!1 String)
(assert (str.prefixof var2778 var2778!1))
(assert true)
(define-const var3641 String (append/672562846 var1685 "; to: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; to: ") 
(declare-const var1685!1 String)
(assert (= var1685!1 (str.++ var1685 "; to: ")))
(assert true)
(define-const var2394 var2779 (getCell2/-1021306916 var3738)) ; Statement: $r5 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFClientAnchor: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker getCell2()>() 
(assert true)
(define-const var2317 String (append/-1031950772 var3641 (cast-from-var2779-to-var3258 var2394))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3641!1 String)
(assert (str.prefixof var3641 var3641!1))
(assert true)
(define-const var1787 String (toString/-2075883882 var2317)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCell1/-1021336707=([org.apache.poi.xssf.usermodel.XSSFClientAnchor], org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2779-to-var3258=([org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker], java.lang.Object), getCell2/-1021306916=([org.apache.poi.xssf.usermodel.XSSFClientAnchor], org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var35=org.apache.poi.xssf.usermodel.XSSFClientAnchor, var3738=r1, var2947=$r0, var2778=$r3, var2779=org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker, var1005=$r2, var3258=java.lang.Object, var1685=$r4, var3641=$r6, var2394=$r5, var2317=$r7, var1787=$r8}
; {org.apache.poi.xssf.usermodel.XSSFClientAnchor=var35, r1=var3738, $r0=var2947, $r3=var2778, org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker=var2779, $r2=var1005, java.lang.Object=var3258, $r4=var1685, $r6=var3641, $r5=var2394, $r7=var2317, $r8=var1787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFClientAnchor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("from : ");	$r2 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFClientAnchor: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker getCell1()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; to: ");	$r5 = specialinvoke r1.<org.apache.poi.xssf.usermodel.XSSFClientAnchor: org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker getCell2()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1