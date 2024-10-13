(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1434 0)
(declare-sort var3299 0)
(declare-sort var1270 0)
(declare-sort var2310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1434) var3299)
(declare-fun println/1773605060 (var3299 String) void)
(declare-fun g2D/-1110529256 (var1434) var1270)
(declare-fun clipRect/1691865716 (var2310 Int Int Int Int) void)
(declare-fun cast-from-var1270-to-var2310 (var1270) var2310)
(declare-const null-var1434 var1434)
(declare-const null-Int Int)
(declare-const var3683 var1434) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3683 null-var1434)))
(declare-const var2156 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2156 null-Int)))
(declare-const var2721 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2721 null-Int)))
(declare-const var3906 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3906 null-Int)))
(declare-const var3747 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var3747 null-Int)))
(define-const var2605 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2605)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2605!1 String)
(assert (= var2605!1 ""))
(assert true)
(define-const var2029 String (append/672562846 var2605!1 "clipRect(int, int, int, int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clipRect(int, int, int, int):\n  x = ") 
(declare-const var2605!2 String)
(assert (= var2605!2 (str.++ var2605!1 "clipRect(int, int, int, int):\n  x = ")))
(assert true)
(define-const var3205 String (append/-1001720160 var2029 var2156)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2029!1 String)
(assert (str.prefixof var2029 var2029!1))
(assert true)
(define-const var1775 String (append/672562846 var3205 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var3205!1 String)
(assert (= var3205!1 (str.++ var3205 "\n  y = ")))
(assert true)
(define-const var2132 String (append/-1001720160 var1775 var2721)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1775!1 String)
(assert (str.prefixof var1775 var1775!1))
(assert true)
(define-const var1543 String (append/672562846 var2132 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var2132!1 String)
(assert (= var2132!1 (str.++ var2132 "\n  width = ")))
(assert true)
(define-const var885 String (append/-1001720160 var1543 var3906)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1543!1 String)
(assert (str.prefixof var1543 var1543!1))
(assert true)
(define-const var2122 String (append/672562846 var885 "height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("height = ") 
(declare-const var885!1 String)
(assert (= var885!1 (str.++ var885 "height = ")))
(assert true)
(define-const var2675 String (append/-1001720160 var2122 var3747)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2122!1 String)
(assert (str.prefixof var2122 var2122!1))
(assert true)
(define-const var2880 String (toString/-2075883882 var2675)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2742 var3299 (log/-1110529256 var3683)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2742 var2880)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var2742!1 var3299)
(declare-const var2880!1 String)
(define-const var2216 var1270 (g2D/-1110529256 var3683)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (clipRect/1691865716 (cast-from-var1270-to-var2310 var2216) var2156 var2721 var3906 var3747)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void clipRect(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var2216!1 var1270)
(declare-const var2156!1 Int)
(declare-const var2721!1 Int)
(declare-const var3906!1 Int)
(declare-const var3747!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), clipRect/1691865716=([java.awt.Graphics, int, int, int, int], void), cast-from-var1270-to-var2310=([java.awt.Graphics2D], java.awt.Graphics)}
; {var1434=org.apache.poi.xslf.util.DummyGraphics2d, var3683=r10, var2156=i0, var2721=i1, var3906=i2, var3747=i3, var2605=$r0, var2029=$r1, var3205=$r2, var1775=$r3, var2132=$r4, var1543=$r5, var885=$r6, var2122=$r7, var2675=$r8, var2880=r9, var3299=java.io.PrintStream, var2742=$r11, var1270=java.awt.Graphics2D, var2216=$r12, var2310=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1434, r10=var3683, i0=var2156, i1=var2721, i2=var3906, i3=var3747, $r0=var2605, $r1=var2029, $r2=var3205, $r3=var1775, $r4=var2132, $r5=var1543, $r6=var885, $r7=var2122, $r8=var2675, r9=var2880, java.io.PrintStream=var3299, $r11=var2742, java.awt.Graphics2D=var1270, $r12=var2216, java.awt.Graphics=var2310}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("clipRect(int, int, int, int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void clipRect(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1