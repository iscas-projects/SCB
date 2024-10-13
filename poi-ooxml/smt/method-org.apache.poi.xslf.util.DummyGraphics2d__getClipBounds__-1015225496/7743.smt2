(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2499 0)
(declare-sort var1131 0)
(declare-sort var1679 0)
(declare-sort var2898 0)
(declare-sort var504 0)
(declare-sort var41 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1679) String)
(declare-fun cast-from-var1131-to-var1679 (var1131) var1679)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2499) var2898)
(declare-fun println/1773605060 (var2898 String) void)
(declare-fun g2D/-1110529256 (var2499) var504)
(declare-fun getClipBounds/-256093775 (var41 var1131) var1131)
(declare-fun cast-from-var504-to-var41 (var504) var41)
(declare-const null-var2499 var2499)
(declare-const null-var1131 var1131)
(declare-const var348 var2499) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var348 null-var2499)))
(declare-const var2068 var1131) ; Statement: r1 := @parameter0: java.awt.Rectangle 
(assert (not (= var2068 null-var1131)))
(define-const var3335 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3335)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3335!1 String)
(assert (= var3335!1 ""))
(assert true)
(define-const var906 String (append/672562846 var3335!1 "getClipBounds(Rectangle):\n  r = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getClipBounds(Rectangle):\n  r = ") 
(declare-const var3335!2 String)
(assert (= var3335!2 (str.++ var3335!1 "getClipBounds(Rectangle):\n  r = ")))
(assert true)
(define-const var2790 String (append/-1031950772 var906 (cast-from-var1131-to-var1679 var2068))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var906!1 String)
(assert (str.prefixof var906 var906!1))
(assert true)
(define-const var720 String (toString/-2075883882 var2790)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1771 var2898 (log/-1110529256 var348)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1771 var720)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var1771!1 var2898)
(declare-const var720!1 String)
(define-const var3348 var504 (g2D/-1110529256 var348)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var195 var1131 (getClipBounds/-256093775 (cast-from-var504-to-var41 var3348) var2068)) ; Statement: $r8 = virtualinvoke $r7.<java.awt.Graphics2D: java.awt.Rectangle getClipBounds(java.awt.Rectangle)>(r1) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1131-to-var1679=([java.awt.Rectangle], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), getClipBounds/-256093775=([java.awt.Graphics, java.awt.Rectangle], java.awt.Rectangle), cast-from-var504-to-var41=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2499=org.apache.poi.xslf.util.DummyGraphics2d, var348=r5, var1131=java.awt.Rectangle, var2068=r1, var3335=$r0, var906=$r2, var1679=java.lang.Object, var2790=$r3, var720=r4, var2898=java.io.PrintStream, var1771=$r6, var504=java.awt.Graphics2D, var3348=$r7, var41=java.awt.Graphics, var195=$r8}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2499, r5=var348, java.awt.Rectangle=var1131, r1=var2068, $r0=var3335, $r2=var906, java.lang.Object=var1679, $r3=var2790, r4=var720, java.io.PrintStream=var2898, $r6=var1771, java.awt.Graphics2D=var504, $r7=var3348, java.awt.Graphics=var41, $r8=var195}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Rectangle;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getClipBounds(Rectangle):\n  r = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$r8 = virtualinvoke $r7.<java.awt.Graphics2D: java.awt.Rectangle getClipBounds(java.awt.Rectangle)>(r1);	return $r8
;block_num 1