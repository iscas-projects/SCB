(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var30 0)
(declare-sort var1221 0)
(declare-sort var453 0)
(declare-sort var2632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var30) var1221)
(declare-fun println/1773605060 (var1221 String) void)
(declare-fun g2D/-1110529256 (var30) var453)
(declare-fun drawOval/-1390276522 (var2632 Int Int Int Int) void)
(declare-fun cast-from-var453-to-var2632 (var453) var2632)
(declare-const null-var30 var30)
(declare-const null-Int Int)
(declare-const var3998 var30) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3998 null-var30)))
(declare-const var3851 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3851 null-Int)))
(declare-const var3007 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3007 null-Int)))
(declare-const var694 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var694 null-Int)))
(declare-const var2654 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2654 null-Int)))
(define-const var2265 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2265)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2265!1 String)
(assert (= var2265!1 ""))
(assert true)
(define-const var1887 String (append/672562846 var2265!1 "drawOval(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawOval(int,int,int,int):\n  x = ") 
(declare-const var2265!2 String)
(assert (= var2265!2 (str.++ var2265!1 "drawOval(int,int,int,int):\n  x = ")))
(assert true)
(define-const var1837 String (append/-1001720160 var1887 var3851)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1887!1 String)
(assert (str.prefixof var1887 var1887!1))
(assert true)
(define-const var3214 String (append/672562846 var1837 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var1837!1 String)
(assert (= var1837!1 (str.++ var1837 "\n  y = ")))
(assert true)
(define-const var1090 String (append/-1001720160 var3214 var3007)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3214!1 String)
(assert (str.prefixof var3214 var3214!1))
(assert true)
(define-const var3418 String (append/672562846 var1090 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var1090!1 String)
(assert (= var1090!1 (str.++ var1090 "\n  width = ")))
(assert true)
(define-const var488 String (append/-1001720160 var3418 var694)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3418!1 String)
(assert (str.prefixof var3418 var3418!1))
(assert true)
(define-const var3676 String (append/672562846 var488 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var488!1 String)
(assert (= var488!1 (str.++ var488 "\n  height = ")))
(assert true)
(define-const var1118 String (append/-1001720160 var3676 var2654)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3676!1 String)
(assert (str.prefixof var3676 var3676!1))
(assert true)
(define-const var3619 String (toString/-2075883882 var1118)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3099 var1221 (log/-1110529256 var3998)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var3099 var3619)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var3099!1 var1221)
(declare-const var3619!1 String)
(define-const var2326 var453 (g2D/-1110529256 var3998)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawOval/-1390276522 (cast-from-var453-to-var2632 var2326) var3851 var3007 var694 var2654)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void drawOval(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var2326!1 var453)
(declare-const var3851!1 Int)
(declare-const var3007!1 Int)
(declare-const var694!1 Int)
(declare-const var2654!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawOval/-1390276522=([java.awt.Graphics, int, int, int, int], void), cast-from-var453-to-var2632=([java.awt.Graphics2D], java.awt.Graphics)}
; {var30=org.apache.poi.xslf.util.DummyGraphics2d, var3998=r10, var3851=i0, var3007=i1, var694=i2, var2654=i3, var2265=$r0, var1887=$r1, var1837=$r2, var3214=$r3, var1090=$r4, var3418=$r5, var488=$r6, var3676=$r7, var1118=$r8, var3619=r9, var1221=java.io.PrintStream, var3099=$r11, var453=java.awt.Graphics2D, var2326=$r12, var2632=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var30, r10=var3998, i0=var3851, i1=var3007, i2=var694, i3=var2654, $r0=var2265, $r1=var1887, $r2=var1837, $r3=var3214, $r4=var1090, $r5=var3418, $r6=var488, $r7=var3676, $r8=var1118, r9=var3619, java.io.PrintStream=var1221, $r11=var3099, java.awt.Graphics2D=var453, $r12=var2326, java.awt.Graphics=var2632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawOval(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void drawOval(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1