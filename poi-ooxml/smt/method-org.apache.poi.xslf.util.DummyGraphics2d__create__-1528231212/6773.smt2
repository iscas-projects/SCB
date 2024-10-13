(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3787 0)
(declare-sort var3197 0)
(declare-sort var256 0)
(declare-sort var778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1110529256 (var3787) var3197)
(declare-fun println/1773605060 (var3197 String) void)
(declare-fun g2D/-1110529256 (var3787) var256)
(declare-fun create/-555765717 (var778 Int Int Int Int) var778)
(declare-fun cast-from-var256-to-var778 (var256) var778)
(declare-const null-var3787 var3787)
(declare-const null-Int Int)
(declare-const var3808 var3787) ; Statement: r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d 
(assert (not (= var3808 null-var3787)))
(declare-const var2971 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2971 null-Int)))
(declare-const var1654 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1654 null-Int)))
(declare-const var3551 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3551 null-Int)))
(declare-const var2857 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2857 null-Int)))
(define-const var3004 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3004)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3004!1 String)
(assert (= var3004!1 ""))
(assert true)
(define-const var377 String (append/672562846 var3004!1 "create(int,int,int,int):\n  x = ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create(int,int,int,int):\n  x = ") 
(declare-const var3004!2 String)
(assert (= var3004!2 (str.++ var3004!1 "create(int,int,int,int):\n  x = ")))
(assert true)
(define-const var2747 String (append/-1001720160 var377 var2971)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var377!1 String)
(assert (str.prefixof var377 var377!1))
(assert true)
(define-const var391 String (append/672562846 var2747 "\n  y = ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ") 
(declare-const var2747!1 String)
(assert (= var2747!1 (str.++ var2747 "\n  y = ")))
(assert true)
(define-const var2947 String (append/-1001720160 var391 var1654)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var391!1 String)
(assert (str.prefixof var391 var391!1))
(assert true)
(define-const var2166 String (append/672562846 var2947 "\n  width = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ") 
(declare-const var2947!1 String)
(assert (= var2947!1 (str.++ var2947 "\n  width = ")))
(assert true)
(define-const var2713 String (append/-1001720160 var2166 var3551)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2166!1 String)
(assert (str.prefixof var2166 var2166!1))
(assert true)
(define-const var738 String (append/672562846 var2713 "\n  height = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ") 
(declare-const var2713!1 String)
(assert (= var2713!1 (str.++ var2713 "\n  height = ")))
(assert true)
(define-const var3488 String (append/-1001720160 var738 var2857)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var738!1 String)
(assert (str.prefixof var738 var738!1))
(assert true)
(define-const var2952 String (toString/-2075883882 var3488)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1215 var3197 (log/-1110529256 var3808)) ; Statement: $r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log> 
(assert true)
;(assert (println/1773605060 var1215 var2952)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9) 

(declare-const var1215!1 var3197)
(declare-const var2952!1 String)
(define-const var1698 var256 (g2D/-1110529256 var3808)) ; Statement: $r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D> 
(assert true)
(define-const var1778 var778 (create/-555765717 (cast-from-var256-to-var778 var1698) var2971 var1654 var3551 var2857)) ; Statement: $r13 = virtualinvoke $r12.<java.awt.Graphics2D: java.awt.Graphics create(int,int,int,int)>(i0, i1, i2, i3) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.io.PrintStream), println/1773605060=([java.io.PrintStream, java.lang.String], void), g2D/-1110529256=([org.apache.poi.xslf.util.DummyGraphics2d], java.awt.Graphics2D), create/-555765717=([java.awt.Graphics, int, int, int, int], java.awt.Graphics), cast-from-var256-to-var778=([java.awt.Graphics2D], java.awt.Graphics)}
; {var3787=org.apache.poi.xslf.util.DummyGraphics2d, var3808=r10, var2971=i0, var1654=i1, var3551=i2, var2857=i3, var3004=$r0, var377=$r1, var2747=$r2, var391=$r3, var2947=$r4, var2166=$r5, var2713=$r6, var738=$r7, var3488=$r8, var2952=r9, var3197=java.io.PrintStream, var1215=$r11, var256=java.awt.Graphics2D, var1698=$r12, var778=java.awt.Graphics, var1778=$r13}
; {org.apache.poi.xslf.util.DummyGraphics2d=var3787, r10=var3808, i0=var2971, i1=var1654, i2=var3551, i3=var2857, $r0=var3004, $r1=var377, $r2=var2747, $r3=var391, $r4=var2947, $r5=var2166, $r6=var2713, $r7=var738, $r8=var3488, r9=var2952, java.io.PrintStream=var3197, $r11=var1215, java.awt.Graphics2D=var256, $r12=var1698, java.awt.Graphics=var778, $r13=var1778}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xslf.util.DummyGraphics2d;	i0 := @parameter0: int;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create(int,int,int,int):\n  x = ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  y = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  width = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  height = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.io.PrintStream log>;	virtualinvoke $r11.<java.io.PrintStream: void println(java.lang.String)>(r9);	$r12 = r10.<org.apache.poi.xslf.util.DummyGraphics2d: java.awt.Graphics2D g2D>;	$r13 = virtualinvoke $r12.<java.awt.Graphics2D: java.awt.Graphics create(int,int,int,int)>(i0, i1, i2, i3);	return $r13
;block_num 1