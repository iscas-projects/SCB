(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3833 0)
(declare-sort var103 0)
(declare-sort var3946 0)
(declare-sort var3810 0)
(declare-sort var3914 0)
(declare-sort var3661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3810) String)
(declare-fun cast-from-var103-to-var3810 (var103) var3810)
(declare-fun cast-from-var3946-to-var3810 (var3946) var3810)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3833) var3914)
(declare-fun println/1773605060 (var3914 String) void)
(declare-fun g2D/-1110529256 (var3833) var3661)
(declare-fun drawImage/-1731909266 (var3661 var103 var3946 Int Int) void)
(declare-const null-var3833 var3833)
(declare-const null-var103 var103)
(declare-const null-var3946 var3946)
(declare-const null-Int Int)
(declare-const var2674 var3833) ; Statement: r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var2674 null-var3833)))
(declare-const var1512 var103) ; Statement: r1 := @parameter0: java.awt.image.BufferedImage 
(assert (not (= var1512 null-var103)))
(declare-const var2100 var3946) ; Statement: r4 := @parameter1: java.awt.image.BufferedImageOp 
(assert (not (= var2100 null-var3946)))
(declare-const var26 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var26 null-Int)))
(declare-const var2709 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2709 null-Int)))
(define-const var1319 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1319)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1319!1 String)
(assert (= var1319!1 ""))
(assert true)
(define-const var1084 String (append/672562846 var1319!1 "drawImage(BufferedImage, BufferedImageOp, x, y):\n  img = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(BufferedImage, BufferedImageOp, x, y):\n  img = ") 
(declare-const var1319!2 String)
(assert (= var1319!2 (str.++ var1319!1 "drawImage(BufferedImage, BufferedImageOp, x, y):\n  img = ")))
(assert true)
(define-const var2435 String (append/-1031950772 var1084 (cast-from-var103-to-var3810 var1512))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1084!1 String)
(assert (str.prefixof var1084 var1084!1))
(assert true)
(define-const var2245 String (append/672562846 var2435 "\n  op = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  op = ") 
(declare-const var2435!1 String)
(assert (= var2435!1 (str.++ var2435 "\n  op = ")))
(assert true)
(define-const var1923 String (append/-1031950772 var2245 (cast-from-var3946-to-var3810 var2100))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2245!1 String)
(assert (str.prefixof var2245 var2245!1))
(assert true)
(define-const var1905 String (append/672562846 var1923 "\n  x = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ") 
(declare-const var1923!1 String)
(assert (= var1923!1 (str.++ var1923 "\n  x = ")))
(assert true)
(define-const var3979 String (append/-1001720160 var1905 var26)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1905!1 String)
(assert (str.prefixof var1905 var1905!1))
(assert true)
(define-const var2362 String (append/672562846 var3979 "\n  y = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var3979!1 String)
(assert (= var3979!1 (str.++ var3979 "\n  y = ")))
(assert true)
(define-const var2169 String (append/-1001720160 var2362 var2709)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2362!1 String)
(assert (str.prefixof var2362 var2362!1))
(assert true)
(define-const var2715 String (toString/-2075883882 var2169)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2047 var3914 (log/-1110529256 var2674)) ; Statement: $r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2047 var2715)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11) 

(declare-const var2047!1 var3914)
(declare-const var2715!1 String)
(define-const var736 var3661 (g2D/-1110529256 var2674)) ; Statement: $r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawImage/-1731909266 var736 var1512 var2100 var26 var2709)) ; Statement: virtualinvoke $r14.<java.awt.Graphics2D: void drawImage(java.awt.image.BufferedImage,java.awt.image.BufferedImageOp,int,int)>(r1, r4, i0, i1) 

(declare-const var736!1 var3661)
(declare-const var1512!1 var103)
(declare-const var2100!1 var3946)
(declare-const var26!1 Int)
(declare-const var2709!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var103-to-var3810=([java.awt.image.BufferedImage], java.lang.Object), cast-from-var3946-to-var3810=([java.awt.image.BufferedImageOp], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawImage/-1731909266=([java.awt.Graphics2D, java.awt.image.BufferedImage, java.awt.image.BufferedImageOp, int, int], void)}
; {var3833=org.apache.poi.xslf.util.DummyGraphics2d, var2674=r12, var103=java.awt.image.BufferedImage, var1512=r1, var3946=java.awt.image.BufferedImageOp, var2100=r4, var26=i0, var2709=i1, var1319=$r0, var1084=$r2, var3810=java.lang.Object, var2435=$r3, var2245=$r5, var1923=$r6, var1905=$r7, var3979=$r8, var2362=$r9, var2169=$r10, var2715=r11, var3914=java.io.PrintStream, var2047=$r13, var3661=java.awt.Graphics2D, var736=$r14}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3833, r12=var2674, java.awt.image.BufferedImage=var103, r1=var1512, java.awt.image.BufferedImageOp=var3946, r4=var2100, i0=var26, i1=var2709, $r0=var1319, $r2=var1084, java.lang.Object=var3810, $r3=var2435, $r5=var2245, $r6=var1923, $r7=var1905, $r8=var3979, $r9=var2362, $r10=var2169, r11=var2715, java.io.PrintStream=var3914, $r13=var2047, java.awt.Graphics2D=var3661, $r14=var736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	r1 := @parameter0: java.awt.image.BufferedImage;	r4 := @parameter1: java.awt.image.BufferedImageOp;	i0 := @parameter2: int;	i1 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawImage(BufferedImage, BufferedImageOp, x, y):\n  img = ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  op = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  x = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>(r11);	$r14 = r12.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r14.<java.awt.Graphics2D: void drawImage(java.awt.image.BufferedImage,java.awt.image.BufferedImageOp,int,int)>(r1, r4, i0, i1);	return
;block_num 1