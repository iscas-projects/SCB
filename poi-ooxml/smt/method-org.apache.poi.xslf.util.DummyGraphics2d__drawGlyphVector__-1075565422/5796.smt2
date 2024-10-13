(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var430 0)
(declare-sort var2554 0)
(declare-sort var2644 0)
(declare-sort var915 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2644) String)
(declare-fun cast-from-var2554-to-var2644 (var2554) var2644)
(declare-fun append/991902413 (String Float32) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var430) var915)
(declare-fun println/1773605060 (var915 String) void)
(declare-fun g2D/-1110529256 (var430) var2075)
(declare-fun drawGlyphVector/180084283 (var2075 var2554 Float32 Float32) void)
(declare-const null-var430 var430)
(declare-const null-var2554 var2554)
(declare-const null-Float32 Float32)
(declare-const var2038 var430) ; Statement: r9 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2038 null-var430)))
(declare-const var3338 var2554) ; Statement: r1 := @parameter0: java.awt.font.GlyphVector 
(assert (not (= var3338 null-var2554)))
(declare-const var1724 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var1724 null-Float32)))
(declare-const var2050 Float32) ; Statement: f1 := @parameter2: float 
(assert (not (= var2050 null-Float32)))
(define-const var3327 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3327)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3327!1 String)
(assert (= var3327!1 ""))
(assert true)
(define-const var2704 String (append/672562846 var3327!1 "drawGlyphVector(GlyphVector, float, float):\n  g = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawGlyphVector(GlyphVector, float, float):\n  g = ") 
(declare-const var3327!2 String)
(assert (= var3327!2 (str.++ var3327!1 "drawGlyphVector(GlyphVector, float, float):\n  g = ")))
(assert true)
(define-const var643 String (append/-1031950772 var2704 (cast-from-var2554-to-var2644 var3338))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2704!1 String)
(assert (str.prefixof var2704 var2704!1))
(assert true)
(define-const var1370 String (append/672562846 var643 "\n  x = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var643!1 String)
(assert (= var643!1 (str.++ var643 "\n  x = ")))
(assert true)
(define-const var2751 String (append/991902413 var1370 var1724)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f0) 
(declare-const var1370!1 String)
(assert (str.prefixof var1370 var1370!1))
(assert true)
(define-const var667 String (append/672562846 var2751 "\n  y = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var2751!1 String)
(assert (= var2751!1 (str.++ var2751 "\n  y = ")))
(assert true)
(define-const var610 String (append/991902413 var667 var2050)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f1) 
(declare-const var667!1 String)
(assert (str.prefixof var667 var667!1))
(assert true)
(define-const var1713 String (toString/-2075883882 var610)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2153 var915 (log/-1110529256 var2038)) ; Statement: $r10 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2153 var1713)) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(r8) 

(declare-const var2153!1 var915)
(declare-const var1713!1 String)
(define-const var626 var2075 (g2D/-1110529256 var2038)) ; Statement: $r11 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawGlyphVector/180084283 var626 var3338 var1724 var2050)) ; Statement: virtualinvoke $r11.<java.awt.Graphics2D: void drawGlyphVector(java.awt.font.GlyphVector,float,float)>(r1, f0, f1) 

(declare-const var626!1 var2075)
(declare-const var3338!1 var2554)
(declare-const var1724!1 Float32)
(declare-const var2050!1 Float32)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2554-to-var2644=([java.awt.font.GlyphVector], java.lang.Object), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawGlyphVector/180084283=([java.awt.Graphics2D, java.awt.font.GlyphVector, float, float], void)}
; {var430=org.apache.poi.xslf.util.DummyGraphics2d, var2038=r9, var2554=java.awt.font.GlyphVector, var3338=r1, var1724=f0, var2050=f1, var3327=$r0, var2704=$r2, var2644=java.lang.Object, var643=$r3, var1370=$r4, var2751=$r5, var667=$r6, var610=$r7, var1713=r8, var915=java.io.PrintStream, var2153=$r10, var2075=java.awt.Graphics2D, var626=$r11}
; {org.apache.poi.xslf.util.DummyGraphics2d=var430, r9=var2038, java.awt.font.GlyphVector=var2554, r1=var3338, f0=var1724, f1=var2050, $r0=var3327, $r2=var2704, java.lang.Object=var2644, $r3=var643, $r4=var1370, $r5=var2751, $r6=var667, $r7=var610, r8=var1713, java.io.PrintStream=var915, $r10=var2153, java.awt.Graphics2D=var2075, $r11=var626}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.font.GlyphVector;	f0 := @parameter1: float;	f1 := @parameter2: float;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawGlyphVector(GlyphVector, float, float):\n  g = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>(f1);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>(r8);	$r11 = r9.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r11.<java.awt.Graphics2D: void drawGlyphVector(java.awt.font.GlyphVector,float,float)>(r1, f0, f1);	return
;block_num 1