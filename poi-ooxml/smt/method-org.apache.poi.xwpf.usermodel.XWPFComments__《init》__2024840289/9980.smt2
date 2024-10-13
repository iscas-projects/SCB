(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3663 0)
(declare-sort var387 0)
(declare-sort var1818 0)
(declare-sort var2460 0)
(declare-sort var1859 0)
(declare-sort var2992 0)
(declare-sort var3976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-480622787 (var387 var387 var1818) void)
(declare-fun cast-from-var3663-to-var387 (var3663) var387)
(declare-fun var2460-init () var2460)
(declare-fun <init>/-325640736 (var2460) void)
(declare-fun cast-from-var2460-to-var1859 (var2460) var1859)
(declare-fun comments/-1313370920 (var3663) var1859)
(declare-fun pictures/-1313370920 (var3663) var1859)
(declare-fun getParent/456446919 (var387) var387)
(declare-fun var2992-init () var2992)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3976) String)
(declare-fun cast-from-var387-to-var3976 (var387) var3976)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2992 String) void)
(declare-const null-var3663 var3663)
(declare-const null-var387 var387)
(declare-const null-var1818 var1818)
(declare-const var1550 var3663) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFComments 
(assert (not (= var1550 null-var3663)))
(declare-const var39 var387) ; Statement: r1 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart 
(assert (not (= var39 null-var387)))
(declare-const var897 var1818) ; Statement: r2 := @parameter1: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var897 null-var1818)))
(assert true)
;(assert (<init>/-480622787 (cast-from-var3663-to-var387 var1550) var39 var897)) ; Statement: specialinvoke r0.<org.apache.poi.ooxml.POIXMLDocumentPart: void <init>(org.apache.poi.ooxml.POIXMLDocumentPart,org.apache.poi.openxml4j.opc.PackagePart)>(r1, r2) 

(declare-const var1550!1 var3663)
(declare-const var39!1 var387)
(declare-const var897!1 var1818)
(define-const var2141 var2460 var2460-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2141)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var2141!1 var2460)
(declare-const var1550!2 var3663)
(assert (not (= var1550!2 null-var3663)))
(assert (= (comments/-1313370920 var1550!2) (cast-from-var2460-to-var1859 var2141!1))) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFComments: java.util.List comments> = $r3 
(define-const var979 var2460 var2460-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var979)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var979!1 var2460)
(declare-const var1550!3 var3663)
(assert (not (= var1550!3 null-var3663)))
(assert (= (pictures/-1313370920 var1550!3) (cast-from-var2460-to-var1859 var979!1))) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFComments: java.util.List pictures> = $r4 
(assert true)
(define-const var2964 var387 (getParent/456446919 (cast-from-var3663-to-var387 var1550!3))) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFComments: org.apache.poi.ooxml.POIXMLDocumentPart getParent()>() 
(define-const var1636 Bool false) ; Statement: $z0 = $r5 instanceof org.apache.poi.xwpf.usermodel.XWPFDocument 
 ; Statement: if $z0 != 0 goto $r6 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFComments: org.apache.poi.ooxml.POIXMLDocumentPart getParent()>() 
(assert (not (not (= (ite var1636 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var639 var2992 var2992-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(define-const var3576 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3576)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3576!1 String)
(assert (= var3576!1 ""))
(assert true)
(define-const var192 String (append/672562846 var3576!1 "Parent is not a XWPFDocuemnt: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parent is not a XWPFDocuemnt: ") 
(declare-const var3576!2 String)
(assert (= var3576!2 (str.++ var3576!1 "Parent is not a XWPFDocuemnt: ")))
(assert true)
(define-const var2153 var387 (getParent/456446919 (cast-from-var3663-to-var387 var1550!3))) ; Statement: $r12 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFComments: org.apache.poi.ooxml.POIXMLDocumentPart getParent()>() 
(assert true)
(define-const var1886 String (append/-1031950772 var192 (cast-from-var387-to-var3976 var2153))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var192!1 String)
(assert (str.prefixof var192 var192!1))
(assert true)
(define-const var1286 String (toString/-2075883882 var1886)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var639 var1286)) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var639!1 var2992)
(declare-const var1286!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-480622787=([org.apache.poi.ooxml.POIXMLDocumentPart, org.apache.poi.ooxml.POIXMLDocumentPart, org.apache.poi.openxml4j.opc.PackagePart], void), cast-from-var3663-to-var387=([org.apache.poi.xwpf.usermodel.XWPFComments], org.apache.poi.ooxml.POIXMLDocumentPart), var2460-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2460-to-var1859=([java.util.ArrayList], java.util.List), comments/-1313370920=([org.apache.poi.xwpf.usermodel.XWPFComments], java.util.List), pictures/-1313370920=([org.apache.poi.xwpf.usermodel.XWPFComments], java.util.List), getParent/456446919=([org.apache.poi.ooxml.POIXMLDocumentPart], org.apache.poi.ooxml.POIXMLDocumentPart), var2992-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var387-to-var3976=([org.apache.poi.ooxml.POIXMLDocumentPart], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3663=org.apache.poi.xwpf.usermodel.XWPFComments, var1550=r0, var387=org.apache.poi.ooxml.POIXMLDocumentPart, var39=r1, var1818=org.apache.poi.openxml4j.opc.PackagePart, var897=r2, var2460=java.util.ArrayList, var2141=$r3, var1859=java.util.List, var979=$r4, var2964=$r5, var1636=$z0, var2992=java.lang.IllegalStateException, var639=$r10, var3576=$r11, var192=$r13, var2153=$r12, var3976=java.lang.Object, var1886=$r14, var1286=$r15}
; {org.apache.poi.xwpf.usermodel.XWPFComments=var3663, r0=var1550, org.apache.poi.ooxml.POIXMLDocumentPart=var387, r1=var39, org.apache.poi.openxml4j.opc.PackagePart=var1818, r2=var897, java.util.ArrayList=var2460, $r3=var2141, java.util.List=var1859, $r4=var979, $r5=var2964, $z0=var1636, java.lang.IllegalStateException=var2992, $r10=var639, $r11=var3576, $r13=var192, $r12=var2153, java.lang.Object=var3976, $r14=var1886, $r15=var1286}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFComments;	r1 := @parameter0: org.apache.poi.ooxml.POIXMLDocumentPart;	r2 := @parameter1: org.apache.poi.openxml4j.opc.PackagePart;	specialinvoke r0.<org.apache.poi.ooxml.POIXMLDocumentPart: void <init>(org.apache.poi.ooxml.POIXMLDocumentPart,org.apache.poi.openxml4j.opc.PackagePart)>(r1, r2);	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFComments: java.util.List comments> = $r3;	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFComments: java.util.List pictures> = $r4;	$r5 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFComments: org.apache.poi.ooxml.POIXMLDocumentPart getParent()>();	$z0 = $r5 instanceof org.apache.poi.xwpf.usermodel.XWPFDocument;	if $z0 != 0 goto $r6 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFComments: org.apache.poi.ooxml.POIXMLDocumentPart getParent()>();	$r10 = new java.lang.IllegalStateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parent is not a XWPFDocuemnt: ");	$r12 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFComments: org.apache.poi.ooxml.POIXMLDocumentPart getParent()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 2