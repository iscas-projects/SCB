(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1051 0)
(declare-sort var2393 0)
(declare-sort var1576 0)
(declare-sort var2277 0)
(declare-sort var1855 0)
(declare-sort var669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _sheet/-1407511038 (var1051) var1576)
(declare-fun getPackagePart/-804310696 (var1855) var2277)
(declare-fun cast-from-var1576-to-var1855 (var1576) var1855)
(declare-fun _link/-1407511038 (var1051) var669)
(declare-fun var669_isSetId/537060128 (var669) Bool)
(declare-fun var669_setId/-147831085 (var669 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var669_setAction/1390169048 (var669 String) void)
(declare-const null-var1051 var1051)
(declare-const null-String String)
(declare-const var646 var1051) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink 
(assert (not (= var646 null-var1051)))
(declare-const var2078 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2078 null-String)))
(define-const var2183 var1576 (_sheet/-1407511038 var646)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.apache.poi.xslf.usermodel.XSLFSheet _sheet> 
(assert true)
(define-const var579 var2277 (getPackagePart/-804310696 (cast-from-var1576-to-var1855 var2183))) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.xslf.usermodel.XSLFSheet: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(define-const var3313 var669 (_link/-1407511038 var646)) ; Statement: $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
(define-const var1924 Bool (var669_isSetId/537060128 var3313)) ; Statement: $z0 = interfaceinvoke $r3.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: boolean isSetId()>() 
 ; Statement: if $z0 == 0 goto $r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
(assert (= (ite var1924 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2545 var669 (_link/-1407511038 var646)) ; Statement: $r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
;(assert (var669_setId/-147831085 var2545 "")) ; Statement: interfaceinvoke $r13.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setId(java.lang.String)>("") 

(declare-const var2545!1 var669)
(declare-const var481 String)
(define-const var2045 var669 (_link/-1407511038 var646)) ; Statement: $r4 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
(define-const var2448 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2448)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2448!1 String)
(assert (= var2448!1 ""))
(assert true)
(define-const var2491 Bool (startsWith/-1785782452 var2078 "ppaction")) ; Statement: $z2 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("ppaction") 
 ; Statement: if $z2 == 0 goto $r15 = "ppaction://hlinkshowjump?jump=" 
(assert (not (= (ite var2491 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var685 String "") ; Statement: $r15 = "" 
 ; Statement: goto [?= $r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3163 String (append/672562846 var2448!1 var685)) ; Statement: $r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2448!2 String)
(assert (= var2448!2 (str.++ var2448!1 var685)))
(assert true)
(define-const var660 String (append/672562846 var3163 var2078)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3163!1 String)
(assert (= var3163!1 (str.++ var3163 var2078)))
(assert true)
(define-const var231 String (toString/-2075883882 var660)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var669_setAction/1390169048 var2045 var231)) ; Statement: interfaceinvoke $r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setAction(java.lang.String)>($r8) 

(declare-const var2045!1 var669)
(declare-const var231!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_sheet/-1407511038=([org.apache.poi.xslf.usermodel.XSLFHyperlink], org.apache.poi.xslf.usermodel.XSLFSheet), getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var1576-to-var1855=([org.apache.poi.xslf.usermodel.XSLFSheet], org.apache.poi.ooxml.POIXMLDocumentPart), _link/-1407511038=([org.apache.poi.xslf.usermodel.XSLFHyperlink], org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink), var669_isSetId/537060128=([org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink], boolean), var669_setId/-147831085=([org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var669_setAction/1390169048=([org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink, java.lang.String], void)}
; {var1051=org.apache.poi.xslf.usermodel.XSLFHyperlink, var646=r0, var2078=r5, var2393=null_type, var1576=org.apache.poi.xslf.usermodel.XSLFSheet, var2183=$r1, var2277=org.apache.poi.openxml4j.opc.PackagePart, var1855=org.apache.poi.ooxml.POIXMLDocumentPart, var579=r2, var669=org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink, var3313=$r3, var1924=$z0, var2545=$r13, var481="", var2045=$r4, var2448=$r14, var2491=$z2, var685=$r15, var3163=$r6, var660=$r7, var231=$r8}
; {org.apache.poi.xslf.usermodel.XSLFHyperlink=var1051, r0=var646, r5=var2078, null_type=var2393, org.apache.poi.xslf.usermodel.XSLFSheet=var1576, $r1=var2183, org.apache.poi.openxml4j.opc.PackagePart=var2277, org.apache.poi.ooxml.POIXMLDocumentPart=var1855, r2=var579, org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink=var669, $r3=var3313, $z0=var1924, $r13=var2545, ""=var481, $r4=var2045, $r14=var2448, $z2=var2491, $r15=var685, $r6=var3163, $r7=var660, $r8=var231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.apache.poi.xslf.usermodel.XSLFSheet _sheet>;	r2 = virtualinvoke $r1.<org.apache.poi.xslf.usermodel.XSLFSheet: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r3 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	$z0 = interfaceinvoke $r3.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: boolean isSetId()>();	if $z0 == 0 goto $r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	$r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	interfaceinvoke $r13.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setId(java.lang.String)>("");	$r4 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z2 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("ppaction");	if $z2 == 0 goto $r15 = "ppaction://hlinkshowjump?jump=";	$r15 = "";	goto [?= $r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15)];	$r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setAction(java.lang.String)>($r8);	return
;block_num 4