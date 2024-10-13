(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1315 0)
(declare-sort var3975 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getXmlObject/1977126741 (var1315) var3975)
(declare-fun var3975_getCSld/-1603820580 (var3975) var712)
(declare-fun var712_isSetName/-185715820 (var712) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSlideNumber/1107046321 (var1315) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1315 var1315)
(declare-const var3123 var1315) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlide 
(assert (not (= var3123 null-var1315)))
(assert true)
(define-const var701 var3975 (getXmlObject/1977126741 var3123)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.openxmlformats.schemas.presentationml.x2006.main.CTSlide getXmlObject()>() 
(define-const var1798 var712 (var3975_getCSld/-1603820580 var701)) ; Statement: r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.presentationml.x2006.main.CTSlide: org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData getCSld()>() 
(define-const var1466 Bool (var712_isSetName/-185715820 var1798)) ; Statement: $z0 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData: boolean isSetName()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var1466 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2426 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2426)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2426!1 String)
(assert (= var2426!1 ""))
(assert true)
(define-const var3981 String (append/672562846 var2426!1 "Slide")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Slide") 
(declare-const var2426!2 String)
(assert (= var2426!2 (str.++ var2426!1 "Slide")))
(assert true)
(define-const var366 Int (getSlideNumber/1107046321 var3123)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlide: int getSlideNumber()>() 
(assert true)
(define-const var2992 String (append/-1001720160 var3981 var366)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3981!1 String)
(assert (str.prefixof var3981 var3981!1))
(assert true)
(define-const var3604 String (toString/-2075883882 var2992)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getXmlObject/1977126741=([org.apache.poi.xslf.usermodel.XSLFSlide], org.openxmlformats.schemas.presentationml.x2006.main.CTSlide), var3975_getCSld/-1603820580=([org.openxmlformats.schemas.presentationml.x2006.main.CTSlide], org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData), var712_isSetName/-185715820=([org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSlideNumber/1107046321=([org.apache.poi.xslf.usermodel.XSLFSlide], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1315=org.apache.poi.xslf.usermodel.XSLFSlide, var3123=r0, var3975=org.openxmlformats.schemas.presentationml.x2006.main.CTSlide, var701=$r1, var712=org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData, var1798=r2, var1466=$z0, var2426=$r3, var3981=$r4, var366=$i0, var2992=$r5, var3604=$r6}
; {org.apache.poi.xslf.usermodel.XSLFSlide=var1315, r0=var3123, org.openxmlformats.schemas.presentationml.x2006.main.CTSlide=var3975, $r1=var701, org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData=var712, r2=var1798, $z0=var1466, $r3=var2426, $r4=var3981, $i0=var366, $r5=var2992, $r6=var3604}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlide;	$r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.openxmlformats.schemas.presentationml.x2006.main.CTSlide getXmlObject()>();	r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.presentationml.x2006.main.CTSlide: org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData getCSld()>();	$z0 = interfaceinvoke r2.<org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData: boolean isSetName()>();	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Slide");	$i0 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFSlide: int getSlideNumber()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3