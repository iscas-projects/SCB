(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var0 0)
(declare-sort var215 0)
(declare-sort var3455 0)
(declare-sort var1085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var0) var215)
(declare-fun println/1773605060 (var215 String) void)
(declare-fun g2D/-1110529256 (var0) var3455)
(declare-fun drawRect/-1490965144 (var1085 Int Int Int Int) void)
(declare-fun cast-from-var3455-to-var1085 (var3455) var1085)
(declare-const null-var0 var0)
(declare-const null-Int Int)
(declare-const var170 var0) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var170 null-var0)))
(declare-const var1573 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1573 null-Int)))
(declare-const var2920 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2920 null-Int)))
(declare-const var3569 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3569 null-Int)))
(declare-const var3834 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var3834 null-Int)))
(define-const var1701 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1701)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1701!1 String)
(assert (= var1701!1 ""))
(assert true)
(define-const var2894 String (append/672562846 var1701!1 "drawRect(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawRect(int,int,int,int):\n  x = ") 
(declare-const var1701!2 String)
(assert (= var1701!2 (str.++ var1701!1 "drawRect(int,int,int,int):\n  x = ")))
(assert true)
(define-const var1130 String (append/-1001720160 var2894 var1573)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2894!1 String)
(assert (str.prefixof var2894 var2894!1))
(assert true)
(define-const var1357 String (append/672562846 var1130 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var1130!1 String)
(assert (= var1130!1 (str.++ var1130 "\n  y = ")))
(assert true)
(define-const var1412 String (append/-1001720160 var1357 var2920)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1357!1 String)
(assert (str.prefixof var1357 var1357!1))
(assert true)
(define-const var3441 String (append/672562846 var1412 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var1412!1 String)
(assert (= var1412!1 (str.++ var1412 "\n  width = ")))
(assert true)
(define-const var2345 String (append/-1001720160 var3441 var3569)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3441!1 String)
(assert (str.prefixof var3441 var3441!1))
(assert true)
(define-const var3826 String (append/672562846 var2345 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var2345!1 String)
(assert (= var2345!1 (str.++ var2345 "\n  height = ")))
(assert true)
(define-const var2687 String (append/-1001720160 var3826 var3834)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3826!1 String)
(assert (str.prefixof var3826 var3826!1))
(assert true)
(define-const var1879 String (toString/-2075883882 var2687)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var908 var215 (log/-1110529256 var170)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var908 var1879)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var908!1 var215)
(declare-const var1879!1 String)
(define-const var156 var3455 (g2D/-1110529256 var170)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
;(assert (drawRect/-1490965144 (cast-from-var3455-to-var1085 var156) var1573 var2920 var3569 var3834)) ; Statement: virtualinvoke $r12.<java.awt.Graphics2D: void drawRect(int,int,int,int)>(i0, i1, i2, i3) 

(declare-const var156!1 var3455)
(declare-const var1573!1 Int)
(declare-const var2920!1 Int)
(declare-const var3569!1 Int)
(declare-const var3834!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), drawRect/-1490965144=([java.awt.Graphics, int, int, int, int], void), cast-from-var3455-to-var1085=([java.awt.Graphics2D], java.awt.Graphics)}
; {var0=org.apache.poi.xslf.util.DummyGraphics2d, var170=r10, var1573=i0, var2920=i1, var3569=i2, var3834=i3, var1701=$r0, var2894=$r1, var1130=$r2, var1357=$r3, var1412=$r4, var3441=$r5, var2345=$r6, var3826=$r7, var2687=$r8, var1879=r9, var215=java.io.PrintStream, var908=$r11, var3455=java.awt.Graphics2D, var156=$r12, var1085=java.awt.Graphics}
; {org.apache.poi.xslf.util.DummyGraphics2d=var0, r10=var170, i0=var1573, i1=var2920, i2=var3569, i3=var3834, $r0=var1701, $r1=var2894, $r2=var1130, $r3=var1357, $r4=var1412, $r5=var3441, $r6=var2345, $r7=var3826, $r8=var2687, r9=var1879, java.io.PrintStream=var215, $r11=var908, java.awt.Graphics2D=var3455, $r12=var156, java.awt.Graphics=var1085}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drawRect(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	virtualinvoke $r12.<java.awt.Graphics2D: void drawRect(int,int,int,int)>(i0, i1, i2, i3);	return
;block_num 1