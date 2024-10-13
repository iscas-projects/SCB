(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var86 0)
(declare-sort var3893 0)
(declare-sort var3423 0)
(declare-sort var1201 0)
(declare-sort var4 0)
(declare-sort var2337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1201) String)
(declare-fun cast-from-var3893-to-var1201 (var3893) var1201)
(declare-fun cast-from-var3423-to-var1201 (var3423) var1201)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var86) var4)
(declare-fun println/1773605060 (var4 String) void)
(declare-fun g2D/-1110529256 (var86) var2337)
(declare-fun drawRenderedImage/-1026442842 (var2337 var3893 var3423) void)
(declare-const null-var86 var86)
(declare-const null-var3893 var3893)
(declare-const null-var3423 var3423)
(declare-const var2707 var86) ; Statement: r8 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2707 null-var86)))
(declare-const var203 var3893) ; Statement: r1 := @parameter0: java.awt.image.RenderedImage 
(assert (not (= var203 null-var3893)))
(declare-const var2888 var3423) ; Statement: r4 := @parameter1: java.awt.geom.AffineTransform 
(assert (not (= var2888 null-var3423)))
(define-const var25 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var25)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var25!1 String)
(assert (= var25!1 ""))
(assert true)
(define-const var3991 String (append/672562846 var25!1 "drawRenderedImage(RenderedImage, AffineTransform):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawRenderedImage(RenderedImage, AffineTransform):\n  img = ") 
(declare-const var25!2 String)
(assert (= var25!2 (str.++ var25!1 "drawRenderedImage(RenderedImage, AffineTransform):\n  img = ")))
(assert true)
(define-const var1375 String (append/-1031950772 var3991 (cast-from-var3893-to-var1201 var203))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3991!1 String)
(assert (str.prefixof var3991 var3991!1))
(assert true)
(define-const var618 String (append/672562846 var1375 "\n  xform = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  xform = ") 
(declare-const var1375!1 String)
(assert (= var1375!1 (str.++ var1375 "\n  xform = ")))
(assert true)
(define-const var2267 String (append/-1031950772 var618 (cast-from-var3423-to-var1201 var2888))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var618!1 String)
(assert (str.prefixof var618 var618!1))
(assert true)
(define-const var2620 String (toString/-2075883882 var2267)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1097 var4 (log/-1110529256 var2707)) ; Statement: $r9 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1097 var2620)) ; Statement: virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>(r7) 

(declare-const var1097!1 var4)
(declare-const var2620!1 String)
(define-const var1692 var2337 (g2D/-1110529256 var2707)) ; Statement: $r10 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawRenderedImage/-1026442842 var1692 var203 var2888)) ; Statement: virtualinvoke $r10.<java.awt.Graphics2D: void drawRenderedImage(java.awt.image.RenderedImage,java.awt.geom.AffineTransform)>(r1, r4) 

(declare-const var1692!1 var2337)
(declare-const var203!1 var3893)
(declare-const var2888!1 var3423)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3893-to-var1201=([java.awt.image.RenderedImage], java.lang.Object), cast-from-var3423-to-var1201=([java.awt.geom.AffineTransform], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawRenderedImage/-1026442842=([java.awt.Graphics2D, java.awt.image.RenderedImage, java.awt.geom.AffineTransform], void)}
; {var86=org.apache.poi.xslf.util.DummyGraphics2d, var2707=r8, var3893=java.awt.image.RenderedImage, var203=r1, var3423=java.awt.geom.AffineTransform, var2888=r4, var25=$r0, var3991=$r2, var1201=java.lang.Object, var1375=$r3, var618=$r5, var2267=$r6, var2620=r7, var4=java.io.PrintStream, var1097=$r9, var2337=java.awt.Graphics2D, var1692=$r10}
; {org.apache.poi.xslf.util.DummyGraphics2d=var86, r8=var2707, java.awt.image.RenderedImage=var3893, r1=var203, java.awt.geom.AffineTransform=var3423, r4=var2888, $r0=var25, $r2=var3991, java.lang.Object=var1201, $r3=var1375, $r5=var618, $r6=var2267, r7=var2620, java.io.PrintStream=var4, $r9=var1097, java.awt.Graphics2D=var2337, $r10=var1692}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.image.RenderedImage;	r4 := @parameter1: java.awt.geom.AffineTransform;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawRenderedImage(RenderedImage, AffineTransform):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  xform = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>(r7);	$r10 = r8.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r10.<java.awt.Graphics2D: void drawRenderedImage(java.awt.image.RenderedImage,java.awt.geom.AffineTransform)>(r1, r4);	return
;block_num 1