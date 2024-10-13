(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2262 0)
(declare-sort var569 0)
(declare-sort var841 0)
(declare-sort var744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2262) var569)
(declare-fun println/1773605060 (var569 String) void)
(declare-fun g2D/-1110529256 (var2262) var841)
(declare-fun copyArea/1034212296 (var744 Int Int Int Int Int Int) void)
(declare-fun cast-from-var841-to-var744 (var841) var744)
(declare-const null-var2262 var2262)
(declare-const null-Int Int)
(declare-const var853 var2262) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var853 null-var2262)))
(declare-const var3151 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3151 null-Int)))
(declare-const var1450 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1450 null-Int)))
(declare-const var3535 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3535 null-Int)))
(declare-const var431 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var431 null-Int)))
(declare-const var1470 Int) ; Statement: i4 := @parameter4: int 
(assert (not (= var1470 null-Int)))
(declare-const var928 Int) ; Statement: i5 := @parameter5: int 
(assert (not (= var928 null-Int)))
(define-const var2197 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2197)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2197!1 String)
(assert (= var2197!1 ""))
(assert true)
(define-const var2854 String (append/672562846 var2197!1 "copyArea(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("copyArea(int,int,int,int):\n  x = ") 
(declare-const var2197!2 String)
(assert (= var2197!2 (str.++ var2197!1 "copyArea(int,int,int,int):\n  x = ")))
(assert true)
(define-const var3595 String (append/-1001720160 var2854 var3151)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2854!1 String)
(assert (str.prefixof var2854 var2854!1))
(assert true)
(define-const var488 String (append/672562846 var3595 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 "\n  y = ")))
(assert true)
(define-const var134 String (append/-1001720160 var488 var1450)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var488!1 String)
(assert (str.prefixof var488 var488!1))
(assert true)
(define-const var493 String (append/672562846 var134 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var134!1 String)
(assert (= var134!1 (str.++ var134 "\n  width = ")))
(assert true)
(define-const var2060 String (append/-1001720160 var493 var3535)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var493!1 String)
(assert (str.prefixof var493 var493!1))
(assert true)
(define-const var2903 String (append/672562846 var2060 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var2060!1 String)
(assert (= var2060!1 (str.++ var2060 "\n  height = ")))
(assert true)
(define-const var379 String (append/-1001720160 var2903 var431)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2903!1 String)
(assert (str.prefixof var2903 var2903!1))
(assert true)
(define-const var3341 String (toString/-2075883882 var379)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2798 var569 (log/-1110529256 var853)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var2798 var3341)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var2798!1 var569)
(declare-const var3341!1 String)
(define-const var445 var841 (g2D/-1110529256 var853)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (copyArea/1034212296 (cast-from-var841-to-var744 var445) var3151 var1450 var3535 var431 var1470 var928)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void copyArea(int,int,int,int,int,int)>(i0, i1, i2, i3, i4, i5) 

(declare-const var445!1 var841)
(declare-const var3151!1 Int)
(declare-const var1450!1 Int)
(declare-const var3535!1 Int)
(declare-const var431!1 Int)
(declare-const var1470!1 Int)
(declare-const var928!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), copyArea/1034212296=([java.awt.Graphics, int, int, int, int, int, int], void), cast-from-var841-to-var744=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2262=org.apache.poi.xslf.util.DummyGraphics2d, var853=r10, var3151=i0, var1450=i1, var3535=i2, var431=i3, var1470=i4, var928=i5, var2197=$r0, var2854=$r1, var3595=$r2, var488=$r3, var134=$r4, var493=$r5, var2060=$r6, var2903=$r7, var379=$r8, var3341=r9, var569=java.io.PrintStream, var2798=$r11, var841=java.awt.Graphics2D, var445=$r12, var744=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2262, r10=var853, i0=var3151, i1=var1450, i2=var3535, i3=var431, i4=var1470, i5=var928, $r0=var2197, $r1=var2854, $r2=var3595, $r3=var488, $r4=var134, $r5=var493, $r6=var2060, $r7=var2903, $r8=var379, r9=var3341, java.io.PrintStream=var569, $r11=var2798, java.awt.Graphics2D=var841, $r12=var445, java.awt.Graphics=var744}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	i4 := @parameter4: int;	i5 := @parameter5: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("copyArea(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void copyArea(int,int,int,int,int,int)>(i0, i1, i2, i3, i4, i5);	return
;block_num 1