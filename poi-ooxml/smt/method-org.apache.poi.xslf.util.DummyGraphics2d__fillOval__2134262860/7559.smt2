(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var2589 0)
(declare-sort var2162 0)
(declare-sort var2402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var1717) var2589)
(declare-fun println/1773605060 (var2589 String) void)
(declare-fun g2D/-1110529256 (var1717) var2162)
(declare-fun fillOval/-1357803691 (var2402 Int Int Int Int) void)
(declare-fun cast-from-var2162-to-var2402 (var2162) var2402)
(declare-const null-var1717 var1717)
(declare-const null-Int Int)
(declare-const var1038 var1717) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var1038 null-var1717)))
(declare-const var22 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var22 null-Int)))
(declare-const var3560 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3560 null-Int)))
(declare-const var1051 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1051 null-Int)))
(declare-const var2339 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2339 null-Int)))
(define-const var883 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var883)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var883!1 String)
(assert (= var883!1 ""))
(assert true)
(define-const var3301 String (append/672562846 var883!1 "fillOval(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fillOval(int,int,int,int):\n  x = ") 
(declare-const var883!2 String)
(assert (= var883!2 (str.++ var883!1 "fillOval(int,int,int,int):\n  x = ")))
(assert true)
(define-const var2464 String (append/-1001720160 var3301 var22)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3301!1 String)
(assert (str.prefixof var3301 var3301!1))
(assert true)
(define-const var3153 String (append/672562846 var2464 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var2464!1 String)
(assert (= var2464!1 (str.++ var2464 "\n  y = ")))
(assert true)
(define-const var1519 String (append/-1001720160 var3153 var3560)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3153!1 String)
(assert (str.prefixof var3153 var3153!1))
(assert true)
(define-const var2730 String (append/672562846 var1519 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var1519!1 String)
(assert (= var1519!1 (str.++ var1519 "\n  width = ")))
(assert true)
(define-const var1669 String (append/-1001720160 var2730 var1051)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2730!1 String)
(assert (str.prefixof var2730 var2730!1))
(assert true)
(define-const var167 String (append/672562846 var1669 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var1669!1 String)
(assert (= var1669!1 (str.++ var1669 "\n  height = ")))
(assert true)
(define-const var2455 String (append/-1001720160 var167 var2339)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var167!1 String)
(assert (str.prefixof var167 var167!1))
(assert true)
(define-const var2819 String (toString/-2075883882 var2455)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var207 var2589 (log/-1110529256 var1038)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var207 var2819)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var207!1 var2589)
(declare-const var2819!1 String)
(define-const var2222 var2162 (g2D/-1110529256 var1038)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (fillOval/-1357803691 (cast-from-var2162-to-var2402 var2222) var22 var3560 var1051 var2339)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void fillOval(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var2222!1 var2162)
(declare-const var22!1 Int)
(declare-const var3560!1 Int)
(declare-const var1051!1 Int)
(declare-const var2339!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), fillOval/-1357803691=([java.awt.Graphics, int, int, int, int], void), cast-from-var2162-to-var2402=([java.awt.Graphics2D], java.awt.Graphics)}
; {var1717=org.apache.poi.xslf.util.DummyGraphics2d, var1038=r10, var22=i0, var3560=i1, var1051=i2, var2339=i3, var883=$r0, var3301=$r1, var2464=$r2, var3153=$r3, var1519=$r4, var2730=$r5, var1669=$r6, var167=$r7, var2455=$r8, var2819=r9, var2589=java.io.PrintStream, var207=$r11, var2162=java.awt.Graphics2D, var2222=$r12, var2402=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var1717, r10=var1038, i0=var22, i1=var3560, i2=var1051, i3=var2339, $r0=var883, $r1=var3301, $r2=var2464, $r3=var3153, $r4=var1519, $r5=var2730, $r6=var1669, $r7=var167, $r8=var2455, r9=var2819, java.io.PrintStream=var2589, $r11=var207, java.awt.Graphics2D=var2162, $r12=var2222, java.awt.Graphics=var2402}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fillOval(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void fillOval(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1