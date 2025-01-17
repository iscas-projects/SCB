(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1741 0)
(declare-sort var2016 0)
(declare-sort var2250 0)
(declare-sort var1632 0)
(declare-sort var3112 0)
(declare-sort var2353 0)
(declare-sort var3060 0)
(declare-sort var3766 0)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDOMFactory/1300953394 (var2250) var1632)
(declare-fun var1632_createElementNS/1445905347 (var1632 String String) var3112)
(declare-fun getIDGenerator/-1835782759 (var2250) var2353)
(declare-fun generateID/-1628253822 (var2353 String) String)
(declare-fun var3112_setAttribute/1573420598 (var3112 String String) void)
(declare-fun getCenterPoint/-1743403057 (var2016) var3060)
(declare-fun var1741_setPoint/765835372 (var3112 var3060 String String) void)
(declare-fun getFocusPoint/-1544808808 (var2016) var3060)
(declare-fun getRadius/-1263941426 (var2016) Float32)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-fun addMgpAttributes/-342081393 (var1741 var3112 var2250 var3766) void)
(declare-fun cast-from-var2016-to-var3766 (var2016) var3766)
(declare-fun var627-init () var627)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1364186186 (var627 String String var3112) void)
(declare-const null-var1741 var1741)
(declare-const null-var2016 var2016)
(declare-const null-var2250 var2250)
(declare-const var617 var1741) ; Statement: r9 := @this: org.apache.poi.xslf.draw.SVGRenderExtension 
(assert (not (= var617 null-var1741)))
(declare-const var3663 var2016) ; Statement: r5 := @parameter0: java.awt.RadialGradientPaint 
(assert (not (= var3663 null-var2016)))
(declare-const var2864 var2250) ; Statement: r0 := @parameter1: org.apache.batik.svggen.SVGGeneratorContext 
(assert (not (= var2864 null-var2250)))
(assert true)
(define-const var99 var1632 (getDOMFactory/1300953394 var2864)) ; Statement: $r1 = virtualinvoke r0.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>() 
(define-const var899 var3112 (var1632_createElementNS/1445905347 var99 "http://www.w3.org/2000/svg" "radialGradient")) ; Statement: r2 = interfaceinvoke $r1.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "radialGradient") 
(assert true)
(define-const var2312 var2353 (getIDGenerator/-1835782759 var2864)) ; Statement: $r3 = virtualinvoke r0.<org.apache.batik.svggen.SVGGeneratorContext: org.apache.batik.svggen.SVGIDGenerator getIDGenerator()>() 
(assert true)
(define-const var3625 String (generateID/-1628253822 var2312 "gradient")) ; Statement: r4 = virtualinvoke $r3.<org.apache.batik.svggen.SVGIDGenerator: java.lang.String generateID(java.lang.String)>("gradient") 
;(assert (var3112_setAttribute/1573420598 var899 "id" var3625)) ; Statement: interfaceinvoke r2.<org.w3c.dom.Element: void setAttribute(java.lang.String,java.lang.String)>("id", r4) 

(declare-const var899!1 var3112)
(declare-const var2190 String)
(declare-const var3625!1 String)
(assert true)
(define-const var2790 var3060 (getCenterPoint/-1743403057 var3663)) ; Statement: $r6 = virtualinvoke r5.<java.awt.RadialGradientPaint: java.awt.geom.Point2D getCenterPoint()>() 
;(assert (var1741_setPoint/765835372 var899!1 var2790 "cx" "cy")) ; Statement: staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setPoint(org.w3c.dom.Element,java.awt.geom.Point2D,java.lang.String,java.lang.String)>(r2, $r6, "cx", "cy") 

(declare-const var899!2 var3112)
(declare-const var2790!1 var3060)
(declare-const var2522 String)
(declare-const var3169 String)
(assert true)
(define-const var725 var3060 (getFocusPoint/-1544808808 var3663)) ; Statement: $r7 = virtualinvoke r5.<java.awt.RadialGradientPaint: java.awt.geom.Point2D getFocusPoint()>() 
;(assert (var1741_setPoint/765835372 var899!2 var725 "fx" "fy")) ; Statement: staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setPoint(org.w3c.dom.Element,java.awt.geom.Point2D,java.lang.String,java.lang.String)>(r2, $r7, "fx", "fy") 

