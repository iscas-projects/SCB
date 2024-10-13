(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3640 0)
(declare-sort var3955 0)
(declare-sort var1029 0)
(declare-sort var2637 0)
(declare-sort var365 0)
(declare-sort var3521 0)
(declare-sort var3961 0)
(declare-sort var3827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3827!class ClassObject)
(declare-fun arr-var3955-init () (Array Int var3955))
(declare-fun var3955-init () var3955)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-87930125 (var3955 String String) void)
(declare-fun getXmlObject/723891840 (var3640) var1029)
(declare-fun var365_bootstrap$/1902997347 () var2637)
(declare-fun arr-__Array__Int__var3955__-init () (Array Int (Array Int var3955)))
(declare-fun var3961_selectProperty/-1360377367 (var1029 ClassObject var2637 (Array Int (Array Int var3955))) var1029)
(declare-fun cast-from-var1029-to-var3827 (var1029) var3827)
(declare-const null-var3640 var3640)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3955__ (Array Int var3955))
(declare-const var3521-TX_BODY (Array Int var3955))
(declare-const null-__Array__Int____Array__Int__var3955____ (Array Int (Array Int var3955)))
(declare-const var3521-LST_STYLE (Array Int var3955))
(declare-const var3143 var3640) ; Statement: r7 := @parameter0: org.apache.poi.xslf.usermodel.XSLFShape 
(assert (not (= var3143 null-var3640)))
(declare-const var1895 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1895 null-Int)))
(define-const var3276 (Array Int var3955) arr-var3955-init) ; Statement: $r0 = newarray (javax.xml.namespace.QName)[1] 
(define-const var1470 var3955 var3955-init) ; Statement: $r1 = new javax.xml.namespace.QName 
(define-const var2699 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2699)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2699!1 String)
(assert (= var2699!1 ""))
(assert true)
(define-const var3384 String (append/672562846 var2699!1 "lvl")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lvl") 
(declare-const var2699!2 String)
(assert (= var2699!2 (str.++ var2699!1 "lvl")))
(define-const var2849 Int (+ var1895 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var1123 String (append/-1001720160 var3384 var2849)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3384!1 String)
(assert (str.prefixof var3384 var3384!1))
(assert true)
(define-const var3354 String (append/672562846 var1123 "pPr")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pPr") 
(declare-const var1123!1 String)
(assert (= var1123!1 (str.++ var1123 "pPr")))
(assert true)
(define-const var3380 String (toString/-2075883882 var3354)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-87930125 var1470 "http://schemas.openxmlformats.org/drawingml/2006/main" var3380)) ; Statement: specialinvoke $r1.<javax.xml.namespace.QName: void <init>(java.lang.String,java.lang.String)>("http://schemas.openxmlformats.org/drawingml/2006/main", $r6) 

(declare-const var1470!1 var3955)
(declare-const var3030 String)
(declare-const var3380!1 String)
(declare-const var3276!1 (Array Int var3955))
(assert (not (= var3276!1 null-__Array__Int__var3955__)))
(assert (= (select var3276!1 0) var1470!1)) ; Statement: $r0[0] = $r1 
(assert true)
(define-const var1735 var1029 (getXmlObject/723891840 var3143)) ; Statement: $r12 = virtualinvoke r7.<org.apache.poi.xslf.usermodel.XSLFShape: org.apache.xmlbeans.XmlObject getXmlObject()>() 
(define-const var3927 var2637 var365_bootstrap$/1902997347) ; Statement: $r11 = staticinvoke <org.apache.poi.xslf.model.ParagraphPropertyFetcher$parse__327: org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory bootstrap$()>() 
(define-const var857 (Array Int (Array Int var3955)) arr-__Array__Int__var3955__-init) ; Statement: $r8 = newarray (javax.xml.namespace.QName[])[3] 
(define-const var2319 (Array Int var3955) var3521-TX_BODY) ; Statement: $r9 = <org.apache.poi.xslf.model.ParagraphPropertyFetcher: javax.xml.namespace.QName[] TX_BODY> 
(declare-const var857!1 (Array Int (Array Int var3955)))
(assert (not (= var857!1 null-__Array__Int____Array__Int__var3955____)))
(assert (= (select var857!1 0) var2319)) ; Statement: $r8[0] = $r9 
(define-const var1591 (Array Int var3955) var3521-LST_STYLE) ; Statement: $r10 = <org.apache.poi.xslf.model.ParagraphPropertyFetcher: javax.xml.namespace.QName[] LST_STYLE> 
(declare-const var857!2 (Array Int (Array Int var3955)))
(assert (not (= var857!2 null-__Array__Int____Array__Int__var3955____)))
(assert (= (select var857!2 1) var1591)) ; Statement: $r8[1] = $r10 
(declare-const var857!3 (Array Int (Array Int var3955)))
(assert (not (= var857!3 null-__Array__Int____Array__Int__var3955____)))
(assert (= (select var857!3 2) var3276!1)) ; Statement: $r8[2] = $r0 
(define-const var3957 var1029 (var3961_selectProperty/-1360377367 var1735 var3827!class var3927 var857!3)) ; Statement: $r13 = staticinvoke <org.apache.poi.ooxml.util.XPathHelper: org.apache.xmlbeans.XmlObject selectProperty(org.apache.xmlbeans.XmlObject,java.lang.Class,org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory,javax.xml.namespace.QName[][])>($r12, class "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;", $r11, $r8) 
(define-const var14 var3827 (cast-from-var1029-to-var3827 var3957)) ; Statement: $r14 = (org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties) $r13 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3955-init=([], javax.xml.namespace.QName[]), var3955-init=([], javax.xml.namespace.QName), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-87930125=([javax.xml.namespace.QName, java.lang.String, java.lang.String], void), getXmlObject/723891840=([org.apache.poi.xslf.usermodel.XSLFShape], org.apache.xmlbeans.XmlObject), var365_bootstrap$/1902997347=([], org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory), arr-__Array__Int__var3955__-init=([], javax.xml.namespace.QName[][]), var3961_selectProperty/-1360377367=([org.apache.xmlbeans.XmlObject, java.lang.Class, org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory, javax.xml.namespace.QName[][]], org.apache.xmlbeans.XmlObject), cast-from-var1029-to-var3827=([org.apache.xmlbeans.XmlObject], org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties)}
; {var3640=org.apache.poi.xslf.usermodel.XSLFShape, var3143=r7, var1895=i0, var3955=javax.xml.namespace.QName, var3276=$r0, var1470=$r1, var2699=$r2, var3384=$r3, var2849=$i1, var1123=$r4, var3354=$r5, var3380=$r6, var3030="http://schemas.openxmlformats.org/drawingml/2006/main", var1029=org.apache.xmlbeans.XmlObject, var1735=$r12, var2637=org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory, var365=org.apache.poi.xslf.model.ParagraphPropertyFetcher$parse__327, var3927=$r11, var857=$r8, var3521=org.apache.poi.xslf.model.ParagraphPropertyFetcher, var2319=$r9, var1591=$r10, var3961=org.apache.poi.ooxml.util.XPathHelper, var3827=org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties, var3957=$r13, var14=$r14}
; {org.apache.poi.xslf.usermodel.XSLFShape=var3640, r7=var3143, i0=var1895, javax.xml.namespace.QName=var3955, $r0=var3276, $r1=var1470, $r2=var2699, $r3=var3384, $i1=var2849, $r4=var1123, $r5=var3354, $r6=var3380, "http://schemas.openxmlformats.org/drawingml/2006/main"=var3030, org.apache.xmlbeans.XmlObject=var1029, $r12=var1735, org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory=var2637, org.apache.poi.xslf.model.ParagraphPropertyFetcher$parse__327=var365, $r11=var3927, $r8=var857, org.apache.poi.xslf.model.ParagraphPropertyFetcher=var3521, $r9=var2319, $r10=var1591, org.apache.poi.ooxml.util.XPathHelper=var3961, org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties=var3827, $r13=var3957, $r14=var14}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.apache.poi.xslf.usermodel.XSLFShape;	i0 := @parameter1: int;	$r0 = newarray (javax.xml.namespace.QName)[1];	$r1 = new javax.xml.namespace.QName;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lvl");	$i1 = i0 + 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pPr");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<javax.xml.namespace.QName: void <init>(java.lang.String,java.lang.String)>("http://schemas.openxmlformats.org/drawingml/2006/main", $r6);	$r0[0] = $r1;	$r12 = virtualinvoke r7.<org.apache.poi.xslf.usermodel.XSLFShape: org.apache.xmlbeans.XmlObject getXmlObject()>();	$r11 = staticinvoke <org.apache.poi.xslf.model.ParagraphPropertyFetcher$parse__327: org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory bootstrap$()>();	$r8 = newarray (javax.xml.namespace.QName[])[3];	$r9 = <org.apache.poi.xslf.model.ParagraphPropertyFetcher: javax.xml.namespace.QName[] TX_BODY>;	$r8[0] = $r9;	$r10 = <org.apache.poi.xslf.model.ParagraphPropertyFetcher: javax.xml.namespace.QName[] LST_STYLE>;	$r8[1] = $r10;	$r8[2] = $r0;	$r13 = staticinvoke <org.apache.poi.ooxml.util.XPathHelper: org.apache.xmlbeans.XmlObject selectProperty(org.apache.xmlbeans.XmlObject,java.lang.Class,org.apache.poi.xslf.usermodel.XSLFShape$ReparseFactory,javax.xml.namespace.QName[][])>($r12, class "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;", $r11, $r8);	$r14 = (org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties) $r13;	return $r14
;block_num 1