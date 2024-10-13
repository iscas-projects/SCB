(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3500 0)
(declare-sort var530 0)
(declare-sort var3024 0)
(declare-sort var478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3500) var530)
(declare-fun println/1773605060 (var530 String) void)
(declare-fun g2D/-1110529256 (var3500) var3024)
(declare-fun drawLine/-1722048648 (var478 Int Int Int Int) void)
(declare-fun cast-from-var3024-to-var478 (var3024) var478)
(declare-const null-var3500 var3500)
(declare-const null-Int Int)
(declare-const var998 var3500) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var998 null-var3500)))
(declare-const var3452 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3452 null-Int)))
(declare-const var3494 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3494 null-Int)))
(declare-const var131 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var131 null-Int)))
(declare-const var1267 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var1267 null-Int)))
(define-const var627 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var627)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var627!1 String)
(assert (= var627!1 ""))
(assert true)
(define-const var2422 String (append/672562846 var627!1 "drawLine(int,int,int,int):\n  x1 = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawLine(int,int,int,int):\n  x1 = ") 
(declare-const var627!2 String)
(assert (= var627!2 (str.++ var627!1 "drawLine(int,int,int,int):\n  x1 = ")))
(assert true)
(define-const var243 String (append/-1001720160 var2422 var3452)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2422!1 String)
(assert (str.prefixof var2422 var2422!1))
(assert true)
(define-const var2078 String (append/672562846 var243 "\n  y1 = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y1 = ") 
(declare-const var243!1 String)
(assert (= var243!1 (str.++ var243 "\n  y1 = ")))
(assert true)
(define-const var3150 String (append/-1001720160 var2078 var3494)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2078!1 String)
(assert (str.prefixof var2078 var2078!1))
(assert true)
(define-const var1823 String (append/672562846 var3150 "\n  x2 = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x2 = ") 
(declare-const var3150!1 String)
(assert (= var3150!1 (str.++ var3150 "\n  x2 = ")))
(assert true)
(define-const var269 String (append/-1001720160 var1823 var131)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1823!1 String)
(assert (str.prefixof var1823 var1823!1))
(assert true)
(define-const var3800 String (append/672562846 var269 "\n  y2 = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y2 = ") 
(declare-const var269!1 String)
(assert (= var269!1 (str.++ var269 "\n  y2 = ")))
(assert true)
(define-const var3555 String (append/-1001720160 var3800 var1267)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3800!1 String)
(assert (str.prefixof var3800 var3800!1))
(assert true)
(define-const var622 String (toString/-2075883882 var3555)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1319 var530 (log/-1110529256 var998)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1319 var622)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var1319!1 var530)
(declare-const var622!1 String)
(define-const var3540 var3024 (g2D/-1110529256 var998)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawLine/-1722048648 (cast-from-var3024-to-var478 var3540) var3452 var3494 var131 var1267)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void drawLine(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var3540!1 var3024)
(declare-const var3452!1 Int)
(declare-const var3494!1 Int)
(declare-const var131!1 Int)
(declare-const var1267!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawLine/-1722048648=([java.awt.Graphics, int, int, int, int], void), cast-from-var3024-to-var478=([java.awt.Graphics2D], java.awt.Graphics)}
; {var3500=org.apache.poi.xslf.util.DummyGraphics2d, var998=r10, var3452=i0, var3494=i1, var131=i2, var1267=i3, var627=$r0, var2422=$r1, var243=$r2, var2078=$r3, var3150=$r4, var1823=$r5, var269=$r6, var3800=$r7, var3555=$r8, var622=r9, var530=java.io.PrintStream, var1319=$r11, var3024=java.awt.Graphics2D, var3540=$r12, var478=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3500, r10=var998, i0=var3452, i1=var3494, i2=var131, i3=var1267, $r0=var627, $r1=var2422, $r2=var243, $r3=var2078, $r4=var3150, $r5=var1823, $r6=var269, $r7=var3800, $r8=var3555, r9=var622, java.io.PrintStream=var530, $r11=var1319, java.awt.Graphics2D=var3024, $r12=var3540, java.awt.Graphics=var478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawLine(int,int,int,int):\n  x1 = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y1 = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x2 = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y2 = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void drawLine(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1