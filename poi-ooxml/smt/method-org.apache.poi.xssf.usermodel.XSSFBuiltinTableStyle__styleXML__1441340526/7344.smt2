(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2085 0)
(declare-sort var2751 0)
(declare-sort var566 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2085_getOwnerDocument/618770686 (var2085) var2751)
(declare-fun var2751_createElement/-632548355 (var2751 String) var566)
(declare-fun var2085_getFirstChild/1411245979 (var2085) var2085)
(declare-fun var2085_insertBefore/1780456049 (var2085 var2085 var2085) var2085)
(declare-fun cast-from-var566-to-var2085 (var566) var2085)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var184_writeToString/2114169696 (var2085) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2085 var2085)
(declare-const var1171 var2085) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var1171 null-var2085)))
(declare-const var1900 var2085) ; Statement: r7 := @parameter1: org.w3c.dom.Node 
(assert (not (= var1900 null-var2085)))
(define-const var3732 var2751 (var2085_getOwnerDocument/618770686 var1171)) ; Statement: $r1 = interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Document getOwnerDocument()>() 
(define-const var2657 var566 (var2751_createElement/-632548355 var3732 "dxf")) ; Statement: $r3 = interfaceinvoke $r1.<org.w3c.dom.Document: org.w3c.dom.Element createElement(java.lang.String)>("dxf") 
(define-const var717 var2085 (var2085_getFirstChild/1411245979 var1171)) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node getFirstChild()>() 
;(assert (var2085_insertBefore/1780456049 var1171 (cast-from-var566-to-var2085 var2657) var717)) ; Statement: interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node insertBefore(org.w3c.dom.Node,org.w3c.dom.Node)>($r3, $r2) 

(declare-const var1171!1 var2085)
(declare-const var2657!1 var566)
(declare-const var717!1 var2085)
(define-const var1478 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1478)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1478!1 String)
(assert (= var1478!1 ""))
(assert true)
(define-const var3719 String (append/672562846 var1478!1 "<?xml version=\u00221.0\u0022 encoding=\u0022UTF-8\u0022 standalone=\u0022yes\u0022?>\n<styleSheet xmlns=\u0022http://schemas.openxmlformats.org/spreadsheetml/2006/main\u0022 xmlns:mc=\u0022http://schemas.openxmlformats.org/markup-compatibility/2006\u0022 xmlns:x14ac=\u0022http://schemas.microsoft.com/office/spreadsheetml/2009/9/ac\u0022 xmlns:x16r2=\u0022http://schemas.microsoft.com/office/spreadsheetml/2015/02/main\u0022 mc:Ignorable=\u0022x14ac x16r2\u0022>\n")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<styleSheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\" xmlns:mc=\"http://schemas.openxmlformats.org/markup-compatibility/2006\" xmlns:x14ac=\"http://schemas.microsoft.com/office/spreadsheetml/2009/9/ac\" xmlns:x16r2=\"http://schemas.microsoft.com/office/spreadsheetml/2015/02/main\" mc:Ignorable=\"x14ac x16r2\">\n") 
(declare-const var1478!2 String)
(assert (= var1478!2 (str.++ var1478!1 "<?xml version=\u00221.0\u0022 encoding=\u0022UTF-8\u0022 standalone=\u0022yes\u0022?>\n<styleSheet xmlns=\u0022http://schemas.openxmlformats.org/spreadsheetml/2006/main\u0022 xmlns:mc=\u0022http://schemas.openxmlformats.org/markup-compatibility/2006\u0022 xmlns:x14ac=\u0022http://schemas.microsoft.com/office/spreadsheetml/2009/9/ac\u0022 xmlns:x16r2=\u0022http://schemas.microsoft.com/office/spreadsheetml/2015/02/main\u0022 mc:Ignorable=\u0022x14ac x16r2\u0022>\n")))
(define-const var3612 String (var184_writeToString/2114169696 var1171!1)) ; Statement: $r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFBuiltinTableStyle: java.lang.String writeToString(org.w3c.dom.Node)>(r0) 
(assert true)
(define-const var191 String (append/672562846 var3719 var3612)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3719!1 String)
(assert (= var3719!1 (str.++ var3719 var3612)))
(define-const var3562 String (var184_writeToString/2114169696 var1900)) ; Statement: $r8 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFBuiltinTableStyle: java.lang.String writeToString(org.w3c.dom.Node)>(r7) 
(assert true)
(define-const var1087 String (append/672562846 var191 var3562)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var191!1 String)
(assert (= var191!1 (str.++ var191 var3562)))
(assert true)
(define-const var825 String (append/672562846 var1087 "</styleSheet>")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</styleSheet>") 
(declare-const var1087!1 String)
(assert (= var1087!1 (str.++ var1087 "</styleSheet>")))
(assert true)
(define-const var843 String (toString/-2075883882 var825)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2085_getOwnerDocument/618770686=([org.w3c.dom.Node], org.w3c.dom.Document), var2751_createElement/-632548355=([org.w3c.dom.Document, java.lang.String], org.w3c.dom.Element), var2085_getFirstChild/1411245979=([org.w3c.dom.Node], org.w3c.dom.Node), var2085_insertBefore/1780456049=([org.w3c.dom.Node, org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var566-to-var2085=([org.w3c.dom.Element], org.w3c.dom.Node), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var184_writeToString/2114169696=([org.w3c.dom.Node], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2085=org.w3c.dom.Node, var1171=r0, var1900=r7, var2751=org.w3c.dom.Document, var3732=$r1, var566=org.w3c.dom.Element, var2657=$r3, var717=$r2, var1478=$r4, var3719=$r6, var184=org.apache.poi.xssf.usermodel.XSSFBuiltinTableStyle, var3612=$r5, var191=$r9, var3562=$r8, var1087=$r10, var825=$r11, var843=$r12}
; {org.w3c.dom.Node=var2085, r0=var1171, r7=var1900, org.w3c.dom.Document=var2751, $r1=var3732, org.w3c.dom.Element=var566, $r3=var2657, $r2=var717, $r4=var1478, $r6=var3719, org.apache.poi.xssf.usermodel.XSSFBuiltinTableStyle=var184, $r5=var3612, $r9=var191, $r8=var3562, $r10=var1087, $r11=var825, $r12=var843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Node;	r7 := @parameter1: org.w3c.dom.Node;	$r1 = interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Document getOwnerDocument()>();	$r3 = interfaceinvoke $r1.<org.w3c.dom.Document: org.w3c.dom.Element createElement(java.lang.String)>("dxf");	$r2 = interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node getFirstChild()>();	interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node insertBefore(org.w3c.dom.Node,org.w3c.dom.Node)>($r3, $r2);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<styleSheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\" xmlns:mc=\"http://schemas.openxmlformats.org/markup-compatibility/2006\" xmlns:x14ac=\"http://schemas.microsoft.com/office/spreadsheetml/2009/9/ac\" xmlns:x16r2=\"http://schemas.microsoft.com/office/spreadsheetml/2015/02/main\" mc:Ignorable=\"x14ac x16r2\">\n");	$r5 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFBuiltinTableStyle: java.lang.String writeToString(org.w3c.dom.Node)>(r0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFBuiltinTableStyle: java.lang.String writeToString(org.w3c.dom.Node)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</styleSheet>");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1