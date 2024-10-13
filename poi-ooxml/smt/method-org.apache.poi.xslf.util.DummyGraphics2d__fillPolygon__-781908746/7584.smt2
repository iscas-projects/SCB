(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var1115 0)
(declare-sort var151 0)
(declare-sort var2666 0)
(declare-sort var3264 0)
(declare-sort var1984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var151) String)
(declare-fun cast-from-var1115-to-var151 (var1115) var151)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var149) var2666)
(declare-fun println/1773605060 (var2666 String) void)
(declare-fun g2D/-1110529256 (var149) var3264)
(declare-fun fillPolygon/-1121868929 (var1984 var1115) void)
(declare-fun cast-from-var3264-to-var1984 (var3264) var1984)
(declare-const null-var149 var149)
(declare-const null-var1115 var1115)
(declare-const var1496 var149) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1496 null-var149)))
(declare-const var2821 var1115) ; Statement: r1 := @parameter0: java.awt.Polygon 
(assert (not (= var2821 null-var1115)))
(define-const var3218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3218)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3218!1 String)
(assert (= var3218!1 ""))
(assert true)
(define-const var3232 String (append/672562846 var3218!1 "fillPolygon(Polygon):\n  p = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fillPolygon(Polygon):\n  p = ") 
(declare-const var3218!2 String)
(assert (= var3218!2 (str.++ var3218!1 "fillPolygon(Polygon):\n  p = ")))
(assert true)
(define-const var943 String (append/-1031950772 var3232 (cast-from-var1115-to-var151 var2821))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3232!1 String)
(assert (str.prefixof var3232 var3232!1))
(assert true)
(define-const var1913 String (toString/-2075883882 var943)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2331 var2666 (log/-1110529256 var1496)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2331 var1913)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var2331!1 var2666)
(declare-const var1913!1 String)
(define-const var1181 var3264 (g2D/-1110529256 var1496)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (fillPolygon/-1121868929 (cast-from-var3264-to-var1984 var1181) var2821)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void fillPolygon(java.awt.Polygon)>(r1) 

(declare-const var1181!1 var3264)
(declare-const var2821!1 var1115)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1115-to-var151=([java.awt.Polygon], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), fillPolygon/-1121868929=([java.awt.Graphics, java.awt.Polygon], void), cast-from-var3264-to-var1984=([java.awt.Graphics2D], java.awt.Graphics)}
; {var149=org.apache.poi.xslf.util.DummyGraphics2d, var1496=r5, var1115=java.awt.Polygon, var2821=r1, var3218=$r0, var3232=$r2, var151=java.lang.Object, var943=$r3, var1913=r4, var2666=java.io.PrintStream, var2331=$r6, var3264=java.awt.Graphics2D, var1181=$r7, var1984=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var149, r5=var1496, java.awt.Polygon=var1115, r1=var2821, $r0=var3218, $r2=var3232, java.lang.Object=var151, $r3=var943, r4=var1913, java.io.PrintStream=var2666, $r6=var2331, java.awt.Graphics2D=var3264, $r7=var1181, java.awt.Graphics=var1984}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Polygon;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fillPolygon(Polygon):\n  p = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void fillPolygon(java.awt.Polygon)>(r1);	return
;block_num 1