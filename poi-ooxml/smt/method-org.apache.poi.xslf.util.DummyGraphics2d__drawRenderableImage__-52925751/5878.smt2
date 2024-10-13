(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3458 0)
(declare-sort var126 0)
(declare-sort var2943 0)
(declare-sort var1841 0)
(declare-sort var2008 0)
(declare-sort var432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1841) String)
(declare-fun cast-from-var126-to-var1841 (var126) var1841)
(declare-fun cast-from-var2943-to-var1841 (var2943) var1841)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3458) var2008)
(declare-fun println/1773605060 (var2008 String) void)
(declare-fun g2D/-1110529256 (var3458) var432)
(declare-fun drawRenderableImage/-888760910 (var432 var126 var2943) void)
(declare-const null-var3458 var3458)
(declare-const null-var126 var126)
(declare-const null-var2943 var2943)
(declare-const var929 var3458) ; Statement: r8 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var929 null-var3458)))
(declare-const var2725 var126) ; Statement: r1 := @parameter0: java.awt.image.renderable.RenderableImage 
(assert (not (= var2725 null-var126)))
(declare-const var2059 var2943) ; Statement: r4 := @parameter1: java.awt.geom.AffineTransform 
(assert (not (= var2059 null-var2943)))
(define-const var1089 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1089)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1089!1 String)
(assert (= var1089!1 ""))
(assert true)
(define-const var153 String (append/672562846 var1089!1 "drawRenderableImage(RenderableImage, AfflineTransform):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawRenderableImage(RenderableImage, AfflineTransform):\n  img = ") 
(declare-const var1089!2 String)
(assert (= var1089!2 (str.++ var1089!1 "drawRenderableImage(RenderableImage, AfflineTransform):\n  img = ")))
(assert true)
(define-const var2809 String (append/-1031950772 var153 (cast-from-var126-to-var1841 var2725))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var153!1 String)
(assert (str.prefixof var153 var153!1))
(assert true)
(define-const var1486 String (append/672562846 var2809 "\n  xform = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  xform = ") 
(declare-const var2809!1 String)
(assert (= var2809!1 (str.++ var2809 "\n  xform = ")))
(assert true)
(define-const var1338 String (append/-1031950772 var1486 (cast-from-var2943-to-var1841 var2059))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1486!1 String)
(assert (str.prefixof var1486 var1486!1))
(assert true)
(define-const var1971 String (toString/-2075883882 var1338)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3187 var2008 (log/-1110529256 var929)) ; Statement: $r9 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3187 var1971)) ; Statement: virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>(r7) 

(declare-const var3187!1 var2008)
(declare-const var1971!1 String)
(define-const var3597 var432 (g2D/-1110529256 var929)) ; Statement: $r10 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawRenderableImage/-888760910 var3597 var2725 var2059)) ; Statement: virtualinvoke $r10.<java.awt.Graphics2D: void drawRenderableImage(java.awt.image.renderable.RenderableImage,java.awt.geom.AffineTransform)>(r1, r4) 

(declare-const var3597!1 var432)
(declare-const var2725!1 var126)
(declare-const var2059!1 var2943)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var126-to-var1841=([java.awt.image.renderable.RenderableImage], java.lang.Object), cast-from-var2943-to-var1841=([java.awt.geom.AffineTransform], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawRenderableImage/-888760910=([java.awt.Graphics2D, java.awt.image.renderable.RenderableImage, java.awt.geom.AffineTransform], void)}
; {var3458=org.apache.poi.xslf.util.DummyGraphics2d, var929=r8, var126=java.awt.image.renderable.RenderableImage, var2725=r1, var2943=java.awt.geom.AffineTransform, var2059=r4, var1089=$r0, var153=$r2, var1841=java.lang.Object, var2809=$r3, var1486=$r5, var1338=$r6, var1971=r7, var2008=java.io.PrintStream, var3187=$r9, var432=java.awt.Graphics2D, var3597=$r10}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3458, r8=var929, java.awt.image.renderable.RenderableImage=var126, r1=var2725, java.awt.geom.AffineTransform=var2943, r4=var2059, $r0=var1089, $r2=var153, java.lang.Object=var1841, $r3=var2809, $r5=var1486, $r6=var1338, r7=var1971, java.io.PrintStream=var2008, $r9=var3187, java.awt.Graphics2D=var432, $r10=var3597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.image.renderable.RenderableImage;	r4 := @parameter1: java.awt.geom.AffineTransform;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawRenderableImage(RenderableImage, AfflineTransform):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  xform = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>(r7);	$r10 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r10.<java.awt.Graphics2D: void drawRenderableImage(java.awt.image.renderable.RenderableImage,java.awt.geom.AffineTransform)>(r1, r4);	return
;block_num 1