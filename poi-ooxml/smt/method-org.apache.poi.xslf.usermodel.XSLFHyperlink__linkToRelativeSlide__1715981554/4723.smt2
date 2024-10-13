(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2028 0)
(declare-sort var1274 0)
(declare-sort var1812 0)
(declare-sort var1204 0)
(declare-sort var3704 0)
(declare-sort var317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _sheet/-1407511038 (var2028) var1812)
(declare-fun getPackagePart/-804310696 (var3704) var1204)
(declare-fun cast-from-var1812-to-var3704 (var1812) var3704)
(declare-fun _link/-1407511038 (var2028) var317)
(declare-fun var317_isSetId/537060128 (var317) Bool)
(declare-fun var317_setId/-147831085 (var317 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var317_setAction/1390169048 (var317 String) void)
(declare-const null-var2028 var2028)
(declare-const null-String String)
(declare-const var38 var2028) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink 
(assert (not (= var38 null-var2028)))
(declare-const var2290 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2290 null-String)))
(define-const var1291 var1812 (_sheet/-1407511038 var38)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.apache.poi.xslf.usermodel.XSLFSheet _sheet> 
(assert true)
(define-const var709 var1204 (getPackagePart/-804310696 (cast-from-var1812-to-var3704 var1291))) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.xslf.usermodel.XSLFSheet: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>() 
(define-const var2250 var317 (_link/-1407511038 var38)) ; Statement: $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
(define-const var1194 Bool (var317_isSetId/537060128 var2250)) ; Statement: $z0 = interfaceinvoke $r3.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: boolean isSetId()>() 
 ; Statement: if $z0 == 0 goto $r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
(assert (= (ite var1194 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3783 var317 (_link/-1407511038 var38)) ; Statement: $r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
;(assert (var317_setId/-147831085 var3783 "")) ; Statement: interfaceinvoke $r13.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setId(java.lang.String)>("") 

(declare-const var3783!1 var317)
(declare-const var134 String)
(define-const var3124 var317 (_link/-1407511038 var38)) ; Statement: $r4 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link> 
(define-const var1959 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1959)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1959!1 String)
(assert (= var1959!1 ""))
(assert true)
(define-const var2829 Bool (startsWith/-1785782452 var2290 "ppaction")) ; Statement: $z2 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("ppaction") 
 ; Statement: if $z2 == 0 goto $r15 = "ppaction://hlinkshowjump?jump=" 
(assert (= (ite var2829 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2934 String "ppaction://hlinkshowjump?jump=") ; Statement: $r15 = "ppaction://hlinkshowjump?jump=" 
(assert true) ; Non Conditional
(assert true)
(define-const var3104 String (append/672562846 var1959!1 var2934)) ; Statement: $r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1959!2 String)
(assert (= var1959!2 (str.++ var1959!1 var2934)))
(assert true)
(define-const var119 String (append/672562846 var3104 var2290)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3104!1 String)
(assert (= var3104!1 (str.++ var3104 var2290)))
(assert true)
(define-const var3061 String (toString/-2075883882 var119)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var317_setAction/1390169048 var3124 var3061)) ; Statement: interfaceinvoke $r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setAction(java.lang.String)>($r8) 

(declare-const var3124!1 var317)
(declare-const var3061!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_sheet/-1407511038=([org.apache.poi.xslf.usermodel.XSLFHyperlink], org.apache.poi.xslf.usermodel.XSLFSheet), getPackagePart/-804310696=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.openxml4j.opc.PackagePart), cast-from-var1812-to-var3704=([org.apache.poi.xslf.usermodel.XSLFSheet], org.apache.poi.ooxml.POIXMLDocumentPart), _link/-1407511038=([org.apache.poi.xslf.usermodel.XSLFHyperlink], org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink), var317_isSetId/537060128=([org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink], boolean), var317_setId/-147831085=([org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var317_setAction/1390169048=([org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink, java.lang.String], void)}
; {var2028=org.apache.poi.xslf.usermodel.XSLFHyperlink, var38=r0, var2290=r5, var1274=null_type, var1812=org.apache.poi.xslf.usermodel.XSLFSheet, var1291=$r1, var1204=org.apache.poi.openxml4j.opc.PackagePart, var3704=org.apache.poi.ooxml.POIXMLDocumentPart, var709=r2, var317=org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink, var2250=$r3, var1194=$z0, var3783=$r13, var134="", var3124=$r4, var1959=$r14, var2829=$z2, var2934=$r15, var3104=$r6, var119=$r7, var3061=$r8}
; {org.apache.poi.xslf.usermodel.XSLFHyperlink=var2028, r0=var38, r5=var2290, null_type=var1274, org.apache.poi.xslf.usermodel.XSLFSheet=var1812, $r1=var1291, org.apache.poi.openxml4j.opc.PackagePart=var1204, org.apache.poi.ooxml.POIXMLDocumentPart=var3704, r2=var709, org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink=var317, $r3=var2250, $z0=var1194, $r13=var3783, ""=var134, $r4=var3124, $r14=var1959, $z2=var2829, $r15=var2934, $r6=var3104, $r7=var119, $r8=var3061}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.apache.poi.xslf.usermodel.XSLFSheet _sheet>;	r2 = virtualinvoke $r1.<org.apache.poi.xslf.usermodel.XSLFSheet: org.apache.poi.openxml4j.opc.PackagePart getPackagePart()>();	$r3 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	$z0 = interfaceinvoke $r3.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: boolean isSetId()>();	if $z0 == 0 goto $r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	$r13 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	interfaceinvoke $r13.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setId(java.lang.String)>("");	$r4 = r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink _link>;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z2 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("ppaction");	if $z2 == 0 goto $r15 = "ppaction://hlinkshowjump?jump=";	$r15 = "ppaction://hlinkshowjump?jump=";	$r6 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r4.<org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink: void setAction(java.lang.String)>($r8);	return
;block_num 4