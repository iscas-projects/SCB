(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1363 0)
(declare-sort var2816 0)
(declare-sort var3831 0)
(declare-sort var2598 0)
(declare-sort var1184 0)
(declare-sort var850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3831) String)
(declare-fun cast-from-var2816-to-var3831 (var2816) var3831)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1363) var2598)
(declare-fun println/1773605060 (var2598 String) void)
(declare-fun g2D/-1110529256 (var1363) var1184)
(declare-fun setXORMode/-2121500723 (var850 var2816) void)
(declare-fun cast-from-var1184-to-var850 (var1184) var850)
(declare-const null-var1363 var1363)
(declare-const null-var2816 var2816)
(declare-const var3134 var1363) ; Statement: r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3134 null-var1363)))
(declare-const var1875 var2816) ; Statement: r1 := @parameter0: java.awt.Color 
(assert (not (= var1875 null-var2816)))
(define-const var1509 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1509)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1509!1 String)
(assert (= var1509!1 ""))
(assert true)
(define-const var1901 String (append/672562846 var1509!1 "setXORMode(Color):\n  c1 = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setXORMode(Color):\n  c1 = ") 
(declare-const var1509!2 String)
(assert (= var1509!2 (str.++ var1509!1 "setXORMode(Color):\n  c1 = ")))
(assert true)
(define-const var96 String (append/-1031950772 var1901 (cast-from-var2816-to-var3831 var1875))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1901!1 String)
(assert (str.prefixof var1901 var1901!1))
(assert true)
(define-const var57 String (toString/-2075883882 var96)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3725 var2598 (log/-1110529256 var3134)) ; Statement: $r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3725 var57)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4) 

(declare-const var3725!1 var2598)
(declare-const var57!1 String)
(define-const var2650 var1184 (g2D/-1110529256 var3134)) ; Statement: $r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (setXORMode/-2121500723 (cast-from-var1184-to-var850 var2650) var1875)) ; Statement: virtualinvoke $r7.<java.awt.Graphics2D: void setXORMode(java.awt.Color)>(r1) 

(declare-const var2650!1 var1184)
(declare-const var1875!1 var2816)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2816-to-var3831=([java.awt.Color], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), setXORMode/-2121500723=([java.awt.Graphics, java.awt.Color], void), cast-from-var1184-to-var850=([java.awt.Graphics2D], java.awt.Graphics)}
; {var1363=org.apache.poi.xslf.util.DummyGraphics2d, var3134=r5, var2816=java.awt.Color, var1875=r1, var1509=$r0, var1901=$r2, var3831=java.lang.Object, var96=$r3, var57=r4, var2598=java.io.PrintStream, var3725=$r6, var1184=java.awt.Graphics2D, var2650=$r7, var850=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1363, r5=var3134, java.awt.Color=var2816, r1=var1875, $r0=var1509, $r2=var1901, java.lang.Object=var3831, $r3=var96, r4=var57, java.io.PrintStream=var2598, $r6=var3725, java.awt.Graphics2D=var1184, $r7=var2650, java.awt.Graphics=var850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.Color;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setXORMode(Color):\n  c1 = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>(r4);	$r7 = r5.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r7.<java.awt.Graphics2D: void setXORMode(java.awt.Color)>(r1);	return
;block_num 1