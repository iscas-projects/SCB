(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var420 0)
(declare-sort var2015 0)
(declare-sort var1278 0)
(declare-sort var3214 0)
(declare-sort var250 0)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3214) String)
(declare-fun cast-from-var2015-to-var3214 (var2015) var3214)
(declare-fun cast-from-var1278-to-var3214 (var1278) var3214)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var420) var250)
(declare-fun println/1773605060 (var250 String) void)
(declare-fun g2D/-1110529256 (var420) var2063)
(declare-fun hit/578005535 (var2063 var2015 var1278 Bool) Bool)
(declare-const null-var420 var420)
(declare-const null-var2015 var2015)
(declare-const null-var1278 var1278)
(declare-const null-Bool Bool)
(declare-const var1633 var420) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1633 null-var420)))
(declare-const var3764 var2015) ; Statement: r1 := @parameter0: java.awt.Rectangle 
(assert (not (= var3764 null-var2015)))
(declare-const var3076 var1278) ; Statement: r4 := @parameter1: java.awt.Shape 
(assert (not (= var3076 null-var1278)))
(declare-const var975 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var975 null-Bool)))
(define-const var3273 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3273)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3273!1 String)
(assert (= var3273!1 ""))
(assert true)
(define-const var2143 String (append/672562846 var3273!1 "hit(Rectangle, Shape, onStroke):\n  rect = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hit(Rectangle, Shape, onStroke):\n  rect = ") 
(declare-const var3273!2 String)
(assert (= var3273!2 (str.++ var3273!1 "hit(Rectangle, Shape, onStroke):\n  rect = ")))
(assert true)
(define-const var2884 String (append/-1031950772 var2143 (cast-from-var2015-to-var3214 var3764))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2143!1 String)
(assert (str.prefixof var2143 var2143!1))
(assert true)
(define-const var520 String (append/672562846 var2884 "\n  s = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  s = ") 
(declare-const var2884!1 String)
(assert (= var2884!1 (str.++ var2884 "\n  s = ")))
(assert true)
(define-const var970 String (append/-1031950772 var520 (cast-from-var1278-to-var3214 var3076))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var520!1 String)
(assert (str.prefixof var520 var520!1))
(assert true)
(define-const var470 String (append/672562846 var970 "\n  onStroke = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  onStroke = ") 
(declare-const var970!1 String)
(assert (= var970!1 (str.++ var970 "\n  onStroke = ")))
(assert true)
(define-const var425 String (append/-388390247 var470 var975)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var470!1 String)
(assert (str.prefixof var470 var470!1))
(assert true)
(define-const var1378 String (toString/-2075883882 var425)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3669 var250 (log/-1110529256 var1633)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3669 var1378)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var3669!1 var250)
(declare-const var1378!1 String)
(define-const var3833 var2063 (g2D/-1110529256 var1633)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var3260 Bool (hit/578005535 var3833 var3764 var3076 var975)) ; Statement: $z1 = virtualinvoke $r12.<java.awt.Graphics2D: boolean hit(java.awt.Rectangle,java.awt.Shape,boolean)>(r1, r4, z0) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2015-to-var3214=([java.awt.Rectangle], java.lang.Object), cast-from-var1278-to-var3214=([java.awt.Shape], java.lang.Object), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), hit/578005535=([java.awt.Graphics2D, java.awt.Rectangle, java.awt.Shape, boolean], boolean)}
; {var420=org.apache.poi.xslf.util.DummyGraphics2d, var1633=r10, var2015=java.awt.Rectangle, var3764=r1, var1278=java.awt.Shape, var3076=r4, var975=z0, var3273=$r0, var2143=$r2, var3214=java.lang.Object, var2884=$r3, var520=$r5, var970=$r6, var470=$r7, var425=$r8, var1378=r9, var250=java.io.PrintStream, var3669=$r11, var2063=java.awt.Graphics2D, var3833=$r12, var3260=$z1}
; {org.apache.poi.xslf.util.DummyGraphics2d=var420, r10=var1633, java.awt.Rectangle=var2015, r1=var3764, java.awt.Shape=var1278, r4=var3076, z0=var975, $r0=var3273, $r2=var2143, java.lang.Object=var3214, $r3=var2884, $r5=var520, $r6=var970, $r7=var470, $r8=var425, r9=var1378, java.io.PrintStream=var250, $r11=var3669, java.awt.Graphics2D=var2063, $r12=var3833, $z1=var3260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Rectangle;	r4 := @parameter1: java.awt.Shape;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hit(Rectangle, Shape, onStroke):\n  rect = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  s = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  onStroke = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z1 = virtualinvoke $r12.<java.awt.Graphics2D: boolean hit(java.awt.Rectangle,java.awt.Shape,boolean)>(r1, r4, z0);	return $z1
;block_num 1