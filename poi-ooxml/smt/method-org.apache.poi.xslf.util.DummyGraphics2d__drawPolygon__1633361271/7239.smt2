(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1800 0)
(declare-sort var2167 0)
(declare-sort var3131 0)
(declare-sort var239 0)
(declare-sort var2344 0)
(declare-sort var1724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3131) String)
(declare-fun cast-from-var2167-to-var3131 (var2167) var3131)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1800) var239)
(declare-fun println/1773605060 (var239 String) void)
(declare-fun g2D/-1110529256 (var1800) var2344)
(declare-fun drawPolygon/1293401088 (var1724 var2167) void)
(declare-fun cast-from-var2344-to-var1724 (var2344) var1724)
(declare-const null-var1800 var1800)
(declare-const null-var2167 var2167)
(declare-const var583 var1800) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var583 null-var1800)))
(declare-const var289 var2167) ; Statement: r1 := @parameter0: java.awt.Polygon 
(assert (not (= var289 null-var2167)))
(define-const var2666 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2666)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2666!1 String)
(assert (= var2666!1 ""))
(assert true)
(define-const var3440 String (append/672562846 var2666!1 "drawPolygon(Polygon):\n  p = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawPolygon(Polygon):\n  p = ") 
(declare-const var2666!2 String)
(assert (= var2666!2 (str.++ var2666!1 "drawPolygon(Polygon):\n  p = ")))
(assert true)
(define-const var1818 String (append/-1031950772 var3440 (cast-from-var2167-to-var3131 var289))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3440!1 String)
(assert (str.prefixof var3440 var3440!1))
(assert true)
(define-const var3428 String (toString/-2075883882 var1818)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1887 var239 (log/-1110529256 var583)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1887 var3428)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var1887!1 var239)
(declare-const var3428!1 String)
(define-const var2924 var2344 (g2D/-1110529256 var583)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawPolygon/1293401088 (cast-from-var2344-to-var1724 var2924) var289)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void drawPolygon(java.awt.Polygon)>(r1) 

(declare-const var2924!1 var2344)
(declare-const var289!1 var2167)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2167-to-var3131=([java.awt.Polygon], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawPolygon/1293401088=([java.awt.Graphics, java.awt.Polygon], void), cast-from-var2344-to-var1724=([java.awt.Graphics2D], java.awt.Graphics)}
; {var1800=org.apache.poi.xslf.util.DummyGraphics2d, var583=r5, var2167=java.awt.Polygon, var289=r1, var2666=$r0, var3440=$r2, var3131=java.lang.Object, var1818=$r3, var3428=r4, var239=java.io.PrintStream, var1887=$r6, var2344=java.awt.Graphics2D, var2924=$r7, var1724=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1800, r5=var583, java.awt.Polygon=var2167, r1=var289, $r0=var2666, $r2=var3440, java.lang.Object=var3131, $r3=var1818, r4=var3428, java.io.PrintStream=var239, $r6=var1887, java.awt.Graphics2D=var2344, $r7=var2924, java.awt.Graphics=var1724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Polygon;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawPolygon(Polygon):\n  p = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void drawPolygon(java.awt.Polygon)>(r1);	return
;block_num 1