(declare-const var899!3 var3112)
(declare-const var725!1 var3060)
(declare-const var2511 String)
(declare-const var613 String)
(assert true)
(define-const var1289 Float32 (getRadius/-1263941426 var3663)) ; Statement: $f0 = virtualinvoke r5.<java.awt.RadialGradientPaint: float getRadius()>() 
(define-const var3764 String (String_valueOf/-149410723 var1289)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>($f0) 
;(assert (var3112_setAttribute/1573420598 var899!3 "r" var3764)) ; Statement: interfaceinvoke r2.<org.w3c.dom.Element: void setAttribute(java.lang.String,java.lang.String)>("r", $r8) 

(declare-const var899!4 var3112)
(declare-const var838 String)
(declare-const var3764!1 String)
(assert true)
;(assert (addMgpAttributes/-342081393 var617 var899!4 var2864 (cast-from-var2016-to-var3766 var3663))) ; Statement: specialinvoke r9.<org.apache.poi.xslf.draw.SVGRenderExtension: void addMgpAttributes(org.w3c.dom.Element,org.apache.batik.svggen.SVGGeneratorContext,java.awt.MultipleGradientPaint)>(r2, r0, r5) 

(declare-const var617!1 var1741)
(declare-const var899!5 var3112)
(declare-const var2864!1 var2250)
(declare-const var3663!1 var2016)
(define-const var2829 var627 var627-init) ; Statement: $r10 = new org.apache.batik.svggen.SVGPaintDescriptor 
(define-const var2611 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2611)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2611!1 String)
(assert (= var2611!1 ""))
(assert true)
(define-const var331 String (append/672562846 var2611!1 "url(#")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("url(#") 
(declare-const var2611!2 String)
(assert (= var2611!2 (str.++ var2611!1 "url(#")))
(assert true)
(define-const var3184 String (append/672562846 var331 var3625!1)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var331!1 String)
(assert (= var331!1 (str.++ var331 var3625!1)))
(assert true)
(define-const var3464 String (append/672562846 var3184 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3184!1 String)
(assert (= var3184!1 (str.++ var3184 ")")))
(assert true)
(define-const var715 String (toString/-2075883882 var3464)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1364186186 var2829 var715 "1" var899!5)) ; Statement: specialinvoke $r10.<org.apache.batik.svggen.SVGPaintDescriptor: void <init>(java.lang.String,java.lang.String,org.w3c.dom.Element)>($r15, "1", r2) 

(declare-const var2829!1 var627)
(declare-const var715!1 String)
(declare-const var3159 String)
(declare-const var899!6 var3112)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getDOMFactory/1300953394=([org.apache.batik.svggen.SVGGeneratorContext], org.w3c.dom.Document), var1632_createElementNS/1445905347=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.Element), getIDGenerator/-1835782759=([org.apache.batik.svggen.SVGGeneratorContext], org.apache.batik.svggen.SVGIDGenerator), generateID/-1628253822=([org.apache.batik.svggen.SVGIDGenerator, java.lang.String], java.lang.String), var3112_setAttribute/1573420598=([org.w3c.dom.Element, java.lang.String, java.lang.String], void), getCenterPoint/-1743403057=([java.awt.RadialGradientPaint], java.awt.geom.Point2D), var1741_setPoint/765835372=([org.w3c.dom.Element, java.awt.geom.Point2D, java.lang.String, java.lang.String], void), getFocusPoint/-1544808808=([java.awt.RadialGradientPaint], java.awt.geom.Point2D), getRadius/-1263941426=([java.awt.RadialGradientPaint], float), String_valueOf/-149410723=([float], java.lang.String), addMgpAttributes/-342081393=([org.apache.poi.xslf.draw.SVGRenderExtension, org.w3c.dom.Element, org.apache.batik.svggen.SVGGeneratorContext, java.awt.MultipleGradientPaint], void), cast-from-var2016-to-var3766=([java.awt.RadialGradientPaint], java.awt.MultipleGradientPaint), var627-init=([], org.apache.batik.svggen.SVGPaintDescriptor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1364186186=([org.apache.batik.svggen.SVGPaintDescriptor, java.lang.String, java.lang.String, org.w3c.dom.Element], void)}
; {var1741=org.apache.poi.xslf.draw.SVGRenderExtension, var617=r9, var2016=java.awt.RadialGradientPaint, var3663=r5, var2250=org.apache.batik.svggen.SVGGeneratorContext, var2864=r0, var1632=org.w3c.dom.Document, var99=$r1, var3112=org.w3c.dom.Element, var899=r2, var2353=org.apache.batik.svggen.SVGIDGenerator, var2312=$r3, var3625=r4, var2190="id", var3060=java.awt.geom.Point2D, var2790=$r6, var2522="cx", var3169="cy", var725=$r7, var2511="fx", var613="fy", var1289=$f0, var3764=$r8, var838="r", var3766=java.awt.MultipleGradientPaint, var627=org.apache.batik.svggen.SVGPaintDescriptor, var2829=$r10, var2611=$r11, var331=$r12, var3184=$r13, var3464=$r14, var715=$r15, var3159="1"}
; {org.apache.poi.xslf.draw.SVGRenderExtension=var1741, r9=var617, java.awt.RadialGradientPaint=var2016, r5=var3663, org.apache.batik.svggen.SVGGeneratorContext=var2250, r0=var2864, org.w3c.dom.Document=var1632, $r1=var99, org.w3c.dom.Element=var3112, r2=var899, org.apache.batik.svggen.SVGIDGenerator=var2353, $r3=var2312, r4=var3625, "id"=var2190, java.awt.geom.Point2D=var3060, $r6=var2790, "cx"=var2522, "cy"=var3169, $r7=var725, "fx"=var2511, "fy"=var613, $f0=var1289, $r8=var3764, "r"=var838, java.awt.MultipleGradientPaint=var3766, org.apache.batik.svggen.SVGPaintDescriptor=var627, $r10=var2829, $r11=var2611, $r12=var331, $r13=var3184, $r14=var3464, $r15=var715, "1"=var3159}
;seq <java.lang.String: java.lang.String valueOf(float)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xslf.draw.SVGRenderExtension;	r5 := @parameter0: java.awt.RadialGradientPaint;	r0 := @parameter1: org.apache.batik.svggen.SVGGeneratorContext;	$r1 = virtualinvoke r0.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>();	r2 = interfaceinvoke $r1.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "radialGradient");	$r3 = virtualinvoke r0.<org.apache.batik.svggen.SVGGeneratorContext: org.apache.batik.svggen.SVGIDGenerator getIDGenerator()>();	r4 = virtualinvoke $r3.<org.apache.batik.svggen.SVGIDGenerator: java.lang.String generateID(java.lang.String)>("gradient");	interfaceinvoke r2.<org.w3c.dom.Element: void setAttribute(java.lang.String,java.lang.String)>("id", r4);	$r6 = virtualinvoke r5.<java.awt.RadialGradientPaint: java.awt.geom.Point2D getCenterPoint()>();	staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setPoint(org.w3c.dom.Element,java.awt.geom.Point2D,java.lang.String,java.lang.String)>(r2, $r6, "cx", "cy");	$r7 = virtualinvoke r5.<java.awt.RadialGradientPaint: java.awt.geom.Point2D getFocusPoint()>();	staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setPoint(org.w3c.dom.Element,java.awt.geom.Point2D,java.lang.String,java.lang.String)>(r2, $r7, "fx", "fy");	$f0 = virtualinvoke r5.<java.awt.RadialGradientPaint: float getRadius()>();	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>($f0);	interfaceinvoke r2.<org.w3c.dom.Element: void setAttribute(java.lang.String,java.lang.String)>("r", $r8);	specialinvoke r9.<org.apache.poi.xslf.draw.SVGRenderExtension: void addMgpAttributes(org.w3c.dom.Element,org.apache.batik.svggen.SVGGeneratorContext,java.awt.MultipleGradientPaint)>(r2, r0, r5);	$r10 = new org.apache.batik.svggen.SVGPaintDescriptor;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("url(#");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.apache.batik.svggen.SVGPaintDescriptor: void <init>(java.lang.String,java.lang.String,org.w3c.dom.Element)>($r15, "1", r2);	return $r10
;block_num 1