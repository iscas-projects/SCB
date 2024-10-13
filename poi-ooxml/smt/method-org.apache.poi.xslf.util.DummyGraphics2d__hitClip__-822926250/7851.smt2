(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2392 0)
(declare-sort var45 0)
(declare-sort var1755 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var2392) var45)
(declare-fun println/1773605060 (var45 String) void)
(declare-fun g2D/-1110529256 (var2392) var1755)
(declare-fun hitClip/1965543711 (var3560 Int Int Int Int) Bool)
(declare-fun cast-from-var1755-to-var3560 (var1755) var3560)
(declare-const null-var2392 var2392)
(declare-const null-Int Int)
(declare-const var3944 var2392) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3944 null-var2392)))
(declare-const var1573 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1573 null-Int)))
(declare-const var2895 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2895 null-Int)))
(declare-const var376 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var376 null-Int)))
(declare-const var1534 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var1534 null-Int)))
(define-const var2388 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2388)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2388!1 String)
(assert (= var2388!1 ""))
(assert true)
(define-const var2794 String (append/672562846 var2388!1 "hitClip(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hitClip(int,int,int,int):\n  x = ") 
(declare-const var2388!2 String)
(assert (= var2388!2 (str.++ var2388!1 "hitClip(int,int,int,int):\n  x = ")))
(assert true)
(define-const var3187 String (append/-1001720160 var2794 var1573)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2794!1 String)
(assert (str.prefixof var2794 var2794!1))
(assert true)
(define-const var1664 String (append/672562846 var3187 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var3187!1 String)
(assert (= var3187!1 (str.++ var3187 "\n  y = ")))
(assert true)
(define-const var1479 String (append/-1001720160 var1664 var2895)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1664!1 String)
(assert (str.prefixof var1664 var1664!1))
(assert true)
(define-const var1257 String (append/672562846 var1479 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var1479!1 String)
(assert (= var1479!1 (str.++ var1479 "\n  width = ")))
(assert true)
(define-const var422 String (append/-1001720160 var1257 var376)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1257!1 String)
(assert (str.prefixof var1257 var1257!1))
(assert true)
(define-const var2964 String (append/672562846 var422 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var422!1 String)
(assert (= var422!1 (str.++ var422 "\n  height = ")))
(assert true)
(define-const var3989 String (append/-1001720160 var2964 var1534)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2964!1 String)
(assert (str.prefixof var2964 var2964!1))
(assert true)
(define-const var3639 String (toString/-2075883882 var3989)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1139 var45 (log/-1110529256 var3944)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1139 var3639)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var1139!1 var45)
(declare-const var3639!1 String)
(define-const var2550 var1755 (g2D/-1110529256 var3944)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var1398 Bool (hitClip/1965543711 (cast-from-var1755-to-var3560 var2550) var1573 var2895 var376 var1534)) ; Statement: $z0 = virtualinvoke $r12.<java.awt.Graphics2D: boolean hitClip(int,int,int,int)>(i0, i1, i2, i3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), hitClip/1965543711=([java.awt.Graphics, int, int, int, int], boolean), cast-from-var1755-to-var3560=([java.awt.Graphics2D], java.awt.Graphics)}
; {var2392=org.apache.poi.xslf.util.DummyGraphics2d, var3944=r10, var1573=i0, var2895=i1, var376=i2, var1534=i3, var2388=$r0, var2794=$r1, var3187=$r2, var1664=$r3, var1479=$r4, var1257=$r5, var422=$r6, var2964=$r7, var3989=$r8, var3639=r9, var45=java.io.PrintStream, var1139=$r11, var1755=java.awt.Graphics2D, var2550=$r12, var3560=java.awt.Graphics, var1398=$z0}
; {org.apache.poi.xslf.util.DummyGraphics2d=var2392, r10=var3944, i0=var1573, i1=var2895, i2=var376, i3=var1534, $r0=var2388, $r1=var2794, $r2=var3187, $r3=var1664, $r4=var1479, $r5=var1257, $r6=var422, $r7=var2964, $r8=var3989, r9=var3639, java.io.PrintStream=var45, $r11=var1139, java.awt.Graphics2D=var1755, $r12=var2550, java.awt.Graphics=var3560, $z0=var1398}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hitClip(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$z0 = virtualinvoke $r12.<java.awt.Graphics2D: boolean hitClip(int,int,int,int)>(i0, i1, i2, i3);	return $z0
;block_num 1